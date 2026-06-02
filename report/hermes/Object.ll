inline.NumInlined: 1775
inline.NumDeleted: 700
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_114lookupAccessorERNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %.not30 = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %.sroa.02.0.i = select i1 %.not30, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !26   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.y = icmp ult ptr %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !40
  store i64 -1688849860263936, ptr %i.v, align 8, !tbaa !19
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_.exit
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.t, i64 -1688849860263936) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.aa, %bb.f ]
  store ptr %.0.i.i.i.i.i.i, ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !26  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !47

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !40
  store i64 -1266636858327041, ptr %i.ad, align 8, !tbaa !19
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ai = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ab, i64 -1266636858327041) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i14 = phi ptr [ %i.ad, %bb.g ], [ %i.ai, %bb.h ]
  store ptr %.0.i.i.i.i.i.i14, ptr %3, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !tbaa !53
  store i32 -1, ptr %i.aj, align 4, !tbaa !62
  %i.ak = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #9 ; 2 uses
  %.mask = and i32 %i.ak, 255
  %i.al = icmp eq i32 %.mask, 0
  br i1 %i.al, label %.loopexit.sink.split, label %bb.j, !prof !46

bb.j:                                             ; preds = %bb.i
  %i.am = and i32 %i.ak, 256
  %.not31 = icmp eq i32 %i.am, 0
  br i1 %.not31, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load i16, ptr %4, align 4
  %i.ao = and i16 %i.an, 16
  %.not = icmp eq i16 %i.ao, 0
  br i1 %.not, label %.loopexit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %2, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.aq = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call ptr @_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.at, ptr noundef nonnull align 8 dereferenceable(9816) %0) #9 ; 2 uses
  %.not32 = icmp eq ptr %i.au, inttoptr (i64 -1 to ptr)
  br i1 %.not32, label %.loopexit.sink.split, label %bb.n, !prof !46

bb.n:                                             ; preds = %bb.m
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = or i64 %i.av, -281474976710656
  store i64 %i.aw, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.ax = and i64 %i.av, 281474976710655
  %.not36 = icmp eq i64 %i.ax, 0
  br i1 %.not36, label %.loopexit, label %bb.i, !llvm.loop !218

.loopexit.sink.split:                             ; preds = %bb.m, %bb.i, %bb.k, %bb.l
  %.sroa.023.3.ph = phi ptr [ null, %bb.k ], [ %i.ar, %bb.l ], [ inttoptr (i64 -1 to ptr), %bb.i ], [ inttoptr (i64 -1 to ptr), %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split
  %.sroa.023.3 = phi ptr [ %.sroa.023.3.ph, %.loopexit.sink.split ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.sroa.023.4 = phi ptr [ %.sroa.023.3, %.loopexit ], [ inttoptr (i64 -1 to ptr), %bb.a ]
  ret ptr %.sroa.023.4
}

declare void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvh23SmallVectorTemplateBaseIZN6hermes2vmL30objectDefinePropertiesInternalERNS2_7RuntimeENS2_6HandleINS2_11HermesValueEEES7_E8NewPropsLb0EE4growEm(ptr noundef nonnull align 8 captures(address) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  %.not = icmp samesign ugt i64 %i.r, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.12, i1 noundef zeroext true) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #10 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.13, i1 noundef zeroext true) #9
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !37     ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx = shl nuw nsw i64 %i.y, 4                 ; 3 uses
  %i.z = getelementptr i8, ptr %i.v, i64 %.idx    ; 2 uses
  %.not7.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIZN6hermes2vmL30objectDefinePropertiesInternalERNS2_7RuntimeENS2_6HandleINS2_11HermesValueEEES7_E8NewPropsLb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4llvh11safe_mallocEm.exit
  %i.aa = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 80
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader6, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.t, i64 %.idx
  %bound0 = icmp ult ptr %i.t, %i.z
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 2305843009213693950     ; 3 uses
  %i.ad = shl i64 %n.vec, 4                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 4                       ; 3 uses
  %i.ah = or disjoint i64 %i.ag, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ag
  %next.gep1 = getelementptr i8, ptr %i.t, i64 %i.ah
  %next.gep2 = getelementptr i8, ptr %i.v, i64 %i.ag
  %next.gep3 = getelementptr i8, ptr %i.v, i64 %i.ah
  %wide.load = load <2 x i64>, ptr %next.gep2, align 8, !alias.scope !219
  %wide.load4 = load <2 x i64>, ptr %next.gep3, align 8, !alias.scope !219
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !222, !noalias !219
  store <2 x i64> %wide.load4, ptr %next.gep1, align 8, !alias.scope !222, !noalias !219
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN4llvh23SmallVectorTemplateBaseIZN6hermes2vmL30objectDefinePropertiesInternalERNS2_7RuntimeENS2_6HandleINS2_11HermesValueEEES7_E8NewPropsLb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit, label %.lr.ph.i.i.i.i.preheader6

.lr.ph.i.i.i.i.preheader6:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.sroa.06.08.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader6, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 3 uses
  %.sroa.06.08.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.06.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 3 uses
  %i.aj = load i64, ptr %.sroa.06.08.i.i.i.i, align 8
  store i64 %i.aj, ptr %.09.i.i.i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIZN6hermes2vmL30objectDefinePropertiesInternalERNS2_7RuntimeENS2_6HandleINS2_11HermesValueEEES7_E8NewPropsLb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !225

_ZN4llvh23SmallVectorTemplateBaseIZN6hermes2vmL30objectDefinePropertiesInternalERNS2_7RuntimeENS2_6HandleINS2_11HermesValueEEES7_E8NewPropsLb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN4llvh11safe_mallocEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = icmp eq ptr %i.v, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIZN6hermes2vmL30objectDefinePropertiesInternalERNS2_7RuntimeENS2_6HandleINS2_11HermesValueEEES7_E8NewPropsLb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit
  tail call void @free(ptr noundef %i.v) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIZN6hermes2vmL30objectDefinePropertiesInternalERNS2_7RuntimeENS2_6HandleINS2_11HermesValueEEES7_E8NewPropsLb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit
  store ptr %i.t, ptr %0, align 8, !tbaa !37
  %i.ar = trunc i64 %i.q to i32
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !38
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr, i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, i32) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 65535
  br i1 %i.a, label %bb.e, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #9
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #9
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.pn = phi { i32, i64 } [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.f ], [ %i.e, %bb.g ]
  ret { i32, i64 } %.pn
}

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !19
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %i.d = and i32 %i.c, 16777216
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %i.c, 150994943
  br i1 %i.f, label %bb.c, label %bb.d, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.c, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i, label %bb.g [
    i32 134217728, label %bb.e
    i32 67108864, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.k, align 8, !tbaa !19
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %bb.g ] ; 10 uses
  %i.p = zext i32 %2 to i64                       ; 12 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i.i6 = load i64, ptr %i.q, align 8, !tbaa !19
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i6, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 7 uses
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
  %i.u = and i32 %i.t, 16777216
  %i.v = icmp eq i32 %i.u, 0
  %i.w = icmp ugt i32 %i.t, 150994943             ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.p, !prof !47

