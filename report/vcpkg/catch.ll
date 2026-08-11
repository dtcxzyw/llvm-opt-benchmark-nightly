inline.NumInlined: 17858
inline.NumDeleted: 5985
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Catch6Detail12makeEnumInfoENS_9StringRefES1_RKSt6vectorIiSaIiEE:bb.a
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !564
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !84
  %i.af = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !571
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  store ptr %i.ag, ptr %.phi.trans.insert, align 8, !tbaa !571
  br label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !559 ; 5 uses
  %i.ai = ptrtoint ptr %i.aa to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.j, label %_ZNKSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.am = sdiv exact i64 %i.ak, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 384307168202282325)
  %i.aq = select i1 %i.ao, i64 384307168202282325, i64 %i.ap ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.ar = mul nuw nsw i64 %i.aq, 24
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #59
          to label %.noexc19 unwind label %.loopexit ; 5 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 2 uses
  store i32 %i.ab, ptr %i.at, align 8, !tbaa !564
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !84
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc19, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.as, %.noexc19 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc19 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !572
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !576

_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.as, %.noexc19 ], [ %i.aw, %.lr.ph.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE17_M_realloc_insertIJRiRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #57
  br label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE17_M_realloc_insertIJRiRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE17_M_realloc_insertIJRiRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.as, ptr %i.d, align 8, !tbaa !559
  store ptr %i.ax, ptr %.phi.trans.insert, align 8, !tbaa !571
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.ay, ptr %i.m, align 8, !tbaa !562
  br label %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12emplace_backIJRiRKS2_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE17_M_realloc_insertIJRiRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.h
  %i.az = phi ptr [ %i.ax, %_ZNSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE17_M_realloc_insertIJRiRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ag, %bb.h ]
  %i.ba = add i64 %.030, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.023.029, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.s
  br i1 %.not, label %._crit_edge.thread, label %bb.g

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIiN5Catch9StringRefEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %.pre31, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit21, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !541
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %.pre31 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre31, i64 noundef %i.bg) #57
  br label %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit21

_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit21: ; preds = %bb.m, %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %lpad.phi, %bb.l ], [ %lpad.phi, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit21, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIN5Catch9StringRefESaIS1_EED2Ev.exit21 ], [ %i.y, %bb.e ]
  tail call void @_ZNSt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #56
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !566    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !559  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !562
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #57
  br label %_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit

_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #57
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN5Catch6Detail18EnumValuesRegistry12registerEnumENS_9StringRefES2_RKSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.67", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  call void @_ZN5Catch6Detail12makeEnumInfoENS_9StringRefES1_RKSt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.67") align 8 %6, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !577  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !580
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.a
  %i.f = load i64, ptr %6, align 8, !tbaa !566
  store i64 %i.f, ptr %i.c, align 8, !tbaa !566
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !577
  br label %_ZNSt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !581  ; 10 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.c, label %_ZNKSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i, %i.m  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i9 = icmp ne i64 %i.q, 0
  call void @llvm.assume(i1 %.not.i.i9)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #59
          to label %.noexc11 unwind label %bb.g   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i64, ptr %6, align 8, !tbaa !566
  store i64 %i.u, ptr %i.t, align 8, !tbaa !566
  store ptr null, ptr %6, align 8, !tbaa !566
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc11
  %7 = add i64 %i.i, -8
  %8 = sub i64 %7, %i.j                           ; 2 uses
  %i.v = lshr i64 %8, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %8, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.x = add i64 %i.i, -8
  %i.y = sub i64 %i.x, %i.j
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.aa
  %scevgep16 = getelementptr i8, ptr %i.h, i64 %i.aa
  %bound0 = icmp ult ptr %i.s, %scevgep16
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.h, i64 %i.ae ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.af = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !566, !alias.scope !587, !noalias !582
  %wide.load18 = load <2 x i64>, ptr %i.af, align 8, !tbaa !566, !alias.scope !587, !noalias !582
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !566, !alias.scope !590, !noalias !587
  store <2 x i64> %wide.load18, ptr %i.ag, align 8, !tbaa !566, !alias.scope !590, !noalias !587
  %i.ah = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !566, !alias.scope !587, !noalias !582
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !566, !alias.scope !587, !noalias !582
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !592

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader20

.lr.ph.i.i.i.i.preheader20:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader20, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader20 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.aj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !566, !alias.scope !585, !noalias !582
  store i64 %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !566, !alias.scope !582, !noalias !585
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !566, !alias.scope !585, !noalias !582
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !595

_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %.noexc11 ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #57
  br label %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.d
  store ptr %i.s, ptr %i.a, align 8, !tbaa !581
  store ptr %i.am, ptr %i.b, align 8, !tbaa !577
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.an, ptr %i.d, align 8, !tbaa !580
  %.pr = load ptr, ptr %6, align 8, !tbaa !566    ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !559 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !562
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #57
  br label %_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit.i: ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 40) #57
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !596
  br label %_ZNSt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit.i
  %i.av = phi ptr [ %i.g, %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread ], [ %i.am, %_ZNSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ], [ %.pre, %_ZNKSt14default_deleteIN5Catch6Detail8EnumInfoEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !566
  ret ptr %i.ax

bb.g:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5Catch6Detail8EnumInfoESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch10ErrnoGuardC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0) unnamed_addr #25 align 2 {
bb.a:
  %i.a = tail call ptr @__errno_location() #62
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  store i32 %i.b, ptr %0, align 4, !tbaa !597
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #26

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Catch10ErrnoGuardD2Ev(ptr nofree noundef nonnull readonly align 4 captures(none) dead_on_return(4) dereferenceable(4) %0) unnamed_addr #27 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !597
  %i.b = tail call ptr @__errno_location() #62
  store i32 %i.a, ptr %i.b, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch27ExceptionTranslatorRegistryD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch27ExceptionTranslatorRegistryE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !602  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !603 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #56, !inline_history !605
  br label %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !606

_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !599
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !607
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #57
  br label %_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5Catch28IExceptionTranslatorRegistryD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch27ExceptionTranslatorRegistryD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch27ExceptionTranslatorRegistryE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !599  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !602  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !603 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #56, !inline_history !608
  br label %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !606

_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !599
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN5Catch27ExceptionTranslatorRegistryD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !607
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #57, !inline_history !609
  br label %_ZN5Catch27ExceptionTranslatorRegistryD2Ev.exit

_ZN5Catch27ExceptionTranslatorRegistryD2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #57
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch27ExceptionTranslatorRegistry18registerTranslatorEPKNS_20IExceptionTranslatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !602  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !607
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !603
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !602
  br label %_ZNSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !599  ; 10 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i, %i.m  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #59
          to label %.noexc8 unwind label %bb.f    ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !603
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %2 = add i64 %i.i, -8
  %3 = sub i64 %2, %i.j                           ; 2 uses
  %i.v = lshr i64 %3, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.x = add i64 %i.i, -8
  %i.y = sub i64 %i.x, %i.j
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.aa
  %scevgep14 = getelementptr i8, ptr %i.h, i64 %i.aa
  %bound0 = icmp ult ptr %i.s, %scevgep14
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.h, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.af = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  %wide.load16 = load <2 x i64>, ptr %i.af, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !603, !alias.scope !618, !noalias !615
  store <2 x i64> %wide.load16, ptr %i.ag, align 8, !tbaa !603, !alias.scope !618, !noalias !615
  %i.ah = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader18

