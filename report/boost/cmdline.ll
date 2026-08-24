Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/cmdline?download=true
inline.NumInlined: 1346
inline.NumDeleted: 496
begin_hunk_0_@_ZN5boost15program_options6detail7cmdline16parse_terminatorERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.k   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i.i17
  store ptr %i.at, ptr %i.am, align 8, !tbaa !14
  %i.au = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !16
  br label %._crit_edge.i.i.i15

._crit_edge.i.i.i15:                              ; preds = %.noexc18, %bb.c
  %i.av = phi ptr [ %i.at, %.noexc18 ], [ %i.ao, %bb.c ] ; 2 uses
  switch i64 %i.ar, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i16
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i15
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !16
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i16

bb.e:                                             ; preds = %._crit_edge.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i16: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i15
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !17
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.bc, ptr %i.v, align 8, !tbaa !43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit20

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit20 unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i16, %bb.f
  store i32 2147483647, ptr %i.s, align 8, !tbaa !76
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !69  ; 3 uses
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !73
  %.not.i21 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit20
  invoke void @_ZN5boost15program_options12basic_optionIcEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(90) %i.bd, ptr noundef nonnull align 8 dereferenceable(90) %3)
          to label %.noexc22 unwind label %bb.k

.noexc22:                                         ; preds = %bb.g
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  store ptr %i.bg, ptr %i.x, align 8, !tbaa !69
  br label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit20
  invoke void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(90) %3)
          to label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit unwind label %bb.k

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc22, %bb.h
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !42  ; 3 uses
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i29, label %.lr.ph.i.i.i.i24

.lr.ph.i.i.i.i24:                                 ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27
  %.05.i.i.i.i25 = phi ptr [ %i.bo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27 ], [ %i.bh, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i.i25, align 8, !tbaa !14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i25, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i26: ; preds = %.lr.ph.i.i.i.i24
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27: ; preds = %.lr.ph.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i26
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i25, i64 32 ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i.i28, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i24, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i27
  %.pr.i.i = load ptr, ptr %i.u, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i29

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i29: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit
  %i.bp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bh, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i29
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i29
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i
  %.05.i.i.i3.i = phi ptr [ %i.cb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i ], [ %i.bu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.bw = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !14 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %.lr.ph.i.i.i2.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.cb, %i.bv
  br i1 %.not.i.i.i6.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i, label %.lr.ph.i.i.i2.i, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i
  %.pr.i8.i = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cc = phi ptr [ %.pr.i8.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i ], [ %i.bu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i10.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i10.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i
  %i.cd = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i: ; preds = %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i
  %i.ch = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.q
  br i1 %i.ci, label %_ZN5boost15program_options12basic_optionIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i
  %i.cj = load i64, ptr %i.q, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #28
  br label %_ZN5boost15program_options12basic_optionIcED2Ev.exit

_ZN5boost15program_options12basic_optionIcED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cl = add i32 %.036, 1                        ; 2 uses
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 5
  %i.ct = icmp ugt i64 %i.cs, %i.cm
  br i1 %i.ct, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit._crit_edge, !llvm.loop !130

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %.noexc.i.i17, %bb.b
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  resume { ptr, i32 } %i.cu

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit._crit_edge, %.split
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options6detail7cmdline13finish_optionERNS0_12basic_optionIcEERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKS6_INS_10function_nIS6_IS4_SaIS4_EEJSF_EEESaISJ_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.boost::bad_function_call", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.boost::program_options::unknown_option", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.boost::shared_ptr", align 8 ; 7 uses
  %10 = alloca %"class.boost::shared_ptr", align 8 ; 7 uses
  %11 = alloca %"class.boost::program_options::invalid_command_line_syntax", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::vector.20", align 8   ; 8 uses
  %17 = alloca %"class.std::vector", align 8      ; 11 uses
  %18 = alloca %"class.std::vector.20", align 8   ; 10 uses
  %19 = alloca %"class.boost::program_options::invalid_command_line_syntax", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.boost::program_options::invalid_command_line_syntax", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.dc, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !8
  %i.h = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.e, ptr %i.c, align 8, !tbaa !12
  %i.i = icmp ugt i64 %i.e, 15
  br i1 %i.i, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !14
  %i.k = load i64, ptr %i.c, align 8, !tbaa !12
  store i64 %i.k, ptr %i.g, align 8, !tbaa !16
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i64 %i.e, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.h, align 1, !tbaa !16
  store i8 %i.l, ptr %i.g, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i.thread ], [ %i.g, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.h, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = load ptr, ptr %5, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %.not79 = icmp eq ptr %i.t, %i.u
  br i1 %.not79, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21   ; 3 uses
  %i.aa = and i32 %i.z, 512
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = and i32 %i.z, 1024
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = and i32 %i.z, 2048
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = invoke noundef ptr @_ZNK5boost15program_options19options_description12find_nothrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb(ptr noundef nonnull align 8 dereferenceable(128) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.ab, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.af)
          to label %bb.g unwind label %bb.j       ; 4 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.not80 = icmp eq ptr %i.ag, null
  br i1 %.not80, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !34, !range !131, !noundef !132
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 1, ptr %i.ak, align 8, !tbaa !133
  br label %.critedge

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.cv

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5boost15program_options14unknown_optionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5boost15throw_exceptionINS_15program_options14unknown_optionEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(184) %6) #26
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost15program_options22error_with_option_nameD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %6) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.q ], [ %i.an, %bb.p ] ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.cv

