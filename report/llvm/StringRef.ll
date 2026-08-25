Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StringRef?download=true
inline.NumInlined: 903
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.r = load i64, ptr %2, align 8, !tbaa !72
  store i64 %i.r, ptr %i.q, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !72
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !72, !alias.scope !170, !noalias !165
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !72, !alias.scope !170, !noalias !165
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !173, !noalias !170
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !72, !alias.scope !173, !noalias !170
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !72, !alias.scope !170, !noalias !165
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !72, !alias.scope !170, !noalias !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !168, !noalias !165
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !72, !alias.scope !165, !noalias !168
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !168, !noalias !165
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !176

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m                     ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.an, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -8
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep40 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep41 = getelementptr i8, ptr %i.au, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec48, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.ay = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !72, !alias.scope !182, !noalias !177
  %wide.load54 = load <2 x i64>, ptr %i.az, align 8, !tbaa !72, !alias.scope !182, !noalias !177
  %i.ba = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !72, !alias.scope !185, !noalias !182
  store <2 x i64> %wide.load54, ptr %i.ba, align 8, !tbaa !72, !alias.scope !185, !noalias !182
  %i.bb = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !72, !alias.scope !182, !noalias !177
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !72, !alias.scope !182, !noalias !177
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bc, label %middle.block56, label %vector.body49, !llvm.loop !187

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !72, !alias.scope !180, !noalias !177
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !72, !alias.scope !177, !noalias !180
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !72, !alias.scope !180, !noalias !177
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !188

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %middle.block56 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !119
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !123
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !117
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !119
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4llvm25ComputeMappedEditDistanceIcZNS_19ComputeEditDistanceIcEEjNS_8ArrayRefIT_EES4_bjEUlRKcE_EEjS4_S4_T0_bj(ptr %0, i64 %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"class.llvm::SmallVector", align 8 ; 8 uses
  %.not = icmp eq i32 %5, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, %3
  %i.b = sub nuw i64 %1, %3
  %i.c = sub nuw i64 %3, %1
  %i.d = select i1 %i.a, i64 %i.b, i64 %i.c
  %i.e = zext i32 %5 to i64
  %.not65 = icmp ugt i64 %i.d, %i.e
  %i.f = add i32 %5, 1
  br i1 %.not65, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.g = add i64 %3, 1                            ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 64, ptr %i.j, align 4, !tbaa !23
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %.preheader.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.g, 64
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %6, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 4) #19
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !22
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.g, %.pre13.i.i.i
  %.pre.pre.pre.pre = load ptr, ptr %6, align 8, !tbaa !20 ; 2 uses
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %bb.d
  %i.m = phi ptr [ %i.h, %bb.d ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.d ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.m, i64 %.pre-phi.i.i3.i
  %i.o = sub i64 %i.g, %.pre-phi.i.i3.i
  %i.p = shl i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !24
  br label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit

_ZN4llvm11SmallVectorIjLj64EEC2Em.exit:           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.pre.pre.pre = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 7 uses
  %i.q = trunc i64 %i.g to i32                    ; 2 uses
  store i32 %i.q, ptr %i.i, align 8, !tbaa !22
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit
  %.not6691 = icmp eq i64 %1, 0
  br i1 %.not6691, label %.thread, label %.lr.ph94

.preheader.thread:                                ; preds = %bb.c
  %.not6691154 = icmp eq i64 %1, 0
  br i1 %.not6691154, label %.thread, label %.lr.ph94.thread

.lr.ph94.thread:                                  ; preds = %.preheader.thread
  %i.s = add i32 %5, 1
  br label %.lr.ph94.split

.lr.ph94:                                         ; preds = %.preheader
  %.not6786 = icmp eq i64 %3, 0
  %i.t = add i32 %5, 1                            ; 2 uses
  br i1 %.not6786, label %.lr.ph94.split.us, label %.lr.ph94.split

.lr.ph94.split.us:                                ; preds = %.lr.ph94
  br i1 %.not, label %.lr.ph94.split.us.split.us.preheader, label %.lr.ph94.split.us.split

.lr.ph94.split.us.split.us.preheader:             ; preds = %.lr.ph94.split.us
  %i.u = add i64 %1, 1
  %umax135 = call i64 @llvm.umax.i64(i64 %i.u, i64 2)
  %i.v = trunc i64 %umax135 to i32
  %i.w = add i32 %i.v, -1
  br label %..thread_crit_edge.split.us

.lr.ph94.split.us.split:                          ; preds = %.lr.ph94.split.us, %bb.e
  %.05392.us = phi i64 [ %i.y, %bb.e ], [ 1, %.lr.ph94.split.us ] ; 2 uses
  %i.x = trunc i64 %.05392.us to i32              ; 3 uses
  %.not116 = icmp ult i32 %5, %i.x
  br i1 %.not116, label %.loopexit.split.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph94.split.us.split
  %i.y = add i64 %.05392.us, 1                    ; 2 uses
  %.not66.us = icmp ugt i64 %i.y, %1
  br i1 %.not66.us, label %..thread_crit_edge.split.us, label %.lr.ph94.split.us.split, !llvm.loop !189

..thread_crit_edge.split.us:                      ; preds = %bb.e, %.lr.ph94.split.us.split.us.preheader
  %.us-phi = phi i32 [ %i.w, %.lr.ph94.split.us.split.us.preheader ], [ %i.x, %bb.e ]
  store i32 %.us-phi, ptr %.pre.pre.pre, align 4, !tbaa !24
  br label %.thread

.loopexit.split.us:                               ; preds = %.lr.ph94.split.us.split
  store i32 %i.x, ptr %.pre.pre.pre, align 4, !tbaa !24
  br label %.loopexit

.lr.ph94.split:                                   ; preds = %.lr.ph94.thread, %.lr.ph94
  %i.z = phi i32 [ %i.s, %.lr.ph94.thread ], [ %i.t, %.lr.ph94 ] ; 2 uses
  %.pre.pre152155160 = phi ptr [ %i.h, %.lr.ph94.thread ], [ %.pre.pre.pre, %.lr.ph94 ] ; 18 uses
  %umax131 = call i64 @llvm.umax.i64(i64 %i.g, i64 2) ; 4 uses
  br i1 %4, label %.lr.ph94.split.split.us, label %.lr.ph94.split.split

.lr.ph94.split.split.us:                          ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us.us.preheader, label %.lr.ph90.us

.lr.ph90.us.us.preheader:                         ; preds = %.lr.ph94.split.split.us
  %i.aa = add i64 %1, 1
  %umax133 = call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  br label %.lr.ph90.us.us

.lr.ph90.us.us:                                   ; preds = %.lr.ph90.us.us.preheader, %._crit_edge.split.us.us.us
  %.05392.us97.us = phi i64 [ %i.as, %._crit_edge.split.us.us.us ], [ 1, %.lr.ph90.us.us.preheader ] ; 3 uses
  %i.ab = trunc i64 %.05392.us97.us to i32        ; 2 uses
  store i32 %i.ab, ptr %.pre.pre152155160, align 4, !tbaa !24
  %i.ac = add i64 %.05392.us97.us, -1             ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph90.us.us
  %i.af = phi i32 [ %i.ab, %.lr.ph90.us.us ], [ %.sroa.speculated.us.us.us, %bb.f ]
  %.05189.us.us.us = phi i64 [ 1, %.lr.ph90.us.us ], [ %i.ar, %bb.f ] ; 3 uses
  %.05288.us.us.us = phi i32 [ %i.ad, %.lr.ph90.us.us ], [ %i.ah, %bb.f ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us.us ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.aj = getelementptr i8, ptr %2, i64 %.05189.us.us.us
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = icmp ne i8 %i.ai, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = add i32 %.05288.us.us.us, %i.an
  %i.ap = call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.af)
  %i.aq = add i32 %i.ap, 1
  %.sroa.speculated.us.us.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.ao) ; 2 uses
  store i32 %.sroa.speculated.us.us.us, ptr %i.ag, align 4, !tbaa !24
  %i.ar = add nuw i64 %.05189.us.us.us, 1         ; 2 uses
  %exitcond132 = icmp eq i64 %i.ar, %umax131
  br i1 %exitcond132, label %._crit_edge.split.us.us.us, label %bb.f, !llvm.loop !190

