inline.NumInlined: 632
inline.NumDeleted: 462
begin_hunk_0_@hermesCompileToBytecode:bb.a
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 280
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.u
  call void @_ZN6hermes3hbc14BytecodeModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(513) %i.db) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 520) #18
  br label %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %i.cz, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 248
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !11 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 264 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !16
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #18, !inline_history !84
  br label %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 312) #18
  br label %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33: ; preds = %bb.n
  %.not.i34 = icmp eq ptr %.sroa.049.0, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !8  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 48
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.dj) #17
  br label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i

_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i:      ; preds = %bb.w, %bb.v
  %i.dm = load ptr, ptr %.sroa.049.0, align 8, !tbaa !11 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #18
  br label %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i

_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i: ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0, i64 noundef 48) #18
  br label %_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI13CompileResultSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %bb.f, %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33, %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i
  %.274 = phi ptr [ %i.a, %_ZNKSt14default_deleteI13CompileResultEclEPS0_.exit.i ], [ %i.a, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit33 ], [ %.sroa.049.1, %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ], [ %i.a, %bb.f ], [ %i.a, %bb.b ]
  ret ptr %.274
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #4

declare void @_ZN6hermes21SimpleDiagHandlerRAIIC1ERNS_18SourceErrorManagerE(ptr noundef nonnull align 8 dereferenceable(388), ptr noundef nonnull align 8 dereferenceable(464)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZNK6hermes17SimpleDiagHandler14getErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZN6hermes21SimpleDiagHandlerRAIID1Ev(ptr noundef nonnull align 8 dereferenceable(388)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #18
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager11MessageDataEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager11MessageDataEEvT_S4_.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.z = load i64, ptr %i.x, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 72 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !96

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes18SourceErrorManager15BufferedMessageEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.r, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i

_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exitthread-pre-split.i ], [ %i.s, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #18
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes18SourceErrorManager15BufferedMessageEEvT_S4_.exit.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !98 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %.pre1.i = load ptr, ptr %i.ai, align 8, !tbaa !101 ; 3 uses
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
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !102

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !101
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i
  %i.aw = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.aw) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  %.pre1.i9 = load ptr, ptr %i.ax, align 8, !tbaa !101 ; 3 uses
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
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 24 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.e
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %.lr.ph.i.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 40 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bk, %i.bc
  br i1 %.not.i.i17, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18, label %.lr.ph.i.i12, !llvm.loop !102

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16
  %.pre.i19 = load ptr, ptr %i.ax, align 8, !tbaa !101
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21: ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18
  %i.bl = phi ptr [ %.pre.i19, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18 ], [ %.pre1.i9, %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.bl) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !103 ; 3 uses
  %i.bo = trunc i64 %i.bn to i1
  %i.bp = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %_ZN4llvh14SmallBitVectorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21
  %i.bq = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.br) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 24) #18
  br label %_ZN4llvh14SmallBitVectorD2Ev.exit

_ZN4llvh14SmallBitVectorD2Ev.exit:                ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21, %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !103 ; 3 uses
  %i.bu = trunc i64 %i.bt to i1
  %i.bv = icmp eq i64 %i.bt, 0
  %or.cond.i22 = or i1 %i.bv, %i.bu
  br i1 %or.cond.i22, label %_ZN4llvh14SmallBitVectorD2Ev.exit23, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit
  %i.bw = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.bx) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 24) #18
  br label %_ZN4llvh14SmallBitVectorD2Ev.exit23

