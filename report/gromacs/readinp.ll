Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readinp?download=true
inline.NumInlined: 1092
inline.NumDeleted: 447
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z12read_inpfilePN3gmx15TextInputStreamERKNSt10filesystem7__cxx114pathEP14WarningHandler:bb.a
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !26
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.ba
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.bu, ptr %i.ag, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.x
  %i.cb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 61, i64 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cc = add i64 %i.cb, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.cd = load i64, ptr %i.af, align 8, !tbaa !23, !noalias !86 ; 3 uses
  %i.ce = icmp ugt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.y:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %i.cc, i64 noundef %i.cd) #25
          to label %.noexc65 unwind label %.loopexit.split-lp117

.noexc65:                                         ; preds = %bb.y
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  store ptr %i.ah, ptr %10, align 8, !tbaa !24, !alias.scope !86
  %i.cf = load ptr, ptr %5, align 8, !tbaa !22, !noalias !86
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = sub nuw i64 %i.cd, %i.cc                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !86
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !25, !noalias !86
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc66 unwind label %.loopexit116 ; 2 uses

.noexc66:                                         ; preds = %.noexc10.i.i
  store ptr %i.cj, ptr %10, align 8, !tbaa !22, !alias.scope !86
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !86
  store i64 %i.ck, ptr %i.ah, align 8, !tbaa !26, !alias.scope !86
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cl = phi ptr [ %i.cj, %.noexc66 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ch, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !26
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !26
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cg, i64 %i.ch, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !86 ; 2 uses
  store i64 %i.cn, ptr %i.ai, align 8, !tbaa !23, !alias.scope !86
  %i.co = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !86
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !86
  invoke void @_ZN3gmx11stripStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 7 uses
  %i.cr = load ptr, ptr %i.aj, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !24
  %i.ct = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ak
  br i1 %i.cu, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load i64, ptr %i.al, align 8, !tbaa !23 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %i.cx = add nuw nsw i64 %i.cv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ad
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !22
  %i.cy = load i64, ptr %i.ak, align 8, !tbaa !26
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !26
  %.pre = load i64, ptr %i.al, align 8, !tbaa !23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.cz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.cv, %bb.ae ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !23
  store ptr %i.ak, ptr %9, align 8, !tbaa !22
  store i64 0, ptr %i.al, align 8, !tbaa !23
  store i8 0, ptr %i.ak, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.db, ptr %i.ag, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.af:                                            ; preds = %bb.ac
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.ah

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.af
  %.pre182 = load ptr, ptr %9, align 8, !tbaa !22 ; 2 uses
  %i.dc = icmp eq ptr %.pre182, %i.ak
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.dd = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.pre182, i64 noundef %i.de) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  %i.df = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ah
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.dh = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %.pre183 = load ptr, ptr %i.ag, align 8, !tbaa !30
  %.pre184 = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  %.pre187 = ptrtoint ptr %.pre183 to i64
  %.pre188 = ptrtoint ptr %.pre184 to i64
  br label %bb.ai

.loopexit116:                                     ; preds = %.noexc10.i.i
  %lpad.loopexit118 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

.loopexit.split-lp117:                            ; preds = %bb.y
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.ag:                                            ; preds = %bb.ab
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ah:                                            ; preds = %bb.af
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.ak
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ah
  %i.dn = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.dk, %bb.ah ] ; 2 uses
  %i.dp = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ah
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.dr = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %.loopexit116, %.loopexit.split-lp117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ], [ %lpad.loopexit118, %.loopexit116 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bk

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.w
  %.pre-phi189 = phi i64 [ %.pre188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bd, %bb.w ]
  %.pre-phi = phi i64 [ %.pre187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bc, %bb.w ]
  %i.dt = phi ptr [ %.pre184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bb, %bb.w ] ; 4 uses
  %i.du = sub i64 %.pre-phi, %.pre-phi189
  %i.dv = icmp eq i64 %i.du, 64
  br i1 %i.dv, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ12read_inpfilePN3gmx15TextInputStreamERKNSt10filesystem7__cxx114pathEP14WarningHandlerENK3$_0clEv", ptr noundef nonnull @.str.16, i32 noundef 119) #25
          to label %.noexc81 unwind label %bb.ap

.noexc81:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !23
  %i.dy = icmp eq i64 %i.dx, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !23
  %i.eb = icmp eq i64 %i.ea, 0                    ; 2 uses
  br i1 %i.dy, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %bb.ak
  br i1 %i.eb, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ec = load ptr, ptr %5, align 8, !tbaa !22
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.4, ptr noundef %i.ec)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ed = load ptr, ptr %11, align 8, !tbaa !22
  %i.ee = load i64, ptr %i.ar, align 8, !tbaa !23
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.ee, ptr %i.ed)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ef = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.as
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ao
  %i.eh = load i64, ptr %i.as, align 8, !tbaa !26
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bi