._crit_edge.split.us.us.us:                       ; preds = %bb.f
  %i.as = add nuw i64 %.05392.us97.us, 1          ; 2 uses
  %exitcond134 = icmp eq i64 %i.as, %umax133
  br i1 %exitcond134, label %.thread, label %.lr.ph90.us.us, !llvm.loop !189

.lr.ph90.us:                                      ; preds = %.lr.ph94.split.split.us, %bb.g
  %.05392.us97 = phi i64 [ %i.ax, %bb.g ], [ 1, %.lr.ph94.split.split.us ] ; 3 uses
  %i.at = trunc i64 %.05392.us97 to i32           ; 3 uses
  store i32 %i.at, ptr %.pre.pre152155160, align 4, !tbaa !24
  %i.au = add i64 %.05392.us97, -1                ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.split.us.us
  %i.ax = add i64 %.05392.us97, 1                 ; 2 uses
  %.not66.us98 = icmp ugt i64 %i.ax, %1
  br i1 %.not66.us98, label %.thread, label %.lr.ph90.us, !llvm.loop !189

bb.h:                                             ; preds = %bb.h, %.lr.ph90.us
  %i.ay = phi i32 [ %i.at, %.lr.ph90.us ], [ %.sroa.speculated.us.us, %bb.h ]
  %.05189.us.us = phi i64 [ 1, %.lr.ph90.us ], [ %i.bk, %bb.h ] ; 3 uses
  %.05288.us.us = phi i32 [ %i.av, %.lr.ph90.us ], [ %i.ba, %bb.h ]
  %.08287.us.us = phi i32 [ %i.at, %.lr.ph90.us ], [ %.sroa.speculated76.us.us, %bb.h ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !24 ; 2 uses
  %i.bb = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.bc = getelementptr i8, ptr %2, i64 %.05189.us.us
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = icmp ne i8 %i.bb, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add i32 %.05288.us.us, %i.bg
  %i.bi = call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.ay)
  %i.bj = add i32 %i.bi, 1
  %.sroa.speculated.us.us = call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bh) ; 3 uses
  store i32 %.sroa.speculated.us.us, ptr %i.az, align 4, !tbaa !24
  %.sroa.speculated76.us.us = call i32 @llvm.umin.i32(i32 %.sroa.speculated.us.us, i32 %.08287.us.us) ; 2 uses
  %i.bk = add nuw i64 %.05189.us.us, 1            ; 2 uses
  %exitcond130 = icmp eq i64 %i.bk, %umax131
  br i1 %exitcond130, label %._crit_edge.split.us.us, label %bb.h, !llvm.loop !190