bb.s:                                             ; preds = %bb.g
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5boost15program_options18option_description3keyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %bb.s
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112 unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNK5boost15program_options18option_description8semanticEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %i.ag)
          to label %bb.u unwind label %bb.al

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  %i.av = load ptr, ptr %9, align 8, !tbaa !79    ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %bb.v unwind label %bb.am      ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !84 ; 7 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.x, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
end_hunk_0
begin_hunk_1_@_ZN5boost15program_options6detail7cmdline13finish_optionERNS0_12basic_optionIcEERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKS6_INS_10function_nIS6_IS4_SaIS4_EEJSF_EEESaISJ_EE:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #25, !inline_history !86
  br label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit114

_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit114: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !43 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !42 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 5                 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43 ; 2 uses
  %i.cr = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = lshr exact i64 %i.cu, 5
  %i.cw = add nsw i64 %i.cv, %i.co
  %i.cx = trunc i64 %i.cw to i32
  %.not87 = icmp ugt i32 %i.az, %i.cx
  br i1 %.not87, label %bb.cl, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit114
  %i.cy = icmp eq ptr %i.ck, %i.cj
  %i.cz = icmp ne i32 %i.bs, 0
  %or.cond.not = or i1 %i.cz, %i.cy
  br i1 %or.cond.not, label %bb.aw, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5boost15program_options14invalid_syntaxC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i(ptr noundef nonnull align 8 dereferenceable(188) %11, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 0)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost15program_options27invalid_command_line_syntaxE, i64 16), ptr %11, align 8, !tbaa !51
  invoke void @_ZN5boost15throw_exceptionINS_15program_options27invalid_command_line_syntaxEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(188) %11) #26
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.t, %bb.s
  %i.da = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.cv

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  %i.db = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.an

