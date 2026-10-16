Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/PassManager?download=true
inline.NumInlined: 478
inline.NumDeleted: 337
begin_hunk_0_@_ZNK6hermes12_GLOBAL__N_112DumpFunction13dumpIfEnabledEPNS_8FunctionERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE:bb.a

_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread: ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143, !nonnull !31, !align !32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !108  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull @.str.5, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread
  store i8 10, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.ac = phi ptr [ %.pre, %bb.c ], [ %i.ab, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.z, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %4, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %3, i64 noundef %4) #14 ; 2 uses
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %3, i64 %4, i1 false)
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %4 ; 2 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.f, %bb.g
  %i.an = phi ptr [ %.pre19, %bb.e ], [ %i.am, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.ak, %bb.e ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.f ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 32, ptr %i.an, align 1
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

_ZN4llvh11raw_ostreamlsEPKc.exit11:               ; preds = %bb.h, %bb.i
  %i.av = phi ptr [ %.pre21, %bb.h ], [ %i.au, %bb.i ] ; 3 uses
  %.0.i.i10 = phi ptr [ %i.ar, %bb.h ], [ %.0.i, %bb.i ] ; 5 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %.sroa.2.0.copyload.i, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %i.bf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i10, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #14 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %.not.i12 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i12, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.2.0.copyload.i ; 2 uses
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14:    ; preds = %bb.j, %bb.k, %bb.l
  %i.bi = phi ptr [ %.pre23, %bb.j ], [ %i.bh, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %.0.i13 = phi ptr [ %i.bf, %bb.j ], [ %.0.i.i10, %bb.l ], [ %.0.i.i10, %bb.k ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !107
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14
  %i.bp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i13, ptr noundef nonnull @.str.7, i64 noundef 2) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit17

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24 ; 2 uses
  store i16 2570, ptr %i.bi, align 1
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !108
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit17

_ZN4llvh11raw_ostreamlsEPKc.exit17:               ; preds = %bb.m, %bb.n
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !143, !nonnull !31, !align !32
  call void @_ZNK6hermes8Function4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(36) %i.bt) #14
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit, %_ZN4llvh11raw_ostreamlsEPKc.exit17, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #16
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !15
  store i64 %i.r, ptr %i.q, align 8, !tbaa !15
  store ptr null, ptr %2, align 8, !tbaa !15
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !15, !alias.scope !158
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !15, !alias.scope !158
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !15, !alias.scope !157
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !15, !alias.scope !157
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !15, !alias.scope !158
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !15, !alias.scope !158
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !15, !alias.scope !158
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !15, !alias.scope !157
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !15, !alias.scope !158
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !148

_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !15, !alias.scope !163
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !tbaa !15, !alias.scope !163
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !15, !alias.scope !164, !noalias !165
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !tbaa !15, !alias.scope !164, !noalias !165
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !15, !alias.scope !163
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !15, !alias.scope !163
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !155

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !15, !alias.scope !162
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !15, !alias.scope !161
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !15, !alias.scope !162
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !156

_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #15
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !12
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !19
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTSN6hermes22CodeGenerationSettingsE", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 _ZTSSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EE", !7, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 8}
!14 = !{!"p1 _ZTSN6hermes4PassE", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"vtable pointer", !3, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !10, i64 16}
!20 = !{!"_ZTSN6hermes4Pass8PassKindE", !4, i64 0}
!21 = !{!"p1 omnipotent char", !7, i64 0}
!22 = !{!"long", !4, i64 0}
!23 = !{!"_ZTSN4llvh9StringRefE", !21, i64 0, !22, i64 8}
!24 = !{!"_ZTSN6hermes4PassE", !20, i64 8, !23, i64 16}
!25 = !{!24, !20, i64 8}
!26 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !11, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE", !27, i64 0}
!29 = !{!"_ZTSN6hermes11PassManagerE", !8, i64 0, !28, i64 8}
!30 = !{!29, !8, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!21, !21, i64 0}
!34 = !{!22, !22, i64 0}
!35 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !7, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!"bool", !4, i64 0}
!39 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !4, i64 0}
!40 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !39, i64 0}
!41 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !5, i64 0, !5, i64 0, !5, i64 4, !40, i64 8}
!42 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !41, i64 0}
!43 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !42, i64 0}
!44 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !38, i64 0, !43, i64 8, !43, i64 80}
!45 = !{!44, !38, i64 0}
!46 = !{i8 0, i8 2}
!47 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !7, i64 0}
!48 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !47, i64 0, !47, i64 8}
!49 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !48, i64 0}
!50 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !49, i64 0}
!51 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !50, i64 0}
!52 = !{!"_ZTSN6hermes9ValueKindE", !4, i64 0}
!53 = !{!"short", !4, i64 0}
!54 = !{!"_ZTSN6hermes4TypeE", !53, i64 0, !53, i64 2}
!55 = !{!"_ZTSN4llvh15SmallVectorBaseE", !7, i64 0, !5, i64 8, !5, i64 12}
!56 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !55, i64 0}
!57 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !56, i64 0}
!58 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !57, i64 0}
!59 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !4, i64 0}
!60 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !58, i64 0, !59, i64 16}
!61 = !{!"_ZTSN6hermes5ValueE", !52, i64 0, !54, i64 2, !60, i64 8}
!62 = !{!"p1 _ZTSN6hermes6ModuleE", !7, i64 0}
!63 = !{!"p1 _ZTSN6hermes9ScopeDescE", !7, i64 0}
!64 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !48, i64 0}
!65 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !64, i64 0}
!66 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !65, i64 0}
!67 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !66, i64 0}
!68 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !67, i64 0}
!69 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !55, i64 0}
!70 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !69, i64 0}
!71 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !70, i64 0}
!72 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !4, i64 0}
!73 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !71, i64 0, !72, i64 16}
!74 = !{!"p1 _ZTSN6hermes12UniqueStringE", !7, i64 0}
!75 = !{!"_ZTSN6hermes10IdentifierE", !74, i64 0}
!76 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !4, i64 0}
!77 = !{!"_ZTSN4llvh5SMLocE", !21, i64 0}
!78 = !{!"_ZTSN4llvh7SMRangeE", !77, i64 0, !77, i64 8}
!79 = !{!"_ZTSN6hermes16SourceVisibilityE", !4, i64 0}
!80 = !{!"p1 _ZTSN6hermes9ParameterE", !7, i64 0}
!81 = !{!"_ZTSN6hermes8OptValueIjEE", !5, i64 0, !38, i64 4}
!82 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !4, i64 0}
!83 = !{!"_ZTSN6hermes10LazySourceE", !82, i64 0, !5, i64 4, !78, i64 8, !38, i64 24, !38, i64 25}
!84 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !7, i64 0}
!85 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 0}
!86 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0}
!87 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0, !86, i64 8}
!88 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !87, i64 0}
!89 = !{!"p1 _ZTSN6hermes8VariableE", !7, i64 0}
!90 = !{!"_ZTSN6hermes8FunctionE", !51, i64 0, !61, i64 16, !62, i64 56, !38, i64 64, !63, i64 72, !68, i64 80, !73, i64 96, !75, i64 176, !76, i64 184, !38, i64 188, !78, i64 192, !79, i64 208, !75, i64 216, !80, i64 224, !5, i64 232, !81, i64 236, !83, i64 248, !88, i64 280, !89, i64 296}
!91 = !{!90, !82, i64 248}
!92 = !{!10, !10, i64 0}
!93 = !{!48, !47, i64 8}
!94 = !{!"p1 _ZTSN6hermes10ModulePassE", !7, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSN6hermes10ModulePassE", !24, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes10ModulePassELb0EE", !94, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes10ModulePassESt14default_deleteIS1_EEE", !97, i64 0}
!99 = !{!"_ZTSSt5tupleIJPN6hermes10ModulePassESt14default_deleteIS1_EEE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes10ModulePassESt14default_deleteIS1_EE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes10ModulePassESt14default_deleteIS1_ELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt10unique_ptrIN6hermes10ModulePassESt14default_deleteIS1_EE", !101, i64 0}
!103 = !{!"_ZTSN6hermes12_GLOBAL__N_110DumpModuleE", !96, i64 0, !8, i64 32, !35, i64 40, !102, i64 48}
!104 = !{!103, !8, i64 32}
!105 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !4, i64 0}
!106 = !{!"_ZTSN4llvh11raw_ostreamE", !21, i64 8, !21, i64 16, !21, i64 24, !105, i64 32}
!107 = !{!106, !21, i64 16}
!108 = !{!106, !21, i64 24}
!109 = !{!74, !74, i64 0}
!110 = !{!"p1 _ZTSN6hermes12FunctionPassE", !7, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"_ZTSN6hermes12FunctionPassE", !24, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes12FunctionPassELb0EE", !110, i64 0}
!114 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes12FunctionPassESt14default_deleteIS1_EEE", !113, i64 0}
!115 = !{!"_ZTSSt5tupleIJPN6hermes12FunctionPassESt14default_deleteIS1_EEE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes12FunctionPassESt14default_deleteIS1_EE", !115, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes12FunctionPassESt14default_deleteIS1_ELb1ELb1EE", !116, i64 0}
!118 = !{!"_ZTSSt10unique_ptrIN6hermes12FunctionPassESt14default_deleteIS1_EE", !117, i64 0}
!119 = !{!"_ZTSN6hermes12_GLOBAL__N_112DumpFunctionE", !112, i64 0, !8, i64 32, !35, i64 40, !118, i64 48}
!120 = !{!119, !8, i64 32}
!121 = distinct !{null, null, null, null, null, null}
!122 = distinct !{!122, !18}
!123 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes4PassELb0EE", !14, i64 0}
!124 = !{!123, !14, i64 0}
!125 = distinct !{!125, i1 true, !"_ZN6hermes11PassManager12makeDumpPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE"}
!126 = distinct !{!126, !125, !"_ZN6hermes11PassManager12makeDumpPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE: argument 0"}
!127 = distinct !{null, null, null, null, null}
!128 = !{!126}
!129 = !{!55, !7, i64 0}
!130 = !{!55, !5, i64 8}
!131 = !{!55, !5, i64 12}
!132 = distinct !{!132, !18}
!133 = !{!"branch_weights", !"expected", i32 2146665872, i32 817776}
!134 = !{!"branch_weights", i32 2146410443, i32 1073205}
!135 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!136 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairINS_9StringRefEEE", !7, i64 0}
!137 = !{!136, !136, i64 0}
!138 = distinct !{null, null}
!139 = distinct !{ptr @_ZN6hermes12_GLOBAL__N_110DumpModuleD2Ev, null, null}
!140 = !{!103, !35, i64 40}
!141 = distinct !{null, null}
!142 = distinct !{ptr @_ZN6hermes12_GLOBAL__N_112DumpFunctionD2Ev, null, null}
!143 = !{!119, !35, i64 40}
!144 = distinct !{!144, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!145 = distinct !{!145, !144, !"_ZSt19__relocate_object_aISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!146 = distinct !{!146, !144, !"_ZSt19__relocate_object_aISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!147 = distinct !{!147, !18, !159, !160}
!148 = distinct !{!148, !18, !160, !159}
!149 = distinct !{!149, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!150 = distinct !{!150, !149, !"_ZSt19__relocate_object_aISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !149, !"_ZSt19__relocate_object_aISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !18, !159, !160}
!156 = distinct !{!156, !18, !159}
!157 = !{!145}
!158 = !{!146}
!159 = !{!"llvm.loop.isvectorized", i32 1}
!160 = !{!"llvm.loop.unroll.runtime.disable"}
!161 = !{!150}
!162 = !{!151}
!163 = !{!151, !153}
!164 = !{!150, !154}
!165 = !{!153}
end_hunk_0
