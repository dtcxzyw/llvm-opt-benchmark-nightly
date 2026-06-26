inline.NumInlined: 7390
inline.NumDeleted: 1611
begin_hunk_0_@_ZN5arrow5ArrayD0Ev:bb.a
_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_17ListSelectionImplINS_8ListTypeEEES5_E12FinishCommonEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1251 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241, !nonnull !129, !align !242
  %i.f = tail call noundef i32 @_ZNK5arrow9ArraySpan11num_buffersEv(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1007 ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !1009 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.p)
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.n, %i.g
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.u, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !44
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !1453
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25, !inline_history !1453
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.j, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, !prof !80

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1011

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !1007
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !227
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !1251 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !1012
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1013
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store atomic i64 %i.aq, ptr %i.ar seq_cst, align 8
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !1251
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1009
  %i.av = load i64, ptr %i.al, align 8, !tbaa !227, !noalias !1454 ; 2 uses
  %i.aw = ashr i64 %i.av, 3
  %i.ax = and i64 %i.av, 7
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nsw i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !284, !noalias !1454
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !1454
  tail call void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull %i.au, i1 noundef zeroext true)
  ret void
}

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1457, !range !128, !noundef !129
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !277  ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !278  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #25 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !275  ; 2 uses
  %i.l = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = sub nsw i64 128, %i.g
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #25 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.o, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !275  ; 3 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.s, i64 %i.q, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.l, %bb.f ]
  %i.t = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.u = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.c, align 8, !tbaa !275
  %i.w = add nsw i64 %i.e, -64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !277
  %i.x = trunc nuw nsw i64 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.o, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.x, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.y = shl nuw i32 %.sroa.5.0.i, 16
  %i.z = and i32 %.sroa.0.0.i, 65535
  %i.aa = or disjoint i32 %i.y, %i.z
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.insert.insert.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i16
  %1 = sext i16 %.sroa.0.0.extract.trunc to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1459
  %i.ad = add nsw i64 %i.ac, %1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1459
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1460
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1459 ; 2 uses
  %i.ai = sub nsw i64 %i.af, %i.ah
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 64) ; 2 uses
  %2 = trunc i64 %.sroa.speculated to i16         ; 2 uses
  %sext = shl i64 %.sroa.speculated, 48
  %i.aj = ashr exact i64 %sext, 48
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !1459
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0 = phi i16 [ %.sroa.4.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_17ListSelectionImplINS_8ListTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !265    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !235
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !227  ; 2 uses
  %i.f = sdiv i64 %i.e, 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !78
  %i.i = srem i64 %i.e, 8
  %i.j = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !78
  %i.l = or i8 %i.k, %i.h
  store i8 %i.l, ptr %i.g, align 1, !tbaa !78
  %i.m = load i64, ptr %i.d, align 8, !tbaa !227
  %i.n = add nsw i64 %i.m, 1
  store i64 %i.n, ptr %i.d, align 8, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1461, !nonnull !129, !align !242 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !244, !noalias !1462 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !1462, !nonnull !129, !align !283
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3, !noalias !1462
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !235, !noalias !1462
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !284, !noalias !1462
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  store i32 %i.t, ptr %i.y, align 1, !noalias !1462
  %i.z = load i64, ptr %i.w, align 8, !tbaa !284, !noalias !1462
  %i.aa = add nsw i64 %i.z, 4
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !284, !noalias !1462
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !285, !noalias !1462, !nonnull !129, !align !242
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !286, !noalias !1462
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %2 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !1462 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3, !noalias !1462 ; 3 uses
  %i.aj = sub nsw i32 %i.ai, %i.ag                ; 2 uses
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !1462, !nonnull !129, !align !283 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !1462
  %i.am = add nsw i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !3, !noalias !1462
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1462
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 4 uses
  %i.ao = sext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !295, !noalias !1465 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !45, !noalias !1465
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1465
  %i.au = tail call noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(144) %i.an), !noalias !1465, !inline_history !1468
  %i.av = add nsw i64 %i.au, %i.ao                ; 2 uses
  %.not.i.i = icmp sgt i64 %i.av, %i.aq
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1462
  br label %_ZN5arrow6StatusD2Ev.exit20.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  %i.aw = shl nsw i64 %i.aq, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !45, !noalias !1465
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1465
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.an, i64 noundef %.sroa.speculated.i.i.i), !noalias !1462, !inline_history !1468
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !115, !noalias !1462 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1462
  %i.ba = icmp eq ptr %.pr.i, null
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit20.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117ListSelectionImplINS_8ListTypeEE14GenerateOutputINS2_9SelectionIS5_S4_E13FilterAdapterEEENS_6StatusEvENKUllE_clEl.exit, !prof !306