._crit_edge.split.us.us:                          ; preds = %bb.h
  %.not113.a = icmp ugt i32 %.sroa.speculated76.us.us, %5
  br i1 %.not113.a, label %.loopexit, label %bb.g

.lr.ph94.split.split:                             ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us103.preheader, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.lr.ph94.split.split
  %7 = add i64 %umax131, -1                       ; 3 uses
  %xtraiter = and i64 %7, 1
  %8 = icmp ult i64 %i.g, 3
  %unroll_iter = and i64 %7, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod177 = trunc i64 %7 to i1
  br label %.lr.ph90

.lr.ph90.us103.preheader:                         ; preds = %.lr.ph94.split.split
  %i.bl = add i64 %1, 1
  %umax127 = call i64 @llvm.umax.i64(i64 %i.bl, i64 2)
  %9 = add i64 %umax131, -1                       ; 3 uses
  %xtraiter179 = and i64 %9, 1
  %10 = icmp ult i64 %i.g, 3
  %unroll_iter184 = and i64 %9, -2
  %lcmp.mod182.not = icmp eq i64 %xtraiter179, 0
  %lcmp.mod183 = trunc i64 %9 to i1
  br label %.lr.ph90.us103

.lr.ph90.us103:                                   ; preds = %.lr.ph90.us103.preheader, %._crit_edge.split.us
  %.05392.us105 = phi i64 [ %i.bz, %._crit_edge.split.us ], [ 1, %.lr.ph90.us103.preheader ] ; 3 uses
  %i.bm = trunc i64 %.05392.us105 to i32          ; 3 uses
  store i32 %i.bm, ptr %.pre.pre152155160, align 4, !tbaa !24
  %i.bn = add i64 %.05392.us105, -1               ; 2 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 3 uses
  br i1 %10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph90.us103, %bb.i
  %i.bq = phi i32 [ %storemerge114.1, %bb.i ], [ %i.bm, %.lr.ph90.us103 ]
  %.05189.us = phi i64 [ %24, %bb.i ], [ 1, %.lr.ph90.us103 ] ; 5 uses
  %.05288.us = phi i32 [ %19, %bb.i ], [ %i.bo, %.lr.ph90.us103 ]
  %niter185 = phi i64 [ %niter185.next.1, %bb.i ], [ 0, %.lr.ph90.us103 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !24 ; 2 uses
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !14
  %11 = getelementptr i8, ptr %2, i64 %.05189.us
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !14
  %14 = icmp eq i8 %i.bt, %13
  %15 = call i32 @llvm.umin.i32(i32 %i.bs, i32 %i.bq)
  %16 = add i32 %15, 1
  %storemerge114 = select i1 %14, i32 %.05288.us, i32 %16 ; 2 uses
  store i32 %storemerge114, ptr %i.br, align 4, !tbaa !24
  %17 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %19 = load i32, ptr %18, align 4, !tbaa !24     ; 3 uses
  %20 = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.bu = getelementptr i8, ptr %2, i64 %.05189.us
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %21 = icmp eq i8 %20, %i.bv
  %22 = call i32 @llvm.umin.i32(i32 %19, i32 %storemerge114)
  %23 = add i32 %22, 1
  %storemerge114.1 = select i1 %21, i32 %i.bs, i32 %23 ; 3 uses
  store i32 %storemerge114.1, ptr %18, align 4, !tbaa !24
  %24 = add nuw i64 %.05189.us, 2                 ; 2 uses
  %niter185.next.1 = add nuw i64 %niter185, 2     ; 2 uses
  %i.bw = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %i.bw, label %._crit_edge.split.us.unr-lcssa, label %bb.i, !llvm.loop !190

._crit_edge.split.us.unr-lcssa:                   ; preds = %bb.i
  br i1 %lcmp.mod182.not, label %._crit_edge.split.us, label %bb.j

bb.j:                                             ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph90.us103
  %.epil.init181 = phi i32 [ %i.bm, %.lr.ph90.us103 ], [ %storemerge114.1, %._crit_edge.split.us.unr-lcssa ]
  %.05192.us.epil.init = phi i64 [ 1, %.lr.ph90.us103 ], [ %24, %._crit_edge.split.us.unr-lcssa ] ; 2 uses
  %.05291.us.epil.init = phi i32 [ %i.bo, %.lr.ph90.us103 ], [ %19, %._crit_edge.split.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05192.us.epil.init ; 2 uses
  %25 = load i32, ptr %i.bx, align 4, !tbaa !24
  %26 = load i8, ptr %i.bp, align 1, !tbaa !14
  %27 = getelementptr i8, ptr %2, i64 %.05192.us.epil.init
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load i8, ptr %28, align 1, !tbaa !14
  %30 = icmp eq i8 %26, %29
  %31 = call i32 @llvm.umin.i32(i32 %25, i32 %.epil.init181)
  %i.by = add i32 %31, 1
  %storemerge114.epil = select i1 %30, i32 %.05291.us.epil.init, i32 %i.by
  store i32 %storemerge114.epil, ptr %i.bx, align 4, !tbaa !24
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %bb.j
  %i.bz = add nuw i64 %.05392.us105, 1            ; 2 uses
  %exitcond128 = icmp eq i64 %i.bz, %umax127
  br i1 %exitcond128, label %.thread, label %.lr.ph90.us103, !llvm.loop !189

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, %.lr.ph
  %.05485 = phi i32 [ %i.cc, %.lr.ph ], [ 1, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit ] ; 3 uses
  %i.ca = zext i32 %.05485 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %i.ca
  store i32 %.05485, ptr %i.cb, align 4, !tbaa !24
  %i.cc = add nuw i32 %.05485, 1                  ; 2 uses
  %i.cd = load i32, ptr %i.i, align 8, !tbaa !22
  %i.ce = icmp ugt i32 %i.cd, %i.cc
  br i1 %i.ce, label %.lr.ph, label %.preheader, !llvm.loop !191

bb.k:                                             ; preds = %bb.m
  %i.cf = add i64 %.05392, 1                      ; 2 uses
  %.not66 = icmp ugt i64 %i.cf, %1
  br i1 %.not66, label %.thread, label %.lr.ph90, !llvm.loop !189

.lr.ph90:                                         ; preds = %.lr.ph93.preheader, %bb.k
  %.05392 = phi i64 [ %i.cf, %bb.k ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.cg = trunc i64 %.05392 to i32                ; 5 uses
  store i32 %i.cg, ptr %.pre.pre152155160, align 4, !tbaa !24
  %i.ch = add i64 %.05392, -1                     ; 2 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch ; 3 uses
  br i1 %8, label %bb.l, label %bb.n

._crit_edge.split.a:                              ; preds = %bb.n
  br i1 %lcmp.mod.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.split.a, %.lr.ph90
  %i.ck = phi i32 [ %i.cg, %.lr.ph90 ], [ %storemerge.1, %._crit_edge.split.a ]
  %.05189 = phi i64 [ 1, %.lr.ph90 ], [ %54, %._crit_edge.split.a ] ; 2 uses
  %.05288 = phi i32 [ %i.ci, %.lr.ph90 ], [ %47, %._crit_edge.split.a ]
  %.08287 = phi i32 [ %i.cg, %.lr.ph90 ], [ %.sroa.speculated76.a, %._crit_edge.split.a ]
  call void @llvm.assume(i1 %lcmp.mod177)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !24
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !14
  %32 = getelementptr i8, ptr %2, i64 %.05189
  %i.co = getelementptr i8, ptr %32, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = icmp eq i8 %i.cn, %i.cp
  %33 = call i32 @llvm.umin.i32(i32 %i.cm, i32 %i.ck)
  %34 = add i32 %33, 1
  %storemerge.epil = select i1 %i.cq, i32 %.05288, i32 %34 ; 2 uses
  store i32 %storemerge.epil, ptr %i.cl, align 4, !tbaa !24
  %.sroa.speculated76.epil = call i32 @llvm.umin.i32(i32 %storemerge.epil, i32 %.08287)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.split.a, %bb.l
  %.sroa.speculated76.lcssa = phi i32 [ %.sroa.speculated76.a, %._crit_edge.split.a ], [ %.sroa.speculated76.epil, %bb.l ]
  %.not113 = icmp ugt i32 %.sroa.speculated76.lcssa, %5
  br i1 %.not113, label %.loopexit, label %bb.k

bb.n:                                             ; preds = %.lr.ph90, %bb.n
  %35 = phi i32 [ %storemerge.1, %bb.n ], [ %i.cg, %.lr.ph90 ]
  %.05192 = phi i64 [ %54, %bb.n ], [ 1, %.lr.ph90 ] ; 5 uses
  %.05291 = phi i32 [ %47, %bb.n ], [ %i.ci, %.lr.ph90 ]
  %storemerge.a = phi i32 [ %.sroa.speculated76.a, %bb.n ], [ %i.cg, %.lr.ph90 ]
  %niter = phi i64 [ %i.cr, %bb.n ], [ 0, %.lr.ph90 ]
  %36 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05192 ; 2 uses
  %37 = load i32, ptr %36, align 4, !tbaa !24     ; 2 uses
  %38 = load i8, ptr %i.cj, align 1, !tbaa !14
  %39 = getelementptr i8, ptr %2, i64 %.05192
  %40 = getelementptr i8, ptr %39, i64 -1
  %41 = load i8, ptr %40, align 1, !tbaa !14
  %42 = icmp eq i8 %38, %41
  %43 = call i32 @llvm.umin.i32(i32 %37, i32 %35)
  %44 = add i32 %43, 1
  %storemerge = select i1 %42, i32 %.05291, i32 %44 ; 3 uses
  store i32 %storemerge, ptr %36, align 4, !tbaa !24
  %.sroa.speculated76 = call i32 @llvm.umin.i32(i32 %storemerge, i32 %storemerge.a)
  %45 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05192
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 4 ; 2 uses
  %47 = load i32, ptr %46, align 4, !tbaa !24     ; 3 uses
  %48 = load i8, ptr %i.cj, align 1, !tbaa !14
  %49 = getelementptr i8, ptr %2, i64 %.05192
  %50 = load i8, ptr %49, align 1, !tbaa !14
  %51 = icmp eq i8 %48, %50
  %52 = call i32 @llvm.umin.i32(i32 %47, i32 %storemerge)
  %53 = add i32 %52, 1
  %storemerge.1 = select i1 %51, i32 %37, i32 %53 ; 4 uses
  store i32 %storemerge.1, ptr %46, align 4, !tbaa !24
  %.sroa.speculated76.a = call i32 @llvm.umin.i32(i32 %storemerge.1, i32 %.sroa.speculated76) ; 3 uses
  %54 = add nuw i64 %.05192, 2                    ; 2 uses
  %i.cr = add nuw i64 %niter, 2                   ; 2 uses
  %exitcond = icmp eq i64 %i.cr, %unroll_iter
  br i1 %exitcond, label %._crit_edge.split.a, label %bb.n, !llvm.loop !190

.thread:                                          ; preds = %bb.k, %._crit_edge.split.us, %bb.g, %._crit_edge.split.us.us.us, %.preheader.thread, %..thread_crit_edge.split.us, %.preheader
  %.pre.pre152156 = phi ptr [ %i.h, %.preheader.thread ], [ %.pre.pre152155160, %._crit_edge.split.us ], [ %.pre.pre152155160, %bb.g ], [ %.pre.pre152155160, %._crit_edge.split.us.us.us ], [ %.pre.pre.pre, %.preheader ], [ %.pre.pre.pre, %..thread_crit_edge.split.us ], [ %.pre.pre152155160, %bb.k ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152156, i64 %3
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %._crit_edge.split.us.us, %.loopexit.split.us, %.thread
  %.pre.pre152157 = phi ptr [ %.pre.pre152156, %.thread ], [ %.pre.pre.pre, %.loopexit.split.us ], [ %.pre.pre152155160, %._crit_edge.split.us.us ], [ %.pre.pre152155160, %bb.m ] ; 2 uses
  %.5 = phi i32 [ %i.ct, %.thread ], [ %i.t, %.loopexit.split.us ], [ %i.z, %._crit_edge.split.us.us ], [ %i.z, %bb.m ]
  %i.cu = icmp eq ptr %.pre.pre152157, %i.h
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  call void @free(ptr noundef %.pre.pre152157) #19
  br label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit

_ZN4llvm11SmallVectorIjLj64EED2Ev.exit:           ; preds = %.loopexit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit
  %.6 = phi i32 [ %.5, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit ], [ %i.f, %bb.b ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTSN4llvm9StringRefE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!9, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = !{!21, !11, i64 0}
!21 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !11, i64 0, !5, i64 8, !5, i64 12}
!22 = !{!21, !5, i64 8}
!23 = !{!21, !5, i64 12}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = !{!29, !10, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!30 = !{!31, !12, i64 8}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !12, i64 8, !6, i64 16}
!32 = !{!12, !12, i64 0}
!33 = !{!31, !10, i64 0}
!34 = distinct !{!34, !17, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 8, i32 24}
!38 = distinct !{!38, !17, !35, !36}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !17, !35}
!42 = distinct !{!42, !17, !35, !36}
!43 = distinct !{!43, !17, !35, !36}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !17, !35}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = !{i64 0, i64 8, !13, i64 8, i64 8, !32}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = distinct !{!63, !17}
!64 = !{!65, !65, i64 0}
!65 = !{!"long long", !6, i64 0}
!66 = !{!67, !5, i64 8}
!67 = !{!"_ZTSN4llvm5APIntE", !6, i64 0, !5, i64 8}
!68 = distinct !{!68, !17}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4llvm8ExpectedINS_11APFloatBase8opStatusEE9takeErrorEv: argument 0"}
!71 = distinct !{!71, !"_ZN4llvm8ExpectedINS_11APFloatBase8opStatusEE9takeErrorEv"}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !11, i64 0}
!74 = !{!75, !73, i64 0}
!75 = !{!"_ZTSN4llvm5ErrorE", !73, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"vtable pointer", !7, i64 0}
!78 = distinct !{null, null, null, null}
!79 = !{!80, !80, i64 0}
!80 = !{!"_ZTSN4llvm11APFloatBase8opStatusE", !6, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"double", !6, i64 0}
!83 = distinct !{null, null, null}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!86 = distinct !{!86, !"_ZN4llvm5Error11takePayloadEv"}
!87 = distinct !{null}
!88 = !{!89, !89, i64 0}
!89 = !{!"p1 _ZTSSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EE", !11, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!92 = distinct !{!92, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!93 = distinct !{null, null, null}
!94 = !{!95, !91}
!95 = distinct !{!95, !96, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!96 = distinct !{!96, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!97 = distinct !{null, null, null}
!98 = !{!99, !91}
!99 = distinct !{!99, !100, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!100 = distinct !{!100, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!101 = distinct !{null}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!104 = distinct !{!104, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!105 = !{!106, !103}
!106 = distinct !{!106, !107, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!107 = distinct !{!107, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!108 = !{!109, !103}
!109 = distinct !{!109, !110, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!110 = distinct !{!110, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!111 = distinct !{null, null}
!112 = distinct !{null}
!113 = !{}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!116 = distinct !{!116, !"_ZN4llvm5Error11takePayloadEv"}
!117 = !{!118, !89, i64 8}
!118 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!119 = !{!118, !89, i64 16}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!122 = distinct !{!122, !"_ZN4llvm5Error11takePayloadEv"}
!123 = !{!118, !89, i64 0}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!129 = !{!128, !130}
!130 = distinct !{!130, !131}
end_hunk_0