bb.h:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit
  br i1 %i.w, label %bb.i, label %bb.j, !prof !46

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.j:                                             ; preds = %bb.h
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.t, 234881024
  %i.z = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.aa, %bb.k ], [ %i.ab, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !196
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ae ; 2 uses
  %i.ag = icmp ugt i32 %2, 1
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !47

bb.m:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.0.i, i64 %i.p, i1 false)
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.n:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  %i.ah = icmp eq i32 %2, 1
  br i1 %i.ah, label %bb.o, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load i8, ptr %.0.i, align 1, !tbaa !53
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !53
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.p:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit
  br i1 %i.w, label %bb.q, label %bb.r, !prof !46

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !190
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.r:                                             ; preds = %bb.p
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.t, 251658240
  %i.al = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i, 117440512
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i: ; preds = %bb.t, %bb.s, %bb.q
  %.0.i4.i = phi ptr [ %i.ak, %bb.q ], [ %i.am, %bb.s ], [ %i.an, %bb.t ] ; 2 uses
  %.not46 = icmp eq i32 %2, 0
  br i1 %.not46, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, label %iter.check98

iter.check98:                                     ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !196
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %.0.i4.i, i64 %i.aq ; 7 uses
  %min.iters.check80 = icmp ult i32 %2, 4
  br i1 %min.iters.check80, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %iter.check98
  %i.as = add nuw nsw i64 %i.p, %i.aq
  %i.at = shl nuw nsw i64 %i.as, 1
  %scevgep75 = getelementptr i8, ptr %.0.i4.i, i64 %i.at
  %scevgep76 = getelementptr i8, ptr %.0.i, i64 %i.p
  %bound077 = icmp ult ptr %i.ar, %scevgep76
  %bound178 = icmp ult ptr %.0.i, %scevgep75
  %found.conflict79 = and i1 %bound077, %bound178
  br i1 %found.conflict79, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %vector.memcheck74
  %min.iters.check82 = icmp ult i32 %2, 16
  br i1 %min.iters.check82, label %vec.epilog.ph102, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %n.mod.vf84 = and i64 %i.p, 12
  %n.vec85 = and i64 %i.p, 4294967280             ; 5 uses
  %i.au = and i64 %i.p, 15
  %i.av = shl nuw nsw i64 %n.vec85, 1
  %i.aw = getelementptr i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr i8, ptr %.0.i, i64 %n.vec85
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph83
  %index87 = phi i64 [ 0, %vector.ph83 ], [ %index.next92, %vector.body86 ] ; 3 uses
  %i.ay = shl i64 %index87, 1
  %next.gep88 = getelementptr i8, ptr %i.ar, i64 %i.ay ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.0.i, i64 %index87 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep89, i64 8
  %wide.load90 = load <8 x i8>, ptr %next.gep89, align 1, !tbaa !53, !alias.scope !226
  %wide.load91 = load <8 x i8>, ptr %i.az, align 1, !tbaa !53, !alias.scope !226
  %i.ba = sext <8 x i8> %wide.load90 to <8 x i16>
  %i.bb = sext <8 x i8> %wide.load91 to <8 x i16>
  %i.bc = getelementptr i8, ptr %next.gep88, i64 16
  store <8 x i16> %i.ba, ptr %next.gep88, align 2, !tbaa !194, !alias.scope !229, !noalias !226
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !194, !alias.scope !229, !noalias !226
  %index.next92 = add nuw i64 %index87, 16        ; 2 uses
  %i.bd = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.bd, label %middle.block93, label %vector.body86, !llvm.loop !231

