inline.NumInlined: 2085
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5eSLIM11eSLIMCirMan16applyDFSOrderingERKSt6vectorIiSaIiEE:bb.a
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i.i27 = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %.not.i.i27)
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #29 ; 10 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dp
  %i.dz = load i64, ptr %i.dj, align 8, !tbaa !33
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !33
  store ptr null, ptr %i.dj, align 8, !tbaa !33
  %.not10.i.i.i.i28 = icmp eq ptr %i.dm, %i.cx
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader

.lr.ph.i.i.i.i29.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25
  %i.ea = add i64 %i.dn, -8
  %i.eb = sub i64 %i.ea, %i.do                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.eb, 56
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i29.preheader154, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i.i.i.i29.preheader
  %scevgep132 = getelementptr i8, ptr %i.dx, i64 8
  %i.ee = add i64 %i.dn, -8
  %i.ef = sub i64 %i.ee, %i.do
  %i.eg = and i64 %i.ef, -8                       ; 2 uses
  %scevgep133 = getelementptr i8, ptr %scevgep132, i64 %i.eg
  %scevgep134 = getelementptr i8, ptr %i.dm, i64 8
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.eg
  %bound0136 = icmp ult ptr %i.dx, %scevgep135
  %bound1137 = icmp ult ptr %i.dm, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.i.i.i.i29.preheader154, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck131
  %n.vec142 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.eh = shl i64 %n.vec142, 3                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dx, i64 %i.eh  ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dm, i64 %i.eh
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.ek = shl i64 %index144, 3                    ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.dx, i64 %i.ek ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.dm, i64 %i.ek ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.el = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <2 x i64>, ptr %next.gep146, align 8, !tbaa !33, !alias.scope !343, !noalias !338
  %wide.load148 = load <2 x i64>, ptr %i.el, align 8, !tbaa !33, !alias.scope !343, !noalias !338
  %i.em = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x i64> %wide.load147, ptr %next.gep145, align 8, !tbaa !33, !alias.scope !346, !noalias !343
  store <2 x i64> %wide.load148, ptr %i.em, align 8, !tbaa !33, !alias.scope !346, !noalias !343
  %i.en = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep146, align 8, !tbaa !33, !alias.scope !343, !noalias !338
  store <2 x ptr> splat (ptr null), ptr %i.en, align 8, !tbaa !33, !alias.scope !343, !noalias !338
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.eo, label %middle.block150, label %vector.body143, !llvm.loop !348

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.ed, %n.vec142
  br i1 %cmp.n151, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29.preheader154

.lr.ph.i.i.i.i29.preheader154:                    ; preds = %vector.memcheck131, %.lr.ph.i.i.i.i29.preheader, %middle.block150
  %.012.i.i.i.i30.ph = phi ptr [ %i.dx, %vector.memcheck131 ], [ %i.dx, %.lr.ph.i.i.i.i29.preheader ], [ %i.ei, %middle.block150 ]
  %.0911.i.i.i.i31.ph = phi ptr [ %i.dm, %vector.memcheck131 ], [ %i.dm, %.lr.ph.i.i.i.i29.preheader ], [ %i.ej, %middle.block150 ]
  br label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %.lr.ph.i.i.i.i29.preheader154, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.er, %.lr.ph.i.i.i.i29 ], [ %.012.i.i.i.i30.ph, %.lr.ph.i.i.i.i29.preheader154 ] ; 2 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i29 ], [ %.0911.i.i.i.i31.ph, %.lr.ph.i.i.i.i29.preheader154 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ep = load i64, ptr %.0911.i.i.i.i31, align 8, !tbaa !33, !alias.scope !341, !noalias !338
  store i64 %i.ep, ptr %.012.i.i.i.i30, align 8, !tbaa !33, !alias.scope !338, !noalias !341
  store ptr null, ptr %.0911.i.i.i.i31, align 8, !tbaa !33, !alias.scope !341, !noalias !338
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.eq, %i.cx
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, label %.lr.ph.i.i.i.i29, !llvm.loop !349

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40: ; preds = %.lr.ph.i.i.i.i29, %middle.block150, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.dx, %_ZNKSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i25 ], [ %i.ei, %middle.block150 ], [ %i.er, %.lr.ph.i.i.i.i29 ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i34, i64 8 ; 2 uses
  %.not.i23.i42 = icmp eq ptr %i.dm, null
  br i1 %.not.i23.i42, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dp) #31
  %.pre78.pre = load i32, ptr %i.p, align 4, !tbaa !79
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44: ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40, %bb.o
  %.pre78 = phi i32 [ %.pre7882, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i40 ], [ %.pre78.pre, %bb.o ] ; 2 uses
  store ptr %i.dx, ptr %2, align 8, !tbaa !49
  store ptr %i.es, ptr %i.o, align 8, !tbaa !50
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dv ; 2 uses
  store ptr %i.et, ptr %i.l, align 8, !tbaa !51
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit16: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44
  %.pre7883 = phi i32 [ %.pre7882, %bb.l ], [ %.pre78, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44 ]
  %i.eu = phi i32 [ %i.cw, %bb.l ], [ %.pre78, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44 ] ; 2 uses
  %i.ev = phi ptr [ %i.cx, %bb.l ], [ %i.et, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44 ] ; 2 uses
  %i.ew = phi ptr [ %i.dl, %bb.l ], [ %i.es, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit44 ] ; 2 uses
  %i.ex = add nuw nsw i32 %.01358, 1              ; 2 uses
  %i.ey = icmp ult i32 %i.ex, %i.eu
  br i1 %i.ey, label %.lr.ph59, label %._crit_edge, !llvm.loop !350
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM11eSLIMCirMan19applyDFSOrderingRecEPNS_11eSLIMCirObjERSt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !209  ; 2 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.a, align 8, !tbaa !210
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not16 = icmp eq ptr %i.g, %i.i
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %1, align 8, !tbaa !8
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 5 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !49
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 3
  %i.v = trunc i64 %i.u to i32
  %i.w = load ptr, ptr %i.n, align 8              ; 2 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.p, %i.y
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.z = ptrtoint ptr %i.w to i64
  store i64 %i.z, ptr %i.p, align 8, !tbaa !33
  store ptr null, ptr %i.n, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !50
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.013.017 = phi ptr [ %i.ac, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.013.017, align 8, !tbaa !33
  tail call void @_ZN5eSLIM11eSLIMCirMan19applyDFSOrderingRecEPNS_11eSLIMCirObjERSt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK5eSLIM11eSLIMCirMan5printEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 7) #30 ; 0 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !84
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #30 ; 0 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.01529 = add i32 %i.d, 1                       ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32
  %i.o = load i32, ptr %i.g, align 4, !tbaa !79
  %i.p = sub nsw i32 %i.n, %i.o
  %i.q = icmp slt i32 %.01529, %i.p
  br i1 %i.q, label %.lr.ph32, label %._crit_edge33

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01423 = phi i32 [ %i.t, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #30 ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.01423) #30 ; 0 uses
  %i.t = add nuw nsw i32 %.01423, 1
  %i.u = load i32, ptr %0, align 8, !tbaa !84
  %.not.not = icmp ult i32 %.01423, %i.u
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !351

._crit_edge33:                                    ; preds = %._crit_edge28, %._crit_edge
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 8) #30 ; 0 uses
  %i.w = load i32, ptr %i.g, align 4, !tbaa !79   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph36.preheader, label %._crit_edge37

