Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/string-forwarding-table?download=true
inline.NumInlined: 623
inline.NumDeleted: 352
begin_hunk_0_@_ZN2v88internal21StringForwardingTable11BlockVectorC2Em:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !23 ; 4 uses
  store i64 %2, ptr %i.a, align 8, !noalias !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !noalias !23
  %i.c = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.c, label %bb.b, label %_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17, !noalias !23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #17, !noalias !23
  unreachable

_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %2, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18, !noalias !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.g, align 8, !noalias !23
  store ptr %i.a, ptr %0, align 8, !alias.scope !23
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
  br i1 %i.w, label %bb.e, label %._crit_edge, !llvm.loop !22
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
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !33 ; 5 uses
  store i64 4, ptr %i.b, align 8, !noalias !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !noalias !33
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18, !noalias !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8, !noalias !33
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
  %i.m = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.n = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
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
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.b to i64
  store i64 %i.z, ptr %i.y, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.aa = add i64 %i.n, -8
  %i.ab = sub i64 %i.aa, %i.o                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.m, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !alias.scope !35
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !35
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !34
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !alias.scope !34
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !alias.scope !35
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !alias.scope !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !35
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !alias.scope !34
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !35
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.as) #19
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.e
  store ptr %i.x, ptr %i.a, align 8
  store ptr %i.ap, ptr %i.f, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.h, align 8
  br label %_ZNSt10unique_ptrIN2v88internal21StringForwardingTable5BlockESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal21StringForwardingTable5BlockESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit
  %i.au = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ], [ %i.k, %bb.b ]
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = tail call noundef ptr @_ZN2v88internal21AlignedAllocWithRetryEmm(i64 noundef 392, i64 noundef 8) #16, !noalias !36 ; 3 uses
  store i32 16, ptr %i.aw, align 8, !noalias !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 48, ptr nonnull %i.ax) #16, !noalias !36, !srcloc !12 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bc = load atomic i64, ptr %i.bb seq_cst, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = ptrtoint ptr %i.aw to i64
  store atomic volatile i64 %i.be, ptr %i.bd release, align 8
  %i.bf = atomicrmw add ptr %i.bb, i64 1 seq_cst, align 8 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic ptr %i.av, ptr %i.bg monotonic, align 8
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
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EEEvT_S9_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

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
  br i1 %i.ae, label %bb.c, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  store i64 %i.e, ptr %i.b, align 8
  store ptr null, ptr %1, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal21StringForwardingTable16AddForwardStringENS0_6TaggedINS0_6StringEEES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = atomicrmw add ptr %i.a, i32 1 seq_cst, align 4 ; 2 uses
  %i.c = add nsw i32 %i.b, 16                     ; 2 uses
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false) ; 2 uses
  %i.e = sub nsw i32 27, %i.d                     ; 2 uses
  %i.f = lshr exact i32 -2147483648, %i.d
  %i.g = xor i32 %i.f, -1
  %i.h = and i32 %i.c, %i.g
  %i.i = tail call noundef ptr @_ZN2v88internal21StringForwardingTable14EnsureCapacityEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.e)
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  %i.n = load atomic volatile i64, ptr %i.m acquire, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = sext i32 %i.h to i64
  %i.r = getelementptr inbounds [24 x i8], ptr %i.p, i64 %i.q ; 3 uses
  store atomic volatile i64 %1, ptr %i.r release, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store atomic volatile i64 %2, ptr %i.s release, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store atomic volatile i64 0, ptr %i.t release, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21StringForwardingTable19UpdateForwardStringEiNS0_6TaggedINS0_6StringEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
end_hunk_0
begin_hunk_1_@_ZN2v88internal21StringForwardingTable25UpdateAfterFullEvacuationEv:bb.a
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
  br i1 %exitcond.not.i, label %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseEi.exit, label %bb.c, !llvm.loop !1

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
  br i1 %exitcond.not.i.i, label %_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit, label %bb.i, !llvm.loop !1

_ZN2v88internal21StringForwardingTable5Block25UpdateAfterFullEvacuationENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_119UpdateForwardedSlotENS0_6TaggedINS0_6ObjectEEENS0_21OffHeapFullObjectSlotE.exit.i.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !48

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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
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
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8
  store i64 %i.r, ptr %i.q, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !alias.scope !63
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !63
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !62
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !alias.scope !62
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !alias.scope !63
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !alias.scope !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !63
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !alias.scope !62
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !63
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !53

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !alias.scope !66
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !66
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !alias.scope !67, !noalias !68
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !alias.scope !67, !noalias !68
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !alias.scope !66
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !alias.scope !66
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !60

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !65
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !alias.scope !64
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !65
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !61

