Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonSubtarget?download=true
inline.NumInlined: 2083
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4llvm16HexagonSubtarget15getSMSMutationsERSt6vectorISt10unique_ptrINS_19ScheduleDAGMutationESt14default_deleteIS3_EESaIS6_EE:bb.a
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.h, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.ad = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep47, align 8, !tbaa !251, !alias.scope !592
  %wide.load48 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !251, !alias.scope !592
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !251, !alias.scope !591
  store <2 x i64> %wide.load48, ptr %i.ae, align 8, !tbaa !251, !alias.scope !591
  %i.af = getelementptr i8, ptr %next.gep47, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep47, align 8, !tbaa !251, !alias.scope !592
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !251, !alias.scope !592
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader66

.lr.ph.i.i.i.i.preheader66:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader66, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader66 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.ah = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !251, !alias.scope !592
  store i64 %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !251, !alias.scope !591
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !251, !alias.scope !592
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !582

_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.aa, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.an) #31
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.e
  store ptr %i.s, ptr %1, align 8, !tbaa !252
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !248
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !249
  br label %_ZNSt10unique_ptrIN4llvm16HexagonSubtarget19UsrOverflowMutationESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm16HexagonSubtarget19UsrOverflowMutationESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  %i.ap = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33, !noalias !593 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm16HexagonSubtarget21HVXMemLatencyMutationE, i64 16), ptr %i.ap, align 8, !tbaa !145, !noalias !593
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !248 ; 6 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !249
  %.not.i.i3 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm16HexagonSubtarget19UsrOverflowMutationESt14default_deleteIS2_EED2Ev.exit
  %i.as = ptrtoint ptr %i.ap to i64
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !251
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.b, align 8, !tbaa !248
  br label %_ZNSt10unique_ptrIN4llvm16HexagonSubtarget21HVXMemLatencyMutationESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4llvm16HexagonSubtarget19UsrOverflowMutationESt14default_deleteIS2_EED2Ev.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !252   ; 7 uses
  %i.av = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i10

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i10: ; preds = %bb.g
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i11, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i12 = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i12)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #33 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = ptrtoint ptr %i.ap to i64
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !251
  %.not10.i.i.i.i13 = icmp eq ptr %i.au, %i.aq
  br i1 %.not10.i.i.i.i13, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i25, label %.lr.ph.i.i.i.i14.preheader

.lr.ph.i.i.i.i14.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i10
  %i.bi = add i64 %i.av, -8
  %i.bj = sub i64 %i.bi, %i.aw                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check51 = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check51, label %.lr.ph.i.i.i.i14.preheader65, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i.i.i14.preheader
  %n.vec53 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.bm = shl i64 %n.vec53, 3                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.au, i64 %i.bm
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.bp = shl i64 %index55, 3                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.bf, i64 %i.bp ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.au, i64 %i.bp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.bq = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !251, !alias.scope !595
  %wide.load59 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !251, !alias.scope !595
  %i.br = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load58, ptr %next.gep56, align 8, !tbaa !251, !alias.scope !594
  store <2 x i64> %wide.load59, ptr %i.br, align 8, !tbaa !251, !alias.scope !594
  %i.bs = getelementptr i8, ptr %next.gep57, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep57, align 8, !tbaa !251, !alias.scope !595
  store <2 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !251, !alias.scope !595
  %index.next60 = add nuw i64 %index55, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.bt, label %middle.block61, label %vector.body54, !llvm.loop !588

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.bl, %n.vec53
  br i1 %cmp.n62, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i25, label %.lr.ph.i.i.i.i14.preheader65

