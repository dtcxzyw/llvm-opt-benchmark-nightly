inline.NumInlined: 383
inline.NumDeleted: 296
begin_hunk_0_@_ZN8facebook6hermes3cdp8parseStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN6hermes6parser11JSONFactoryE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 1144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh9StringRefERNS_18SourceErrorManagerEb.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #14
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh9StringRefERNS_18SourceErrorManagerEb.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #14
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 448
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 464
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.z) #13
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i:      ; preds = %bb.d, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  call void @free(ptr noundef %i.ad) #13
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i:     ; preds = %bb.e, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN6hermes6parser10JSONParserD2Ev.exit, label %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  call void @_ZdlPv(ptr noundef %i.aj) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 32) #14
  br label %_ZN6hermes6parser10JSONParserD2Ev.exit

_ZN6hermes6parser10JSONParserD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i
  %i.ak = extractvalue { i64, i8 } %i.j, 1        ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  %.sroa.26.0 = and i8 %i.ak, 1
  %i.am = extractvalue { i64, i8 } %i.j, 0
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.05.0 = select i1 %i.al, ptr %i.an, ptr undef
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.sroa.44.8.extract.trunc = trunc i64 %i.b to i40
  store i40 %.sroa.44.8.extract.trunc, ptr %i.a, align 8
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.26.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #2

declare { i64, i8 } @_ZN6hermes6parser10JSONParser5parseEv(ptr noundef nonnull align 8 dereferenceable(1176)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !43
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #14
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #14
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.z = load i64, ptr %i.x, align 8, !tbaa !43
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #14
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 72 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !51

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.r, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #14
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !53 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %.pre1.i = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 3 uses
  br i1 %i.al, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit
  %i.am = zext i32 %i.ak to i64
  %.idx.i.i = mul nuw nsw i64 %i.am, 40
  %i.an = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ao = load i32, ptr %.010.i.i, align 4, !tbaa !4
  %switch.i.i = icmp ugt i32 %i.ao, -3
  br i1 %switch.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !57

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !56
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i
  %i.aw = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.aw) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  %.pre1.i9 = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 3 uses
  br i1 %i.ba, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21, label %.lr.ph.preheader.i.i10

.lr.ph.preheader.i.i10:                           ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit
  %i.bb = zext i32 %i.az to i64
  %.idx.i.i11 = mul nuw nsw i64 %i.bb, 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre1.i9, i64 %.idx.i.i11
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, %.lr.ph.preheader.i.i10
  %.010.i.i13 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16 ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 4 uses
  %i.bd = load i32, ptr %.010.i.i13, align 4, !tbaa !4
  %switch.i.i14 = icmp ugt i32 %i.bd, -3
  br i1 %switch.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i12
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 24 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.e
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !43
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %.lr.ph.i.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 40 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bk, %i.bc
  br i1 %.not.i.i17, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18, label %.lr.ph.i.i12, !llvm.loop !57

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16
  %.pre.i19 = load ptr, ptr %i.ax, align 8, !tbaa !56
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21: ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18
  %i.bl = phi ptr [ %.pre.i19, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18 ], [ %.pre1.i9, %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.bl) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !58 ; 3 uses
  %i.bo = trunc i64 %i.bn to i1
  %i.bp = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %_ZN4llvh14SmallBitVectorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21
  %i.bq = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.br) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 24) #14
  br label %_ZN4llvh14SmallBitVectorD2Ev.exit

_ZN4llvh14SmallBitVectorD2Ev.exit:                ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21, %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !58 ; 3 uses
  %i.bu = trunc i64 %i.bt to i1
  %i.bv = icmp eq i64 %i.bt, 0
  %or.cond.i22 = or i1 %i.bv, %i.bu
  br i1 %or.cond.i22, label %_ZN4llvh14SmallBitVectorD2Ev.exit23, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit
  %i.bw = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.bx) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 24) #14
  br label %_ZN4llvh14SmallBitVectorD2Ev.exit23