bb.ap:                                            ; preds = %bb.aj
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.aq:                                            ; preds = %bb.am
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ar:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.as
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ar
  %i.eo = load i64, ptr %i.as, align 8, !tbaa !26
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.aq
  %.pn48 = phi { ptr, i32 } [ %i.ek, %bb.aq ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.el, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bk

bb.as:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.eq = load ptr, ptr %5, align 8, !tbaa !22
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.5, ptr noundef %i.eq)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.er = load ptr, ptr %12, align 8, !tbaa !22
  %i.es = load i64, ptr %i.ap, align 8, !tbaa !23
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.es, ptr %i.er)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.et = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.aq
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.au
  %i.ev = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bi

bb.av:                                            ; preds = %bb.as
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.aw:                                            ; preds = %bb.at
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.aq
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.aw
  %i.fb = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.av
  %.pn46 = phi { ptr, i32 } [ %i.ex, %bb.av ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.ey, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bk

bb.ax:                                            ; preds = %bb.ak
  br i1 %i.eb, label %bb.bi, label %bb.ay, !llvm.loop !80

bb.ay:                                            ; preds = %bb.ax
  %14 = load ptr, ptr %0, align 8, !tbaa !35      ; 3 uses
  %15 = load ptr, ptr %i.am, align 8, !tbaa !36   ; 2 uses
  %i.fd = ptrtoint ptr %15 to i64
  %i.fe = ptrtoint ptr %14 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %16 = load ptr, ptr %i.dt, align 8, !tbaa !22
  %17 = icmp ne ptr %14, %15
  %i.fg = icmp sgt i64 %i.ff, 0
  %or.cond = and i1 %17, %i.fg
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.ay
  %i.fh = udiv exact i64 %i.ff, 80
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az, %.lr.ph.preheader.i
  %.0611.i = phi i64 [ %i.fn, %bb.az ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [80 x i8], ptr %14, i64 %.0611.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !22
  %i.fl = invoke noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %16, ptr noundef %i.fk)
          to label %.noexc98 unwind label %bb.bb

.noexc98:                                         ; preds = %.lr.ph.i
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit, label %bb.az

bb.az:                                            ; preds = %.noexc98
  %i.fn = add nuw nsw i64 %.0611.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fn, %i.fh
  br i1 %exitcond.not.i, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.loopexit, label %.lr.ph.i, !llvm.loop !1

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit: ; preds = %.noexc98
  %i.fo = and i64 %.0611.i, 4294967295
  %i.fp = icmp eq i64 %i.fo, 4294967295
  %.pre186 = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  br i1 %i.fp, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, label %bb.bd

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.loopexit: ; preds = %bb.az
  %.pre185 = load ptr, ptr %7, align 8, !tbaa !31
  br label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread: ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.loopexit, %bb.ay, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit
  %18 = phi ptr [ %.pre185, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.loopexit ], [ %i.dt, %bb.ay ], [ %.pre186, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 1, ptr %i.d, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i8 0, ptr %i.e, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i8 0, ptr %i.f, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i8 0, ptr %i.g, align 1, !tbaa !39
  %i.fq = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.fr = invoke noundef nonnull align 8 dereferenceable(76) ptr @_ZNSt6vectorI9t_inpfileSaIS0_EE12emplace_backIJiibbbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.fq)
          to label %bb.ba unwind label %bb.bc     ; 0 uses

bb.ba:                                            ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.bi

bb.bb:                                            ; preds = %.lr.ph.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bc:                                            ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.bk

bb.bd:                                            ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.fu = load ptr, ptr %.pre186, align 8, !tbaa !22
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.6, ptr noundef %i.fu)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.fv = load ptr, ptr %13, align 8, !tbaa !22
  %i.fw = load i64, ptr %i.an, align 8, !tbaa !23
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.fw, ptr %i.fv)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.fx = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ao
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.bf
  %i.fz = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.bh:                                            ; preds = %bb.be
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ao
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.bh
  %i.gf = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.bg
  %.pn42 = phi { ptr, i32 } [ %i.gb, %bb.bg ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.gc, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bk

bb.bi:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.gh = load ptr, ptr %7, align 8, !tbaa !31    ; 3 uses
  %i.gi = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gh, %i.gi
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.go, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gh, %bb.bi ] ; 3 uses
  %i.gj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !26
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.go, %i.gi
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.bi
  %i.gp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gh, %bb.bi ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gt) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.backedge.backedge