_ZN5arrow6StatusD2Ev.exit20.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.bb = icmp slt i32 %i.ag, %i.ai
  br i1 %i.bb, label %.lr.ph.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117ListSelectionImplINS_8ListTypeEE14GenerateOutputINS2_9SelectionIS5_S4_E13FilterAdapterEEENS_6StatusEvENKUllE_clEl.exit

.lr.ph.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit20.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 256 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 280 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 376 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.bz, %bb.b ] ; 2 uses
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !235, !noalias !1462
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !227, !noalias !1462 ; 2 uses
  %i.bj = sdiv i64 %i.bi, 8
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !78, !noalias !1462
  %i.bm = srem i64 %i.bi, 8
  %i.bn = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !78, !noalias !1462
  %i.bp = or i8 %i.bo, %i.bl
  store i8 %i.bp, ptr %i.bk, align 1, !tbaa !78, !noalias !1462
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !227, !noalias !1462
  %i.br = add nsw i64 %i.bq, 1
  store i64 %i.br, ptr %i.bd, align 8, !tbaa !227, !noalias !1462
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !174, !noalias !1462
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr %i.be, align 8, !tbaa !174, !noalias !1462
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !235, !noalias !1462
  %i.bv = load i64, ptr %i.bg, align 8, !tbaa !284, !noalias !1462
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  store i32 %.021.i, ptr %i.bw, align 1, !noalias !1462
  %i.bx = load i64, ptr %i.bg, align 8, !tbaa !284, !noalias !1462
  %i.by = add nsw i64 %i.bx, 4
  store i64 %i.by, ptr %i.bg, align 8, !tbaa !284, !noalias !1462
  %i.bz = add nsw i32 %.021.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bz, %i.ai
  br i1 %exitcond.not.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117ListSelectionImplINS_8ListTypeEE14GenerateOutputINS2_9SelectionIS5_S4_E13FilterAdapterEEENS_6StatusEvENKUllE_clEl.exit, label %bb.b, !llvm.loop !307

