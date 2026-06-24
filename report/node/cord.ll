inline.NumInlined: 2123
inline.NumDeleted: 685
begin_hunk_0_@_ZNK4absl4Cord4FindERKS0_:bb.a
  br i1 %.not.i.i59, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dw = load i64, ptr %6, align 8               ; 2 uses
  %i.dx = icmp ugt i64 %i.dw, 1
  br i1 %i.dx, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63, label %bb.as, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63: ; preds = %bb.ar
  %i.dy = load ptr, ptr %i.cl, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store ptr %i.dz, ptr %i.cl, align 8
  %i.ea = add i64 %i.dw, -1
  store i64 %i.ea, ptr %6, align 8
  %i.eb = add i64 %i.dv, -1                       ; 2 uses
  store i64 %i.eb, ptr %i.bs, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64

bb.as:                                            ; preds = %bb.ar
  %i.ec = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  br i1 %i.ed, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61: ; preds = %bb.as
  %i.ee = zext nneg i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8
  %.not6.i.i62 = icmp eq ptr %i.eg, null
  br i1 %.not6.i.i62, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60, label %bb.at

bb.at:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %6, i64 noundef 1)
  %.pre = load i64, ptr %i.bs, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61, %bb.as
  store i64 0, ptr %i.bs, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63, %bb.at, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60
  %i.eh = phi i64 [ %i.eb, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63 ], [ %.pre, %bb.at ], [ 0, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60 ] ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.t
  br i1 %i.ei, label %.thread81, label %bb.au

bb.au:                                            ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64
  %i.ej = icmp eq i64 %i.eh, %i.t
  br i1 %i.ej, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %6, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !106
  store i32 -1, ptr %i.el, align 8, !alias.scope !106
  %i.em = load i8, ptr %2, align 8, !noalias !106 ; 2 uses
  %i.en = trunc i8 %i.em to i1                    ; 2 uses
  %i.eo = load ptr, ptr %i.bl, align 8, !noalias !106 ; 3 uses
  %.not8.i.i.i.i = icmp ne ptr %i.eo, null
  %.not.not.i.i.i.i = select i1 %i.en, i1 %.not8.i.i.i.i, i1 false
  br i1 %.not.not.i.i.i.i, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !106 ; 2 uses
  store i64 %i.ep, ptr %i.ek, align 8, !alias.scope !106
  %.not7.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not7.i.i.i.i, label %bb.ay, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull %i.eo)
  br label %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 16, i1 false), !alias.scope !106
  br label %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit

bb.az:                                            ; preds = %bb.av
  br i1 %i.en, label %bb.ba, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i, !prof !7

bb.ba:                                            ; preds = %bb.az
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !106
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i: ; preds = %bb.az
  %i.eq = sext i8 %i.em to i64
  %i.er = lshr exact i64 %i.eq, 1                 ; 2 uses
  store i64 %i.er, ptr %i.ek, align 8, !alias.scope !106
  store i64 %i.er, ptr %3, align 8, !alias.scope !106
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !106
  br label %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit

_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit: ; preds = %bb.ax, %bb.ay, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i
  %i.es = call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorES2_S2_(ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %4, ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %3, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.es, label %.thread78, label %.thread81

.thread78:                                        ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57, %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %6, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bc

.thread81:                                        ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64, %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.loopexit

bb.bb:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::Cord::CharIterator") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %6, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(152) %7, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.et = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = icmp ult i64 %i.et, %i.t
  %i.ew = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %i.ew, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.bb, %_ZNK4absl4Cord10char_beginEv.exit41, %.thread81
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !alias.scope !109
  store i32 -1, ptr %i.ex, align 8, !alias.scope !109
  br label %bb.bc

bb.bc:                                            ; preds = %.thread78, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK4absl4Cord10char_beginEv.exit

_ZNK4absl4Cord10char_beginEv.exit:                ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i26, %bb.m, %bb.l, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i15, %bb.e, %bb.d, %bb.h, %bb.bc, %_ZN4absleqERKNS_4CordES2_.exit.thread75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorES2_S2_(ptr noundef byval(%"class.absl::Cord::CharIterator") align 8 %0, ptr noundef byval(%"class.absl::Cord::CharIterator") align 8 %1, i64 %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not15 = icmp eq i64 %i.b, %.24.val
  br i1 %.not15, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread8, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.h = phi i64 [ %i.b, %.lr.ph ], [ %i.ah, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ] ; 3 uses
  %i.i = load i64, ptr %i.c, align 8              ; 3 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #20
  unreachable

_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorES2_S2_) #20
  unreachable

bb.e:                                             ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  %.not.i.i8 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i8, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %1, align 8 ; 6 uses
  %i.k = icmp ult i64 %.sroa.0.0.copyload.i.i9, %.sroa.0.0.copyload.i.i
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i9, i64 %.sroa.0.0.copyload.i.i) ; 8 uses
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i.i9, 0  ; 2 uses
  br i1 %i.l, label %bb.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.g
  %.sroa.2.0.copyload.i.i11 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i10, align 8
  %bcmp.i = call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i11, i64 %.sroa.speculated)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %bb.h, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread8