middle.block93:                                   ; preds = %vector.body86
  %cmp.n94 = icmp eq i64 %n.vec85, %i.p
  br i1 %cmp.n94, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, label %vec.epilog.iter.check100

vec.epilog.iter.check100:                         ; preds = %middle.block93
  %min.epilog.iters.check101 = icmp eq i64 %n.mod.vf84, 0
  br i1 %min.epilog.iters.check101, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph102, !prof !209

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check100
  %vec.epilog.resume.val95 = phi i64 [ %n.vec85, %vec.epilog.iter.check100 ], [ 0, %vector.main.loop.iter.check81 ]
  %n.vec104 = and i64 %i.p, 4294967292            ; 4 uses
  %i.be = and i64 %i.p, 3
  %i.bf = shl nuw nsw i64 %n.vec104, 1
  %i.bg = getelementptr i8, ptr %i.ar, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.0.i, i64 %n.vec104
  br label %vec.epilog.vector.body105

vec.epilog.vector.body105:                        ; preds = %vec.epilog.vector.body105, %vec.epilog.ph102
  %index106 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph102 ], [ %index.next110, %vec.epilog.vector.body105 ] ; 3 uses
  %i.bi = shl i64 %index106, 1
  %next.gep107 = getelementptr i8, ptr %i.ar, i64 %i.bi
  %next.gep108 = getelementptr i8, ptr %.0.i, i64 %index106
  %wide.load109 = load <4 x i8>, ptr %next.gep108, align 1, !tbaa !53, !alias.scope !226
  %i.bj = sext <4 x i8> %wide.load109 to <4 x i16>
  store <4 x i16> %i.bj, ptr %next.gep107, align 2, !tbaa !194, !alias.scope !229, !noalias !226
  %index.next110 = add nuw i64 %index106, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.bk, label %vec.epilog.middle.block111, label %vec.epilog.vector.body105, !llvm.loop !232

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body105
  %cmp.n112 = icmp eq i64 %n.vec104, %i.p
  br i1 %cmp.n112, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck74, %iter.check98, %vec.epilog.iter.check100, %vec.epilog.middle.block111
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.p, %iter.check98 ], [ %i.p, %vector.memcheck74 ], [ %i.au, %vec.epilog.iter.check100 ], [ %i.be, %vec.epilog.middle.block111 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %iter.check98 ], [ %i.ar, %vector.memcheck74 ], [ %i.aw, %vec.epilog.iter.check100 ], [ %i.bg, %vec.epilog.middle.block111 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %.0.i, %iter.check98 ], [ %.0.i, %vector.memcheck74 ], [ %i.ax, %vec.epilog.iter.check100 ], [ %i.bh, %vec.epilog.middle.block111 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i, align 1, !tbaa !53
  %i.bm = sext i8 %i.bl to i16
  store i16 %i.bm, ptr %.0811.i.i.i.i.i.i, align 2, !tbaa !194
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 2
  %i.bp = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bq = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, !llvm.loop !233

_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block93, %vec.epilog.middle.block111, %bb.m, %bb.n, %bb.o, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %i.bt = add i32 %i.bs, %2
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !196
  br label %bb.bc

bb.u:                                             ; preds = %bb.a
  %i.bu = load ptr, ptr %0, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i7 = load i64, ptr %i.bu, align 8, !tbaa !19
  %i.bv = and i64 %.sroa.0.0.copyload.i.i7, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 16777216
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = icmp ugt i32 %i.c, 150994943
  br i1 %i.ca, label %bb.w, label %bb.x, !prof !46

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !190
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

bb.x:                                             ; preds = %bb.v
  %.mask.i.i.i.i.i.i.i.i9 = and i32 %i.c, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i9, label %bb.aa [
    i32 117440512, label %bb.y
    i32 50331648, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

bb.z:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

bb.aa:                                            ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i.i11 = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i11, 281474976710655
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !190
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit: ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  %.0.i10 = phi ptr [ %i.cc, %bb.w ], [ %i.cd, %bb.y ], [ %i.ce, %bb.z ], [ %i.cj, %bb.aa ]
  %i.ck = zext i32 %2 to i64
  tail call void @_ZN6hermes2vm13StringBuilder14appendUTF16RefEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.0.i10, i64 %i.ck)
  br label %bb.bc

bb.ab:                                            ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !234 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !176
  %i.cp = and i32 %i.co, 2147483647               ; 3 uses
  %i.cq = icmp samesign ugt i32 %i.cp, 65535
  br i1 %i.cq, label %bb.ad, label %bb.ac, !prof !46

bb.ac:                                            ; preds = %bb.ab
  %i.cr = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %i.cm, i32 noundef %i.cp) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cs = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %i.cm, i32 noundef %i.cp) #9
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit: ; preds = %bb.ac, %bb.ad
  %.pn.i = phi { i32, i64 } [ %i.cs, %bb.ad ], [ %i.cr, %bb.ac ] ; 2 uses
  %i.ct = extractvalue { i32, i64 } %.pn.i, 0
  %i.cu = extractvalue { i32, i64 } %.pn.i, 1
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.ae, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !46