_ZZN5arrow7compute8internal12_GLOBAL__N_117ListSelectionImplINS_8ListTypeEE14GenerateOutputINS2_9SelectionIS5_S4_E13FilterAdapterEEENS_6StatusEvENKUllE_clEl.exit: ; preds = %bb.b, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit20.i
  %storemerge.i = phi ptr [ %.pr.i, %_ZN5arrow6StatusD2Ev.exit.i ], [ null, %_ZN5arrow6StatusD2Ev.exit20.i ], [ null, %bb.b ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !115, !alias.scope !1462
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS4_17ListSelectionImplINS1_8ListTypeEEES7_E11VisitFilterIZNS8_14GenerateOutputINS9_13FilterAdapterEEENS1_6StatusEvEUllE_ZNSB_ISC_EESD_vEUlvE_EESD_OT_OT0_EUlllbE_E9_M_invokeERKSt9_Any_dataOlSP_Ob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !89    ; 5 uses
  %.val4 = load i64, ptr %1, align 8, !tbaa !174
  %.val5 = load i64, ptr %2, align 8, !tbaa !174  ; 3 uses
  %.val6 = load i8, ptr %3, align 1, !tbaa !175, !range !128, !noundef !129
  %i.a = trunc nuw i8 %.val6 to i1
  %i.b = icmp sgt i64 %.val5, 0                   ; 2 uses
  br i1 %i.a, label %.preheader.i.i.i, label %.preheader14.i.i.i

.preheader14.i.i.i:                               ; preds = %bb.a
  br i1 %i.b, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIbRZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS3_17ListSelectionImplINS0_8ListTypeEEES6_E11VisitFilterIZNS7_14GenerateOutputINS8_13FilterAdapterEEENS0_6StatusEvEUllE_ZNSA_ISB_EESC_vEUlvE_EESC_OT_OT0_EUlllbE_JllbEENSt9enable_ifIX16is_invocable_r_vISF_SH_DpT1_EESF_E4typeESI_DpOSM_.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader14.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %bb.f

.preheader.i.i.i:                                 ; preds = %bb.a
  br i1 %i.b, label %.lr.ph18.i.i.i, label %_ZSt10__invoke_rIbRZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS3_17ListSelectionImplINS0_8ListTypeEEES6_E11VisitFilterIZNS7_14GenerateOutputINS8_13FilterAdapterEEENS0_6StatusEvEUllE_ZNSA_ISB_EESC_vEUlvE_EESC_OT_OT0_EUlllbE_JllbEENSt9enable_ifIX16is_invocable_r_vISF_SH_DpT1_EESF_E4typeESI_DpOSM_.exit

.lr.ph18.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %.lr.ph18.i.i.i
  %.0917.i.i.i = phi i64 [ 0, %.lr.ph18.i.i.i ], [ %i.bc, %_ZN5arrow6StatusD2Ev.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1469, !nonnull !129, !align !242 ; 3 uses
  %i.f = add nsw i64 %.0917.i.i.i, %.val4         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1474, !noalias !1471, !nonnull !129, !align !242 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !262, !noalias !1471 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK5arrow8internal18OptionalBitIndexerixEl.exit.thread.i.i.i.i, label %_ZNK5arrow8internal18OptionalBitIndexerixEl.exit.i.i.i.i

_ZNK5arrow8internal18OptionalBitIndexerixEl.exit.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !264, !noalias !1471
  %i.l = add nsw i64 %i.k, %i.f                   ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !78, !noalias !1471
  %i.p = trunc i64 %i.l to i8
  %i.q = and i8 %i.p, 7
  %i.r = lshr i8 %i.o, %i.q
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %_ZNK5arrow8internal18OptionalBitIndexerixEl.exit.thread.i.i.i.i, label %bb.c

_ZNK5arrow8internal18OptionalBitIndexerixEl.exit.thread.i.i.i.i: ; preds = %_ZNK5arrow8internal18OptionalBitIndexerixEl.exit.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1476, !noalias !1471, !nonnull !129, !align !242
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_17ListSelectionImplINS_8ListTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef %i.f)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_17ListSelectionImplINS_8ListTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl.exit.i.i.i

bb.c:                                             ; preds = %_ZNK5arrow8internal18OptionalBitIndexerixEl.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1477, !noalias !1471, !nonnull !129, !align !242 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !268, !noalias !1481 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !235, !noalias !1481
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !227, !noalias !1481 ; 2 uses
  %i.ac = sdiv i64 %i.ab, 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !78, !noalias !1481
  %i.af = srem i64 %i.ab, 8
  %i.ag = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !78, !noalias !1481
  %i.ai = xor i8 %i.ah, -1
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_122VarBinarySelectionImplINS_10BinaryTypeEE14GenerateOutputINS2_9SelectionIS5_S4_E11TakeAdapterImEEEENS_6StatusEv:bb.a
  %i.fn = sdiv i64 %i.fm, 8
  %i.fo = getelementptr inbounds i8, ptr %i.fl, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !78, !noalias !2136
  %i.fq = srem i64 %i.fm, 8
  %i.fr = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !78, !noalias !2136
  %i.ft = xor i8 %i.fs, -1
  %i.fu = and i8 %i.fp, %i.ft
  store i8 %i.fu, ptr %i.fo, align 1, !tbaa !78, !noalias !2136
  %i.fv = load <2 x i64>, ptr %i.bh, align 8, !tbaa !174, !noalias !2136
  %i.fw = add nsw <2 x i64> %i.fv, splat (i64 1)
  store <2 x i64> %i.fw, ptr %i.bh, align 8, !tbaa !174, !noalias !2136
  %i.fx = load ptr, ptr %i.bk, align 8, !tbaa !235, !noalias !2158
  %i.fy = load i64, ptr %i.bl, align 8, !tbaa !284, !noalias !2158
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 %i.fy
  store i32 %.3, ptr %i.fz, align 1, !noalias !2158
  %i.ga = load i64, ptr %i.bl, align 8, !tbaa !284, !noalias !2158
  %i.gb = add nsw i64 %i.ga, 4
  store i64 %i.gb, ptr %i.bl, align 8, !tbaa !284, !noalias !2158
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit109.i.i, %_ZN5arrow6StatusD2Ev.exit103.i.i
  %.561 = phi i64 [ %i.fk, %_ZN5arrow6StatusD2Ev.exit103.i.i ], [ %.460, %_ZN5arrow6StatusD2Ev.exit109.i.i ] ; 2 uses
  %.4 = phi i32 [ %i.eu, %_ZN5arrow6StatusD2Ev.exit103.i.i ], [ %.3, %_ZN5arrow6StatusD2Ev.exit109.i.i ] ; 2 uses
  %i.gc = add nsw i64 %.368144.i.i, 1             ; 2 uses
  %i.gd = add nuw nsw i64 %.057147.i.i, 1         ; 2 uses
  %exitcond156.not.i.i = icmp eq i64 %i.gd, %i.de
  br i1 %exitcond156.not.i.i, label %.critedge79.i.i, label %bb.f, !llvm.loop !2161

bb.h:                                             ; preds = %bb.e
  %i.ge = load ptr, ptr %i.bg, align 8, !tbaa !235, !noalias !2136
  %i.gf = load i64, ptr %i.bh, align 8, !tbaa !227, !noalias !2136
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.ge, i64 noundef %i.gf, i64 noundef %i.de, i1 noundef zeroext false), !noalias !2136
  %i.gg = load <2 x i64>, ptr %i.bh, align 8, !tbaa !174, !noalias !2136
  %i.gh = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %i.gi = shufflevector <2 x i64> %i.gh, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gj = add nsw <2 x i64> %i.gg, %i.gi
  store <2 x i64> %i.gj, ptr %i.bh, align 8, !tbaa !174, !noalias !2136
  %.not71141.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i, 0
  br i1 %.not71141.i.i, label %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i, label %.critedge82.i.i

