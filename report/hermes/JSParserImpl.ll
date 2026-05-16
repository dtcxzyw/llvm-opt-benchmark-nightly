inline.NumInlined: 6233
inline.NumDeleted: 1654
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl14parseDirectiveEv:bb.a
  store i32 36, ptr %i.ab, align 8, !tbaa !252
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !334
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.af, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ag, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ah, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.ai, align 8, !tbaa !229
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ak, align 8, !tbaa !229
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !132 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !133
  %.not.i.i = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i, label %bb.d, !prof !281

bb.d:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull %i.aq, i64 noundef 0, i64 noundef 8) #17
  %.pre.i.i = load i32, ptr %i.am, align 8, !tbaa !132
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i: ; preds = %bb.d, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.ar = phi i32 [ %.pre.i.i, %bb.d ], [ %i.an, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ]
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !131
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = ptrtoint ptr %i.aa to i64
  store i64 %i.av, ptr %i.au, align 1
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !132
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.am, align 8, !tbaa !132
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !141
  %i.ba = icmp eq ptr %i.aa, %i.az
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.bb, align 8, !tbaa !230
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !145
  %i.be = icmp eq ptr %i.aa, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1204
  store i8 1, ptr %i.bf, align 4, !tbaa !282
  br label %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit

_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit: ; preds = %bb.f, %bb.g
  %i.bg = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 1) #17 ; 3 uses
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !85
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !235
  %i.bi = icmp eq i32 %i.bh, 60
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit
  %.sroa.2.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.2.0.copyload.i.i11 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i10, align 8, !tbaa !229
  %i.bj = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit
  %.sroa.03.0 = phi ptr [ %.sroa.2.0.copyload.i.i11, %bb.h ], [ %.sroa.0.0.copyload.i, %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !240 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !241
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !248
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !250 ; 2 uses
  %i.bv = add i64 %i.bs, 7
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, 7
  %.neg23 = add i64 %i.bu, 7
  %i.by = sub i64 %.neg23, %i.bx                  ; 3 uses
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !250
  %i.bz = add i64 %i.by, 64                       ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 262144
  br i1 %i.ca, label %.critedge.i.i.i15, label %bb.j, !prof !251

.critedge.i.i.i15:                                ; preds = %bb.i
  %i.cb = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bk, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16

bb.j:                                             ; preds = %bb.i
  %i.cc = add i64 %i.by, %i.bs
  %i.cd = inttoptr i64 %i.cc to ptr
  store i64 %i.bz, ptr %i.bt, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16:  ; preds = %.critedge.i.i.i15, %bb.j
  %.0.i.i.i14 = phi ptr [ %i.cb, %.critedge.i.i.i15 ], [ %i.cd, %bb.j ] ; 9 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !334
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i14, i8 0, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 16
  store i32 30, ptr %i.cf, align 8, !tbaa !252
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cg, i8 0, i64 28, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 48
  store ptr %.0.i.i.i, ptr %i.ch, align 8, !tbaa !336
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 56
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !339
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i17, ptr %i.cj, align 8, !tbaa !229
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 32
  store ptr %.sroa.03.0, ptr %i.ck, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i18 = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i18, ptr %i.cl, align 8, !tbaa !229
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16
  %.0 = phi ptr [ %.0.i.i.i14, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16 ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isCurrentTokenADirectiveEv(ptr noundef nonnull align 8 dereferenceable(1160)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser6detail12JSParserImpl14preParseBufferERNS_7ContextEj(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.304") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(2848) ptr @_Znwm(i64 noundef 2848) #19, !noalias !775 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !780, !noalias !782
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !783, !noalias !782
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes6parser6detail12_GLOBAL__N_19PreParserESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !82, !noalias !782
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !784, !noalias !782
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !782 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240, !noalias !782 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !241, !noalias !782
  store i32 %i.h, ptr %i.e, align 8, !tbaa !241, !noalias !782
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !250, !noalias !782
  store i64 %i.k, ptr %i.i, align 8, !tbaa !250, !noalias !782
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !131, !noalias !782
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !132, !noalias !782
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !133, !noalias !782
  store ptr %i.g, ptr %i.m, align 8, !tbaa !298, !noalias !782
  store ptr %i.e, ptr %i.f, align 8, !tbaa !240, !noalias !782
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  tail call void @_ZN6hermes6parser6detail12JSParserImplC2ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(2824) %i.p, ptr noundef nonnull align 8 dereferenceable(656) %1, i32 noundef %2, i32 noundef 0), !noalias !782
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.r = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.q, i32 noundef 0) #17
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store ptr %i.r, ptr %i.s, align 8, !tbaa !85
  %i.t = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl12parseProgramEv(ptr noundef nonnull align 8 dereferenceable(2824) %i.p)
  %i.u = extractvalue { i64, i8 } %i.t, 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !228, !nonnull !75, !align !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread: ; preds = %bb.a, %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

bb.b:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit
  store ptr %i.p, ptr %0, align 8, !tbaa !785
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.z, align 8, !tbaa !787
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !278
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread, %bb.c, %bb.d
  %i.ae = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit
  store i32 0, ptr %i.b, align 8, !tbaa !780
  store i32 0, ptr %i.c, align 4, !tbaa !783
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17, !inline_history !788
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17, !inline_history !788
  br label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !278
  %.not.i.i.i5 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.ag, -1
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ap = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.i, label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !251

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17
  br label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseLazyFunctionENS_6ESTree8NodeKindEbbN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) initializes((160, 168)) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %4, ptr %i.d, align 8, !tbaa !324
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.c, i32 noundef 0) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.e, ptr %i.f, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1205
  store i8 %i.a, ptr %i.g, align 1, !tbaa !686
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1206
  store i8 %i.b, ptr %i.h, align 2, !tbaa !372
  switch i32 %1, label %bb.f [
    i32 4, label %bb.b
    i32 6, label %bb.c
    i32 76, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i1 noundef zeroext false, i1 noundef zeroext true), !inline_history !496 ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1
  %spec.select3.i = and i8 %i.k, 1                ; 2 uses
  %.not27 = icmp eq i8 %spec.select3.i, 0
  %spec.select.i10 = select i1 %.not27, i64 undef, i64 %i.j
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 2, i1 noundef zeroext true, i1 noundef zeroext true), !inline_history !425 ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 0
  %i.n = extractvalue { i64, i8 } %i.l, 1
  %spec.select3.i15 = and i8 %i.n, 1              ; 2 uses
  %.not26 = icmp eq i8 %spec.select3.i15, 0
  %spec.select.i18 = select i1 %.not26, i64 undef, i64 %i.m
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.o = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parsePropertyAssignmentEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i1 noundef zeroext true)
  %i.p = extractvalue { i64, i8 } %i.o, 0         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !252
  %i.t = icmp ne i32 %i.s, 76
  %.not25 = icmp eq i64 %i.p, 0
  %.not = or i1 %i.t, %.not25
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !388
  %i.w = ptrtoint ptr %i.v to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.023.1 = phi i64 [ %spec.select.i10, %bb.b ], [ %spec.select.i18, %bb.c ], [ %i.w, %bb.e ], [ undef, %bb.d ]
  %.sroa.424.1 = phi i8 [ %spec.select3.i, %bb.b ], [ %spec.select3.i15, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.023.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.424.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE13destroy_rangeEPS7_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit
  %.05 = phi ptr [ %i.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit ], [ %1, %bb.a ]
  %i.a = getelementptr inbounds i8, ptr %.05, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !789  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %.pre1.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !792 ; 3 uses
  br i1 %i.e, label %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = zext i32 %i.d to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.f, 80
  %i.g = getelementptr inbounds nuw i8, ptr %.pre1.i.i.i.i, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.w, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i ], [ %.pre1.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.h = load ptr, ptr %.010.i.i.i.i.i, align 8, !tbaa !322
  %i.i = icmp ult ptr %i.h, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.c
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.n, 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !131  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i.i, i64 -24
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.q) #17
  br label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i

_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.p
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !340

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !131
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 40
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.t) #17
  br label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i

_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !793

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i: ; preds = %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !792
  br label %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i, %bb.b
  %i.x = phi ptr [ %.pre.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i ], [ %.pre1.i.i.i.i, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.x) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #20
  br label %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !794

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