.lr.ph.i.i.i.i.preheader18:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader18, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader18 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.aj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !603, !alias.scope !613, !noalias !610
  store i64 %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !603, !alias.scope !610, !noalias !613
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !603, !alias.scope !613, !noalias !610
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !621

_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %.noexc8 ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #57
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !599
  store ptr %i.am, ptr %i.b, align 8, !tbaa !602
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.an, ptr %i.d, align 8, !tbaa !607
  br label %_ZNSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %.noexc
  ret void

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %.not.i3 = icmp eq ptr %1, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS2_EED2Ev.exit5, label %_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i4

_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i4: ; preds = %bb.f
  %i.ap = load ptr, ptr %1, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %1) #56, !inline_history !622
  br label %_ZNSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIKN5Catch20IExceptionTranslatorESt14default_deleteIS2_EED2Ev.exit5: ; preds = %bb.f, %_ZNKSt14default_deleteIKN5Catch20IExceptionTranslatorEEclEPS2_.exit.i4
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5Catch27ExceptionTranslatorRegistry24translateActiveExceptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #56
  %i.b = load ptr, ptr %3, align 8, !tbaa !623
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 44, ptr %i.a, align 8, !tbaa !86
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.a     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %0, align 8, !tbaa !36
  %i.f = load i64, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.e, ptr noundef nonnull align 1 dereferenceable(44) @.str.112, i64 44, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  br label %bb.ab

bb.a:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTIN5Catch20TestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr @_ZTIPKc
          catch ptr null
  br label %.body

bb.b:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !625, !noalias !626 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !625, !noalias !626 ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #56, !noalias !626
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %2) #58
          to label %bb.d unwind label %bb.e, !noalias !626

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr @_ZTIN5Catch20TestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !623, !noalias !626
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #56, !noalias !626
  br label %.body

bb.g:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !603, !noalias !626 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !15, !noalias !626
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !626
  invoke void %i.u(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr nonnull %i.r, ptr %i.m)
          to label %_ZNK5Catch27ExceptionTranslatorRegistry14tryTranslatorsB5cxx11Ev.exit unwind label %bb.h, !inline_history !629

_ZNK5Catch27ExceptionTranslatorRegistry14tryTranslatorsB5cxx11Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTIN5Catch20TestFailureExceptionE
          catch ptr @_ZTISt9exception
end_hunk_0
begin_hunk_1_@_ZN5Catch7Session11runInternalEv:bb.a
  %i.ho = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #59
          to label %.noexc33.i36 unwind label %bb.dm ; 8 uses

.noexc33.i36:                                     ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN5Catch17ListeningReporterE, i64 16), ptr %i.ho, align 8, !tbaa !15, !noalias !1366
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.hp, i8 0, i64 33, i1 false), !noalias !1366
  store i8 1, ptr %i.hq, align 1, !tbaa !1372, !noalias !1366
  store ptr %i.ho, ptr %11, align 8, !tbaa !1089, !alias.scope !1366
  %i.hr = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEE11getInternalEv()
          to label %_ZN5Catch14getRegistryHubEv.exit.i.i unwind label %bb.bj, !noalias !1366 ; 2 uses

_ZN5Catch14getRegistryHubEv.exit.i.i:             ; preds = %.noexc33.i36
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !15, !noalias !1366
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !1366
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr)
          to label %bb.be unwind label %bb.bj, !noalias !1366 ; 2 uses

bb.be:                                            ; preds = %_ZN5Catch14getRegistryHubEv.exit.i.i
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !15, !noalias !1366
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !1366
  %i.hz = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
          to label %bb.bf unwind label %bb.bj, !noalias !1366 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !1370, !noalias !1366 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !1370, !noalias !1366 ; 2 uses
  %.not70.i.i = icmp eq ptr %i.ia, %i.ic
  br i1 %.not70.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bf
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 2 uses
  br label %bb.bk

._crit_edge.i.i:                                  ; preds = %_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #56, !noalias !1366
  %i.ii = load ptr, ptr %i.m, align 8, !tbaa !825, !noalias !1366 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #56, !noalias !1366
  store ptr %i.ii, ptr %9, align 8, !tbaa !105, !noalias !1366
  %i.ik = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.il = load ptr, ptr %i.fi, align 8, !tbaa !160, !noalias !1366 ; 3 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !160, !noalias !1366
  %.not.i.i.i26.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i26.i.i, label %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit28.i.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 3 uses
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41, !noalias !1366
  %.not.i.i.i.i27.i.i = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i.i27.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.io = load i32, ptr %i.im, align 4, !tbaa !32, !noalias !1366
  %i.ip = add nsw i32 %i.io, 1
  store i32 %i.ip, ptr %i.im, align 4, !tbaa !32, !noalias !1366
  br label %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit28.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.iq = atomicrmw volatile add ptr %i.im, i32 1 acq_rel, align 4, !noalias !1366 ; 0 uses
  br label %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit28.i.i

_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit28.i.i: ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i
  invoke fastcc void @_ZN5Catch12_GLOBAL__N_114createReporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS_7IConfigEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.cl unwind label %bb.ct, !noalias !1366

bb.bj:                                            ; preds = %bb.be, %_ZN5Catch14getRegistryHubEv.exit.i.i, %.noexc33.i36
  %i.ir = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.cv

bb.bk:                                            ; preds = %_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, %.lr.ph.i.i
  %.sroa.065.071.i.i = phi ptr [ %i.ia, %.lr.ph.i.i ], [ %i.mh, %_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56, !noalias !1366
  %i.is = load ptr, ptr %.sroa.065.071.i.i, align 8, !tbaa !794, !noalias !1366 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #56, !noalias !1366
  %i.it = load ptr, ptr %i.m, align 8, !tbaa !825, !noalias !1366 ; 3 uses
  store ptr %i.it, ptr %7, align 8, !tbaa !105, !noalias !1366
  %i.iu = load ptr, ptr %i.fi, align 8, !tbaa !160, !noalias !1366 ; 3 uses
  store ptr %i.iu, ptr %i.id, align 8, !tbaa !160, !noalias !1366
  %.not.i.i.i29.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i29.i.i, label %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit31.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 3 uses
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41, !noalias !1366
  %.not.i.i.i.i30.i.i = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i30.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ix = load i32, ptr %i.iv, align 4, !tbaa !32, !noalias !1366
  %i.iy = add nsw i32 %i.ix, 1
  store i32 %i.iy, ptr %i.iv, align 4, !tbaa !32, !noalias !1366
  br label %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit31.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.iz = atomicrmw volatile add ptr %i.iv, i32 1 acq_rel, align 4, !noalias !1366 ; 0 uses
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !105, !noalias !1366
  br label %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit31.i.i

_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit31.i.i: ; preds = %bb.bn, %bb.bm, %bb.bk
  %i.ja = phi ptr [ %i.it, %bb.bk ], [ %i.it, %bb.bm ], [ %.pre.i.i, %bb.bn ] ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !15, !noalias !1366
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !1366
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja)
          to label %.noexc.i.i37 unwind label %bb.ch, !noalias !1366, !inline_history !1073