bb.ae:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.15) #11
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit
  %i.cw = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %i.cw, align 8, !tbaa !19
  %i.cx = and i64 %.sroa.0.0.copyload.i.i13, 281474976710655
  %i.cy = inttoptr i64 %i.cx to ptr               ; 5 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = icmp ugt i32 %i.cz, 150994943
  br i1 %i.da, label %bb.af, label %bb.ag, !prof !46

bb.af:                                            ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !186
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit17

bb.ag:                                            ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %.mask.i.i.i.i.i.i.i.i14 = and i32 %i.cz, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i14, label %bb.aj [
    i32 134217728, label %bb.ah
    i32 67108864, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit17

bb.ai:                                            ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit17

bb.aj:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.0.0.copyload.i.i.i16 = load i64, ptr %i.df, align 8, !tbaa !19
  %i.dg = and i64 %.sroa.0.0.copyload.i.i.i16, 281474976710655
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !186
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit17

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit17: ; preds = %bb.af, %bb.ah, %bb.ai, %bb.aj
  %.0.i15 = phi ptr [ %i.dc, %bb.af ], [ %i.dd, %bb.ah ], [ %i.de, %bb.ai ], [ %i.dj, %bb.aj ] ; 10 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !196 ; 7 uses
  %i.dm = zext i32 %i.dl to i64                   ; 12 uses
  %i.dn = and i64 %i.cu, 281474976710655          ; 2 uses
  %i.do = or disjoint i64 %i.dn, -844424930131968
  store i64 %i.do, ptr %i.cw, align 8, !tbaa !12
  store i32 0, ptr %i.dk, align 8, !tbaa !196
  %i.dp = inttoptr i64 %i.dn to ptr               ; 7 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 4 uses
  %i.dr = and i32 %i.dq, 16777216
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = icmp ugt i32 %i.dq, 150994943           ; 2 uses
  br i1 %i.ds, label %bb.ak, label %bb.as, !prof !47

bb.ak:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit17
  br i1 %i.dt, label %bb.al, label %bb.am, !prof !46

bb.al:                                            ; preds = %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !186
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i28

bb.am:                                            ; preds = %bb.ak
  %.mask.i.i.i.i.i.i.i.i.i27 = and i32 %i.dq, 234881024
  %i.dw = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i27, 134217728
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i28

bb.ao:                                            ; preds = %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i28

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i28: ; preds = %bb.ao, %bb.an, %bb.al
  %.0.i.i29 = phi ptr [ %i.dv, %bb.al ], [ %i.dx, %bb.an ], [ %i.dy, %bb.ao ] ; 2 uses
  %i.dz = icmp ugt i32 %i.dl, 1
  br i1 %i.dz, label %bb.ap, label %bb.aq, !prof !47

bb.ap:                                            ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i29, ptr align 1 %.0.i15, i64 %i.dm, i1 false)
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30

bb.aq:                                            ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i28
  %i.ea = icmp eq i32 %i.dl, 1
  br i1 %i.ea, label %bb.ar, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30

bb.ar:                                            ; preds = %bb.aq
  %i.eb = load i8, ptr %.0.i15, align 1, !tbaa !53
  store i8 %i.eb, ptr %.0.i.i29, align 1, !tbaa !53
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30

bb.as:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit17
  br i1 %i.dt, label %bb.at, label %bb.au, !prof !46