bb.h:                                             ; preds = %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.not.i.i18 = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not.i.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.k, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i, label %bb.k, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i: ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i9
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.o = sub nuw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i9
  store i64 %i.o, ptr %0, align 8
  %i.p = sub i64 %i.i, %.sroa.0.0.copyload.i.i9
  store i64 %i.p, ptr %i.c, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

bb.k:                                             ; preds = %bb.j
  %i.q = load i32, ptr %i.d, align 8              ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.k
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %.not6.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %.sroa.0.0.copyload.i.i)
  %.pre = load i64, ptr %i.a, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.k
  store i64 0, ptr %i.c, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i, %bb.l, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  %i.v = phi i64 [ %i.h, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i ], [ %.pre, %bb.l ], [ %i.h, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i ] ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.v, %.sroa.speculated
  br i1 %.not.i.i19, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.n:                                             ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit
  %i.w = load i64, ptr %1, align 8                ; 2 uses
  %i.x = icmp ult i64 %.sroa.speculated, %i.w
  br i1 %i.x, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24, label %bb.o, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24: ; preds = %bb.n
  %i.y = load ptr, ptr %.sroa.2.0..sroa_idx.i.i10, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.speculated
  store ptr %i.z, ptr %.sroa.2.0..sroa_idx.i.i10, align 8
  %i.aa = sub nuw i64 %i.w, %.sroa.speculated
  store i64 %i.aa, ptr %1, align 8
  %i.ab = sub i64 %i.v, %.sroa.speculated         ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

bb.o:                                             ; preds = %bb.n
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i32, ptr %i.f, align 8             ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22: ; preds = %bb.p
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %.not6.i.i23 = icmp eq ptr %i.ag, null
  br i1 %.not6.i.i23, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21, label %bb.q

bb.q:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 noundef %.sroa.speculated)
  %.pre18 = load i64, ptr %i.a, align 8
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22, %bb.p
  store i64 0, ptr %i.a, align 8
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21, %bb.q, %bb.o, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24
  %i.ah = phi i64 [ 0, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21 ], [ %.pre18, %bb.q ], [ %i.v, %bb.o ], [ %i.ab, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24 ] ; 2 uses
  %.not = icmp eq i64 %i.ah, %.24.val
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread8, label %bb.b

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread8: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ true, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl4Cord8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::Cord::CharIterator", align 8 ; 4 uses
  %i.a = icmp eq i64 %1, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4absl4Cord4FindESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::Cord::CharIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ne i64 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl4Cord8ContainsERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::Cord::CharIterator", align 8 ; 4 uses
  %i.a = load i8, ptr %1, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i:    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord5emptyEv.exit

_ZNK4absl4Cord5emptyEv.exit:                      ; preds = %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i ]
  %i.i = icmp eq i64 %i.h, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit
  call void @_ZNK4absl4Cord4FindERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.absl::Cord::CharIterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.k, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4absl4Cord5emptyEv.exit
  %i.m = phi i1 [ true, %_ZNK4absl4Cord5emptyEv.exit ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, ptr } @_ZN4absl4Cord15FlattenSlowPathEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1369, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord15FlattenSlowPathEv) #20
  unreachable

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8              ; 8 uses
  %i.f = icmp ult i64 %i.e, 4084
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 19)
  %i.h = icmp samesign ult i64 %i.e, 500          ; 2 uses
  %.neg.i.i = select i1 %i.h, i64 -8, i64 -64
  %i.i = select i1 %i.h, i64 8, i64 64
  %i.j = add nuw nsw i64 %i.g, 12
  %i.k = add nuw nsw i64 %i.j, %i.i
  %i.l = and i64 %i.k, %.neg.i.i                  ; 3 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 2, ptr %i.o, align 8
  %i.p = icmp samesign ult i64 %i.l, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.p, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.p, i64 2, i64 58
  %i.q = lshr i64 %i.l, %.sink6.i.i.i.i
  %i.r = add nuw nsw i64 %i.q, %.sink5.i.i.i.i
  %i.s = trunc nuw nsw i64 %i.r to i8             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i8 %i.s, ptr %i.t, align 4
  store i64 %i.e, ptr %i.m, align 8
  %.off.i = add nsw i8 %i.s, -6
  %switch.i = icmp ult i8 %.off.i, -13
  br i1 %switch.i, label %_ZN4absl13cord_internal7CordRep4flatEv.exit, label %.critedge.i
end_hunk_0
