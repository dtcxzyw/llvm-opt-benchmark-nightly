Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LVReaderHandler?download=true
inline.NumInlined: 4341
inline.NumDeleted: 2731
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !360, !alias.scope !1204, !noalias !1203
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !360, !alias.scope !1204, !noalias !1203
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !360, !alias.scope !1203, !noalias !1204
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !360, !alias.scope !1203, !noalias !1204
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !360, !alias.scope !1204, !noalias !1203
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !360, !alias.scope !1204, !noalias !1203
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !360, !alias.scope !1204, !noalias !1203
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !360, !alias.scope !1203, !noalias !1204
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !360, !alias.scope !1204, !noalias !1203
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1194

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound0 = icmp ult ptr %i.ah, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec42, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.au = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !360, !alias.scope !1207, !noalias !1205
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !tbaa !360, !alias.scope !1207, !noalias !1205
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !360, !alias.scope !1208, !noalias !1207
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !tbaa !360, !alias.scope !1208, !noalias !1207
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !360, !alias.scope !1207, !noalias !1205
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !360, !alias.scope !1207, !noalias !1205
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !1201

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !360, !alias.scope !1206, !noalias !1205
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !360, !alias.scope !1205, !noalias !1206
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !360, !alias.scope !1206, !noalias !1205
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1202

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !589
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !590
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !588
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !589
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #5

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare { i32, ptr } @_ZN4llvm3sys2fs6accessERKNS_5TwineENS1_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(34), i32 noundef) local_unnamed_addr #3

declare void @_ZN4llvm6object20MachOUniversalBinary13ObjectForArchC1EPKS1_j(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm6object15MachOObjectFile13getArchTripleEjjPPKcS4_(ptr dead_on_unwind writable sret(%"class.llvm::Triple") align 8, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZN4llvm11logicalview9LVOptions10getOptionsEv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1210, !nonnull !109, !align !122 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1215
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, ptr noundef %i.f) #18
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i32, ptr, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #13

declare void @_ZNK4llvm6object7Archive5Child7getNextEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected.1473") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEEEvSE_T_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not98 = icmp eq ptr %2, %3
  br i1 %.not98, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132  ; 27 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 7 uses
  %i.q = add i64 %i.a, -8
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check166 = icmp ult i64 %i.r, 200
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck167

vector.memcheck167:                               ; preds = %bb.d
  %i.u = and i64 %i.r, -8                         ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = add i64 %i.u, %i.b
  %i.y = add i64 %i.x, 8
  %i.z = sub i64 %i.y, %i.a
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.z
  %bound0168 = icmp ult ptr %i.h, %i.aa
  %bound1169 = icmp ult ptr %i.p, %i.w
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck167
  %n.vec172 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.ab = shl i64 %n.vec172, 3                    ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ab
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.ae = shl i64 %index174, 3                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.h, i64 %i.ae ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.p, i64 %i.ae ; 4 uses
  %i.af = getelementptr i8, ptr %next.gep176, i64 16
  %wide.load177 = load <2 x i64>, ptr %next.gep176, align 8, !tbaa !113, !alias.scope !1248
  %wide.load178 = load <2 x i64>, ptr %i.af, align 8, !tbaa !113, !alias.scope !1248
  %i.ag = getelementptr i8, ptr %next.gep175, i64 16
  store <2 x i64> %wide.load177, ptr %next.gep175, align 8, !tbaa !113, !alias.scope !1249, !noalias !1248
  store <2 x i64> %wide.load178, ptr %i.ag, align 8, !tbaa !113, !alias.scope !1249, !noalias !1248
  %i.ah = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep176, align 8, !tbaa !113, !alias.scope !1248
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !113, !alias.scope !1248
  %index.next179 = add nuw i64 %index174, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.ai, label %middle.block180, label %vector.body173, !llvm.loop !1219

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.t, %n.vec172
  br i1 %cmp.n181, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck167, %bb.d, %middle.block180
  %.09.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck167 ], [ %i.h, %bb.d ], [ %i.ac, %middle.block180 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck167 ], [ %i.p, %bb.d ], [ %i.ad, %middle.block180 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !113
  store i64 %i.aj, ptr %.09.i.i.i.i.i, align 8, !tbaa !113
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !113
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1220

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block180
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.am, ptr %i.g, align 8, !tbaa !132
  %i.an = ptrtoint ptr %i.p to i64
  %i.ao = sub i64 %i.an, %i.l
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i43:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ay, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.ap, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.h, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !113
  store ptr null, ptr %i.ar, align 8, !tbaa !113
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !113 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i43
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(2816) %i.au) #18, !inline_history !1221
  br label %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i43
  %i.ay = add nsw i64 %.010.i.i.i.i.i, -1
  %i.az = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, !llvm.loop !1222