_ZN4llvh14SmallBitVectorD2Ev.exit23:              ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !63
  tail call void @_ZdlPv(ptr noundef %i.ca) #13
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cf = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !66, !noalias !68
  store <2 x ptr> %i.cf, ptr %1, align 16, !tbaa !66
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !71, !noalias !68
  store <2 x ptr> %i.ch, ptr %i.cg, align 16, !tbaa !71
  %i.ci = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !66, !noalias !72
  store <2 x ptr> %i.ci, ptr %2, align 16, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !71, !noalias !72
  store <2 x ptr> %i.ck, ptr %i.cj, align 16, !tbaa !71
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i24, label %_ZN6hermes15StringSetVectorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !80 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !81 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = icmp ult ptr %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.co, %bb.h ] ; 3 uses
  %i.cs = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !66
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef 512) #14
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.cu = icmp ult ptr %.06.i.i.i.i, %i.cp
  br i1 %i.cu, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, !llvm.loop !82

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !75
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, %bb.h
  %i.cv = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i ], [ %i.cl, %bb.h ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !83
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #14
  br label %_ZN6hermes15StringSetVectorD2Ev.exit

_ZN6hermes15StringSetVectorD2Ev.exit:             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !84 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.da, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.db, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !89
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #13, !inline_history !90
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #13, !inline_history !90
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i26 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.l ], [ %i.do, %bb.m ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.n, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #13
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @_ZN4llvh9SourceMgrD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i8 } @_ZN8facebook6hermes3cdp17parseStrAsJsonObjERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN6hermes6parser11JSONFactoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN8facebook6hermes3cdp8parseStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN6hermes6parser11JSONFactoryE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) ; 2 uses
  %i.b = extractvalue { ptr, i8 } %i.a, 0         ; 3 uses
  %i.c = extractvalue { ptr, i8 } %i.a, 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNRSt8optionalIPN6hermes6parser9JSONValueEE5valueEv.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZNRSt8optionalIPN6hermes6parser9JSONValueEE5valueEv.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalIPN6hermes6parser9JSONValueEE5valueEv.exit
  %i.e = load i32, ptr %i.b, align 4, !tbaa !92
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  %spec.select = select i1 %i.f, ptr %i.b, ptr null
  %spec.select5 = zext i1 %i.f to i8
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.b, %_ZNRSt8optionalIPN6hermes6parser9JSONValueEE5valueEv.exit, %bb.a
  %.sroa.03.1 = phi ptr [ undef, %bb.a ], [ %spec.select, %bb.b ], [ null, %_ZNRSt8optionalIPN6hermes6parser9JSONValueEE5valueEv.exit ]
  %.sroa.2.1 = phi i8 [ 0, %bb.a ], [ %spec.select5, %bb.b ], [ 0, %_ZNRSt8optionalIPN6hermes6parser9JSONValueEE5valueEv.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.03.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8facebook6hermes3cdp12jsonValToStrB5cxx11EPKN6hermes6parser9JSONValueE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvh::raw_string_ostream", align 8 ; 10 uses
  %4 = alloca %"class.hermes::JSONEmitter", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %3, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %3, ptr %i.i, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 0, ptr %i.j, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 0, ptr %i.k, align 4, !tbaa !110
  call void @_ZNK6hermes6parser9JSONValue8emitIntoERNS_11JSONEmitterE(ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(72) %4) #13
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !111
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  br label %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit

_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit:   ; preds = %bb.a, %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !113, !nonnull !115, !align !116 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !95
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit
  store ptr %i.q, ptr %0, align 8, !tbaa !12
  %i.x = load i64, ptr %i.r, align 8, !tbaa !43
  store i64 %i.x, ptr %i.p, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.r, ptr %i.o, align 8, !tbaa !12
  store i64 0, ptr %i.z, align 8, !tbaa !18
  store i8 0, ptr %i.r, align 8, !tbaa !43
  %i.ab = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.f
  br i1 %i.ac, label %_ZN6hermes11JSONEmitterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  call void @free(ptr noundef %i.ab) #13
  br label %_ZN6hermes11JSONEmitterD2Ev.exit

_ZN6hermes11JSONEmitterD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ad = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes11JSONEmitterD2Ev.exit
  %i.af = load i64, ptr %i.a, align 8, !tbaa !43
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes11JSONEmitterD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @_ZNK6hermes6parser9JSONValue8emitIntoERNS_11JSONEmitterE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN8facebook6hermes3cdp10jsonValsEQEPKN6hermes6parser9JSONValueES6_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !92
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  switch i32 %i.b, label %bb.q [
    i32 0, label %bb.d
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 3, label %bb.o
    i32 4, label %bb.p
    i32 5, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = load i64, ptr %i.h, align 8, !tbaa !120
  %.not71 = icmp eq i64 %i.f, %i.i
  br i1 %.not71, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not7282 = icmp eq i64 %i.f, 0
  br i1 %.not7282, label %.critedge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.f:                                             ; preds = %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.06483, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.n, %i.k
  br i1 %.not72, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph84, %bb.f
  %.06483 = phi ptr [ %i.j, %.lr.ph84 ], [ %i.n, %bb.f ] ; 2 uses
  %i.o = load ptr, ptr %.06483, align 8, !tbaa !121
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123  ; 2 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !128 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !120 ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.s = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr %.sroa.027.0.copyload, i64 %.sroa.5.0.copyload) ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, label %.critedge

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit: ; preds = %bb.g
  %i.v = extractvalue { i64, i8 } %i.s, 0
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !129  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.aa = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr %.sroa.027.0.copyload, i64 %.sroa.5.0.copyload) ; 2 uses
  %i.ab = extractvalue { i64, i8 } %i.aa, 1
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i8 } %i.aa, 0
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !129
  br label %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit

_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit: ; preds = %bb.h, %bb.i
  %spec.select.i = phi ptr [ %i.af, %bb.i ], [ null, %bb.h ]
  %i.ag = tail call noundef zeroext i1 @_ZN8facebook6hermes3cdp10jsonValsEQEPKN6hermes6parser9JSONValueES6_(ptr noundef nonnull %i.x, ptr noundef %spec.select.i)
  br i1 %i.ag, label %bb.f, label %.critedge

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !131 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !131
  %.not69 = icmp eq i64 %i.ai, %i.ak
  br i1 %.not69, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.j
  %.not7078 = icmp eq i64 %i.ai, 0
  br i1 %.not7078, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph
  %.06579 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.k ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.06579
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !129
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.06579
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !129
  %i.ar = tail call noundef zeroext i1 @_ZN8facebook6hermes3cdp10jsonValsEQEPKN6hermes6parser9JSONValueES6_(ptr noundef %i.ao, ptr noundef %i.aq) ; 2 uses
  %i.as = add nuw i64 %.06579, 1                  ; 2 uses
  %exitcond.not = icmp ne i64 %i.as, %i.ai
  %or.cond.not = select i1 %i.ar, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.k, label %.critedge, !llvm.loop !133

bb.l:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !123 ; 2 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.au, align 8, !tbaa !128
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !120 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !123 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !120
  %i.ax = icmp eq i64 %.sroa.410.0.copyload, %.sroa.4.0.copyload
  br i1 %i.ax, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ay = icmp eq i64 %.sroa.410.0.copyload, 0
  br i1 %i.ay, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %bcmp = tail call i32 @bcmp(ptr %.sroa.09.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.410.0.copyload)
  %i.az = icmp eq i32 %bcmp, 0
  br label %.critedge

bb.o:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !134
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !134
  %i.be = fcmp oeq double %i.bb, %i.bd
  br label %.critedge

bb.p:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !137, !range !139, !noundef !115
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !137, !range !139, !noundef !115
  %.not75 = icmp eq i8 %i.bg, %i.bi
  br label %.critedge