.noexc.i.i37:                                     ; preds = %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit31.i.i
  store ptr %i.je, ptr %6, align 8, !tbaa !645, !noalias !1366
  store ptr %i.ja, ptr %i.ie, align 8, !tbaa !105, !noalias !1366
  %i.jf = load ptr, ptr %i.id, align 8, !tbaa !160, !noalias !1366 ; 3 uses
  store ptr %i.jf, ptr %i.if, align 8, !tbaa !160, !noalias !1366
  %.not.i.i.i.i32.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i32.i.i, label %_ZN5Catch14ReporterConfigC2ERKSt10shared_ptrIKNS_7IConfigEE.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %.noexc.i.i37
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 3 uses
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41, !noalias !1366
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !32, !noalias !1366
  %i.jj = add nsw i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jg, align 4, !tbaa !32, !noalias !1366
  br label %_ZN5Catch14ReporterConfigC2ERKSt10shared_ptrIKNS_7IConfigEE.exit.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.jk = atomicrmw volatile add ptr %i.jg, i32 1 acq_rel, align 4, !noalias !1366 ; 0 uses
  br label %_ZN5Catch14ReporterConfigC2ERKSt10shared_ptrIKNS_7IConfigEE.exit.i.i

_ZN5Catch14ReporterConfigC2ERKSt10shared_ptrIKNS_7IConfigEE.exit.i.i: ; preds = %bb.bq, %bb.bp, %.noexc.i.i37
  %i.jl = load ptr, ptr %i.is, align 8, !tbaa !15, !noalias !1366
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !1366
  invoke void %i.jn(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.165") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.br unwind label %bb.ci, !noalias !1366

bb.br:                                            ; preds = %_ZN5Catch14ReporterConfigC2ERKSt10shared_ptrIKNS_7IConfigEE.exit.i.i
  %i.jo = load ptr, ptr %i.ig, align 8, !tbaa !1381, !noalias !1366 ; 6 uses
  %i.jp = load ptr, ptr %i.ih, align 8, !tbaa !1382, !noalias !1366
  %.not.i.i.i33.i.i = icmp eq ptr %i.jo, %i.jp
  br i1 %.not.i.i.i33.i.i, label %bb.bs, label %_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.thread.i.i

_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.thread.i.i: ; preds = %bb.br
  %i.jq = load i64, ptr %5, align 8, !tbaa !1089, !noalias !1366
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !1089, !noalias !1366
  store ptr null, ptr %5, align 8, !tbaa !1089, !noalias !1366
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %i.jr, ptr %i.ig, align 8, !tbaa !1381, !noalias !1366
  br label %_ZNSt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS1_EED2Ev.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.js = load ptr, ptr %i.hp, align 8, !tbaa !1383, !noalias !1366 ; 10 uses
  %i.jt = ptrtoint ptr %i.jo to i64               ; 3 uses
  %i.ju = ptrtoint ptr %i.js to i64               ; 3 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 4 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775800
  br i1 %i.jw, label %bb.bt, label %_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
          to label %.noexc63.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1366

.noexc63.i.i:                                     ; preds = %bb.bt
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bs
  %i.jx = ashr exact i64 %i.jv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 1152921504606846975)
  %i.kb = select i1 %i.jz, i64 1152921504606846975, i64 %i.ka ; 3 uses
  %.not.i.i61.i.i = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i61.i.i)
  %i.kc = shl nuw nsw i64 %i.kb, 3
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #59
          to label %.noexc64.i.i unwind label %.loopexit.i.i, !noalias !1366 ; 10 uses

.noexc64.i.i:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv
  %i.kf = load i64, ptr %5, align 8, !tbaa !1089, !noalias !1366
  store i64 %i.kf, ptr %i.ke, align 8, !tbaa !1089, !noalias !1366
  store ptr null, ptr %5, align 8, !tbaa !1089, !noalias !1366
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.js, %i.jo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc64.i.i
  %19 = add i64 %i.jt, -8
  %20 = sub i64 %19, %i.ju                        ; 2 uses
  %i.kg = lshr i64 %20, 3
  %i.kh = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %20, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader280, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.kd, i64 8
  %i.ki = add i64 %i.jt, -8
  %i.kj = sub i64 %i.ki, %i.ju
  %i.kk = and i64 %i.kj, -8                       ; 2 uses
  %scevgep270 = getelementptr i8, ptr %scevgep, i64 %i.kk
  %scevgep271 = getelementptr i8, ptr %i.js, i64 8
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.kk
  %bound0 = icmp ult ptr %i.kd, %scevgep272
  %bound1 = icmp ult ptr %i.js, %scevgep270
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader280, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kh, 4611686018427387900     ; 3 uses
  %i.kl = shl i64 %n.vec, 3                       ; 2 uses
  %i.km = getelementptr i8, ptr %i.kd, i64 %i.kl  ; 2 uses
  %i.kn = getelementptr i8, ptr %i.js, i64 %i.kl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ko = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kd, i64 %i.ko ; 2 uses
  %next.gep273 = getelementptr i8, ptr %i.js, i64 %i.ko ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.kp = getelementptr i8, ptr %next.gep273, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep273, align 8, !tbaa !1089, !alias.scope !1389, !noalias !1392
  %wide.load274 = load <2 x i64>, ptr %i.kp, align 8, !tbaa !1089, !alias.scope !1389, !noalias !1392
  %i.kq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1089, !alias.scope !1393, !noalias !1395
  store <2 x i64> %wide.load274, ptr %i.kq, align 8, !tbaa !1089, !alias.scope !1393, !noalias !1395
  %i.kr = getelementptr i8, ptr %next.gep273, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep273, align 8, !tbaa !1089, !alias.scope !1389, !noalias !1392
  store <2 x ptr> splat (ptr null), ptr %i.kr, align 8, !tbaa !1089, !alias.scope !1389, !noalias !1392
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader280

.lr.ph.i.i.i.i.i.i.preheader280:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.kd, %vector.memcheck ], [ %i.kd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.km, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.js, %vector.memcheck ], [ %i.js, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader280, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader280 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader280 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.kt = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1089, !alias.scope !1387, !noalias !1392
  store i64 %i.kt, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !1089, !alias.scope !1384, !noalias !1397
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1089, !alias.scope !1387, !noalias !1392
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i62.i.i = icmp eq ptr %i.ku, %i.jo
  br i1 %.not.i.i.i.i62.i.i, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1398

_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc64.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kd, %.noexc64.i.i ], [ %i.km, %middle.block ], [ %i.kv, %.lr.ph.i.i.i.i.i.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i23.i.i.i, label %_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jv) #57, !noalias !1366
  br label %_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.i.i