_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit: ; preds = %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.ba = icmp sgt i64 %i.d, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i44:                               ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bi, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %i.d, %_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bh, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %1, %_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %2, %_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 3 uses
  %i.bb = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !113
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !113
  %i.bc = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !113 ; 3 uses
  store ptr %i.bb, ptr %.0811.i.i.i.i.i, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i45, label %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47, label %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46

_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i44
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(2816) %i.bc) #18, !inline_history !1223
  br label %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47

_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47: ; preds = %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i44
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bi = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, !llvm.loop !1224

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.m ; 6 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bk, %3
  br i1 %.not6.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bl = add i64 %i.a, %i.l
  %i.bm = add i64 %i.bl, -8
  %i.bn = add i64 %i.j, %i.b
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 232
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.br = and i64 %i.bo, -8                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.h, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = add i64 %i.br, %i.j
  %i.bv = add i64 %i.bu, 8
  %i.bw = sub i64 %i.bv, %i.l
  %i.bx = getelementptr i8, ptr %2, i64 %i.bw
  %bound0 = icmp ult ptr %i.h, %i.bx
  %bound1 = icmp ult ptr %i.bk, %i.bt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.by = shl i64 %n.vec, 3                       ; 2 uses
  %i.bz = getelementptr i8, ptr %i.h, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bk, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.cb ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.bk, i64 %i.cb ; 4 uses
  %i.cc = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep133, align 8, !tbaa !113, !alias.scope !1250
  %wide.load134 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !113, !alias.scope !1250
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !113, !alias.scope !1251, !noalias !1250
  store <2 x i64> %wide.load134, ptr %i.cd, align 8, !tbaa !113, !alias.scope !1251, !noalias !1250
  %i.ce = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep133, align 8, !tbaa !113, !alias.scope !1250
  store <2 x ptr> splat (ptr null), ptr %i.ce, align 8, !tbaa !113, !alias.scope !1250
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !1228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader253

.lr.ph.i.i.i.i.preheader253:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader253, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader253 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader253 ] ; 3 uses
  %i.cg = load i64, ptr %.sroa.04.07.i.i.i.i, align 8, !tbaa !113
  store i64 %i.cg, ptr %.08.i.i.i.i, align 8, !tbaa !113
  store ptr null, ptr %.sroa.04.07.i.i.i.i, align 8, !tbaa !113
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ch, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1229

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cj = sub nsw i64 %i.d, %i.n
  %i.ck = getelementptr [8 x i8], ptr %i.h, i64 %i.cj ; 5 uses
  %.not7.i.i.i.i.i48 = icmp eq ptr %1, %i.h
  br i1 %.not7.i.i.i.i.i48, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit
  %i.cl = add i64 %i.j, -8
  %i.cm = sub i64 %i.cl, %i.l                     ; 3 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.cm, 200
  br i1 %min.iters.check142, label %.lr.ph.i.i.i.i.i49.preheader252, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.cp = and i64 %i.cm, -8                       ; 2 uses
  %i.cq = add i64 %i.c, %i.cp
  %i.cr = add i64 %i.cq, 8
  %i.cs = sub i64 %i.cr, %i.m
  %i.ct = getelementptr i8, ptr %i.h, i64 %i.cs
  %i.cu = getelementptr i8, ptr %1, i64 %i.cp
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %bound0144 = icmp ult ptr %i.ck, %i.cv
  %bound1145 = icmp ult ptr %1, %i.ct
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %.lr.ph.i.i.i.i.i49.preheader252, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck143
  %n.vec148 = and i64 %i.co, 4611686018427387900  ; 3 uses
  %i.cw = shl i64 %n.vec148, 3                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ck, i64 %i.cw
  %i.cy = getelementptr i8, ptr %1, i64 %i.cw
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.cz = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.ck, i64 %i.cz ; 2 uses
  %next.gep152 = getelementptr i8, ptr %1, i64 %i.cz ; 4 uses
  %i.da = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <2 x i64>, ptr %next.gep152, align 8, !tbaa !113, !alias.scope !1252
  %wide.load154 = load <2 x i64>, ptr %i.da, align 8, !tbaa !113, !alias.scope !1252
  %i.db = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load153, ptr %next.gep151, align 8, !tbaa !113, !alias.scope !1253, !noalias !1252
  store <2 x i64> %wide.load154, ptr %i.db, align 8, !tbaa !113, !alias.scope !1253, !noalias !1252
  %i.dc = getelementptr i8, ptr %next.gep152, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep152, align 8, !tbaa !113, !alias.scope !1252
  store <2 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !113, !alias.scope !1252
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.dd, label %middle.block156, label %vector.body149, !llvm.loop !1233

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.co, %n.vec148
  br i1 %cmp.n157, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader252