bb.q:                                             ; preds = %bb.c
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, %bb.f, %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit, %bb.g, %.preheader, %bb.e, %bb.m, %bb.n, %bb.l, %bb.c, %bb.j, %bb.d, %bb.b, %bb.a, %bb.q, %bb.p, %bb.o
  %.6 = phi i1 [ false, %bb.j ], [ true, %bb.a ], [ false, %bb.q ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.l ], [ %i.be, %bb.o ], [ %.not75, %bb.p ], [ true, %bb.m ], [ false, %bb.d ], [ true, %.preheader ], [ %i.az, %bb.n ], [ false, %bb.g ], [ true, %bb.e ], [ false, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit ], [ false, %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit ], [ true, %bb.f ], [ %i.ar, %bb.k ]
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvh12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.61") align 8, ptr, i64, ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EERNS_18SourceErrorManagerEb(ptr noundef nonnull align 8 dereferenceable(1176), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef nonnull align 8 dereferenceable(464), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh9SourceMgrD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !43
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !143

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #14
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !145
  tail call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
  %i.t = load ptr, ptr %0, align 8, !tbaa !150    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !153  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.w, %.lr.ph.i.i.i2 ], [ %i.t, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i3) #13
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !154

_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %0, align 8, !tbaa !150
  br label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exitthread-pre-split.i ], [ %i.t, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !155
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #14
  br label %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.030 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156  ; 2 uses
  %i.e = icmp ult ptr %.030, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !156
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.ck, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8, !tbaa !157    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15
  %.031 = phi ptr [ %.0, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15 ], [ %.030, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.031, align 8, !tbaa !66  ; 32 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.l = load i64, ptr %i.j, align 8, !tbaa !43
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.05.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.n = load ptr, ptr %.05.i.i.ptr.1, align 8, !tbaa !12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !43
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.1
  %.05.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.s = load ptr, ptr %.05.i.i.ptr.2, align 8, !tbaa !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1
  %i.v = load i64, ptr %i.t, align 8, !tbaa !43
  %i.w = add i64 %i.v, 1
end_hunk_0
begin_hunk_1_@_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_:bb.a
  %i.bv = load ptr, ptr %.05.i.i.ptr.13, align 8, !tbaa !12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 432 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.13: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.12
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.13

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.13: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.13
  %.05.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.ca = load ptr, ptr %.05.i.i.ptr.14, align 8, !tbaa !12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 464 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.14: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.13
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.ce = add i64 %i.cd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.14

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.14: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.14
  %.05.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.cf = load ptr, ptr %.05.i.i.ptr.15, align 8, !tbaa !12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 496 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.15: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.14
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !43
  %i.cj = add i64 %i.ci, 1
  tail call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.15
  %.0 = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !156 ; 2 uses
  %i.cl = icmp ult ptr %.0, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !158

bb.b:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.cn
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit12, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i9
  %.05.i.i7 = phi ptr [ %i.ct, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i9 ], [ %i.g, %bb.b ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i7, align 8, !tbaa !12 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8: ; preds = %.lr.ph.i.i6
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !43
  %i.cs = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i9

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i9: ; preds = %.lr.ph.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 32 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ct, %i.cn
  br i1 %.not.i.i10, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit12, label %.lr.ph.i.i6, !llvm.loop !143

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit12: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i9, %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !160 ; 2 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !157   ; 2 uses
  %.not4.i.i13 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not4.i.i13, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit20, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit12, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i17
  %.05.i.i15 = phi ptr [ %i.dc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i17 ], [ %i.cv, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit12 ] ; 3 uses
  %i.cx = load ptr, ptr %.05.i.i15, align 8, !tbaa !12 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i15, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16: ; preds = %.lr.ph.i.i14
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !43
  %i.db = add i64 %i.da, 1
  tail call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i17

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i17: ; preds = %.lr.ph.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i15, i64 32 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.dc, %i.cw
  br i1 %.not.i.i18, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit20, label %.lr.ph.i.i14, !llvm.loop !143

bb.c:                                             ; preds = %._crit_edge
  %i.dd = load ptr, ptr %2, align 8, !tbaa !157   ; 2 uses
  %.not4.i.i21 = icmp eq ptr %i.g, %i.dd
  br i1 %.not4.i.i21, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit20, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25
  %.05.i.i23 = phi ptr [ %i.dj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25 ], [ %i.g, %bb.c ] ; 3 uses
  %i.de = load ptr, ptr %.05.i.i23, align 8, !tbaa !12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i23, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i24: ; preds = %.lr.ph.i.i22
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !43
  %i.di = add i64 %i.dh, 1
  tail call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #14
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25: ; preds = %.lr.ph.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i24
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i23, i64 32 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.dj, %i.dd
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit20, label %.lr.ph.i.i22, !llvm.loop !143

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit20: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i17, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25, %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit12
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !161
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !161
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

declare void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !120    ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = icmp sgt i64 %i.b, 0
  br i1 %i.e, label %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit

_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i
  %.017.i.i = phi ptr [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.01116.i.i = phi i64 [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !120 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.k, label %.thread.i.i.i.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %1, i64 noundef %.sroa.speculated.i.i.i.i.i) #15
  %.fr.i.i.i.i.i = freeze i32 %i.l                ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.i.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.m = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i, %2
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.n = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %2
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %i.o, %bb.b ], [ 0, %.thread.i.i.i.i.i ]
  %i.p = icmp eq i32 %.1.i.i.i.i.i.i, -1          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = xor i64 %i.f, -1
  %i.s = add nsw i64 %.01116.i.i, %i.r
  %.112.i.i = select i1 %i.p, i64 %i.s, i64 %i.f  ; 2 uses
  %.1.i.i = select i1 %i.p, ptr %i.q, ptr %.017.i.i ; 2 uses
  %i.t = icmp sgt i64 %.112.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, !llvm.loop !165

_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i ] ; 3 uses
  %.not = icmp eq ptr %.0.lcssa.i.i, %i.c
  br i1 %.not, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit
  %i.u = load ptr, ptr %.0.lcssa.i.i, align 8, !tbaa !121
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !128
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !120
  %i.x = icmp eq i64 %.sroa.22.0.copyload, %2
  br i1 %i.x, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %1, i64 %2)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread11:     ; preds = %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aa = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11
  %.sroa.09.0 = phi i64 [ %i.ac, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ undef, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ undef, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ undef, %bb.c ]
  %.sroa.2.0 = phi i8 [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ 0, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_ZTSN6hermes9SubsystemE", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"bool", !6, i64 0}
!12 = !{!13, !15, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !17, i64 8, !6, i64 16}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!13, !17, i64 8}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSN4llvh12MemoryBufferE", !16, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !7, i64 0}
!23 = distinct !{null, null, null}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN6hermes6parser11StoredTokenESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN6hermes6parser11StoredTokenE", !16, i64 0}
!27 = !{!25, !26, i64 16}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN6hermes6parser13StoredCommentESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSN6hermes6parser13StoredCommentE", !16, i64 0}
!31 = !{!29, !30, i64 16}
!32 = !{!33, !16, i64 0}
!33 = !{!"_ZTSN4llvh15SmallVectorBaseE", !16, i64 0, !5, i64 8, !5, i64 12}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN6hermes11StringTableE", !16, i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !38, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!38 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !16, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN6hermes18SourceErrorManager11MessageDataE", !16, i64 0}
!42 = !{!40, !41, i64 8}
!43 = !{!6, !6, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!40, !41, i64 16}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSN6hermes18SourceErrorManager15BufferedMessageE", !16, i64 0}
!50 = !{!48, !49, i64 8}
!51 = distinct !{!51, !45}
!52 = !{!48, !49, i64 16}
!53 = !{!54, !5, i64 16}
!54 = !{!"_ZTSN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEE", !55, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!55 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !16, i64 0}
!56 = !{!54, !55, i64 0}
!57 = distinct !{!57, !45}
!58 = !{!59, !17, i64 0}
!59 = !{!"_ZTSN4llvh14SmallBitVectorE", !17, i64 0}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSN4llvh8ArrayRefImEE", !62, i64 0, !17, i64 8}
!62 = !{!"p1 long", !16, i64 0}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEEE", !65, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!65 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEjEE", !16, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!70 = distinct !{!70, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!71 = !{!16, !16, i64 0}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!74 = distinct !{!74, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !77, i64 0, !17, i64 8, !79, i64 16, !79, i64 48}
!77 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !78, i64 0}
!78 = !{!"any p2 pointer", !16, i64 0}
!79 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !67, i64 0, !67, i64 8, !67, i64 16, !77, i64 24}
!80 = !{!76, !77, i64 40}
!81 = !{!76, !77, i64 72}
!82 = distinct !{!82, !45}
!83 = !{!76, !17, i64 8}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0}
!86 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!87 = !{!88, !5, i64 8}
!88 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!89 = !{!88, !5, i64 12}
!90 = distinct !{null, null, null}
!91 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!92 = !{!93, !94, i64 0}
!93 = !{!"_ZTSN6hermes6parser9JSONValueE", !94, i64 0}
!94 = !{!"_ZTSN6hermes6parser8JSONKindE", !6, i64 0}
!95 = !{!14, !15, i64 0}
!96 = !{!97, !98, i64 32}
!97 = !{!"_ZTSN4llvh11raw_ostreamE", !15, i64 8, !15, i64 16, !15, i64 24, !98, i64 32}
!98 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !6, i64 0}
!99 = !{!33, !5, i64 8}
!100 = !{!33, !5, i64 12}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !16, i64 0}
!103 = !{!104, !11, i64 64}
!104 = !{!"_ZTSN6hermes11JSONEmitterE", !105, i64 0, !102, i64 56, !11, i64 64, !5, i64 68}
!105 = !{!"_ZTSN4llvh11SmallVectorIN6hermes11JSONEmitter5StateELj8EEE", !106, i64 0, !109, i64 16}
!106 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes11JSONEmitter5StateEEE", !107, i64 0}
!107 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes11JSONEmitter5StateELb1EEE", !108, i64 0}
!108 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes11JSONEmitter5StateEvEE", !33, i64 0}
!109 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes11JSONEmitter5StateELj8EEE", !6, i64 0}
!110 = !{!104, !5, i64 68}
!111 = !{!97, !15, i64 24}
!112 = !{!97, !15, i64 8}
!113 = !{!114, !67, i64 40}
!114 = !{!"_ZTSN4llvh18raw_string_ostreamE", !97, i64 0, !67, i64 40}
!115 = !{}
!116 = !{i64 8}
!117 = !{!118, !119, i64 8}
!118 = !{!"_ZTSN6hermes6parser10JSONObjectE", !93, i64 0, !119, i64 8}
!119 = !{!"p1 _ZTSN6hermes6parser15JSONHiddenClassE", !16, i64 0}
!120 = !{!17, !17, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"p1 _ZTSN6hermes6parser10JSONStringE", !16, i64 0}
!123 = !{!124, !127, i64 16}
!124 = !{!"_ZTSN6hermes6parser10JSONStringE", !125, i64 0, !126, i64 8, !127, i64 16}
!125 = !{!"_ZTSN6hermes6parser10JSONScalarE", !93, i64 0}
!126 = !{!"_ZTSN4llvh14FoldingSetBase4NodeE", !16, i64 0}
!127 = !{!"p1 _ZTSN6hermes12UniqueStringE", !16, i64 0}
!128 = !{!15, !15, i64 0}
!129 = !{!130, !130, i64 0}
!130 = !{!"p1 _ZTSN6hermes6parser9JSONValueE", !16, i64 0}
!131 = !{!132, !17, i64 8}
!132 = !{!"_ZTSN6hermes6parser9JSONArrayE", !93, i64 0, !17, i64 8}
!133 = distinct !{!133, !45}
!134 = !{!135, !136, i64 16}
end_hunk_1
