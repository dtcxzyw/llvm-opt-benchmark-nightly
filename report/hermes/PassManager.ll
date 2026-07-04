inline.NumInlined: 478
inline.NumDeleted: 337
begin_hunk_0_@_ZN6hermes12_GLOBAL__N_112DumpFunction13runOnFunctionEPNS_8FunctionE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef %1) #14
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !134, !nonnull !33, !align !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  tail call fastcc void @_ZNK6hermes12_GLOBAL__N_112DumpFunction13dumpIfEnabledEPNS_8FunctionERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr nonnull @.str.9, i64 23)
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK6hermes12_GLOBAL__N_112DumpFunction13dumpIfEnabledEPNS_8FunctionERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr %3, i64 %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 24
  %.val8 = load i64, ptr %i.f, align 8
  %i.g = load i8, ptr %2, align 8, !tbaa !42, !range !50, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  br i1 %i.h, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.b

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val8, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.k = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.k, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134, !nonnull !33, !align !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 320 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit

_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.r = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.r, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread, label %bb.o

_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread: ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143, !nonnull !33, !align !34 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !125
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull @.str.5, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread
  store i8 10, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.ac = phi ptr [ %.pre, %bb.c ], [ %i.ab, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.z, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %4, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %3, i64 noundef %4) #14 ; 2 uses
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %3, i64 %4, i1 false)
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !128
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %4 ; 2 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.f, %bb.g
  %i.an = phi ptr [ %.pre19, %bb.e ], [ %i.am, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.ak, %bb.e ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.f ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 32, ptr %i.an, align 1
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

_ZN4llvh11raw_ostreamlsEPKc.exit11:               ; preds = %bb.h, %bb.i
  %i.av = phi ptr [ %.pre21, %bb.h ], [ %i.au, %bb.i ] ; 3 uses
  %.0.i.i10 = phi ptr [ %i.ar, %bb.h ], [ %.0.i, %bb.i ] ; 5 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !130 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !125
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %.sroa.2.0.copyload.i, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %i.bf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i10, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #14 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %.not.i12 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i12, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.2.0.copyload.i ; 2 uses
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14:    ; preds = %bb.j, %bb.k, %bb.l
  %i.bi = phi ptr [ %.pre23, %bb.j ], [ %i.bh, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %.0.i13 = phi ptr [ %i.bf, %bb.j ], [ %.0.i.i10, %bb.l ], [ %.0.i.i10, %bb.k ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !125
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
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit17

_ZN4llvh11raw_ostreamlsEPKc.exit17:               ; preds = %bb.m, %bb.n
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !143, !nonnull !33, !align !34
  call void @_ZNK6hermes8Function4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(36) %i.bt) #14
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit, %_ZN4llvh11raw_ostreamlsEPKc.exit17, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = ptrtoint ptr %1 to i64                     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
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
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !14
  store i64 %i.r, ptr %i.q, align 8, !tbaa !14
  store ptr null, ptr %2, align 8, !tbaa !14
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %3, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %3, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !14, !alias.scope !149, !noalias !144
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !14, !alias.scope !149, !noalias !144
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !152, !noalias !149
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !14, !alias.scope !152, !noalias !149
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !14, !alias.scope !149, !noalias !144
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !14, !alias.scope !149, !noalias !144
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !14, !alias.scope !147, !noalias !144
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !14, !alias.scope !144, !noalias !147
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !14, !alias.scope !147, !noalias !144
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !157

_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %3                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.an, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -8
  %i.ar = sub i64 %i.aq, %3
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep40 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep41 = getelementptr i8, ptr %i.au, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec49, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ay = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.az = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !14, !alias.scope !163, !noalias !158
  %wide.load55 = load <2 x i64>, ptr %i.az, align 8, !tbaa !14, !alias.scope !163, !noalias !158
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !14, !alias.scope !166, !noalias !163
  store <2 x i64> %wide.load55, ptr %i.ba, align 8, !tbaa !14, !alias.scope !166, !noalias !163
  %i.bb = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !14, !alias.scope !163, !noalias !158
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !14, !alias.scope !163, !noalias !158
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bc, label %middle.block57, label %vector.body50, !llvm.loop !168

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ap, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !14, !alias.scope !161, !noalias !158
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !14, !alias.scope !158, !noalias !161
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !14, !alias.scope !161, !noalias !158
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !169

_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %middle.block57 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #15
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !10
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !21
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6hermes22CodeGenerationSettingsE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 _ZTSSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EE", !9, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSN6hermes4PassE", !9, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = distinct !{null, null, null, null, null, null}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!11, !12, i64 16}
!22 = !{!23, !24, i64 8}
!23 = !{!"_ZTSN6hermes4PassE", !24, i64 8, !25, i64 16}
!24 = !{!"_ZTSN6hermes4Pass8PassKindE", !5, i64 0}
!25 = !{!"_ZTSN4llvh9StringRefE", !26, i64 0, !27, i64 8}
!26 = !{!"p1 omnipotent char", !9, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!29, !8, i64 0}
!29 = !{!"_ZTSN6hermes11PassManagerE", !8, i64 0, !30, i64 8}
!30 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !11, i64 0}
!33 = !{}
!34 = !{i64 8}
!35 = !{!26, !26, i64 0}
!36 = !{!27, !27, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !9, i64 0}
!39 = !{!9, !9, i64 0}
!40 = !{!41, !15, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes4PassELb0EE", !15, i64 0}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !44, i64 0, !45, i64 8, !45, i64 80}
!44 = !{!"bool", !5, i64 0}
!45 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !46, i64 0}
!46 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !47, i64 0}
!47 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !48, i64 8}
!48 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !49, i64 0}
!49 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !5, i64 0}
!50 = !{i8 0, i8 2}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN6hermes11PassManager12makeDumpPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE: argument 0"}
!53 = distinct !{!53, !"_ZN6hermes11PassManager12makeDumpPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE"}
!54 = distinct !{null, null, null, null, null}
!55 = !{!56, !93, i64 248}
!56 = !{!"_ZTSN6hermes8FunctionE", !57, i64 0, !62, i64 16, !72, i64 56, !44, i64 64, !73, i64 72, !74, i64 80, !79, i64 96, !84, i64 176, !86, i64 184, !44, i64 188, !87, i64 192, !89, i64 208, !84, i64 216, !90, i64 224, !4, i64 232, !91, i64 236, !92, i64 248, !94, i64 280, !99, i64 296}
!57 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !58, i64 0}
!58 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !59, i64 0}
!59 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !60, i64 0}
!60 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !61, i64 0, !61, i64 8}
!61 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !9, i64 0}
!62 = !{!"_ZTSN6hermes5ValueE", !63, i64 0, !64, i64 2, !66, i64 8}
!63 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!64 = !{!"_ZTSN6hermes4TypeE", !65, i64 0, !65, i64 2}
!65 = !{!"short", !5, i64 0}
!66 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !67, i64 0, !71, i64 16}
!67 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !68, i64 0}
!68 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !69, i64 0}
!69 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !70, i64 0}
!70 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!71 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!72 = !{!"p1 _ZTSN6hermes6ModuleE", !9, i64 0}
!73 = !{!"p1 _ZTSN6hermes9ScopeDescE", !9, i64 0}
!74 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !75, i64 0}
!75 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !76, i64 0}
end_hunk_0