.lr.ph36.preheader:                               ; preds = %._crit_edge33
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = trunc i64 %i.ad to i32
  %i.af = sub nsw i32 %i.ae, %i.w
  %i.ag = sext i32 %i.af to i64
  br label %.lr.ph36

.lr.ph32:                                         ; preds = %._crit_edge, %._crit_edge28
  %1 = phi ptr [ %i.bc, %._crit_edge28 ], [ %i.i, %._crit_edge ]
  %.01530 = phi i32 [ %.015, %._crit_edge28 ], [ %.01529, %._crit_edge ] ; 2 uses
  %2 = sext i32 %.01530 to i64                    ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !8
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.aj) #30
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.16, i64 noundef 2) #30 ; 0 uses
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %.not1924 = icmp eq ptr %i.aq, %i.as
  br i1 %.not1924, label %._crit_edge28, label %.lr.ph27

._crit_edge28:                                    ; preds = %.lr.ph27, %.lr.ph32
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 3) #30 ; 0 uses
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %2
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !78
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ay) #30
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.15, i64 noundef 1) #30 ; 0 uses
  %.015 = add nsw i32 %.01530, 1                  ; 2 uses
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !79
  %i.bj = sub nsw i32 %i.bh, %i.bi
  %i.bk = icmp slt i32 %.015, %i.bj
  br i1 %i.bk, label %.lr.ph32, label %._crit_edge33, !llvm.loop !352

.lr.ph27:                                         ; preds = %.lr.ph32, %.lr.ph27
  %.sroa.016.025 = phi ptr [ %i.bp, %.lr.ph27 ], [ %i.aq, %.lr.ph32 ] ; 2 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #30 ; 0 uses
  %i.bm = load ptr, ptr %.sroa.016.025, align 8, !tbaa !33
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !8
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bn) #30 ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %i.bp, %i.as
  br i1 %.not19, label %._crit_edge28, label %.lr.ph27

._crit_edge37:                                    ; preds = %.lr.ph36, %._crit_edge33
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #30 ; 0 uses
  ret void

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %.lr.ph36
  %indvars.iv39 = phi i64 [ %i.ag, %.lr.ph36.preheader ], [ %indvars.iv.next40, %.lr.ph36 ] ; 2 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #30 ; 0 uses
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv39
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !28
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !8
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.by) #30 ; 0 uses
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %sext = shl i64 %i.ce, 29
  %i.cf = ashr i64 %sext, 32
  %i.cg = icmp slt i64 %indvars.iv.next40, %i.cf
  br i1 %i.cg, label %.lr.ph36, label %._crit_edge37, !llvm.loop !353
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK5eSLIM11eSLIMCirMan5printERKNS_10SubcircuitE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 7) #30 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  %.not55 = icmp eq ptr %i.c, %i.e
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #30 ; 0 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %.not5062 = icmp eq ptr %i.g, %i.i
  br i1 %.not5062, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.047.056 = phi ptr [ %i.n, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = load i32, ptr %.sroa.047.056, align 4, !tbaa !75
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #30 ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.k) #30 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.047.056, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge66:                                    ; preds = %._crit_edge61, %._crit_edge
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 8) #30 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %.not5167 = icmp eq ptr %i.q, %i.s
  br i1 %.not5167, label %._crit_edge71, label %.lr.ph70