.lr.ph.i.i.i.i.i49.preheader252:                  ; preds = %vector.memcheck143, %.lr.ph.i.i.i.i.i49.preheader, %middle.block156
  %.09.i.i.i.i.i50.ph = phi ptr [ %i.ck, %vector.memcheck143 ], [ %i.ck, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.cx, %middle.block156 ]
  %.sroa.04.08.i.i.i.i.i51.ph = phi ptr [ %1, %vector.memcheck143 ], [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.cy, %middle.block156 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader252, %.lr.ph.i.i.i.i.i49
  %.09.i.i.i.i.i50 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i49 ], [ %.09.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader252 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i51 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.08.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader252 ] ; 3 uses
  %i.de = load i64, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !113
  store i64 %i.de, ptr %.09.i.i.i.i.i50, align 8, !tbaa !113
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !113
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 8
  %.not.i.i.i.i.i52 = icmp eq ptr %i.df, %i.h
  br i1 %.not.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !1234

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block156, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !132
  %i.di = ashr exact i64 %i.m, 3                  ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i56:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62
  %.012.i.i.i.i.i57 = phi i64 [ %i.dr, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %i.di, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 2 uses
  %.0811.i.i.i.i.i58 = phi ptr [ %i.dq, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %1, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 3 uses
  %.0910.i.i.i.i.i59 = phi ptr [ %i.dp, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %2, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 3 uses
  %i.dk = load ptr, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !113
  store ptr null, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !113
  %i.dl = load ptr, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !113 ; 3 uses
  store ptr %i.dk, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i60, label %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62, label %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61

_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(2816) %i.dl) #18, !inline_history !1223
  br label %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62

_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62: ; preds = %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61, %.lr.ph.i.i.i.i.i56
  %i.dp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 8
  %i.dr = add nsw i64 %.012.i.i.i.i.i57, -1
  %i.ds = icmp sgt i64 %.012.i.i.i.i.i57, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, !llvm.loop !1224

bb.e:                                             ; preds = %bb.b
  %i.dt = load ptr, ptr %0, align 8, !tbaa !131   ; 9 uses
  %i.du = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.dv = sub i64 %i.j, %i.du
  %i.dw = ashr exact i64 %i.dv, 3                 ; 4 uses
  %i.dx = sub nsw i64 1152921504606846975, %i.dw
  %i.dy = icmp ult i64 %i.dx, %i.d
  br i1 %i.dy, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.d)
  %i.dz = add nsw i64 %.sroa.speculated.i, %i.dw  ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dw
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 1152921504606846975)
  %i.ec = select i1 %i.ea, i64 1152921504606846975, i64 %i.eb ; 3 uses
  %.not.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.ef = phi ptr [ %i.ee, %bb.g ], [ null, %_ZNKSt6vectorISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not7.i.i.i.i.i64 = icmp eq ptr %i.dt, %1
  br i1 %.not7.i.i.i.i.i64, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65.preheader

.lr.ph.i.i.i.i.i65.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit
  %4 = ptrtoaddr ptr %1 to i64
  %i.eg = add i64 %4, -8
  %i.eh = sub i64 %i.eg, %i.du                    ; 2 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check185 = icmp ult i64 %i.eh, 24
  br i1 %min.iters.check185, label %.lr.ph.i.i.i.i.i65.preheader249, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.i.i.i.i.i65.preheader
  %n.vec187 = and i64 %i.ej, 4611686018427387900  ; 3 uses
  %i.ek = shl i64 %n.vec187, 3                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.ef, i64 %i.ek  ; 2 uses
  %i.em = getelementptr i8, ptr %i.dt, i64 %i.ek
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %i.en = shl i64 %index189, 3                    ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ef, i64 %i.en ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.dt, i64 %i.en ; 4 uses
  %i.eo = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <2 x i64>, ptr %next.gep191, align 8, !tbaa !113
  %wide.load193 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !113
  %i.ep = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %wide.load192, ptr %next.gep190, align 8, !tbaa !113
  store <2 x i64> %wide.load193, ptr %i.ep, align 8, !tbaa !113
  %i.eq = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep191, align 8, !tbaa !113
  store <2 x ptr> splat (ptr null), ptr %i.eq, align 8, !tbaa !113
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.er, label %middle.block195, label %vector.body188, !llvm.loop !1235

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %i.ej, %n.vec187
  br i1 %cmp.n196, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65.preheader249

.lr.ph.i.i.i.i.i65.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i65.preheader, %middle.block195
  %.09.i.i.i.i.i66.ph = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.el, %middle.block195 ]
  %.sroa.04.08.i.i.i.i.i67.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.em, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %.lr.ph.i.i.i.i.i65.preheader249, %.lr.ph.i.i.i.i.i65
  %.09.i.i.i.i.i66 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i65 ], [ %.09.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i65.preheader249 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i67 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i65 ], [ %.sroa.04.08.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i65.preheader249 ] ; 3 uses
  %i.es = load i64, ptr %.sroa.04.08.i.i.i.i.i67, align 8, !tbaa !113
  store i64 %i.es, ptr %.09.i.i.i.i.i66, align 8, !tbaa !113
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i67, align 8, !tbaa !113
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i67, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i66, i64 8 ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.et, %1
  br i1 %.not.i.i.i.i.i68, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65, !llvm.loop !1236

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i65, %middle.block195, %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.ef, %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit ], [ %i.el, %middle.block195 ], [ %i.eu, %.lr.ph.i.i.i.i.i65 ] ; 6 uses
  %i.ev = add i64 %i.a, -8
  %i.ew = sub i64 %i.ev, %i.b                     ; 3 uses
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.ew, 136
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i71.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.ez = and i64 %i.ew, -8
  %i.fa = add i64 %i.ez, 8                        ; 2 uses
  %i.fb = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fa
  %i.fc = getelementptr i8, ptr %2, i64 %i.fa
  %bound0207 = icmp ult ptr %.0.lcssa.i.i.i.i.i69, %i.fc
  %bound1208 = icmp ult ptr %2, %i.fb
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %.lr.ph.i.i.i.i71.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck206
  %n.vec211 = and i64 %i.ey, 4611686018427387900  ; 3 uses
  %i.fd = shl i64 %n.vec211, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fd ; 2 uses
  %i.ff = getelementptr i8, ptr %2, i64 %i.fd
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next218, %vector.body212 ] ; 2 uses
  %i.fg = shl i64 %index213, 3                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fg ; 2 uses
  %next.gep215 = getelementptr i8, ptr %2, i64 %i.fg ; 4 uses
  %i.fh = getelementptr i8, ptr %next.gep215, i64 16
  %wide.load216 = load <2 x i64>, ptr %next.gep215, align 8, !tbaa !113, !alias.scope !1254
  %wide.load217 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !113, !alias.scope !1254
  %i.fi = getelementptr i8, ptr %next.gep214, i64 16
  store <2 x i64> %wide.load216, ptr %next.gep214, align 8, !tbaa !113, !alias.scope !1255, !noalias !1254
  store <2 x i64> %wide.load217, ptr %i.fi, align 8, !tbaa !113, !alias.scope !1255, !noalias !1254
  %i.fj = getelementptr i8, ptr %next.gep215, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep215, align 8, !tbaa !113, !alias.scope !1254
  store <2 x ptr> splat (ptr null), ptr %i.fj, align 8, !tbaa !113, !alias.scope !1254
  %index.next218 = add nuw i64 %index213, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.fk, label %middle.block219, label %vector.body212, !llvm.loop !1240

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %i.ey, %n.vec211
  br i1 %cmp.n220, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76, label %.lr.ph.i.i.i.i71.preheader