_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8
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
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !17, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 55448
  %i.f = load i8, ptr %i.e, align 8, !range !17
  %i.g = trunc nuw i8 %i.f to i1
  %not..i.i = xor i1 %i.d, true
  %i.h = select i1 %not..i.i, i1 true, i1 %i.g
  br i1 %i.h, label %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64088
  %i.j = load i8, ptr %i.i, align 8, !range !17, !noundef !18
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
  br i1 %i.r, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZNK2v88internal7Isolate23string_forwarding_tableEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17, !inline_history !19
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
  br i1 %i.aq, label %tailrecurse, label %_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi.exit, !prof !14

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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread31

.thread31:                                        ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = urem i64 %i.c, %i.e                      ; 5 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %1, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.j, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.l = icmp eq ptr %.sroa.025.0, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = urem i64 %i.k, %i.q
  br label %.critedge

bb.f:                                             ; preds = %.thread31
  %i.s = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !4

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = urem i64 %i.z, %i.e
  %.not19.i.i = icmp eq i64 %i.aa, %i.f
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread31
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.f, %.thread31 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ac = phi ptr [ %i.p, %bb.e ], [ %i.d, %.thread31 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.ad = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread31 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ae = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 8 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %1, align 8
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ac, align 8
  %i.aj = load i64, ptr %i.a, align 8
  %i.ak = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef 1) #16 ; 2 uses
  %i.al = extractvalue { i8, i64 } %i.ak, 0
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.an = extractvalue { i8, i64 } %i.ak, 1
  tail call void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.an)
  %i.ao = load i64, ptr %i.ac, align 8
  %i.ap = urem i64 %i.ad, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.ap, %bb.i ], [ %i.ab, %.critedge ] ; 2 uses
  %i.aq = load ptr, ptr %0, align 8               ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.0.i17 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.as, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.ae, align 8
  %i.au = load ptr, ptr %i.ar, align 8
  store ptr %i.ae, ptr %i.au, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  store ptr %i.aw, ptr %i.ae, align 8
  store ptr %i.ae, ptr %i.av, align 8
  %.not11.i.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ac, align 8
  %i.az = load i64, ptr %i.ax, align 8
  %i.ba = urem i64 %i.az, %i.ay
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ba
  store ptr %i.ae, ptr %i.bb, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bc = phi ptr [ %.pre, %bb.m ], [ %i.aq, %bb.l ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0.i17
  store ptr %i.av, ptr %i.bd, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.be = load i64, ptr %i.a, align 8
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.a, align 8
  br label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.ae, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.02530, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.02530, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #19
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = distinct !{!4, !13}
!5 = distinct !{!5, !13}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{i64 17110801}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{ptr @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi}
!20 = distinct !{!20, i1 true, !"_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!21 = distinct !{!21, !20, !"_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!22 = distinct !{!22, !13}
!23 = !{!21}
!24 = distinct !{!24, i1 true, !"_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRKiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!25 = distinct !{!25, !24, !"_ZSt11make_uniqueIN2v88internal21StringForwardingTable11BlockVectorEJRKiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!27 = distinct !{!27, !26, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!28 = distinct !{!28, !26, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!29 = distinct !{!29, !13, !15, !16}
!30 = distinct !{!30, !13, !16, !15}
!31 = distinct !{!31, i1 true, !"_ZN2v88internal21StringForwardingTable5Block3NewEi"}
!32 = distinct !{!32, !31, !"_ZN2v88internal21StringForwardingTable5Block3NewEi: argument 0"}
!33 = !{!25}
!34 = !{!27}
!35 = !{!28}
!36 = !{!32}
!37 = distinct !{!37, !13}
!38 = distinct !{null, null}
!39 = distinct !{ptr @_ZNK2v88internal21StringForwardingTable10GetRawHashENS0_16PtrComprCageBaseEi, null, null}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{null, null}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!51 = distinct !{!51, !49, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!52 = distinct !{!52, !13, !15, !16}
!53 = distinct !{!53, !13, !16, !15}
!54 = distinct !{!54, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !54, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal21StringForwardingTable11BlockVectorESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!57 = distinct !{!57, i1 false, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !13, !15, !16}
!61 = distinct !{!61, !13, !15}
!62 = !{!50}
!63 = !{!51}
!64 = !{!55}
!65 = !{!56}
!66 = !{!56, !58}
!67 = !{!55, !59}
!68 = !{!58}
!69 = distinct !{!69, !13}
end_hunk_1
