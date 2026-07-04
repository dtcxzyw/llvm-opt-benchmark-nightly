inline.NumInlined: 623
inline.NumDeleted: 352
begin_hunk_0_@_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseEi:bb.a
  store atomic volatile i64 %i.t, ptr %i.l release, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit

_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit: ; preds = %bb.f, %bb.e, %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable11BlockVectorC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %bb.b, label %_ZNSt15__new_allocatorIPN2v88internal21StringForwardingTable5BlockEE8allocateEmPKv.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt15__new_allocatorIPN2v88internal21StringForwardingTable5BlockEE8allocateEmPKv.exit: ; preds = %bb.a
  %i.d = shl nuw nsw i64 %1, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable11BlockVectorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %0, align 8
  %i.d = shl i64 %i.c, 3
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.d) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable11BlockVector4GrowEPS2_mRKNS_4base5MutexE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::unique_ptr.14") align 8 captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !11 ; 4 uses
  store i64 %2, ptr %i.a, align 8, !noalias !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !noalias !11
  %i.c = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.c, label %bb.b, label %_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17, !noalias !11
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #17, !noalias !11
  unreachable

_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %2, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18, !noalias !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.g, align 8, !noalias !11
  store ptr %i.a, ptr %0, align 8, !alias.scope !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load atomic i64, ptr %i.h seq_cst, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic i64 %i.k, ptr %i.m seq_cst, align 8
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.08 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.e ]  ; 3 uses
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.08
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.08
  store ptr %i.p, ptr %i.t, align 8
  %i.u = add nuw i64 %.08, 1                      ; 2 uses
  %i.v = load atomic i64, ptr %i.h seq_cst, align 8
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %._crit_edge, !llvm.loop !14
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit

_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.e) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #19
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTableC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 44)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  tail call void @_ZN2v88internal21StringForwardingTable21InitializeBlockVectorEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable21InitializeBlockVectorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !15 ; 5 uses
  store i64 4, ptr %i.b, align 8, !noalias !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !15
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18, !noalias !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8, !noalias !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.b to i64
  store i64 %i.j, ptr %i.g, align 8
  %i.k = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.f, align 8
  br label %_ZNSt10unique_ptrIN2v88internal21StringForwardingTable5BlockESt14default_deleteIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.n = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 4 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i, %i.r  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.b to i64
  store i64 %i.z, ptr %i.y, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %1 = sub i64 %i.n, %i.o
  %2 = add i64 %1, -8                             ; 2 uses
  %i.aa = lshr i64 %2, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = add i64 %i.n, -8
  %i.ad = sub i64 %i.ac, %i.o
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep10 = getelementptr i8, ptr %i.m, i64 %i.af
  %bound0 = icmp ult ptr %i.x, %scevgep10
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader14, label %vector.ph

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
  %next.gep11 = getelementptr i8, ptr %i.m, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.ak = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !alias.scope !23, !noalias !18
  %wide.load12 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !23, !noalias !18
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !26, !noalias !23
  store <2 x i64> %wide.load12, ptr %i.al, align 8, !alias.scope !26, !noalias !23
  %i.am = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !alias.scope !23, !noalias !18
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !alias.scope !23, !noalias !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader14

.lr.ph.i.i.i.i.preheader14:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader14, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader14 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !21, !noalias !18
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !alias.scope !18, !noalias !21
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !21, !noalias !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.au) #19
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.e
  store ptr %i.x, ptr %i.a, align 8
  store ptr %i.ar, ptr %i.f, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.av, ptr %i.h, align 8
  br label %_ZNSt10unique_ptrIN2v88internal21StringForwardingTable5BlockESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal21StringForwardingTable5BlockESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit
  %i.aw = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ], [ %i.k, %bb.b ]
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = tail call noundef ptr @_ZN2v88internal21AlignedAllocWithRetryEmm(i64 noundef 392, i64 noundef 8) #16, !noalias !32 ; 3 uses
  store i32 16, ptr %i.ay, align 8, !noalias !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 48, ptr nonnull %i.az) #16, !noalias !32, !srcloc !6 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.be = load atomic i64, ptr %i.bd seq_cst, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = ptrtoint ptr %i.ay to i64
  store atomic volatile i64 %i.bg, ptr %i.bf release, align 8
  %i.bh = atomicrmw add ptr %i.bd, i64 1 seq_cst, align 8 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic ptr %i.ax, ptr %i.bi monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTableD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i64, ptr %i.k, align 8
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 24) #19
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal21StringForwardingTable11BlockVectorEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i, %._crit_edge
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i ], [ %i.h, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #19
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exit.i, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.e ]
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %bb.e ]
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal11AlignedFreeEPv(ptr noundef nonnull %i.z) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ab = add i32 %.07, 1                         ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load atomic i64, ptr %i.c seq_cst, align 8
  %i.ae = icmp ugt i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.c, label %._crit_edge, !llvm.loop !36
}

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal21StringForwardingTable26UpdateAfterYoungEvacuationEv:bb.a
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = and i64 %i.bb, 3
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = or disjoint i64 %i.bb, 1
  %.sink.i.i = select i1 %i.bd, i64 %i.be, i64 4294967296
  store atomic volatile i64 %.sink.i.i, ptr %i.as release, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i, %bb.h, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN2v88internal21StringForwardingTable5Block26UpdateAfterYoungEvacuationENS0_16PtrComprCageBaseE.exit, label %bb.g, !llvm.loop !7

_ZN2v88internal21StringForwardingTable5Block26UpdateAfterYoungEvacuationENS0_16PtrComprCageBaseE.exit: ; preds = %bb.i, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !52