bb.at:                                            ; preds = %bb.as
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !190
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i20

bb.au:                                            ; preds = %bb.as
  %.mask.i.i.i.i.i.i.i.i3.i19 = and i32 %i.dq, 251658240
  %i.ee = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i19, 117440512
  br i1 %i.ee, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i20

bb.aw:                                            ; preds = %bb.au
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i20

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i20: ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i4.i21 = phi ptr [ %i.ed, %bb.at ], [ %i.ef, %bb.av ], [ %i.eg, %bb.aw ] ; 8 uses
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30, label %iter.check

iter.check:                                       ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i20
  %min.iters.check = icmp ult i32 %i.dl, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i23.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eh = shl nuw nsw i64 %i.dm, 1
  %scevgep = getelementptr i8, ptr %.0.i4.i21, i64 %i.eh
  %scevgep57 = getelementptr i8, ptr %.0.i15, i64 %i.dm
  %bound0 = icmp ult ptr %.0.i4.i21, %scevgep57
  %bound1 = icmp ult ptr %.0.i15, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i23.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check58 = icmp ult i32 %i.dl, 16
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dm, 12
  %n.vec = and i64 %i.dm, 4294967280              ; 5 uses
  %i.ei = and i64 %i.dm, 15
  %i.ej = shl nuw nsw i64 %n.vec, 1
  %i.ek = getelementptr i8, ptr %.0.i4.i21, i64 %i.ej
  %i.el = getelementptr i8, ptr %.0.i15, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.em = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0.i4.i21, i64 %i.em ; 2 uses
  %next.gep59 = getelementptr i8, ptr %.0.i15, i64 %index ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep59, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep59, align 1, !tbaa !53, !alias.scope !235
  %wide.load60 = load <8 x i8>, ptr %i.en, align 1, !tbaa !53, !alias.scope !235
  %i.eo = sext <8 x i8> %wide.load to <8 x i16>
  %i.ep = sext <8 x i8> %wide.load60 to <8 x i16>
  %i.eq = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.eo, ptr %next.gep, align 2, !tbaa !194, !alias.scope !238, !noalias !235
  store <8 x i16> %i.ep, ptr %i.eq, align 2, !tbaa !194, !alias.scope !238, !noalias !235
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dm
  br i1 %cmp.n, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i23.preheader, label %vec.epilog.ph, !prof !209

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %i.dm, 4294967292            ; 4 uses
  %i.es = and i64 %i.dm, 3
  %i.et = shl nuw nsw i64 %n.vec64, 1
  %i.eu = getelementptr i8, ptr %.0.i4.i21, i64 %i.et
  %i.ev = getelementptr i8, ptr %.0.i15, i64 %n.vec64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 3 uses
  %i.ew = shl i64 %index65, 1
  %next.gep66 = getelementptr i8, ptr %.0.i4.i21, i64 %i.ew
  %next.gep67 = getelementptr i8, ptr %.0.i15, i64 %index65
  %wide.load68 = load <4 x i8>, ptr %next.gep67, align 1, !tbaa !53, !alias.scope !235
  %i.ex = sext <4 x i8> %wide.load68 to <4 x i16>
  store <4 x i16> %i.ex, ptr %next.gep66, align 2, !tbaa !194, !alias.scope !238, !noalias !235
  %index.next69 = add nuw i64 %index65, 4         ; 2 uses
  %i.ey = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.ey, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n70 = icmp eq i64 %n.vec64, %i.dm
  br i1 %cmp.n70, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30, label %.lr.ph.i.i.i.i.i.i23.preheader