_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.i.i: ; preds = %bb.bu, %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.kd, ptr %i.hp, align 8, !tbaa !1383, !noalias !1366
  store ptr %i.kw, ptr %i.ig, align 8, !tbaa !1381, !noalias !1366
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.kx, ptr %i.ih, align 8, !tbaa !1382, !noalias !1366
  %.pr.i.i47 = load ptr, ptr %5, align 8, !tbaa !1089, !noalias !1366 ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %.pr.i.i47, null
  br i1 %.not.i.i.i48, label %_ZNSt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5Catch18IStreamingReporterEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5Catch18IStreamingReporterEEclEPS1_.exit.i.i.i: ; preds = %_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.i.i
  %i.ky = load ptr, ptr %.pr.i.i47, align 8, !tbaa !15, !noalias !1366
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !1366
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i.i47) #56, !noalias !1366, !inline_history !1399
  br label %_ZNSt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5Catch18IStreamingReporterEEclEPS1_.exit.i.i.i, %_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.i.i, %_ZN5Catch17ListeningReporter11addListenerEOSt10unique_ptrINS_18IStreamingReporterESt14default_deleteIS2_EE.exit.thread.i.i
  %i.lb = load ptr, ptr %i.if, align 8, !tbaa !160, !noalias !1366 ; 8 uses
  %.not.i.i.i35.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i35.i.i, label %_ZN5Catch14ReporterConfigD2Ev.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 4 uses
  %i.ld = load atomic i64, ptr %i.lc acquire, align 8, !noalias !1366 ; 2 uses
  %i.le = icmp eq i64 %i.ld, 4294967297
  %i.lf = trunc i64 %i.ld to i32                  ; 2 uses
  br i1 %i.le, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.lc, align 8, !tbaa !157, !noalias !1366
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  store i32 0, ptr %i.lg, align 4, !tbaa !159, !noalias !1366
  %i.lh = load ptr, ptr %i.lb, align 8, !tbaa !15, !noalias !1366
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !1366
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #56, !noalias !1366, !inline_history !1400
  %i.lk = load ptr, ptr %i.lb, align 8, !tbaa !15, !noalias !1366
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !1366
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #56, !noalias !1366, !inline_history !1400
  br label %_ZN5Catch14ReporterConfigD2Ev.exit.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.ln = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41, !noalias !1366
  %.not.i.i.i.i36.i.i = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i.i.i36.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lo = add nsw i32 %i.lf, -1
  store i32 %i.lo, ptr %i.lc, align 8, !tbaa !32, !noalias !1366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.lp = atomicrmw volatile add ptr %i.lc, i32 -1 acq_rel, align 4, !noalias !1366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.lf, %bb.by ], [ %i.lp, %bb.bz ]
  %i.lq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.lq, label %bb.ca, label %_ZN5Catch14ReporterConfigD2Ev.exit.i.i, !prof !156

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #56, !noalias !1366
  br label %_ZN5Catch14ReporterConfigD2Ev.exit.i.i

_ZN5Catch14ReporterConfigD2Ev.exit.i.i:           ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bw, %_ZNSt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.lr = load ptr, ptr %i.id, align 8, !tbaa !160, !noalias !1366 ; 8 uses
  %.not.i.i37.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i37.i.i, label %_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN5Catch14ReporterConfigD2Ev.exit.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 4 uses
  %i.lt = load atomic i64, ptr %i.ls acquire, align 8, !noalias !1366 ; 2 uses
  %i.lu = icmp eq i64 %i.lt, 4294967297
  %i.lv = trunc i64 %i.lt to i32                  ; 2 uses
  br i1 %i.lu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.ls, align 8, !tbaa !157, !noalias !1366
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 12
  store i32 0, ptr %i.lw, align 4, !tbaa !159, !noalias !1366
  %i.lx = load ptr, ptr %i.lr, align 8, !tbaa !15, !noalias !1366
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !1366
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lr) #56, !noalias !1366, !inline_history !1371
  %i.ma = load ptr, ptr %i.lr, align 8, !tbaa !15, !noalias !1366
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !1366
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(16) %i.lr) #56, !noalias !1366, !inline_history !1371
  br label %_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.md = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41, !noalias !1366
  %.not.i.i.i38.i.i = icmp eq i8 %i.md, 0
  br i1 %.not.i.i.i38.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.me = add nsw i32 %i.lv, -1
  store i32 %i.me, ptr %i.ls, align 8, !tbaa !32, !noalias !1366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.mf = atomicrmw volatile add ptr %i.ls, i32 -1 acq_rel, align 4, !noalias !1366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i40.i.i = phi i32 [ %i.lv, %bb.ce ], [ %i.mf, %bb.cf ]
  %i.mg = icmp eq i32 %.0.i.i.i.i40.i.i, 1
  br i1 %i.mg, label %bb.cg, label %_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i, !prof !156

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lr) #56, !noalias !1366
  br label %_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i

_ZNSt12__shared_ptrIKN5Catch7IConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit41.i.i: ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i.i, %bb.cc, %_ZN5Catch14ReporterConfigD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56, !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56, !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56, !noalias !1366
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.065.071.i.i, i64 16 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.mh, %i.ic
  br i1 %.not.i.i38, label %._crit_edge.i.i, label %bb.bk

bb.ch:                                            ; preds = %_ZNSt10shared_ptrIKN5Catch7IConfigEEC2INS0_6ConfigEvEERKS_IT_E.exit31.i.i
end_hunk_1
begin_hunk_2_@_ZN5Catch12addSingletonEPNS_10ISingletonE:bb.a
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #59 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %0, ptr %i.u, align 8, !tbaa !711
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN5Catch10ISingletonESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN5Catch10ISingletonESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #57
  br label %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.t, ptr %i.c, align 8, !tbaa !709
  store ptr %i.w, ptr %i.d, align 8, !tbaa !1423
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.f, align 8, !tbaa !714
  br label %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN5Catch10ISingletonESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch24StartupExceptionRegistry3addERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1424 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1426
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !623    ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !623
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #56
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1424
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %i.b, %bb.b ], [ %.pre.i, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1424
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE9push_backERKS1_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #56 ; 0 uses
  tail call void @_ZSt9terminatev() #61
  unreachable

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5Catch7IStreamD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN5Catch7IStreamD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #21 align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5Catch9StringRefeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !150
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !152
  %i.g = load ptr, ptr %1, align 8, !tbaa !152
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr %i.g, i64 %i.b)
  %i.h = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch20ReusableStringStreamC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Catch20ReusableStringStreamE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call noundef i64 @_ZN5Catch13StringStreams3addEv(ptr noundef nonnull align 8 dereferenceable(424) %i.c)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = tail call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.a, align 8, !tbaa !17
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  store ptr %i.k, ptr %i.g, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Catch13StringStreams3addEv(ptr noundef nonnull align 8 dereferenceable(424) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #59 ; 6 uses
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.f)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1427 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1428
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.f to i64
  store i64 %i.k, ptr %i.h, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !1427
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !23     ; 10 uses
  %i.n = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
          to label %.noexc11 unwind label %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit9