_ZN2v88internal21StringForwardingTable5Block26UpdateAfterYoungEvacuationENS0_16PtrComprCageBaseEi.exit: ; preds = %bb.e, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable25UpdateAfterFullEvacuationEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.trip.count = zext i32 %i.i to i64         ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %wide.trip.count, %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit ]
  %i.k = load atomic i32, ptr %i.a seq_cst, align 8
  %i.l = add nsw i32 %i.k, 15
  %i.m = add i32 %i.h, 3
  %i.n = shl nuw i32 1, %i.m
  %i.o = xor i32 %i.n, -1
  %i.p = and i32 %i.l, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi
  %i.t = load atomic volatile i64, ptr %i.s acquire, align 8
  %i.u = icmp ult i32 %i.p, 2147483647
  br i1 %i.u, label %.lr.ph.i, label %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseEi.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.v = add nuw nsw i32 %i.p, 1
  %i.w = inttoptr i64 %i.t to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv.i ; 3 uses
  %i.z = load atomic volatile i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8 ; 2 uses
  %i.ae = and i64 %i.ad, 3
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ag = or disjoint i64 %i.ad, 1
  store atomic volatile i64 %i.ag, ptr %i.y release, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i

_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i: ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ai = load atomic volatile i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8 ; 2 uses
  %i.an = and i64 %i.am, 3
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ap = or disjoint i64 %i.am, 1
  store atomic volatile i64 %i.ap, ptr %i.ah release, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i

_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i: ; preds = %bb.g, %bb.f, %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseEi.exit, label %bb.c, !llvm.loop !9

bb.h:                                             ; preds = %.lr.ph, %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit ] ; 2 uses
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load atomic volatile i64, ptr %i.ar acquire, align 8
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i, label %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.trip.count.i.i = zext nneg i32 %i.au to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %indvars.iv.i.i ; 3 uses
  %i.ay = load atomic volatile i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i64 %i.ay, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bf = or disjoint i64 %i.bc, 1
  store atomic volatile i64 %i.bf, ptr %i.ax release, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i

_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bh = load atomic volatile i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8 ; 2 uses
  %i.bm = and i64 %i.bl, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bo = or disjoint i64 %i.bl, 1
  store atomic volatile i64 %i.bo, ptr %i.bg release, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i

_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i: ; preds = %bb.m, %bb.l, %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_10HeapObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i, %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit, label %bb.i, !llvm.loop !9

_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !53

_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseEi.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = ptrtoint ptr %1 to i64                     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8
  store i64 %i.r, ptr %i.q, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !59, !noalias !54
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !59, !noalias !54
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !62, !noalias !59
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !alias.scope !62, !noalias !59
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !59, !noalias !54
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !alias.scope !59, !noalias !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !57, !noalias !54
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !54, !noalias !57
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !57, !noalias !54
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !65

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.az = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !71, !noalias !66
  %wide.load55 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !71, !noalias !66
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !74, !noalias !71
  store <2 x i64> %wide.load55, ptr %i.ba, align 8, !alias.scope !74, !noalias !71
  %i.bb = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !71, !noalias !66
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !alias.scope !71, !noalias !66
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bc, label %middle.block57, label %vector.body50, !llvm.loop !76

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ap, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !69, !noalias !66
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !alias.scope !66, !noalias !69
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !69, !noalias !66
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !77

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.aw, %middle.block57 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #10 comdat {
bb.a:
  tail call void @abort() #17
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr3 = phi i32 [ %1, %bb.a ], [ %i.ao, %bb.f ]
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 55448
  %i.f = load i8, ptr %i.e, align 8, !range !37
  %i.g = trunc nuw i8 %i.f to i1
  %not..i.i = xor i1 %i.d, true
  %i.h = select i1 %not..i.i, i1 true, i1 %i.g
  br i1 %i.h, label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64088
  %i.j = load i8, ptr %i.i, align 8, !range !37, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #20
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64080
  %i.m = load ptr, ptr %i.l, align 8
  br label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit

_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit: ; preds = %tailrecurse, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i
  %.pn.i = phi ptr [ %i.m, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i ], [ %i.b, %tailrecurse ]
  %i.n = lshr i32 %.tr3, 4                        ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 58472
  %i.o = load ptr, ptr %.in.i, align 8            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4
  %i.r = icmp slt i32 %i.n, %i.q
  br i1 %i.r, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17, !inline_history !40
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit
  %i.s = add nuw nsw i32 %i.n, 16                 ; 2 uses
  %i.t = tail call range(i32 3, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 true) ; 2 uses
  %i.u = sub nuw nsw i32 27, %i.t
  %i.v = lshr exact i32 -2147483648, %i.t
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load atomic ptr, ptr %i.y acquire, align 8
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = load atomic volatile i64, ptr %i.ad acquire, align 8
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = zext nneg i32 %i.x to i64
  %i.ah = getelementptr [24 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load atomic volatile i64, ptr %i.ai acquire, align 8 ; 3 uses
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i64 %i.aj, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load atomic i32, ptr %i.an acquire, align 4 ; 3 uses
  %i.ap = and i32 %i.ao, 3
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %tailrecurse, label %_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit, !prof !10

bb.g:                                             ; preds = %bb.e
  %i.ar = trunc i64 %i.aj to i32
  br label %_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit

_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ar, %bb.g ], [ %i.ao, %bb.f ]
  ret i32 %.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread31

.thread31:                                        ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = urem i64 %i.c, %i.e                      ; 5 uses
end_hunk_1