bb.bk:                                            ; preds = %bb.bb, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.fs, %bb.bb ], [ %i.ej, %bb.ap ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.ft, %bb.bc ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #24
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.t
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.bk ], [ %i.bn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bq

bb.bm:                                            ; preds = %bb.k
  invoke void @_ZN14WarningHandler20setFileAndLineNumberERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.aw)
          to label %bb.bn unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.gu = load ptr, ptr @debug, align 8, !tbaa !18 ; 2 uses
  %.not39 = icmp eq ptr %i.gu, null
  br i1 %.not39, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gv = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.gw = load ptr, ptr %0, align 8, !tbaa !35
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = sdiv exact i64 %i.gz, 80
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gu, ptr noundef nonnull @.str.7, i64 noundef %i.ha) #24 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void @_ZN3gmx10TextReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.hc = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ae
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.bp
  %i.he = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.bq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bl
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.bl ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3gmx10TextReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.n
  %.pn50.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %bb.bq ], [ %i.az, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.hg = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ae
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.br
  %i.hi = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.g
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.ad, %bb.g ]
  call void @_ZNSt6vectorI9t_inpfileSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3gmx10TextReaderC1EPNS_15TextInputStreamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

declare void @_ZN3gmx10TextReader25setTrimTrailingWhiteSpaceEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN3gmx10TextReader22setTrimTrailingCommentEbc(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i8 noundef signext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3gmx10TextReader8readLineEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare void @_ZN14WarningHandler20setFileAndLineNumberERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare void @_ZN3gmx27splitAndTrimDelimitedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind writable sret(%"class.std::vector.14") align 8, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #4

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #5

declare void @_ZN3gmx11stripStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = udiv exact i64 %i.d, 80
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0611 = phi i64 [ %i.l, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.0611
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %2, ptr noundef %i.i)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.0611, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %i.m = trunc i64 %.0611 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.c, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.m, %bb.c ], [ -1, %.preheader ], [ -1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(76) ptr @_ZNSt6vectorI9t_inpfileSaIS0_EE12emplace_backIJiibbbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9t_inpfileSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterI8inp_compEEEvT_SC_T0_:bb.a
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !22
  store i64 %i.cm, ptr %i.by, align 8, !tbaa !26
  br label %_ZN9t_inpfileaSEOS_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i6.i, %.thread.i12.i
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !22
  br label %_ZN9t_inpfileaSEOS_.exit

_ZN9t_inpfileaSEOS_.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i9.i, %bb.n, %bb.o
  %i.cr = phi ptr [ %.pre.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i9.i ], [ %i.bu, %bb.n ], [ %i.by, %bb.o ]
  %i.cs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.cs, align 8, !tbaa !23
  store i8 0, ptr %i.cr, align 1, !tbaa !26
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !48
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !48
  %i.cw = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cx = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !192

.loopexit:                                        ; preds = %_ZN9t_inpfileaSEOS_.exit, %_ZN9t_inpfileC2EOS_.exit
  %i.cy = call noundef nonnull align 8 dereferenceable(76) ptr @_ZN9t_inpfileaSEOS_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %2) #24 ; 0 uses
  %i.cz = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.f
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit
  %i.db = load i64, ptr %i.f, align 8, !tbaa !26
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.c
  br i1 %i.de, label %_ZN9t_inpfileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.df = load i64, ptr %i.c, align 8, !tbaa !26
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #26
  br label %_ZN9t_inpfileD2Ev.exit

