inline.NumInlined: 586
inline.NumDeleted: 482
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes18SourceErrorManagerD2Ev:bb.a
  br label %_ZN4llvh14SmallBitVectorD2Ev.exit23

_ZN4llvh14SmallBitVectorD2Ev.exit23:              ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !130
  tail call void @_ZdlPv(ptr noundef %i.ca) #12
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cf = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !89, !noalias !133
  store <2 x ptr> %i.cf, ptr %1, align 16, !tbaa !89
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !56, !noalias !133
  store <2 x ptr> %i.ch, ptr %i.cg, align 16, !tbaa !56
  %i.ci = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !89, !noalias !136
  store <2 x ptr> %i.ci, ptr %2, align 16, !tbaa !89
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !56, !noalias !136
  store <2 x ptr> %i.ck, ptr %i.cj, align 16, !tbaa !56
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !139 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i24, label %_ZN6hermes15StringSetVectorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !144 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !145 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = icmp ult ptr %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.co, %bb.h ] ; 3 uses
  %i.cs = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !89
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef 512) #14
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.cu = icmp ult ptr %.06.i.i.i.i, %i.cp
  br i1 %i.cu, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, !llvm.loop !146

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !139
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, %bb.h
  %i.cv = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i ], [ %i.cl, %bb.h ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !147
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #14
  br label %_ZN6hermes15StringSetVectorD2Ev.exit

_ZN6hermes15StringSetVectorD2Ev.exit:             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !148 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.da, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.db, align 8, !tbaa !151
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !153
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #12, !inline_history !154
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #12, !inline_history !154
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i26 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.l ], [ %i.do, %bb.m ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.n, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !155

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #12
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @_ZN4llvh9SourceMgrD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #12
  ret void
}

declare void @_ZN6hermes3hbc17BCProviderFromSrc23createBCProviderFromSrcB5cxx11ESt10unique_ptrINS_6BufferESt14default_deleteIS3_EEN4llvh9StringRefES2_INS_9SourceMapES4_IS9_EERKNS0_12CompileFlagsERKNS_10ScopeChainEPFvRKNS7_12SMDiagnosticEPvESL_RKSt8functionIFvRNS_6ModuleEEERKNS_25BytecodeGenerationOptionsE(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, ptr noundef, ptr, i64, ptr noundef, ptr noundef nonnull align 4 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(17)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermesL18diagHandlerAdapterERKN4llvh12SMDiagnosticEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.hermes::DiagnosticHandler::Diagnostic", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !156  ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.c, 1
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  %switch.selectcmp7 = icmp eq i32 %i.c, 0
  %switch.select8 = select i1 %switch.selectcmp7, i32 0, i32 %switch.select
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %switch.select8, ptr %2, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load <2 x i32>, ptr %i.e, align 8, !tbaa !3
  %i.g = add nsw <2 x i32> %i.f, <i32 0, i32 1>
  store <2 x i32> %i.g, ptr %i.d, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.not.i.i = icmp eq ptr %i.j, null
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !181, !alias.scope !182
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.n, align 8, !tbaa !45, !alias.scope !182
  store i8 0, ptr %i.m, align 8, !tbaa !106, !alias.scope !182
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !182
  store i64 %i.l, ptr %i.a, align 8, !tbaa !39, !noalias !182
  %i.o = icmp ugt i64 %i.l, 15
  br i1 %i.o, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.p, ptr %i.h, align 8, !tbaa !42, !alias.scope !182
  %i.q = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !182
  store i64 %i.q, ptr %i.m, align 8, !tbaa !106, !alias.scope !182
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.p, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = load i8, ptr %i.j, align 1, !tbaa !106
  store i8 %i.s, ptr %i.r, align 1, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !182 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.t, ptr %i.u, align 8, !tbaa !45, !alias.scope !182
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !42, !alias.scope !182
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !182
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %3 = ptrtoint ptr %i.ab to i64
  %4 = ptrtoint ptr %i.z to i64
  %5 = sub i64 %3, %4                             ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  store i64 0, ptr %i.x, align 8, !alias.scope !185
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %6 = getelementptr inbounds nuw i8, ptr null, i64 %5
  br label %_ZNK4llvh8ArrayRefISt4pairIjjEEcvSt6vectorIS2_SaIS2_EEEv.exit

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.ac = call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #13, !noalias !185 ; 3 uses
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !183, !alias.scope !185
  %i.ad = getelementptr i8, ptr %i.ac, i64 %5     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.z, i64 %5, i1 false), !noalias !185
  br label %_ZNK4llvh8ArrayRefISt4pairIjjEEcvSt6vectorIS2_SaIS2_EEEv.exit

_ZNK4llvh8ArrayRefISt4pairIjjEEcvSt6vectorIS2_SaIS2_EEEv.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.sink.i = phi ptr [ %6, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store ptr %.sink.i, ptr %i.ae, align 8, !tbaa !188, !alias.scope !185
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !184, !alias.scope !185
  %i.ag = load ptr, ptr %1, align 8, !tbaa !49
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #12
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !183 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvh8ArrayRefISt4pairIjjEEcvSt6vectorIS2_SaIS2_EEEv.exit
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !188
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #14
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.g, %_ZNK4llvh8ArrayRefISt4pairIjjEEcvSt6vectorIS2_SaIS2_EEEv.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN6hermes17DiagnosticHandler10DiagnosticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !106
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #14
  br label %_ZN6hermes17DiagnosticHandler10DiagnosticD2Ev.exit

_ZN6hermes17DiagnosticHandler10DiagnosticD2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare void @_ZN6hermes25runFullOptimizationPassesERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1033)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6hermes3hbc18BytecodeSerializer9serializeERNS0_14BytecodeModuleERKSt5arrayIhLm20EE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(513), ptr noundef nonnull align 1 dereferenceable(20)) local_unnamed_addr #2

declare void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"struct.std::array") align 1, ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes9compileJSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::optional", align 8     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.c, align 8, !tbaa !25
  %i.d = call noundef zeroext i1 @_ZN6hermes9compileJSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_bbPNS_17DiagnosticHandlerESt8optionalISt17basic_string_viewIcS3_EEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull byval(%"class.std::optional") align 8 %4, i1 noundef zeroext false)
  %i.e = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.g = load i64, ptr %i.a, align 8, !tbaa !106
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes9compileJSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !25
  %i.b = tail call noundef zeroext i1 @_ZN6hermes9compileJSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_bbPNS_17DiagnosticHandlerESt8optionalISt17basic_string_viewIcS3_EEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull byval(%"class.std::optional") align 8 %4, i1 noundef zeroext false)
  ret i1 %i.b
}

declare void @_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef byval(%"class.llvh::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(464)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !193, !range !27, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !153
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #12, !inline_history !197
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #12, !inline_history !197
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, !prof !155

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #12
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.b, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !198

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !189
  br label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !199
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #14
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !200 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ap, %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i ], [ %i.ag, %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i2
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #14
  br label %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i

end_hunk_0