bb.b:                                             ; preds = %.lr.ph65, %._crit_edge61
  %.sroa.043.063 = phi ptr [ %i.g, %.lr.ph65 ], [ %i.aq, %._crit_edge61 ] ; 2 uses
  %i.t = load i32, ptr %.sroa.043.063, align 4, !tbaa !75
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = load i32, ptr %i.x, align 8, !tbaa !8
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.y) #30
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.16, i64 noundef 2) #30 ; 0 uses
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.u
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not5457 = icmp eq ptr %i.af, %i.ah
  br i1 %.not5457, label %._crit_edge61, label %.lr.ph60

._crit_edge61:                                    ; preds = %.lr.ph60, %bb.b
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 3) #30 ; 0 uses
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.u
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.an) #30
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.15, i64 noundef 1) #30 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.043.063, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.aq, %i.i
  br i1 %.not50, label %._crit_edge66, label %bb.b

.lr.ph60:                                         ; preds = %bb.b, %.lr.ph60
  %.sroa.039.058 = phi ptr [ %i.av, %.lr.ph60 ], [ %i.af, %bb.b ] ; 2 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #30 ; 0 uses
  %i.as = load ptr, ptr %.sroa.039.058, align 8, !tbaa !33
  %i.at = load i32, ptr %i.as, align 8, !tbaa !8
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.at) #30 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.039.058, i64 8 ; 2 uses
  %.not54 = icmp eq ptr %i.av, %i.ah
  br i1 %.not54, label %._crit_edge61, label %.lr.ph60

._crit_edge71:                                    ; preds = %.lr.ph70, %._crit_edge66
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 17) #30 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.031.076 = load ptr, ptr %i.ax, align 8, !tbaa !191 ; 2 uses
  %.not5277 = icmp eq ptr %.sroa.031.076, null
  br i1 %.not5277, label %._crit_edge81, label %.lr.ph80

.lr.ph70:                                         ; preds = %._crit_edge66, %.lr.ph70
  %.sroa.035.068 = phi ptr [ %i.bb, %.lr.ph70 ], [ %i.q, %._crit_edge66 ] ; 2 uses
  %i.ay = load i32, ptr %.sroa.035.068, align 4, !tbaa !75
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #30 ; 0 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ay) #30 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.035.068, i64 4 ; 2 uses
  %.not51 = icmp eq ptr %i.bb, %i.s
  br i1 %.not51, label %._crit_edge71, label %.lr.ph70

.loopexit:                                        ; preds = %.lr.ph75, %.lr.ph80
  %.sroa.031.0 = load ptr, ptr %.sroa.031.078, align 8, !tbaa !191 ; 2 uses
  %.not52 = icmp eq ptr %.sroa.031.0, null
  br i1 %.not52, label %._crit_edge81, label %.lr.ph80

._crit_edge81:                                    ; preds = %.loopexit, %._crit_edge71
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #30 ; 0 uses
  ret void

.lr.ph80:                                         ; preds = %._crit_edge71, %.loopexit
  %.sroa.031.078 = phi ptr [ %.sroa.031.0, %.loopexit ], [ %.sroa.031.076, %._crit_edge71 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.031.078, i64 8
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #30 ; 0 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !75
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bf) #30
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.16, i64 noundef 2) #30 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.031.078, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.031.078, i64 24 ; 2 uses
  %.not5372 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not5372, label %.loopexit, label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph80, %.lr.ph75
  %.sroa.027.073 = phi ptr [ %i.bp, %.lr.ph75 ], [ %i.bj, %.lr.ph80 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.027.073, i64 32
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !75
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 1) #30 ; 0 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bm) #30 ; 0 uses
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.027.073) #32 ; 2 uses
  %.not53 = icmp eq ptr %i.bp, %i.bk
  br i1 %.not53, label %.loopexit, label %.lr.ph75
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK5eSLIM11eSLIMCirMan9duplicateEv(ptr dead_on_unwind noalias writable sret(%"class.eSLIM::eSLIMCirMan") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.10", align 8    ; 6 uses
  %3 = alloca %"class.std::vector.10", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  tail call void @_ZN5eSLIM11eSLIMCirManC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.i) #30
  %i.j = load i32, ptr %1, align 8, !tbaa !84     ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.preheader21

.preheader21:                                     ; preds = %.lr.ph, %bb.a
  %.lcssa23 = phi i32 [ %i.j, %bb.a ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.01639 = add nsw i32 %.lcssa23, 1
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
end_hunk_0