.lr.ph.i.i.i.i71.preheader:                       ; preds = %vector.memcheck206, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %middle.block219
  %.08.i.i.i.i72.ph = phi ptr [ %.0.lcssa.i.i.i.i.i69, %vector.memcheck206 ], [ %.0.lcssa.i.i.i.i.i69, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.fe, %middle.block219 ]
  %.sroa.04.07.i.i.i.i73.ph = phi ptr [ %2, %vector.memcheck206 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.ff, %middle.block219 ]
  br label %.lr.ph.i.i.i.i71

.lr.ph.i.i.i.i71:                                 ; preds = %.lr.ph.i.i.i.i71.preheader, %.lr.ph.i.i.i.i71
  %.08.i.i.i.i72 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i71 ], [ %.08.i.i.i.i72.ph, %.lr.ph.i.i.i.i71.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i73 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i71 ], [ %.sroa.04.07.i.i.i.i73.ph, %.lr.ph.i.i.i.i71.preheader ] ; 3 uses
  %i.fl = load i64, ptr %.sroa.04.07.i.i.i.i73, align 8, !tbaa !113
  store i64 %i.fl, ptr %.08.i.i.i.i72, align 8, !tbaa !113
  store ptr null, ptr %.sroa.04.07.i.i.i.i73, align 8, !tbaa !113
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i73, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.fm, %3
  br i1 %.not.i.i.i.i74, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76, label %.lr.ph.i.i.i.i71, !llvm.loop !1241

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76: ; preds = %.lr.ph.i.i.i.i71, %middle.block219
  %.lcssa130 = phi ptr [ %i.fe, %middle.block219 ], [ %i.fn, %.lr.ph.i.i.i.i71 ] ; 7 uses
  %.not7.i.i.i.i.i77 = icmp eq ptr %1, %i.h
  br i1 %.not7.i.i.i.i.i77, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76
  %5 = ptrtoaddr ptr %1 to i64
  %i.fo = add i64 %i.j, -8
  %i.fp = sub i64 %i.fo, %5                       ; 3 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fp, 136
  br i1 %min.iters.check229, label %.lr.ph.i.i.i.i.i78.preheader247, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader
  %i.fs = and i64 %i.fp, -8
  %i.ft = add i64 %i.fs, 8                        ; 2 uses
  %i.fu = getelementptr i8, ptr %.lcssa130, i64 %i.ft
  %i.fv = getelementptr i8, ptr %1, i64 %i.ft
  %bound0231 = icmp ult ptr %.lcssa130, %i.fv
  %bound1232 = icmp ult ptr %1, %i.fu
  %found.conflict233 = and i1 %bound0231, %bound1232
  br i1 %found.conflict233, label %.lr.ph.i.i.i.i.i78.preheader247, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck230
  %n.vec235 = and i64 %i.fr, 4611686018427387900  ; 3 uses
  %i.fw = shl i64 %n.vec235, 3                    ; 2 uses
  %i.fx = getelementptr i8, ptr %.lcssa130, i64 %i.fw ; 2 uses
  %i.fy = getelementptr i8, ptr %1, i64 %i.fw
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.fz = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %.lcssa130, i64 %i.fz ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.fz ; 4 uses
  %i.ga = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep239, align 8, !tbaa !113, !alias.scope !1256
  %wide.load241 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !113, !alias.scope !1256
  %i.gb = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !113, !alias.scope !1257, !noalias !1256
  store <2 x i64> %wide.load241, ptr %i.gb, align 8, !tbaa !113, !alias.scope !1257, !noalias !1256
  %i.gc = getelementptr i8, ptr %next.gep239, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !113, !alias.scope !1256
  store <2 x ptr> splat (ptr null), ptr %i.gc, align 8, !tbaa !113, !alias.scope !1256
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.gd, label %middle.block243, label %vector.body236, !llvm.loop !1245

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.fr, %n.vec235
  br i1 %cmp.n244, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78.preheader247