_ZN9t_inpfileD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9t_inpfileSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterI8inp_compEEEvT_T0_(ptr nonnull %.sroa.0.021)
  br label %bb.q

bb.q:                                             ; preds = %_ZN9t_inpfileD2Ev.exit, %bb.p
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 80 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit17, label %bb.b, !llvm.loop !193

.loopexit17:                                      ; preds = %bb.q, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9t_inpfileSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterI8inp_compEEEvT_T0_(ptr %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.t_inpfile, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(76) %0, i64 7, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !24
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  %i.k = load i64, ptr %i.e, align 8, !tbaa !26
  store i64 %i.k, ptr %i.c, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !23
  store ptr %i.e, ptr %i.b, align 8, !tbaa !22
  store i64 0, ptr %i.m, align 8, !tbaa !23
  store i8 0, ptr %i.e, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !24
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN9t_inpfileC2EOS_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !22
  %i.y = load i64, ptr %i.s, align 8, !tbaa !26
  store i64 %i.y, ptr %i.q, align 8, !tbaa !26
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !23
  br label %_ZN9t_inpfileC2EOS_.exit

_ZN9t_inpfileC2EOS_.exit:                         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !23
  store ptr %i.s, ptr %i.p, align 8, !tbaa !22
  store i64 0, ptr %i.aa, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !48
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !48
  %.sroa.0.06 = getelementptr inbounds i8, ptr %0, i64 -80 ; 2 uses
  %i.af = load i32, ptr %1, align 8, !tbaa !44
  %i.ag = load i32, ptr %.sroa.0.06, align 8, !tbaa !44
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9t_inpfileC2EOS_.exit, %.lr.ph
  %.sroa.0.08 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.06, %_ZN9t_inpfileC2EOS_.exit ] ; 4 uses
  %.sroa.03.07 = phi ptr [ %.sroa.0.08, %.lr.ph ], [ %0, %_ZN9t_inpfileC2EOS_.exit ]
  %i.ai = call noundef nonnull align 8 dereferenceable(76) ptr @_ZN9t_inpfileaSEOS_(ptr noundef nonnull align 8 dereferenceable(76) %.sroa.03.07, ptr noundef nonnull align 8 dereferenceable(76) %.sroa.0.08) #24 ; 0 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.0.08, i64 -80 ; 2 uses
  %i.aj = load i32, ptr %1, align 8, !tbaa !44
  %i.ak = load i32, ptr %.sroa.0.0, align 8, !tbaa !44
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph, %_ZN9t_inpfileC2EOS_.exit
  %.sroa.03.0.lcssa = phi ptr [ %0, %_ZN9t_inpfileC2EOS_.exit ], [ %.sroa.0.08, %.lr.ph ]
  %i.am = call noundef nonnull align 8 dereferenceable(76) ptr @_ZN9t_inpfileaSEOS_(ptr noundef nonnull align 8 dereferenceable(76) %.sroa.03.0.lcssa, ptr noundef nonnull align 8 dereferenceable(76) %1) #24 ; 0 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !22  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZN9t_inpfileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.at = load i64, ptr %i.c, align 8, !tbaa !26
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #26
  br label %_ZN9t_inpfileD2Ev.exit