.lr.ph.i.i.i.i.i.i23.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i24.ph = phi i64 [ %i.dm, %iter.check ], [ %i.dm, %vector.memcheck ], [ %i.ei, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i25.ph = phi ptr [ %.0.i4.i21, %iter.check ], [ %.0.i4.i21, %vector.memcheck ], [ %i.ek, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i26.ph = phi ptr [ %.0.i15, %iter.check ], [ %.0.i15, %vector.memcheck ], [ %i.el, %vec.epilog.iter.check ], [ %i.ev, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i23:                             ; preds = %.lr.ph.i.i.i.i.i.i23.preheader, %.lr.ph.i.i.i.i.i.i23
  %.012.i.i.i.i.i.i24 = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.i23 ], [ %.012.i.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i.i23.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i25 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i23 ], [ %.0811.i.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i.i23.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i26 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i23 ], [ %.0910.i.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i.i23.preheader ] ; 2 uses
  %i.ez = load i8, ptr %.0910.i.i.i.i.i.i26, align 1, !tbaa !53
  %i.fa = sext i8 %i.ez to i16
  store i16 %i.fa, ptr %.0811.i.i.i.i.i.i25, align 2, !tbaa !194
  %i.fb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i26, i64 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i25, i64 2
  %i.fd = add nsw i64 %.012.i.i.i.i.i.i24, -1
  %i.fe = icmp samesign ugt i64 %.012.i.i.i.i.i.i24, 1
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i23, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30, !llvm.loop !242

_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30: ; preds = %.lr.ph.i.i.i.i.i.i23, %middle.block, %vec.epilog.middle.block, %bb.ap, %bb.aq, %bb.ar, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i20
  %i.ff = load i32, ptr %i.dk, align 8, !tbaa !196
  %i.fg = add i32 %i.ff, %i.dl
  store i32 %i.fg, ptr %i.dk, align 8, !tbaa !196
  %.sroa.0.0.copyload.i.i31 = load i64, ptr %1, align 8, !tbaa !19
  %i.fh = and i64 %.sroa.0.0.copyload.i.i31, 281474976710655
  %i.fi = inttoptr i64 %i.fh to ptr               ; 5 uses
  %i.fj = load i32, ptr %i.fi, align 4            ; 2 uses
  %i.fk = icmp ugt i32 %i.fj, 150994943
  br i1 %i.fk, label %bb.ax, label %bb.ay, !prof !46

bb.ax:                                            ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !190
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

bb.ay:                                            ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30
  %.mask.i.i.i.i.i.i.i.i32 = and i32 %i.fj, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i32, label %bb.bb [
    i32 117440512, label %bb.az
    i32 50331648, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

bb.ba:                                            ; preds = %bb.ay
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

bb.bb:                                            ; preds = %bb.ay
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.0.0.copyload.i.i.i34 = load i64, ptr %i.fp, align 8, !tbaa !19
  %i.fq = and i64 %.sroa.0.0.copyload.i.i.i34, 281474976710655
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !190
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35: ; preds = %bb.ax, %bb.az, %bb.ba, %bb.bb
  %.0.i33 = phi ptr [ %i.fm, %bb.ax ], [ %i.fn, %bb.az ], [ %i.fo, %bb.ba ], [ %i.ft, %bb.bb ]
  %i.fu = zext i32 %2 to i64
  tail call void @_ZN6hermes2vm13StringBuilder14appendUTF16RefEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.0.i33, i64 %i.fu)
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35, %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder14appendUTF16RefEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !19
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 16777216
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !234
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !176
  %i.k = and i32 %i.j, 2147483647
  %i.l = tail call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb(ptr noundef nonnull align 8 dereferenceable(9816) %i.h, i32 noundef %i.k, i1 noundef zeroext false) ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0
  %i.n = extractvalue { i32, i64 } %i.l, 1
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %bb.c, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !46

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.15) #11
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %i.p, align 8, !tbaa !19
  %i.q = and i64 %.sroa.0.0.copyload.i.i3, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp ugt i32 %i.s, 150994943
  br i1 %i.t, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.s, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.h:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0.0.copyload.i.i.i4 = load i64, ptr %i.y, align 8, !tbaa !19
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i4, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !186
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.v, %bb.d ], [ %i.w, %bb.f ], [ %i.x, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !196
  %i.af = zext i32 %i.ae to i64
  %i.ag = and i64 %i.n, 281474976710655
  %i.ah = or disjoint i64 %i.ag, -844424930131968
  store i64 %i.ah, ptr %i.p, align 8, !tbaa !12
  store i32 0, ptr %i.ad, align 8, !tbaa !196
  tail call void @_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.0.i, i64 %i.af)
  %.pre = load ptr, ptr %0, align 8, !tbaa !64
  %.sroa.0.0.copyload.i.i5.pre = load i64, ptr %.pre, align 8, !tbaa !19
  %.pre14 = and i64 %.sroa.0.0.copyload.i.i5.pre, 281474976710655
  %.pre15 = inttoptr i64 %.pre14 to ptr           ; 2 uses
  %.pr = load i32, ptr %.pre15, align 4
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit, %bb.a
  %i.ai = phi i32 [ %.pr, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit ], [ %i.d, %bb.a ] ; 2 uses
  %.pre-phi16 = phi ptr [ %.pre15, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit ], [ %i.c, %bb.a ] ; 3 uses
  %i.aj = icmp ugt i32 %i.ai, 150994943
  br i1 %i.aj, label %bb.j, label %bb.k, !prof !46

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre-phi16, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !190
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.k:                                             ; preds = %bb.i
  %.mask.i.i.i.i.i.i.i.i6 = and i32 %i.ai, 251658240
  %i.am = icmp eq i32 %.mask.i.i.i.i.i.i.i.i6, 117440512
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.pre-phi16, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre-phi16, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.0.i7 = phi ptr [ %i.al, %bb.j ], [ %i.an, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !196 ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.0.i7, i64 %i.ar ; 2 uses
  %i.at = icmp ugt i64 %2, 1
  br i1 %i.at, label %bb.n, label %bb.o, !prof !47

bb.n:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit
  %.idx = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.as, ptr align 2 %1, i64 %.idx, i1 false)
  %.pre13 = load i32, ptr %i.ap, align 8, !tbaa !196
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit

bb.o:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit
  %i.au = icmp eq i64 %2, 1
  br i1 %i.au, label %bb.p, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.o
  %i.av = load i16, ptr %1, align 2, !tbaa !194
  store i16 %i.av, ptr %i.as, align 2, !tbaa !194
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit:               ; preds = %bb.n, %bb.o, %bb.p
  %i.aw = phi i32 [ %.pre13, %bb.n ], [ %i.aq, %bb.o ], [ %i.aq, %bb.p ]
  %i.ax = trunc i64 %2 to i32
  %i.ay = add i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %i.ap, align 8, !tbaa !196
  ret void
}

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #7

declare { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_8JSObjectEEENS0_10CallResultINS0_12PseudoHandleIS3_EELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS3_EEPv(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef) #2

declare void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind writable sret(%"class.hermes::vm::CallResult.236") align 8, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i8) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12iteratorStepERNS0_7RuntimeERKNS0_14IteratorRecordE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }

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
!7 = !{!8, !10, i64 16}
!8 = !{!"_ZTSN6hermes2vm10NativeArgsE", !9, i64 0, !4, i64 8, !10, i64 16}
!9 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !10, i64 0}
!10 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN6hermes2vm11HermesValueE", !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!9, !10, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!18 = distinct !{!18, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!19 = !{!14, !14, i64 0}
!20 = !{!8, !4, i64 8}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!23 = distinct !{!23, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 0}
!26 = !{!27, !28, i64 8}
!27 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !28, i64 8}
!28 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !11, i64 0}
!29 = !{!30, !28, i64 8}
!30 = !{!"_ZTSN6hermes2vm7GCScopeE", !25, i64 0, !28, i64 8, !5, i64 16, !31, i64 144, !10, i64 192, !10, i64 200, !4, i64 208}
!31 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !32, i64 0, !36, i64 16}
!32 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !33, i64 0}
!33 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !34, i64 0}
!34 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !35, i64 0}
!35 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!36 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!37 = !{!35, !11, i64 0}
!38 = !{!35, !4, i64 12}
!39 = !{!35, !4, i64 8}
!40 = !{!30, !10, i64 192}
!41 = !{!30, !10, i64 200}
!42 = !{!30, !4, i64 208}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!45 = distinct !{!45, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!48 = !{!49, !50, i64 24}
!49 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !50, i64 8, !5, i64 16, !50, i64 24, !14, i64 32, !14, i64 40}
!50 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!51 = !{!49, !14, i64 32}
!52 = !{!49, !14, i64 40}
!53 = !{!5, !5, i64 0}
!54 = !{!49, !50, i64 8}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!57 = distinct !{!57, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!58 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!62 = !{!63, !4, i64 4}
!63 = !{!"_ZTSN6hermes2vm18PropertyDescriptorE", !5, i64 0, !4, i64 4}
!64 = !{!65, !10, i64 0}
!65 = !{!"_ZTSN6hermes2vm10HandleBaseE", !10, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!68 = distinct !{!68, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!69 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!72 = distinct !{!72, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!73 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!76 = distinct !{!76, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!79 = distinct !{!79, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!82 = distinct !{!82, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!85 = distinct !{!85, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!88 = distinct !{!88, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!91 = distinct !{!91, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!94 = distinct !{!94, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!95 = !{!96, !4, i64 0}
!96 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!97 = !{!98, !100, i64 8}
!98 = !{!"_ZTSN6hermes2vm11BoxedDoubleE", !99, i64 0, !100, i64 8}
!99 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!100 = !{!"double", !5, i64 0}
!101 = !{!10, !10, i64 0}
!102 = !{!103, !4, i64 20}
!103 = !{!"_ZTSN6hermes2vm9ArrayImplE", !104, i64 0, !4, i64 20, !4, i64 24, !111, i64 28}
!104 = !{!"_ZTSN6hermes2vm8JSObjectE", !99, i64 0, !105, i64 4, !106, i64 8, !109, i64 12, !110, i64 16}
!105 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!106 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !107, i64 0}
!107 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !108, i64 0}
!108 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !96, i64 0}
!109 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !107, i64 0}
!110 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !107, i64 0}
!111 = !{!"_ZTSN6hermes2vm9GCPointerINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEE", !107, i64 0}
!112 = !{!113, !4, i64 0}
!113 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!118 = distinct !{!118, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!121 = distinct !{!121, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!124 = distinct !{!124, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!125 = !{!126, !130, i64 16}
!126 = !{!"_ZTSN4llvh8OptionalIN6hermes2vm14IteratorRecordEEE", !127, i64 0}
!127 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes2vm14IteratorRecordELb0EEE", !128, i64 0, !130, i64 16}
!128 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes2vm14IteratorRecordEcccccccccEE", !129, i64 0}
!129 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm16EEE", !5, i64 0}
!130 = !{!"bool", !5, i64 0}
!131 = !{i8 0, i8 2}
!132 = !{}
!133 = !{!"branch_weights", i32 1, i32 127}
!134 = !{!"branch_weights", i32 127, i32 255873}
!135 = distinct !{!135, !115}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!138 = distinct !{!138, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!141 = distinct !{!141, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!144 = distinct !{!144, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!147 = distinct !{!147, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!150 = distinct !{!150, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!153 = distinct !{!153, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!156 = distinct !{!156, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!159 = distinct !{!159, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!162 = distinct !{!162, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!163 = !{!103, !4, i64 24}
!164 = distinct !{!164, !115}
!165 = distinct !{!165, !115}
!166 = distinct !{!166, !115}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!169 = distinct !{!169, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!170 = !{!171, !4, i64 0}
!171 = !{!"_ZTSZN6hermes2vmL30objectDefinePropertiesInternalERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_E8NewProps", !4, i64 0, !5, i64 4, !172, i64 8}
!172 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_11HermesValueEEE", !173, i64 0}
!173 = !{!"_ZTSN6hermes2vm6HandleINS0_11HermesValueEEE", !65, i64 0}
!174 = distinct !{!174, !115}
!175 = distinct !{!175, !115}
!176 = !{!177, !4, i64 4}
!177 = !{!"_ZTSN6hermes2vm15StringPrimitiveE", !178, i64 0, !4, i64 4}
!178 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !99, i64 0}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb: argument 0"}
!181 = distinct !{!181, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb"}
!182 = !{!183, !130, i64 24}
!183 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes2vm13StringBuilderELb0EEE", !184, i64 0, !130, i64 24}
!184 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes2vm13StringBuilderEcccccccccEE", !185, i64 0}
!185 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm24EEE", !5, i64 0}
!186 = !{!187, !189, i64 0}
!187 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !188, i64 0, !14, i64 8, !5, i64 16}
!188 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !189, i64 0}
!189 = !{!"p1 omnipotent char", !11, i64 0}
!190 = !{!191, !193, i64 0}
!191 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !192, i64 0, !14, i64 8, !5, i64 16}
!192 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !193, i64 0}
!193 = !{!"p1 char16_t", !11, i64 0}
!194 = !{!195, !195, i64 0}
!195 = !{!"char16_t", !5, i64 0}
!196 = !{!197, !4, i64 8}
!197 = !{!"_ZTSN6hermes2vm13StringBuilderE", !198, i64 0, !4, i64 8, !200, i64 16}
!198 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEE", !199, i64 0}
!199 = !{!"_ZTSN6hermes2vm6HandleINS0_15StringPrimitiveEEE", !65, i64 0}
!200 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !11, i64 0}
!201 = !{!202}
!202 = distinct !{!202, !203}
!203 = distinct !{!203, !"LVerDomain"}
!204 = !{!205}
!205 = distinct !{!205, !203}
!206 = distinct !{!206, !115, !207, !208}
!207 = !{!"llvm.loop.isvectorized", i32 1}
!208 = !{!"llvm.loop.unroll.runtime.disable"}
!209 = !{!"branch_weights", i32 4, i32 12}
!210 = distinct !{!210, !115, !207, !208}
!211 = distinct !{!211, !115, !207}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!214 = distinct !{!214, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_: argument 0"}
!217 = distinct !{!217, !"_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_8JSObjectEEENS0_13MutableHandleIT_EEPS5_"}
!218 = distinct !{!218, !115}
!219 = !{!220}
!220 = distinct !{!220, !221}
!221 = distinct !{!221, !"LVerDomain"}
!222 = !{!223}
!223 = distinct !{!223, !221}
!224 = distinct !{!224, !115, !207, !208}
!225 = distinct !{!225, !115, !207}
!226 = !{!227}
!227 = distinct !{!227, !228}
!228 = distinct !{!228, !"LVerDomain"}
!229 = !{!230}
!230 = distinct !{!230, !228}
!231 = distinct !{!231, !115, !207, !208}
!232 = distinct !{!232, !115, !207, !208}
!233 = distinct !{!233, !115, !207}
!234 = !{!197, !200, i64 16}
!235 = !{!236}
!236 = distinct !{!236, !237}
!237 = distinct !{!237, !"LVerDomain"}
!238 = !{!239}
!239 = distinct !{!239, !237}
!240 = distinct !{!240, !115, !207, !208}
!241 = distinct !{!241, !115, !207, !208}
!242 = distinct !{!242, !115, !207}
end_hunk_0