.lr.ph.i.i.i.i.i78.preheader247:                  ; preds = %vector.memcheck230, %.lr.ph.i.i.i.i.i78.preheader, %middle.block243
  %.09.i.i.i.i.i79.ph = phi ptr [ %.lcssa130, %vector.memcheck230 ], [ %.lcssa130, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.fx, %middle.block243 ]
  %.sroa.04.08.i.i.i.i.i80.ph = phi ptr [ %1, %vector.memcheck230 ], [ %1, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.fy, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader247, %.lr.ph.i.i.i.i.i78
  %.09.i.i.i.i.i79 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i78 ], [ %.09.i.i.i.i.i79.ph, %.lr.ph.i.i.i.i.i78.preheader247 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i80 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i78 ], [ %.sroa.04.08.i.i.i.i.i80.ph, %.lr.ph.i.i.i.i.i78.preheader247 ] ; 3 uses
  %i.ge = load i64, ptr %.sroa.04.08.i.i.i.i.i80, align 8, !tbaa !113
  store i64 %i.ge, ptr %.09.i.i.i.i.i79, align 8, !tbaa !113
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i80, align 8, !tbaa !113
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i80, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i79, i64 8 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.gf, %i.h
  br i1 %.not.i.i.i.i.i81, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78, !llvm.loop !1246

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83: ; preds = %.lr.ph.i.i.i.i.i78, %middle.block243, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76
  %.0.lcssa.i.i.i.i.i82 = phi ptr [ %.lcssa130, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76 ], [ %i.fx, %middle.block243 ], [ %i.gg, %.lr.ph.i.i.i.i.i78 ]
  %.not4.i.i = icmp eq ptr %i.dt, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, %_ZSt8_DestroyISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.gl, %_ZSt8_DestroyISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.dt, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83 ] ; 2 uses
  %i.gh = load ptr, ptr %.05.i.i, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i84, label %_ZSt8_DestroyISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !128
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(2816) %i.gh) #18, !inline_history !1247
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm11logicalview8LVReaderEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gl, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83
  %.not.i85 = icmp eq ptr %i.dt, null
  br i1 %.not.i85, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvT_S8_.exit
  %i.gm = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.gn, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.go) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EEEvT_S8_.exit, %bb.h
  store ptr %i.ef, ptr %0, align 8, !tbaa !131
  store ptr %.0.lcssa.i.i.i.i.i82, ptr %i.g, align 8, !tbaa !132
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ec
  store ptr %i.gp, ptr %i.e, align 8, !tbaa !130
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit: ; preds = %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62, %_ZNSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, %_ZSt13move_backwardIPSt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm11logicalview8LVReaderESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !129}
!1 = distinct !{null}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !129}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !13, i64 0}
!15 = !{!"_ZTSN4llvm5ErrorE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_ZTSSt4lessIN4llvm11logicalview15LVAttributeKindEE"}
!19 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm11logicalview15LVAttributeKindEEE", !18, i64 0}
!20 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!21 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!22 = !{!"_ZTSSt18_Rb_tree_node_base", !20, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!23 = !{!"_ZTSSt15_Rb_tree_header", !22, i64 0, !17, i64 32}
!24 = !{!"_ZTSNSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !19, i64 0, !23, i64 8}
!25 = !{!"_ZTSSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !24, i64 0}
!26 = !{!"_ZTSSt3setIN4llvm11logicalview15LVAttributeKindESt4lessIS2_ESaIS2_EE", !25, i64 0}
!27 = !{!"bool", !9, i64 0}
!28 = !{!"_ZTSN4llvm11logicalview9LVOptions11LVAttributeE", !26, i64 0, !27, i64 48, !27, i64 49, !27, i64 50, !27, i64 51}
!29 = !{!"_ZTSSt4lessIN4llvm11logicalview13LVCompareKindEE"}
!30 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm11logicalview13LVCompareKindEEE", !29, i64 0}
!31 = !{!"_ZTSNSt8_Rb_treeIN4llvm11logicalview13LVCompareKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !30, i64 0, !23, i64 8}
!32 = !{!"_ZTSSt8_Rb_treeIN4llvm11logicalview13LVCompareKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !31, i64 0}
!33 = !{!"_ZTSSt3setIN4llvm11logicalview13LVCompareKindESt4lessIS2_ESaIS2_EE", !32, i64 0}
!34 = !{!"_ZTSN4llvm11logicalview9LVOptions9LVCompareE", !33, i64 0, !27, i64 48, !27, i64 49, !27, i64 50}
!35 = !{!"_ZTSSt4lessIN4llvm11logicalview12LVOutputKindEE"}
!36 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm11logicalview12LVOutputKindEEE", !35, i64 0}
!37 = !{!"_ZTSNSt8_Rb_treeIN4llvm11logicalview12LVOutputKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !36, i64 0, !23, i64 8}
!38 = !{!"_ZTSSt8_Rb_treeIN4llvm11logicalview12LVOutputKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !37, i64 0}
!39 = !{!"_ZTSSt3setIN4llvm11logicalview12LVOutputKindESt4lessIS2_ESaIS2_EE", !38, i64 0}
!40 = !{!"_ZTSN4llvm11logicalview10LVSortModeE", !9, i64 0}
!41 = !{!"p1 omnipotent char", !13, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !17, i64 8, !9, i64 16}
!44 = !{!"_ZTSN4llvm11logicalview9LVOptions8LVOutputE", !39, i64 0, !40, i64 48, !43, i64 56, !10, i64 88}
!45 = !{!"_ZTSSt4lessIN4llvm11logicalview11LVPrintKindEE"}
!46 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm11logicalview11LVPrintKindEEE", !45, i64 0}
!47 = !{!"_ZTSNSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !46, i64 0, !23, i64 8}
!48 = !{!"_ZTSSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !47, i64 0}
end_hunk_0
