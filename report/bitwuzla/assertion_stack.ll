Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/assertion_stack?download=true
inline.NumInlined: 489
inline.NumDeleted: 259
begin_hunk_0_@_ZN4bzla9backtrack14AssertionStack4viewEv:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24   ; 7 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #22 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store ptr %i.a, ptr %i.t, align 8, !tbaa !27
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = add i64 %i.i, -8
  %i.v = sub i64 %i.u, %i.j                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.h, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.ac = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !27, !alias.scope !64
  %wide.load6 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !27, !alias.scope !64
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !27, !alias.scope !63
  store <2 x i64> %wide.load6, ptr %i.ad, align 8, !tbaa !27, !alias.scope !63
  %i.ae = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !27, !alias.scope !64
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !27, !alias.scope !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !64
  store i64 %i.ag, ptr %.012.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !63
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.am) #21
  br label %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !24
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.an, ptr %i.e, align 8, !tbaa !29
  br label %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.ao = phi ptr [ %i.d, %bb.c ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4bzla9backtrack13AssertionViewESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ]
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  ret ptr %i.ap

bb.g:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #21
  resume { ptr, i32 } %i.aq
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla9backtrack14AssertionStack4pushEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.i, ptr %i.k, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !36
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #22 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %i.i, ptr %i.aa, align 8, !tbaa !39
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.e, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !37
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !65
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.b, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ah, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  %i.ai = zext i32 %.sroa.2.0.copyload.i.i to i64 ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1                   ; 3 uses
  %i.ak = sdiv i64 %i.aj, 64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ak
  %i.am = and i64 %i.aj, -9223372036854775745
  %i.an = icmp ugt i64 %i.am, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.an, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.al, i64 %storemerge.idx.i.i.i.i.i
  %i.ao = and i64 %i.aj, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !39
  %i.ar = and i64 %i.ap, %i.aq
  %i.as = icmp ne i64 %i.ar, 0                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i.i, %i.au
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.av = add i32 %.sroa.2.0.copyload.i.i, 1
  store i32 %i.av, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18
  %i.aw = icmp eq i32 %.sroa.2.0.copyload.i.i, 63
  br i1 %i.aw, label %bb.h, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  store ptr %i.ax, ptr %i.ah, align 8, !tbaa !17
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.h, %bb.g
  %i.ay = shl nuw i64 1, %i.ai                    ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.az = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !39
  %i.ba = or i64 %i.az, %i.ay
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.j:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.bb = xor i64 %i.ay, -1
  %i.bc = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !39
  %i.bd = and i64 %i.bc, %i.bb
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr nonnull %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, i1 noundef zeroext %i.as)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.j, %bb.i
  %.sink.i = phi i64 [ %i.ba, %bb.i ], [ %i.bd, %bb.j ]
  store i64 %.sink.i, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !39
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.k, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4bzla9backtrack14AssertionStack3popEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !18
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 63, ptr %i.e, align 8, !tbaa !18
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  store ptr %i.k, ptr %i.i, align 8, !tbaa !17
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.d
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %.lr.ph
  %i.u = phi ptr [ %i.w, %.lr.ph ], [ %i.n, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  store ptr %i.v, ptr %i.m, align 8, !tbaa !33
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.v) #20
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %i.d
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  %.lcssa = phi i64 [ %i.s, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %.not10 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not10, label %._crit_edge14, label %.lr.ph13

._crit_edge14:                                    ; preds = %bb.d, %._crit_edge
  ret void

.lr.ph13:                                         ; preds = %._crit_edge, %bb.d
  %.sroa.07.011 = phi ptr [ %i.al, %bb.d ], [ %i.ae, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.07.011, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.ak = icmp ugt i64 %i.aj, %.lcssa
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph13
  store i64 %.lcssa, ptr %i.ai, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph13
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.ag
  br i1 %.not, label %._crit_edge14, label %.lr.ph13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK4bzla9backtrack13AssertionView5beginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4bzla9backtrack13AssertionView9set_indexEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0, i64 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4bzla9backtrack13AssertionViewC2ERNS0_14AssertionStackE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #10 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla9backtrack13AssertionView4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !47, !align !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.c
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4bzla9backtrack13AssertionView5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !47, !align !55 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = icmp uge i64 %i.b, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -576460752303423488, 576460752303423488) i64 @_ZNK4bzla9backtrack13AssertionView3endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !47, !align !55 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4bzla9backtrack13AssertionView4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !47, !align !55 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  %i.l = sub i64 %i.i, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4bzla9backtrack13AssertionView5beginEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNK4bzla9backtrack14AssertionStack5beginEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !47, !align !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  br label %_ZNK4bzla9backtrack14AssertionStack5beginEm.exit

_ZNK4bzla9backtrack14AssertionStack5beginEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4bzla9backtrack13AssertionView3endEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !47, !align !55 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
end_hunk_0