_ZN9t_inpfileD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z17replace_inp_entryN3gmx8ArrayRefI9t_inpfileEEPKcS4_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %.not2426 = icmp eq ptr %0, %1
  br i1 %.not2426, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = udiv exact i64 %.fr, 80
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.sroa.020.027.us = phi ptr [ %i.m, %bb.c ], [ %0, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.020.027.us, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %2, ptr noundef %i.f)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.28, ptr noundef %i.j) #30 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.020.027.us, i64 4
  store i8 1, ptr %i.l, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.020.027.us, i64 80 ; 2 uses
  %.not24.us = icmp eq ptr %i.m, %1
  br i1 %.not24.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.n = icmp sgt i64 %.fr, 0
  br i1 %i.n, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.e
  %.sroa.020.027.us28 = phi ptr [ %i.ah, %bb.e ], [ %0, %.lr.ph.split ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.027.us28, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %2, ptr noundef %i.p)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i.us, label %bb.e

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.split.split.us
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.26, ptr noundef %i.t, ptr noundef nonnull %3) #30 ; 0 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.d, %.lr.ph.preheader.i.us
  %.0611.i.us = phi i64 [ %i.aa, %bb.d ], [ 0, %.lr.ph.preheader.i.us ] ; 4 uses
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.0611.i.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.y = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef nonnull %3, ptr noundef %i.x)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.aa = add nuw nsw i64 %.0611.i.us, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.aa, %i.d
  br i1 %exitcond.not.i.us, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.us, label %.lr.ph.i.us, !llvm.loop !1

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.us: ; preds = %.lr.ph.i.us
  %i.ab = and i64 %.0611.i.us, 2147483648
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.split.us, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.us

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.us: ; preds = %bb.d, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.020.027.us28, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.af = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #24
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.ae, ptr noundef nonnull %3, i64 noundef %i.af) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread.us, %.lr.ph.split.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.020.027.us28, i64 80 ; 2 uses
  %.not24.us29 = icmp eq ptr %i.ah, %1
  br i1 %.not24.us29, label %._crit_edge, label %.lr.ph.split.split.us

._crit_edge:                                      ; preds = %bb.h, %bb.e, %bb.c, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.h
  %.sroa.020.027 = phi ptr [ %i.az, %bb.h ], [ %0, %.lr.ph.split ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %2, ptr noundef %i.aj)
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, label %bb.h

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread: ; preds = %.lr.ph.split.split
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.26, ptr noundef %i.an, ptr noundef nonnull %3) #30 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.ar = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #24
  %i.as = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 0, i64 noundef %i.aq, ptr noundef nonnull %3, i64 noundef %i.ar) ; 0 uses
  br label %bb.h

.split.us:                                        ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(63) @.str.16, i8 noundef zeroext 2)
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.au = and i64 %.0611.i.us, 2147483647
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 277, ptr noundef nonnull @.str.27, ptr noundef %i.at, ptr noundef %i.ax) #25
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.ay

bb.h:                                             ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, %.lr.ph.split.split
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 80 ; 2 uses
  %.not24 = icmp eq ptr %i.az, %1
  br i1 %.not24, label %._crit_edge, label %.lr.ph.split.split
}

declare noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z13mark_einp_setN3gmx8ArrayRefI9t_inpfileEEPKc(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %3 = icmp ne ptr %0, %1
  %i.d = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %3, %i.d
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 80
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.0611.i = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.0611.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %2, ptr noundef %i.h)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = add nuw nsw i64 %.0611.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.e
  br i1 %exitcond.not.i, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, label %.lr.ph.i, !llvm.loop !1

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit: ; preds = %.lr.ph.i
  %i.l = and i64 %.0611.i, 4294967295
  %.not = icmp eq i64 %i.l, 4294967295
  br i1 %.not, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !48
  %sext = shl i64 %.0611.i, 32
  %i.p = ashr exact i64 %sext, 32
  %i.q = getelementptr inbounds [80 x i8], ptr %0, i64 %i.p ; 3 uses
  store i32 %i.n, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  store i8 1, ptr %i.r, align 1, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i8 1, ptr %i.s, align 2, !tbaa !47
  br label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z8get_einpPSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !16
  %i.g = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %2 = ptrtoint ptr %i.i to i64
  %3 = ptrtoint ptr %i.g to i64
  %4 = sub i64 %2, %3                             ; 2 uses
  %5 = icmp ne ptr %i.g, %i.i
  %6 = icmp sgt i64 %4, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = udiv exact i64 %4, 80
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.0611.i = phi i64 [ %i.p, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %.0611.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %1, ptr noundef %i.m)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = add nuw nsw i64 %.0611.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.j
  br i1 %exitcond.not.i, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, label %.lr.ph.i, !llvm.loop !1

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit: ; preds = %.lr.ph.i
  %i.q = trunc i64 %.0611.i to i32                ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, label %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit._crit_edge

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit._crit_edge: ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !49
  br label %bb.d