.noexc11:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i, %i.r  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i10 = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i10)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #59
          to label %.noexc12 unwind label %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit9 ; 11 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.f to i64
  store i64 %i.z, ptr %i.y, align 8, !tbaa !26
  %.not10.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc12
  %1 = add i64 %i.n, -8
  %2 = sub i64 %1, %i.o                           ; 2 uses
  %i.aa = lshr i64 %2, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = add i64 %i.n, -8
  %i.ad = sub i64 %i.ac, %i.o
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep19 = getelementptr i8, ptr %i.m, i64 %i.af
  %bound0 = icmp ult ptr %i.x, %scevgep19
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.m, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.ak = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !26, !alias.scope !1434, !noalias !1429
  %wide.load21 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !26, !alias.scope !1434, !noalias !1429
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !26, !alias.scope !1437, !noalias !1434
  store <2 x i64> %wide.load21, ptr %i.al, align 8, !tbaa !26, !alias.scope !1437, !noalias !1434
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !26, !alias.scope !1434, !noalias !1429
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !26, !alias.scope !1434, !noalias !1429
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1439

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !26, !alias.scope !1432, !noalias !1429
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !26, !alias.scope !1429, !noalias !1432
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !26, !alias.scope !1432, !noalias !1429
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1440

_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i = phi ptr [ %i.x, %.noexc12 ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #57
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  store ptr %i.x, ptr %0, align 8, !tbaa !23
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !1427
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.as, ptr %i.i, align 8, !tbaa !1428
  br label %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.d, %.noexc
  %i.at = phi ptr [ %.pre, %bb.d ], [ %i.x, %.noexc ]
  %i.au = phi ptr [ %i.l, %bb.d ], [ %i.ar, %.noexc ]
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = add nsw i64 %i.ay, -1
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 376) #57
  br label %bb.i

_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit9: ; preds = %_ZNKSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EE12_M_check_lenEmPKc.exit.i, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(112) %i.f) #56, !inline_history !1441
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit9, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bb, %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit9 ], [ %i.ba, %bb.h ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !86
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !470
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.0 = phi i64 [ %i.az, %_ZNSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ %i.bg, %bb.j ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch20ReusableStringStreamD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Catch20ReusableStringStreamE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !40
  store i8 0, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %.noexc1 unwind label %bb.d    ; 0 uses

.noexc1:                                          ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1442
  %i.l = and i32 %i.k, 3
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %i.m = load i64, ptr %i.f, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.m
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !36
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.n, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.d

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc1
  %i.o = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !41
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef 0)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = invoke noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17
  invoke void @_ZN5Catch13StringStreams7releaseEm(ptr noundef nonnull align 8 dereferenceable(424) %i.y, i64 noundef %i.aa)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a, %.noexc1, %._crit_edge.i.i, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #61
  unreachable
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZNKSt7__cxx1112regex_traitsIcE5valueEci:bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !41
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.h

bb.e:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #56
  br label %bb.h

_ZNSirsEPFRSt8ios_baseS0_E.exit13:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSirsEPFRSt8ios_baseS0_E.exit13
  %.sink20 = phi i32 [ 8, %_ZNSirsEPFRSt8ios_baseS0_E.exit13 ], [ 64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %3, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !871
  %i.t = and i32 %i.s, -75
  %i.u = or disjoint i32 %i.t, %.sink20
  store i32 %i.u, ptr %i.r, align 8, !tbaa !872
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %3, align 8, !tbaa !15
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !418
  %i.ac = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !15
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !41
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #57
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ap = and i32 %i.ab, 5
  %.not = icmp eq i32 %i.ap, 0
  %i.aq = trunc i64 %i.ac to i32
  %i.ar = select i1 %.not, i32 %i.aq, i32 -1
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #56
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.at, ptr %3, align 8, !tbaa !15
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %3, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !883
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.az) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret i32 %i.ar

bb.h:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn8 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4 align 2

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3506, !nonnull !80, !align !104
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.497) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !3428
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3429
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3507 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3434
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3507
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3507
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3437 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #59 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = add i64 %i.aa, -4
  %4 = sub i64 %3, %i.ab                          ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !3511, !noalias !3508
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !3511, !noalias !3508
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !3508, !noalias !3511
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !3508, !noalias !3511
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !3513

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !3511, !noalias !3508
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !3508, !noalias !3511
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3514

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #57
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3437
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3507
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3434
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.817, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !85    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !85 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !3515

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !41 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !41
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !3515

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !41    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3516

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !41  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !41
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !41  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !41
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !41  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !41
  br label %.lr.ph.i.i.3

end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !181
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !183
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !124
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !412 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !183
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #57
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3543 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !3438 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #59
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !3438
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !3543
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !3432
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !3431 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !3431 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoaddr ptr %i.bh to i64
  %i.bl = add i64 %i.bk, -2
  %i.bm = sub i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bm, 6
  %i.bp = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bm, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 12
  %n.vec = and i64 %i.bo, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3544

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3545

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.bo, -4                    ; 3 uses
  %i.by = shl i64 %n.vec50, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index51, 1                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep53 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load54 = load <4 x i16>, ptr %next.gep53, align 1
  store <4 x i16> %wide.load54, ptr %next.gep52, align 1
  %index.next55 = add nuw i64 %index51, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3546

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.bo, %n.vec50
  br i1 %cmp.n56, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !3547

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !3543
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !3507 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !3437 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #59
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !3437
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !3507
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !3434
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !3433 ; 5 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !3433 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoaddr ptr %i.cv to i64
  %2 = add i64 %i.cy, -4
  %3 = sub i64 %2, %i.cw                          ; 2 uses
  %i.cz = lshr i64 %3, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %3, 44
  %i.db = sub i64 %i.cw, %i.cx
  %diff.check60 = icmp ugt i64 %i.db, -32
  %or.cond74 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond74, label %.lr.ph.i.i.i.i.i20.preheader75, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec63 = and i64 %i.da, 9223372036854775800   ; 3 uses
  %i.dc = shl i64 %n.vec63, 2                     ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cq, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.cu, i64 %i.dc
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.df = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.cq, i64 %i.df ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.cu, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 2
  %wide.load69 = load <4 x i32>, ptr %i.dg, align 2
  %i.dh = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 2
  store <4 x i32> %wide.load69, ptr %i.dh, align 2
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.di = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.di, label %middle.block71, label %vector.body64, !llvm.loop !3548

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.da, %n.vec63
  br i1 %cmp.n72, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader75