bb.am:                                            ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn83 = phi { ptr, i32 } [ %i.dc, %bb.am ], [ %i.db, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cv

bb.ao:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.aq

bb.ap:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn85 = phi { ptr, i32 } [ %i.de, %bb.ap ], [ %i.dd, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cv

bb.ar:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.as:                                            ; preds = %bb.ag
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.at:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.av

bb.au:                                            ; preds = %bb.ai
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost15program_options22error_with_option_nameD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %11) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn103 = phi { ptr, i32 } [ %i.di, %bb.au ], [ %i.dh, %bb.at ] ; 2 uses
  %i.dj = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.av
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !16
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.as
  %.pn103.pn = phi { ptr, i32 } [ %i.dg, %bb.as ], [ %.pn103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn103, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.do = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !16
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.ar
  %.pn103.pn.pn = phi { ptr, i32 } [ %i.df, %bb.ar ], [ %.pn103.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %.pn103.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cv

bb.aw:                                            ; preds = %bb.ae
  %i.dt = icmp eq ptr %i.cr, %i.cq
  br i1 %i.dt, label %.critedge, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.aw
  %i.du = zext i32 %i.az to i64
  %.not = icmp ugt i64 %i.co, %i.du
  %i.dv = trunc nuw i64 %i.co to i32              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not93370372 = icmp eq i32 %i.az, %i.dv
  %.not93370 = select i1 %.not, i1 true, i1 %.not93370372
  br i1 %.not93370, label %.critedge, label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph246
  %i.ef = xor i32 %i.dv, -1
  %i.eg = add i32 %i.az, %i.ef
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit162
  %i.eh = add i32 %i.ei, -1
  %.not93 = icmp eq i32 %i.ei, 0
  br i1 %.not93, label %.critedge, label %bb.ay, !llvm.loop !134

bb.ay:                                            ; preds = %.lr.ph371, %bb.ax
  %i.ei = phi i32 [ %i.eg, %.lr.ph371 ], [ %i.eh, %bb.ax ] ; 2 uses
  %i.ej = phi ptr [ %i.cr, %.lr.ph371 ], [ %i.md, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.ek = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %.noexc unwind label %bb.bb    ; 4 uses

.noexc:                                           ; preds = %bb.ay
  store ptr %i.ek, ptr %17, align 8, !tbaa !42
  store ptr %i.ek, ptr %i.dw, align 8, !tbaa !43
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store ptr %i.el, ptr %i.dx, align 8, !tbaa !46
  %i.em = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RKT1_(ptr noundef nonnull %i.ek, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ej)
          to label %.lr.ph.preheader unwind label %bb.az

bb.az:                                            ; preds = %.noexc
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE ; 2 uses
  %i.eo = load ptr, ptr %17, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i, label %.body, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ep = load ptr, ptr %i.dx, align 8, !tbaa !46
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #28
  br label %.body

.lr.ph.preheader:                                 ; preds = %.noexc
  store ptr %i.em, ptr %i.dw, align 8, !tbaa !43
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit
  %i.et = phi ptr [ %i.fn, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit ], [ null, %.lr.ph.preheader ] ; 5 uses
  %i.eu = phi ptr [ %i.fp, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.050244 = phi i32 [ %i.hk, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ev = zext i32 %.050244 to i64                ; 2 uses
  %i.ew = load ptr, ptr %i.dz, align 8, !tbaa !57
  %i.ex = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 5
  %i.fc = icmp ugt i64 %i.fb, %i.ev
  br i1 %i.fc, label %bb.bc, label %.critedge3.thread

bb.bb:                                            ; preds = %bb.ay
  %i.fd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %.body

bb.bc:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %i.ev ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !18, !noalias !135 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i121, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !135
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.25)
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost17bad_function_callE, i64 16), ptr %4, align 8, !tbaa !51, !noalias !135
  invoke void @_ZN5boost15throw_exceptionINS_17bad_function_callEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
          to label %bb.be unwind label %bb.bf, !noalias !135

bb.be:                                            ; preds = %.noexc122
  unreachable

bb.bf:                                            ; preds = %.noexc122
  %i.fg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !135
  br label %.body123

bb.bg:                                            ; preds = %bb.bc
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = and i64 %i.fh, -2
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !65, !noalias !135
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  invoke void %i.fl(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i unwind label %.loopexit, !inline_history !66

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.bg
  %i.fn = load ptr, ptr %18, align 8, !tbaa !71   ; 4 uses
  store ptr %i.fn, ptr %16, align 8, !tbaa !71
  %i.fo = load ptr, ptr %i.eb, align 8, !tbaa !69 ; 3 uses
  store ptr %i.fo, ptr %i.dy, align 8, !tbaa !69
  %i.fp = load ptr, ptr %i.ec, align 8, !tbaa !73 ; 3 uses
  store ptr %i.fp, ptr %i.ea, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i1.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.fq = ptrtoint ptr %i.eu to i64
  %i.fr = ptrtoint ptr %i.et to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.fs) #28
  %.pre = load ptr, ptr %18, align 8, !tbaa !71   ; 3 uses
  %.pre248 = load ptr, ptr %i.eb, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre248
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit, %_ZN5boost15program_options12basic_optionIcED2Ev.exit204
  %.05.i.i.i = phi ptr [ %i.he, %_ZN5boost15program_options12basic_optionIcED2Ev.exit204 ], [ %.pre, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit ] ; 9 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !42 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i.i178 = icmp eq ptr %i.fu, %i.fw
  br i1 %.not4.i.i.i.i178, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i186, label %.lr.ph.i.i.i.i179

.lr.ph.i.i.i.i179:                                ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i182
  %.05.i.i.i.i180 = phi ptr [ %i.gc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i182 ], [ %i.fu, %.lr.ph.i.i.i ] ; 3 uses
  %i.fx = load ptr, ptr %.05.i.i.i.i180, align 8, !tbaa !14 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i180, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i181: ; preds = %.lr.ph.i.i.i.i179
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !16
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i182

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i182: ; preds = %.lr.ph.i.i.i.i179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i181
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i180, i64 32 ; 2 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.gc, %i.fw
  br i1 %.not.i.i.i.i183, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i184, label %.lr.ph.i.i.i.i179, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i184: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i182
  %.pr.i.i185 = load ptr, ptr %i.ft, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i186

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i186: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i184, %.lr.ph.i.i.i
  %i.gd = phi ptr [ %.pr.i.i185, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i184 ], [ %i.fu, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i187 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i1.i.i187, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i188, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i186
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !46
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i188

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i188: ; preds = %bb.bh, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i186
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !42 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i1.i189 = icmp eq ptr %i.gk, %i.gm
  br i1 %.not4.i.i.i1.i189, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i197, label %.lr.ph.i.i.i2.i190

.lr.ph.i.i.i2.i190:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i188, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i193
  %.05.i.i.i3.i191 = phi ptr [ %i.gs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i193 ], [ %i.gk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i188 ] ; 3 uses
  %i.gn = load ptr, ptr %.05.i.i.i3.i191, align 8, !tbaa !14 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i191, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i192: ; preds = %.lr.ph.i.i.i2.i190
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !16
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i193

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i193: ; preds = %.lr.ph.i.i.i2.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i192
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i191, i64 32 ; 2 uses
  %.not.i.i.i6.i194 = icmp eq ptr %i.gs, %i.gm
  br i1 %.not.i.i.i6.i194, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i195, label %.lr.ph.i.i.i2.i190, !llvm.loop !44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i195: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i193
  %.pr.i8.i196 = load ptr, ptr %i.gj, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i197

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i197: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i195, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i188
  %i.gt = phi ptr [ %.pr.i8.i196, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i195 ], [ %i.gk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i188 ] ; 3 uses
  %.not.i.i1.i10.i198 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i1.i10.i198, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i199, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i197
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !46
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i199

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i199: ; preds = %bb.bi, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i197
end_hunk_1