.lr.ph.i.i.i.i14.preheader65:                     ; preds = %.lr.ph.i.i.i.i14.preheader, %middle.block61
  %.012.i.i.i.i15.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i14.preheader ], [ %i.bn, %middle.block61 ]
  %.0911.i.i.i.i16.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i14.preheader ], [ %i.bo, %middle.block61 ]
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.preheader65, %.lr.ph.i.i.i.i14
  %.012.i.i.i.i15 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i14 ], [ %.012.i.i.i.i15.ph, %.lr.ph.i.i.i.i14.preheader65 ] ; 2 uses
  %.0911.i.i.i.i16 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i14 ], [ %.0911.i.i.i.i16.ph, %.lr.ph.i.i.i.i14.preheader65 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.bu = load i64, ptr %.0911.i.i.i.i16, align 8, !tbaa !251, !alias.scope !595
  store i64 %i.bu, ptr %.012.i.i.i.i15, align 8, !tbaa !251, !alias.scope !594
  store ptr null, ptr %.0911.i.i.i.i16, align 8, !tbaa !251, !alias.scope !595
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i16, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i15, i64 8 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bv, %i.aq
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i25, label %.lr.ph.i.i.i.i14, !llvm.loop !589

_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i25: ; preds = %.lr.ph.i.i.i.i14, %middle.block61, %_ZNKSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i10
  %.0.lcssa.i.i.i.i19 = phi ptr [ %i.bf, %_ZNKSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i10 ], [ %i.bn, %middle.block61 ], [ %i.bw, %.lr.ph.i.i.i.i14 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i19, i64 8
  %.not.i23.i27 = icmp eq ptr %i.au, null
  br i1 %.not.i23.i27, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit28, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i25
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ca) #31
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit28

_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit28: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i25, %bb.i
  store ptr %i.bf, ptr %1, align 8, !tbaa !252
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !248
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.cb, ptr %i.d, align 8, !tbaa !249
  br label %_ZNSt10unique_ptrIN4llvm16HexagonSubtarget21HVXMemLatencyMutationESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm16HexagonSubtarget21HVXMemLatencyMutationESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm16HexagonSubtarget6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget22enableMachineSchedulerEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  %1 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisableHexagonMISched, i64 8), align 8, !tbaa !596
  %.not = icmp eq i16 %1, 0
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisableHexagonMISched, i64 120), align 8, !range !146
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = xor i1 %i.b, true
  %.0 = select i1 %.not, i1 true, i1 %i.c
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget18usePredicatedCallsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(519600) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnablePredicatedCalls, i64 120), align 8, !tbaa !178, !range !146, !noundef !150
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonSubtarget14restoreLatencyEPNS_5SUnitES2_(ptr noundef nonnull align 8 dereferenceable(519600) %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDep", align 8        ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !160    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load i32, ptr %i.d, align 8, !tbaa !187  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not78 = icmp eq i32 %i.e, 0
  br i1 %.not78, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 519488
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.n = ptrtoint ptr %1 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

._crit_edge82:                                    ; preds = %bb.o, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph81, %bb.o
  %.04779 = phi ptr [ %i.c, %.lr.ph81 ], [ %i.en, %bb.o ] ; 7 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %.04779, align 8 ; 2 uses
  %i.q = and i64 %.0.copyload.i.i.i.i.i, 6
  %i.r = icmp eq i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.04779, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %.fr84 = freeze i32 %i.t                        ; 8 uses
  %i.u = icmp ne i32 %.fr84, 0
  %i.v = and i1 %i.r, %i.u
  %i.w = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.x = inttoptr i64 %i.w to ptr
  %.not52 = icmp eq ptr %2, %i.x
  %or.cond68 = and i1 %i.v, %.not52
  br i1 %or.cond68, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.b
  %i.y = load i24, ptr %i.h, align 8              ; 5 uses
  %.not83 = icmp eq i24 %i.y, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.z = icmp slt i32 %.fr84, 0
  br i1 %i.z, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !220 ; 3 uses
  %wide.trip.count = zext i24 %i.y to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i24 %i.y, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %wide.trip.count, 16777214
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.us.new
  %indvars.iv88 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next89.1, %bb.e ] ; 4 uses
  %.05072.us = phi i32 [ -1, %.lr.ph.split.us.new ], [ %.2.us.1, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.e ]
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv88 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i32 %i.ad, 255
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us, label %bb.d

_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !160
  %i.ai = icmp eq i32 %i.ah, %.fr84
  %i.aj = and i32 %i.ad, 16777216
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.us = and i1 %i.ai, %i.ak
  %i.al = trunc nuw nsw i64 %indvars.iv88 to i32
  %spec.select.us = select i1 %or.cond.us, i32 %i.al, i32 %.05072.us
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us, %bb.c
  %.2.us = phi i32 [ %spec.select.us, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us ], [ %.05072.us, %bb.c ] ; 2 uses
  %indvars.iv.next89 = or disjoint i64 %indvars.iv88, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv.next89 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %i.ao = and i32 %i.an, 255
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.1, label %bb.e

_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.1: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !160
  %i.as = icmp eq i32 %i.ar, %.fr84
  %i.at = and i32 %i.an, 16777216
  %i.au = icmp ne i32 %i.at, 0
  %or.cond.us.1 = and i1 %i.as, %i.au
  %i.av = trunc nuw nsw i64 %indvars.iv.next89 to i32
  %spec.select.us.1 = select i1 %or.cond.us.1, i32 %i.av, i32 %.2.us
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.1, %bb.d
  %.2.us.1 = phi i32 [ %spec.select.us.1, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.1 ], [ %.2.us, %bb.d ] ; 3 uses
  %indvars.iv.next89.1 = add nuw nsw i64 %indvars.iv88, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !597

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %indvars.iv88.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next89.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05072.us.epil.init = phi i32 [ -1, %.lr.ph.split.us ], [ %.2.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i24 %i.y to i1
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv88.epil.init ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = and i32 %i.ax, 255
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.epil, label %._crit_edge

_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.epil: ; preds = %.epil.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !160
  %i.bc = icmp eq i32 %i.bb, %.fr84
  %i.bd = and i32 %i.ax, 16777216
  %i.be = icmp ne i32 %i.bd, 0
  %or.cond.us.epil = and i1 %i.bc, %i.be
  %i.bf = trunc nuw nsw i64 %indvars.iv88.epil.init to i32
  %spec.select.us.epil = select i1 %or.cond.us.epil, i32 %i.bf, i32 %.05072.us.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.loopexit.unr-lcssa, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.epil, %.epil.preheader, %.preheader
  %.050.lcssa = phi i32 [ -1, %.preheader ], [ %.05072.us.epil.init, %.epil.preheader ], [ %.2.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.us.epil, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit.us.epil ], [ %.2, %bb.h ]
  %i.bg = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.04779, i64 16, i1 false), !tbaa.struct !255
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  %i.bi = load i24, ptr %i.bh, align 8            ; 2 uses
  %.not85 = icmp eq i24 %i.bi, 0
  br i1 %.not85, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.04779, i64 12
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.bl = phi i24 [ %i.cw, %bb.h ], [ %i.y, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.05072 = phi i32 [ %.2, %bb.h ], [ -1, %.lr.ph ] ; 2 uses
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !220
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = and i32 %i.bo, 255
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.split
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !160 ; 3 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !145
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 200
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(519600) %0) #29 ; 2 uses
  %i.bx = icmp eq i32 %i.bs, %.fr84
  br i1 %i.bx, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !608, !noalias !609
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !610, !noalias !609
  %i.cc = zext i32 %i.bs to i64
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !612, !noalias !609
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cg ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !184, !noalias !609 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.ci, 0
end_hunk_0