.lr.ph.i.i.i.i.i20.preheader75:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block71
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dd, %middle.block71 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader75, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %i.dj = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dj, ptr %.09.i.i.i.i.i21, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dk, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !3549

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block71, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.dd, %middle.block71 ], [ %i.dl, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !3507
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dm, ptr noundef nonnull align 8 dereferenceable(56) %i.dn, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %i.as, align 8, !tbaa !3438 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = load ptr, ptr %i.bf, align 8, !tbaa !3432
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #57
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.n ], [ %i.dq, %bb.o ], [ %i.dq, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #56
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.do, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dw = load ptr, ptr %0, align 8, !tbaa !3439  ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !3430
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #57
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3550, !nonnull !80, !align !104
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.497) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !3428
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3429
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3507 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3434
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3507
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3507
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3437 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #59 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = add i64 %i.aa, -4
  %4 = sub i64 %3, %i.ab                          ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !3554, !noalias !3551
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !3554, !noalias !3551
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !3551, !noalias !3554
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !3551, !noalias !3554
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !3556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !3554, !noalias !3551
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !3551, !noalias !3554
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3557

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #57
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3437
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3507
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3434
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.829, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !85    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !85 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !3515

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !41 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !41
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !3515

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !41    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3558

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !41  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !41
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !41  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !41
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !41  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !41
  br label %.lr.ph.i.i.3

end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !3451
  store ptr %i.a, ptr %0, align 8, !tbaa !3451
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !3451
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #59 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #57
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !3451
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3451   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #56
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #57
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3518 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !3439   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !3439
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3518
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3430
  %i.m = load ptr, ptr %1, align 8, !tbaa !85     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !2642

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !41
  store i8 %i.t, ptr %i.i, align 1, !tbaa !41
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !3518
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !181  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !412  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #59
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !181
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !183
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !124
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !412 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !183
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #57
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3507 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !3437 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #59
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !3437
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !3507
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !3434
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !3433 ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !3433 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoaddr ptr %i.bj to i64
  %2 = add i64 %i.bm, -4
  %3 = sub i64 %2, %i.bk                          ; 2 uses
  %i.bn = lshr i64 %3, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bp = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.bq = shl i64 %n.vec, 2                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.be, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bt ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bu, align 2
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bv, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !3574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.bx = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.bx, ptr %.09.i.i.i.i.i, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3575

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.br, %middle.block ], [ %i.bz, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !3507
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.ce = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #56
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.o ], [ %i.cd, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #56
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cc, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cf = load ptr, ptr %0, align 8, !tbaa !3439  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !3430
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #57
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3564 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !3563   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, !prof !156

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !3563
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3564
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3450
  %i.m = load ptr, ptr %1, align 8, !tbaa !3449   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !3449 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3576

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #56 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #58
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #61
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !3564
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !3563   ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !3450
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #57
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !48
  %i.d = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i64 %i.f, ptr %i.b, align 8, !tbaa !86
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !36
  %i.i = load i64, ptr %i.b, align 8, !tbaa !86
  store i64 %i.i, ptr %i.c, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !41
  store i8 %i.k, ptr %i.j, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !40
  %i.n = load ptr, ptr %0, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !48
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.u, ptr %i.a, align 8, !tbaa !86
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.w, ptr %i.p, align 8, !tbaa !36
  %i.x = load i64, ptr %i.a, align 8, !tbaa !86
  store i64 %i.x, ptr %i.r, align 8, !tbaa !41
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !41
  store i8 %i.z, ptr %i.y, align 1, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !40
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !41
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3577, !nonnull !80, !align !104
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.497) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !3428
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3429
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3507 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3434
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3507
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3507
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3437 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #59 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = add i64 %i.aa, -4
  %4 = sub i64 %3, %i.ab                          ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3581)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !3581, !noalias !3578
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !3581, !noalias !3578
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !3578, !noalias !3581
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !3578, !noalias !3581
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !3583

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3581)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !3581, !noalias !3578
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !3578, !noalias !3581
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3584

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #57
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3437
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3507
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3434
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.834, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !85    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !85 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !3515

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !41 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !41
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !3515

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !41    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3585

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !41  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !41
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !41  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !41
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !41  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !41
  br label %.lr.ph.i.i.3

end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !181
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !183
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !124
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !412 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !183
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #57
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3543 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !3438 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #59
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !3438
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !3543
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !3432
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !3431 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !3431 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoaddr ptr %i.bh to i64
  %i.bl = add i64 %i.bk, -2
  %i.bm = sub i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bm, 6
  %i.bp = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bm, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 12
  %n.vec = and i64 %i.bo, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !3591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3545

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.bo, -4                    ; 3 uses
  %i.by = shl i64 %n.vec50, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index51, 1                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep53 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load54 = load <4 x i16>, ptr %next.gep53, align 1
  store <4 x i16> %wide.load54, ptr %next.gep52, align 1
  %index.next55 = add nuw i64 %index51, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3592

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.bo, %n.vec50
  br i1 %cmp.n56, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !3593

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !3543
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !3507 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !3437 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #59
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !3437
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !3507
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !3434
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !3433 ; 5 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !3433 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoaddr ptr %i.cv to i64
  %2 = add i64 %i.cy, -4
  %3 = sub i64 %2, %i.cw                          ; 2 uses
  %i.cz = lshr i64 %3, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %3, 44
  %i.db = sub i64 %i.cw, %i.cx
  %diff.check60 = icmp ugt i64 %i.db, -32
  %or.cond74 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond74, label %.lr.ph.i.i.i.i.i20.preheader75, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec63 = and i64 %i.da, 9223372036854775800   ; 3 uses
  %i.dc = shl i64 %n.vec63, 2                     ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cq, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.cu, i64 %i.dc
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.df = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.cq, i64 %i.df ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.cu, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 2
  %wide.load69 = load <4 x i32>, ptr %i.dg, align 2
  %i.dh = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 2
  store <4 x i32> %wide.load69, ptr %i.dh, align 2
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.di = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.di, label %middle.block71, label %vector.body64, !llvm.loop !3594

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.da, %n.vec63
  br i1 %cmp.n72, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader75

.lr.ph.i.i.i.i.i20.preheader75:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block71
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dd, %middle.block71 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader75, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %i.dj = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dj, ptr %.09.i.i.i.i.i21, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dk, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !3595

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block71, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.dd, %middle.block71 ], [ %i.dl, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !3507
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %i.dn, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %i.as, align 8, !tbaa !3438 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = load ptr, ptr %i.bf, align 8, !tbaa !3432
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #57
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.n ], [ %i.dq, %bb.o ], [ %i.dq, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #56
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.do, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dw = load ptr, ptr %0, align 8, !tbaa !3439  ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !3430
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #57
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3596, !nonnull !80, !align !104
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.497) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !3428
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !3429
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3507 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3434
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !3507
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3507
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !3437 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #59 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = add i64 %i.aa, -4
  %4 = sub i64 %3, %i.ab                          ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3600)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !3600, !noalias !3597
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !3600, !noalias !3597
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !3597, !noalias !3600
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !3597, !noalias !3600
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !3602

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3600)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !3600, !noalias !3597
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !3597, !noalias !3600
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3603

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #57
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !3437
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !3507
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !3434
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.837, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !85    ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !85 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !3515

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !41 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !41
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !3515

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !41    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3604

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !41  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !41
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !41  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !41
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !41  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !41
  br label %.lr.ph.i.i.3