_ZN4llvh14SmallBitVectorD2Ev.exit23:              ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !108
  tail call void @_ZdlPv(ptr noundef %i.ca) #17
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cf = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !111, !noalias !113
  store <2 x ptr> %i.cf, ptr %1, align 16, !tbaa !111
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !116, !noalias !113
  store <2 x ptr> %i.ch, ptr %i.cg, align 16, !tbaa !116
  %i.ci = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !111, !noalias !117
  store <2 x ptr> %i.ci, ptr %2, align 16, !tbaa !111
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !116, !noalias !117
  store <2 x ptr> %i.ck, ptr %i.cj, align 16, !tbaa !116
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i24, label %_ZN6hermes15StringSetVectorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !125 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !126 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = icmp ult ptr %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.co, %bb.h ] ; 3 uses
  %i.cs = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !111
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef 512) #18
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.cu = icmp ult ptr %.06.i.i.i.i, %i.cp
  br i1 %i.cu, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, !llvm.loop !127

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !120
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, %bb.h
  %i.cv = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i ], [ %i.cl, %bb.h ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !128
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #18
  br label %_ZN6hermes15StringSetVectorD2Ev.exit

_ZN6hermes15StringSetVectorD2Ev.exit:             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !129 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.da, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.db, align 8, !tbaa !132
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !134
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #17, !inline_history !135
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !55
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #17, !inline_history !135
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
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
  br i1 %i.dp, label %bb.n, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !136

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #17
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @_ZN4llvh9SourceMgrD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #17
  ret void
}

declare void @_ZN6hermes3hbc17BCProviderFromSrc23createBCProviderFromSrcB5cxx11ESt10unique_ptrINS_6BufferESt14default_deleteIS3_EEN4llvh9StringRefES2_INS_9SourceMapES4_IS9_EERKNS0_12CompileFlagsE(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, ptr noundef, ptr, i64, ptr noundef, ptr noundef nonnull align 4 dereferenceable(28)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN6hermes3hbc18BytecodeSerializer9serializeERNS0_14BytecodeModuleERKSt5arrayIhLm20EE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(513), ptr noundef nonnull align 1 dereferenceable(20)) local_unnamed_addr #4

declare void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"struct.std::array") align 1, ptr, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @hermesGetProperties() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ19hermesGetPropertiesE5propsB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ19hermesGetPropertiesE5propsB5cxx11) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL19getPropertiesHelperB5cxx11v()
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZ19hermesGetPropertiesE5propsB5cxx11, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ19hermesGetPropertiesE5propsB5cxx11) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, align 8, !tbaa !11
  ret ptr %i.e
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19getPropertiesHelperB5cxx11v() unnamed_addr #0 {
_ZN4llvh11raw_ostreamlsEPKc.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %1 = alloca %"class.llvh::raw_string_ostream", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !17
  store i8 0, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %1, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.11, i64 noundef 23) #17
  %i.i = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %i.h, i64 noundef 4) #17 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139  ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.r = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.i, ptr noundef nonnull @.str.12, i64 noundef 16) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit3

bb.b:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) @.str.12, i64 16, i1 false)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.l, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit3

_ZN4llvh11raw_ostreamlsEPKc.exit3:                ; preds = %bb.a, %bb.b
  %.0.i.i2 = phi ptr [ %i.r, %bb.a ], [ %i.i, %bb.b ]
  %i.u = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i2, i64 noundef 128) #17 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139  ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 12
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit3
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.u, ptr noundef nonnull @.str.13, i64 noundef 12) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.d:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.y, ptr noundef nonnull align 1 dereferenceable(12) @.str.13, i64 12, i1 false)
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store ptr %i.af, ptr %i.x, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.c, %bb.d
  %.0.i.i5 = phi ptr [ %i.ad, %bb.c ], [ %i.u, %bb.d ]
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i5, i64 noundef 96) #17 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !139 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 12
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  %i.ap = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, ptr noundef nonnull @.str.14, i64 noundef 12) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(12) @.str.14, i64 12, i1 false)
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

_ZN4llvh11raw_ostreamlsEPKc.exit9:                ; preds = %bb.e, %bb.f
  %.0.i.i8 = phi ptr [ %i.ap, %bb.e ], [ %i.ag, %bb.f ]
  %i.as = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i8, i64 noundef 62660550) #17 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !139 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 2
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9
  %i.bb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.as, ptr noundef nonnull @.str.15, i64 noundef 2) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9
  store i16 8236, ptr %i.aw, align 1
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !139
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12

_ZN4llvh11raw_ostreamlsEPKc.exit12:               ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi ptr [ %i.bb, %bb.g ], [ %i.as, %bb.h ]
  %i.be = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i11, i64 noundef 521733057) #17 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !138
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !139 ; 2 uses
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12
  %i.bk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.be, ptr noundef nonnull @.str.16, i64 noundef 1) #17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit15

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12
  store i8 93, ptr %i.bi, align 1
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !139
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit15