_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i:           ; preds = %bb.h
  %.pre.i = load i64, ptr %i.bl, align 8, !tbaa !284, !noalias !2162 ; 2 uses
  %i.gk = icmp eq i16 %.sroa.0.0.extract.trunc.i.i, 1
  br i1 %i.gk, label %_ZN5arrow6StatusD2Ev.exit111.i.i.epil.preheader, label %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i.new

_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i.new:       ; preds = %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i
  %unroll_iter = and i64 %i.de, 32766
  br label %_ZN5arrow6StatusD2Ev.exit111.i.i

_ZN5arrow6StatusD2Ev.exit111.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit111.i.i, %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i.new
  %i.gl = phi i64 [ %.pre.i, %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i.new ], [ %i.gt, %_ZN5arrow6StatusD2Ev.exit111.i.i ]
  %niter = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i.new ], [ %niter.next.1, %_ZN5arrow6StatusD2Ev.exit111.i.i ]
  %i.gm = load ptr, ptr %i.bk, align 8, !tbaa !235, !noalias !2162
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.gl
  store i32 %.0, ptr %i.gn, align 1, !noalias !2162
  %i.go = load i64, ptr %i.bl, align 8, !tbaa !284, !noalias !2162
  %i.gp = add nsw i64 %i.go, 4                    ; 2 uses
  store i64 %i.gp, ptr %i.bl, align 8, !tbaa !284, !noalias !2162
  %i.gq = load ptr, ptr %i.bk, align 8, !tbaa !235, !noalias !2162
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gp
  store i32 %.0, ptr %i.gr, align 1, !noalias !2162
  %i.gs = load i64, ptr %i.bl, align 8, !tbaa !284, !noalias !2162
  %i.gt = add nsw i64 %i.gs, 4                    ; 3 uses
  store i64 %i.gt, ptr %i.bl, align 8, !tbaa !284, !noalias !2162
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge82.i.i.loopexit.unr-lcssa, label %_ZN5arrow6StatusD2Ev.exit111.i.i, !llvm.loop !2165