end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !3463
  store ptr %i.a, ptr %0, align 8, !tbaa !3463
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !3463
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #59 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #57
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !3463
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3463   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #56
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #57
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3518 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !3439   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !3439
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3518
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3430
  %i.m = load ptr, ptr %1, align 8, !tbaa !85     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !2642

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !41
  store i8 %i.t, ptr %i.i, align 1, !tbaa !41
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !3518
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !181  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !412  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #59
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !181
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !183
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !124
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !412 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !183
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #57
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3507 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !3437 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !156

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #59
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !3437
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !3507
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !3434
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !3433 ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !3433 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoaddr ptr %i.bj to i64
  %2 = add i64 %i.bm, -4
  %3 = sub i64 %2, %i.bk                          ; 2 uses
  %i.bn = lshr i64 %3, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bp = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.bq = shl i64 %n.vec, 2                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.be, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bt ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bu, align 2
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bv, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !3612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.bx = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.bx, ptr %.09.i.i.i.i.i, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3613

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.br, %middle.block ], [ %i.bz, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !3507
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.ce = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #56
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.o ], [ %i.cd, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #56
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cc, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cf = load ptr, ptr %0, align 8, !tbaa !3439  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !3430
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #57
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 26 uses
  %3 = alloca %"struct.std::__detail::_Compiler<std::__cxx11::regex_traits<char>>::_BracketState", align 1 ; 8 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3348, !nonnull !80, !align !104
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %2, i8 0, i64 99, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !3203
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 %i.c, ptr %i.e, align 16, !tbaa !3409
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  store i8 0, ptr %3, align 1, !tbaa !3614
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.g, align 1, !tbaa !3617
  %i.h = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = load i8, ptr %i.j, align 1, !tbaa !41
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

.loopexit:                                        ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.a, %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE11_M_add_charEc.exit, %bb.e, %bb.h, %bb.i, %bb.j, %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !3219
  %i.o = icmp eq i32 %i.n, 28
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3220
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3221
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  store i32 27, ptr %i.m, align 8, !tbaa !3219
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3222
  switch i32 %i.x, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.c
  %.sink = phi i8 [ %i.k, %bb.c ], [ 45, %bb.g ], [ 45, %bb.f ], [ 45, %bb.h ], [ 45, %bb.i ], [ 45, %bb.j ]
  store i8 1, ptr %3, align 1, !tbaa !3614
  store i8 %.sink, ptr %i.g, align 1, !tbaa !3617
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split, %bb.d
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader, %bb.k
  %i.y = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb0EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
end_hunk_7
begin_hunk_8_@_ZSt16__do_uninit_copyISt13move_iteratorIPN5Catch13ScopedMessageEES3_ET0_T_S6_S5_:bb.a
  store i8 1, ptr %i.t, align 8, !tbaa !955
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.u, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3871

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #56 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5Catch13ScopedMessageEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #58
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.v, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #61
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN5Catch6ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !159
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #56, !inline_history !521
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #56, !inline_history !521
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #56
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch6ConfigESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 360) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch6ConfigESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(337) dereferenceable(337) %i.a) #56, !inline_history !3872
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch6ConfigESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5Catch6ConfigESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 360) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch6ConfigESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2332 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !41
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #56
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1424 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3833   ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
  unreachable

_ZNKSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !623    ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !623
  %.not.i16 = icmp eq ptr %i.r, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE12_M_check_lenEmPKc.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #56
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNKSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep36 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep36
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.c, i64 %i.ab ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  %i.ac = getelementptr i8, ptr %next.gep37, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep37, align 8, !tbaa !623, !alias.scope !3878, !noalias !3873
  %wide.load38 = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !623, !alias.scope !3878, !noalias !3873
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !623, !alias.scope !3881, !noalias !3878
  store <2 x ptr> %wide.load38, ptr %i.ad, align 8, !tbaa !623, !alias.scope !3881, !noalias !3878
  store <2 x ptr> splat (ptr null), ptr %next.gep37, align 8, !tbaa !623, !alias.scope !3878, !noalias !3873
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !623, !alias.scope !3878, !noalias !3873
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !3883

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !623, !alias.scope !3876, !noalias !3873
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !623, !alias.scope !3873, !noalias !3876
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !623, !alias.scope !3876, !noalias !3873
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3884

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.aj = lshr i64 %6, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check47 = icmp ult i64 %6, 152
  br i1 %min.iters.check47, label %.lr.ph.i.i.i18.preheader61, label %vector.memcheck40

vector.memcheck40:                                ; preds = %.lr.ph.i.i.i18.preheader
  %i.al = add i64 %i.d, -8
  %i.am = sub i64 %i.al, %i.m
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.an
  %scevgep41 = getelementptr i8, ptr %i.ao, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.an
  %scevgep42 = getelementptr i8, ptr %i.ap, i64 8
  %bound043 = icmp ult ptr %i.ai, %scevgep42
  %bound144 = icmp ult ptr %1, %scevgep41
  %found.conflict45 = and i1 %bound043, %bound144
  br i1 %found.conflict45, label %.lr.ph.i.i.i18.preheader61, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck40
  %n.vec49 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec49, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ai, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.at = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ai, i64 %i.at ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.at ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  %i.au = getelementptr i8, ptr %next.gep53, i64 16 ; 2 uses
  %wide.load54 = load <2 x ptr>, ptr %next.gep53, align 8, !tbaa !623, !alias.scope !3890, !noalias !3885
  %wide.load55 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !623, !alias.scope !3890, !noalias !3885
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> %wide.load54, ptr %next.gep52, align 8, !tbaa !623, !alias.scope !3893, !noalias !3890
  store <2 x ptr> %wide.load55, ptr %i.av, align 8, !tbaa !623, !alias.scope !3893, !noalias !3890
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !623, !alias.scope !3890, !noalias !3885
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !623, !alias.scope !3890, !noalias !3885
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.aw, label %middle.block57, label %vector.body50, !llvm.loop !3895

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ak, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18.preheader61