_ZN4llvh11raw_ostreamlsEPKc.exit15:               ; preds = %bb.i, %bb.j
  %i.bn = phi ptr [ %.pre, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.0.i.i14 = phi ptr [ %i.bk, %bb.i ], [ %i.be, %bb.j ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !138
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ult i64 %i.bs, 18
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit15
  %i.bu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i14, ptr noundef nonnull @.str.17, i64 noundef 18) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit15
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bn, ptr noundef nonnull align 1 dereferenceable(18) @.str.17, i64 18, i1 false)
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !139
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 18
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18

_ZN4llvh11raw_ostreamlsEPKc.exit18:               ; preds = %bb.k, %bb.l
  %.0.i.i17 = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i14, %bb.l ]
  %i.by = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i17, i64 noundef 32) #17 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !138
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !139 ; 2 uses
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18
  %i.ce = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.by, ptr noundef nonnull @.str.18, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18
  store i8 125, ptr %i.cc, align 1
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21

_ZN4llvh11raw_ostreamlsEPKc.exit21:               ; preds = %bb.m, %bb.n
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not.i.i, label %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21
  call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  br label %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit

_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit:   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21, %bb.o
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !141, !nonnull !143, !align !144 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, i64 16), ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, align 8, !tbaa !22
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !28
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %bb.p, label %._crit_edge.i.i

bb.p:                                             ; preds = %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit
  %i.co = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZZ19hermesGetPropertiesE5propsB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.co, ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, align 8, !tbaa !11
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, i64 16), align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.p, %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit
  %i.cq = phi ptr [ %i.co, %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, i64 16), %_ZN4llvh18raw_string_ostream3strB5cxx11Ev.exit ] ; 2 uses
  switch i64 %i.cm, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cr = load i8, ptr %i.ck, align 1, !tbaa !16
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.q, %bb.r
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, i64 8), align 8, !tbaa !17
  %i.ct = load ptr, ptr @_ZZ19hermesGetPropertiesE5propsB5cxx11, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store i8 0, ptr %i.cu, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.cv = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.b
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !16
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef i32 @main() local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [422 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(422) %i.a, ptr noundef nonnull align 16 dereferenceable(422) @__const.main.map, i64 422, i1 false)
  %i.b = call ptr @hermesCompileToBytecode(ptr noundef nonnull @_ZZ4mainE4src1, i64 noundef 21, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, i64 noundef 422) ; 7 uses
  %i.c = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #17 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 10
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull @.str.6, i64 noundef 10) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !139
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  store ptr %i.n, ptr %i.f, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.c, %bb.c ]
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not.i, label %hermesCompileResult_getBytecodeSize.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = zext i32 %i.p to i64
  br label %hermesCompileResult_getBytecodeSize.exit

hermesCompileResult_getBytecodeSize.exit:         ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %bb.d
  %.0.i = phi i64 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit ], [ %i.q, %bb.d ]
  %i.r = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, i64 noundef %.0.i) #17 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !139  ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 16
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %hermesCompileResult_getBytecodeSize.exit
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull @.str.7, i64 noundef 16) #17 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.f:                                             ; preds = %hermesCompileResult_getBytecodeSize.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, ptr noundef nonnull align 1 dereferenceable(16) @.str.7, i64 16, i1 false)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.e, %bb.f
  br i1 %.not.i, label %hermesCompileResult_free.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ae) #17
  br label %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i:        ; preds = %bb.h, %bb.g
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN13CompileResultD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #18
  br label %_ZN13CompileResultD2Ev.exit.i

_ZN13CompileResultD2Ev.exit.i:                    ; preds = %_ZN4llvh11SmallVectorIcLj0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #18
  br label %hermesCompileResult_free.exit

hermesCompileResult_free.exit:                    ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6, %_ZN13CompileResultD2Ev.exit.i
  %i.am = call ptr @hermesCompileToBytecode(ptr noundef nonnull @_ZZ4mainE4src2, i64 noundef 14, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, i64 noundef 422) ; 8 uses
  %i.an = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #17 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !139 ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 6
  br i1 %i.av, label %bb.i, label %bb.j

end_hunk_0