.critedge82.i.i.loopexit.unr-lcssa:               ; preds = %_ZN5arrow6StatusD2Ev.exit111.i.i
  %i.gu = and i16 %.sroa.0.0.extract.trunc.i.i, 1
  %lcmp.mod.not = icmp eq i16 %i.gu, 0
  br i1 %lcmp.mod.not, label %.critedge82.i.i, label %_ZN5arrow6StatusD2Ev.exit111.i.i.epil.preheader

_ZN5arrow6StatusD2Ev.exit111.i.i.epil.preheader:  ; preds = %.critedge82.i.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i
  %.epil.init = phi i64 [ %.pre.i, %_ZN5arrow6StatusD2Ev.exit111.lr.ph.i.i ], [ %i.gt, %.critedge82.i.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i32 %i.bo to i1
  call void @llvm.assume(i1 %lcmp.mod114)
  %i.gv = load ptr, ptr %i.bk, align 8, !tbaa !235, !noalias !2162
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %.epil.init
  store i32 %.0, ptr %i.gw, align 1, !noalias !2162
  %i.gx = load i64, ptr %i.bl, align 8, !tbaa !284, !noalias !2162
  %i.gy = add nsw i64 %i.gx, 4
  store i64 %i.gy, ptr %i.bl, align 8, !tbaa !284, !noalias !2162
  br label %.critedge82.i.i

.critedge82.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit111.i.i.epil.preheader, %.critedge82.i.i.loopexit.unr-lcssa, %bb.h
  %i.gz = add nsw i64 %.065150.i.i, %i.de
  br label %.critedge79.i.i

.critedge79.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i, %bb.g, %.critedge82.i.i, %.preheader.i.i, %bb.d
  %.157 = phi i64 [ %.056, %bb.d ], [ %.056, %.preheader.i.i ], [ %.056, %.critedge82.i.i ], [ %.561, %bb.g ], [ %i.db, %_ZN5arrow6StatusD2Ev.exit92.i.i ]
  %.1 = phi i32 [ %.0, %bb.d ], [ %.0, %.preheader.i.i ], [ %.0, %.critedge82.i.i ], [ %.4, %bb.g ], [ %i.cl, %_ZN5arrow6StatusD2Ev.exit92.i.i ] ; 2 uses
  %.469.i.i = phi i64 [ %.065150.i.i, %bb.d ], [ %.065150.i.i, %.preheader.i.i ], [ %i.gz, %.critedge82.i.i ], [ %i.gc, %bb.g ], [ %i.bx, %_ZN5arrow6StatusD2Ev.exit92.i.i ] ; 2 uses
  %i.ha = load ptr, ptr %i.al, align 8, !tbaa !1002, !noalias !2136, !nonnull !129, !align !242
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !135, !noalias !2136
  %i.hd = icmp slt i64 %.469.i.i, %i.hc
  br i1 %i.hd, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit30, !llvm.loop !2166

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl.exit.i.i, %_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl.exit.i
  %.lcssa.sink.i.i = phi ptr [ %.pr.i, %_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl.exit.i ], [ %.pr.i.i, %_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2136
  br label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit30:                      ; preds = %.critedge79.i.i, %_ZN5arrow6StatusD2Ev.exit24
  %.5.ph = phi i32 [ 0, %_ZN5arrow6StatusD2Ev.exit24 ], [ %.1, %.critedge79.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !2136
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !235
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !284
  %i.hi = getelementptr inbounds i8, ptr %i.hf, i64 %i.hh
  store i32 %.5.ph, ptr %i.hi, align 1
  %i.hj = load i64, ptr %i.hg, align 8, !tbaa !284
  %i.hk = add nsw i64 %i.hj, 4
  store i64 %i.hk, ptr %i.hg, align 8, !tbaa !284
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit26, %_ZN5arrow6StatusD2Ev.exit30
  %.sink = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit30 ], [ %.lcssa.sink.i.i, %_ZN5arrow6StatusD2Ev.exit26 ]
  store ptr %.sink, ptr %0, align 8, !tbaa !115
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1457, !range !128, !noundef !129
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !277  ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !278  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #25 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !275  ; 2 uses
  %i.l = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = sub nsw i64 128, %i.g
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #25 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.o, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !275  ; 3 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.s, i64 %i.q, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.l, %bb.f ]
  %i.t = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.u = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.c, align 8, !tbaa !275
  %i.w = add nsw i64 %i.e, -64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !277
  %i.x = trunc nuw nsw i64 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.o, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.x, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.y = shl nuw i32 %.sroa.5.0.i, 16
  %i.z = and i32 %.sroa.0.0.i, 65535
  %i.aa = or disjoint i32 %i.y, %i.z
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.insert.insert.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i16
  %1 = sext i16 %.sroa.0.0.extract.trunc to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1459
  %i.ad = add nsw i64 %i.ac, %1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1459
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1460
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1459 ; 2 uses
  %i.ai = sub nsw i64 %i.af, %i.ah
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 32767) ; 2 uses
  %2 = trunc i64 %.sroa.speculated to i16         ; 2 uses
  %sext = shl i64 %.sroa.speculated, 48
  %i.aj = ashr exact i64 %sext, 48
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !1459
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0 = phi i16 [ %.sroa.4.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %2, %bb.l ]
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_122VarBinarySelectionImplINS_15LargeBinaryTypeEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_122VarBinarySelectionImplINS_15LargeBinaryTypeEEE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !2007
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !2007
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit, !prof !80

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !44
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !1515
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !1515
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, !prof !80

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit:       ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_22VarBinarySelectionImplINS_15LargeBinaryTypeEEES5_EE, i64 16), ptr %0, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i5, label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_22VarBinarySelectionImplINS_15LargeBinaryTypeEEES5_ED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !44
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !2167
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !2167
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_22VarBinarySelectionImplINS_15LargeBinaryTypeEEES5_ED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_22VarBinarySelectionImplINS_15LargeBinaryTypeEEES5_ED2Ev.exit, !prof !80

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !2168
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_22VarBinarySelectionImplINS_15LargeBinaryTypeEEES5_ED2Ev.exit

_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_22VarBinarySelectionImplINS_15LargeBinaryTypeEEES5_ED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_122VarBinarySelectionImplINS_15LargeBinaryTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute8internal12_GLOBAL__N_122VarBinarySelectionImplINS_15LargeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_122VarBinarySelectionImplINS_15LargeBinaryTypeEE4InitEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  %i.c = shl i64 %i.b, 3
  %i.d = add i64 %i.c, 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !284, !noalias !2175
  %i.g = add nsw i64 %i.d, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = load i64, ptr %i.h, align 8, !tbaa !231, !noalias !2175 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !2176
  br label %_ZN5arrow18TypedBufferBuilderIlvE7ReserveEl.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = shl nsw i64 %i.i, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.k)
  tail call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false)
  br label %_ZN5arrow18TypedBufferBuilderIlvE7ReserveEl.exit

_ZN5arrow18TypedBufferBuilderIlvE7ReserveEl.exit: ; preds = %bb.b, %bb.c
  ret void
}
end_hunk_1