.lr.ph.i.i.i18.preheader61:                       ; preds = %vector.memcheck40, %.lr.ph.i.i.i18.preheader, %middle.block57
  %.012.i.i.i19.ph = phi ptr [ %i.ai, %vector.memcheck40 ], [ %i.ai, %.lr.ph.i.i.i18.preheader ], [ %i.ar, %middle.block57 ]
  %.0911.i.i.i20.ph = phi ptr [ %1, %vector.memcheck40 ], [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.as, %middle.block57 ]
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader61, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.az, %.lr.ph.i.i.i18 ], [ %.012.i.i.i19.ph, %.lr.ph.i.i.i18.preheader61 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ay, %.lr.ph.i.i.i18 ], [ %.0911.i.i.i20.ph, %.lr.ph.i.i.i18.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  %i.ax = load ptr, ptr %.0911.i.i.i20, align 8, !tbaa !623, !alias.scope !3888, !noalias !3885
  store ptr %i.ax, ptr %.012.i.i.i19, align 8, !tbaa !623, !alias.scope !3885, !noalias !3888
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !623, !alias.scope !3888, !noalias !3885
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !3896

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23: ; preds = %.lr.ph.i.i.i18, %middle.block57, %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ai, %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ar, %middle.block57 ], [ %i.az, %.lr.ph.i.i.i18 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1426
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #57
  br label %_ZNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !3833
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !1424
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !1426
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv() local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEvE10s_instance, align 8, !tbaa !3897 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #59 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %i.c, i8 0, i64 48, i1 false)
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !469  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #57
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.d, %bb.c
  tail call void @_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(424) %i.c) #56
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 432) #57
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Catch9SingletonINS_13StringStreamsES1_S1_EE, i64 16), ptr %i.b, align 8, !tbaa !15
  store ptr %i.b, ptr @_ZZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEvE10s_instance, align 8, !tbaa !3897
  tail call void @_ZN5Catch12addSingletonEPNS_10ISingletonE(ptr noundef nonnull %i.b)
  %.pre = load ptr, ptr @_ZZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEvE10s_instance, align 8, !tbaa !3897
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.m = phi ptr [ %.pre, %bb.e ], [ %i.a, %bb.a ]
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5Catch13StringStreamsD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.a) #56
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_ED0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5Catch13StringStreamsD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.a) #56
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 432) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1427 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(112) %i.d) #56, !inline_history !3899
  br label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3900

_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1428
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #57
  br label %_ZNSt12_Vector_baseISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit, %bb.b
  ret void
end_hunk_8
begin_hunk_9_@_ZN5Catch9XmlWriter14writeAttributeIA31_cEERS0_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN5Catch17ReporterRegistrarINS0_13JunitReporterEE15ReporterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !159
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #56, !inline_history !521
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #56, !inline_history !521
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #56
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch17ReporterRegistrarINS0_13JunitReporterEE15ReporterFactoryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch17ReporterRegistrarINS0_13JunitReporterEE15ReporterFactoryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #56, !inline_history !4115
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch17ReporterRegistrarINS0_13JunitReporterEE15ReporterFactoryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5Catch17ReporterRegistrarINS1_13JunitReporterEE15ReporterFactoryESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5Catch17ReporterRegistrarINS0_13JunitReporterEE15ReporterFactoryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2332 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !41
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #56
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch17ReporterRegistrarINS_13JunitReporterEE15ReporterFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch17ReporterRegistrarINS_13JunitReporterEE15ReporterFactory6createERKNS_14ReporterConfigE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(368) ptr @_Znwm(i64 noundef 368) #59 ; 3 uses
  invoke void @_ZN5Catch13JunitReporterC2ERKNS_14ReporterConfigE(ptr noundef nonnull align 8 dereferenceable(365) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIN5Catch13JunitReporterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b

_ZNSt10unique_ptrIN5Catch13JunitReporterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !1070
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 368) #57
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch17ReporterRegistrarINS_13JunitReporterEE15ReporterFactory14getDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !48, !alias.scope !4116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56, !noalias !4116
  store i64 78, ptr %i.a, align 8, !tbaa !86, !noalias !4116
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !36, !alias.scope !4116
  %i.d = load i64, ptr %i.a, align 8, !tbaa !86, !noalias !4116 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !41, !alias.scope !4116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(78) %i.c, ptr noundef nonnull align 1 dereferenceable(78) @.str.270, i64 78, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !40, !alias.scope !4116
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56, !noalias !4116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1381 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1383   ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.353) #58
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !1089
  store i64 %i.r, ptr %i.q, align 8, !tbaa !1089
  store ptr null, ptr %2, align 8, !tbaa !1089
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4122)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !1089, !alias.scope !4124, !noalias !4119
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !1089, !alias.scope !4124, !noalias !4119
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1089, !alias.scope !4127, !noalias !4124
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !1089, !alias.scope !4127, !noalias !4124
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !1089, !alias.scope !4124, !noalias !4119
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !1089, !alias.scope !4124, !noalias !4119
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !4129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4122)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !1089, !alias.scope !4122, !noalias !4119
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !1089, !alias.scope !4119, !noalias !4122
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !1089, !alias.scope !4122, !noalias !4119
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !4130

_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4134)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !1089, !alias.scope !4136, !noalias !4131
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !1089, !alias.scope !4136, !noalias !4131
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !1089, !alias.scope !4139, !noalias !4136
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !1089, !alias.scope !4139, !noalias !4136
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !1089, !alias.scope !4136, !noalias !4131
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !1089, !alias.scope !4136, !noalias !4131
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !4141

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4134)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !1089, !alias.scope !4134, !noalias !4131
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !1089, !alias.scope !4131, !noalias !4134
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !1089, !alias.scope !4134, !noalias !4131
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !4142

_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1382
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #57
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5Catch18IStreamingReporterESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1383
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !1381
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !1382
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Catch9XmlWriter14writeAttributeIdEERS0_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Catch::ReusableStringStream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Catch20ReusableStringStreamE, i64 16), ptr %3, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call noundef i64 @_ZN5Catch13StringStreams3addEv(ptr noundef nonnull align 8 dereferenceable(424) %i.c) ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = tail call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 6 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !28
  %i.k = load double, ptr %2, align 8, !tbaa !14
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.k)
          to label %_ZN5Catch20ReusableStringStreamlsIdEERS0_RKT_.exit unwind label %bb.f ; 0 uses

_ZN5Catch20ReusableStringStreamlsIdEERS0_RKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !48, !alias.scope !4149
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !40, !alias.scope !4149
  store i8 0, ptr %i.m, align 8, !tbaa !41, !alias.scope !4149
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52, !noalias !4152 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !4152 ; 2 uses
  %i.s = icmp ugt ptr %i.p, %i.r
  %.08.i.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.r ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIdEERS0_RKT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57, !noalias !4152 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !36, !alias.scope !4149 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.m
  br i1 %i.ab, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIdEERS0_RKT_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit unwind label %bb.c

_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit: ; preds = %bb.d, %bb.b
  %i.ad = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Catch9XmlWriter14writeAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit
  %i.ae = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.m
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !41
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  call void @_ZN5Catch20ReusableStringStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret ptr %0

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.aa, %bb.c ], [ %i.ak, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aj, %bb.g ]
  %i.am = load i64, ptr %i.m, align 8, !tbaa !41
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.an) #57
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aj, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ai, %bb.f ]
end_hunk_9