_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread: ; preds = %bb.b, %bb.a, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i8 0, ptr %i.d, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i8 1, ptr %i.e, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i8 0, ptr %i.f, align 1, !tbaa !39
  %i.s = call noundef nonnull align 8 dereferenceable(76) ptr @_ZNSt6vectorI9t_inpfileSaIS0_EE12emplace_backIJiibbbRPKcRA1_S4_EEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.u = load ptr, ptr %0, align 8, !tbaa !35     ; 4 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = sdiv exact i64 %i.x, 80
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %i.aa = icmp eq i64 %i.x, 80
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i32 1, ptr %i.ab, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit._crit_edge, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread, %bb.c
  %i.ac = phi ptr [ %i.u, %bb.c ], [ %i.u, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread ], [ %.pre, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit._crit_edge ] ; 2 uses
  %..0 = phi i32 [ -1, %bb.c ], [ -1, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread ], [ %i.q, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit._crit_edge ]
  %.0 = phi i64 [ %i.z, %bb.c ], [ %i.z, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit.thread ], [ %.0611.i, %_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc.exit._crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !48 ; 3 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !48
  %sext = shl i64 %.0, 32
  %i.ag = ashr exact i64 %sext, 32
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %i.ag ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 1, ptr %i.ai, align 1, !tbaa !46
  %i.aj = load ptr, ptr @debug, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.29, i32 noundef %i.ae, ptr noundef %i.al) #24 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 %..0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(76) ptr @_ZNSt6vectorI9t_inpfileSaIS0_EE12emplace_backIJiibbbRPKcRA1_S4_EEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.g = load i32, ptr %1, align 4, !tbaa !37
  %i.h = load i32, ptr %2, align 4, !tbaa !37
  %i.i = load i8, ptr %3, align 1, !tbaa !39, !range !41, !noundef !42
  %i.j = load i8, ptr %4, align 1, !tbaa !39, !range !41, !noundef !42
  %i.k = load i8, ptr %5, align 1, !tbaa !39, !range !41, !noundef !42
  %i.l = load ptr, ptr %6, align 8, !tbaa !16     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.m, ptr %8, align 8, !tbaa !24
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.o, ptr %i.b, align 8, !tbaa !25
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !22
  %i.r = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.r, ptr %i.m, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.l, align 1, !tbaa !26
  store i8 %i.t, ptr %i.s, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !23
  %i.w = load ptr, ptr %8, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.y, ptr %9, align 8, !tbaa !24
  %i.z = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1) %7) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.z, ptr %i.a, align 8, !tbaa !25
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i17, label %._crit_edge.i.i16

.noexc.i17:                                       ; preds = %bb.f
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.i   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i17
  store ptr %i.ab, ptr %9, align 8, !tbaa !22
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !26
  br label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %.noexc18, %bb.f
  %i.ad = phi ptr [ %i.ab, %.noexc18 ], [ %i.y, %bb.f ] ; 2 uses
  switch i64 %i.z, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt15__new_allocatorI9t_inpfileE9constructIS0_JiibbbRPKcRA1_S3_EEEvPT_DpOT0_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i16
  %i.ae = load i8, ptr %7, align 1, !tbaa !26
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !26
  br label %_ZNSt15__new_allocatorI9t_inpfileE9constructIS0_JiibbbRPKcRA1_S3_EEEvPT_DpOT0_.exit

bb.h:                                             ; preds = %._crit_edge.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 dereferenceable(1) %7, i64 %i.z, i1 false)
  br label %_ZNSt15__new_allocatorI9t_inpfileE9constructIS0_JiibbbRPKcRA1_S3_EEEvPT_DpOT0_.exit

bb.i:                                             ; preds = %.noexc.i17
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !26
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.af

_ZNSt15__new_allocatorI9t_inpfileE9constructIS0_JiibbbRPKcRA1_S3_EEEvPT_DpOT0_.exit: ; preds = %bb.h, %bb.g, %._crit_edge.i.i16
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !23
  %i.am = load ptr, ptr %9, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i32 %i.g, ptr %i.d, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.i, ptr %i.ao, align 4, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 %i.j, ptr %i.ap, align 1, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 %i.k, ptr %i.aq, align 2, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !24
  %i.at = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.m
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
end_hunk_1
