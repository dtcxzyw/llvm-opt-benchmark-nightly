Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FactsGenerator?download=true
inline.NumInlined: 2475
inline.NumDeleted: 1508
begin_hunk_0_@_ZN5clang9lifetimes8internal14FactsGenerator9handleUseEPKNS_4ExprE:bb.a
  %i.f = and i16 %i.e, 511
  %.not16 = icmp eq i16 %i.f, 73
  br i1 %.not16, label %bb.c, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !80
  %i.j = and i64 %.sroa.0.0.copyload.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !174
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !80
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !174
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.q, align 16
  %i.s = and i8 %i.r, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i24, ptr %1, align 8
  %i.u = and i24 %i.t, 1536
  %.not6.i = icmp eq i24 %i.u, 0
  br i1 %.not6.i, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit

_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %.not7 = icmp eq ptr %i.w, null
  br i1 %.not7, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_9lifetimes8internal7UseFactENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8containsES5_.exit, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread

_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread: ; preds = %bb.b, %bb.d, %bb.c, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit
  %.013 = phi ptr [ %i.w, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !175, !noalias !308
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !176, !noalias !308 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !177, !noalias !308 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread
  %i.ae = add i32 %i.ac, -1                       ; 2 uses
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.ae, %i.aj                    ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i, label %.loopexit, !prof !178

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %i.as = phi i64 [ %i.ay, %bb.f ], [ %i.al, %bb.e ]
  %.017.i.i = phi i32 [ %i.ax, %bb.f ], [ %i.ak, %bb.e ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !171
  %i.av = icmp eq ptr %1, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_9lifetimes8internal7UseFactENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8containsES5_.exit, label %bb.f, !prof !45

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aw = add nuw i32 %.017.i.i, 1
  %i.ax = and i32 %i.aw, %i.ae                    ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !30
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i, label %.loopexit, !prof !179

.loopexit:                                        ; preds = %bb.f, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread, %bb.e
  %i.bf = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 488 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = add i64 %i.bi, 40                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 496
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !44
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %bb.h, !prof !45

bb.g:                                             ; preds = %.loopexit
  %i.bn = inttoptr i64 %i.bj to ptr
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !43
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_7UseFactEJRPKNS_4ExprERPNS1_10OriginListEEEEPT_DpOT0_.exit

bb.h:                                             ; preds = %.loopexit
  %i.bo = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, i64 noundef 40, i64 noundef 40, i8 3)
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_7UseFactEJRPKNS_4ExprERPNS1_10OriginListEEEEPT_DpOT0_.exit

_ZN5clang9lifetimes8internal11FactManager10createFactINS1_7UseFactEJRPKNS_4ExprERPNS1_10OriginListEEEEPT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.bh, %bb.g ], [ %i.bo, %bb.h ] ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i8 3, ptr %i.bp, align 8, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 12 ; 2 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang9lifetimes8internal7UseFactE, i64 16), ptr %.0.i.i.i.i.i, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %1, ptr %i.br, align 8, !tbaa !181
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  store ptr %.013, ptr %i.bs, align 8, !tbaa !182
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 32
  store i8 0, ptr %i.bt, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %i.bu = add i32 %.sroa.0.0.copyload.i.i, 1
  store i32 %i.bu, ptr %i.bf, align 8, !tbaa !50
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.bq, align 4, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !57
  %.not.i8 = icmp ult i32 %i.bx, %i.bz
  br i1 %.not.i8, label %bb.j, label %bb.i, !prof !45

bb.i:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_7UseFactEJRPKNS_4ExprERPNS1_10OriginListEEEEPT_DpOT0_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull %.0.i.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit

bb.j:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_7UseFactEJRPKNS_4ExprERPNS1_10OriginListEEEEPT_DpOT0_.exit
  %i.ca = zext i32 %i.bx to i64
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %.0.i.i.i.i.i, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.bw, align 8, !tbaa !56
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bw, align 8, !tbaa !56
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit: ; preds = %bb.i, %bb.j
  %i.cf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_9lifetimes8internal7UseFactENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.cf, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.cg, align 8, !tbaa !185
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_9lifetimes8internal7UseFactENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8containsES5_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_9lifetimes8internal7UseFactENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E8containsES5_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5clang9lifetimes8internal19doesDeclHaveStorageEPKNS_9ValueDeclE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9lifetimes8internal14FactsGenerator21VisitCXXConstructExprEPKNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !80
  %i.c = tail call noundef zeroext i1 @_ZN5clang9lifetimes16isGslPointerTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator28handleGSLPointerConstructionEPKNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %1)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.f = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 33554432
  %.not71 = icmp eq i32 %i.j, 0
  br i1 %.not71, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !190
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i40 = load i64, ptr %i.b, align 8, !tbaa !80
  %i.n = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = call noundef zeroext i1 @_ZNK5clang9lifetimes8internal13OriginManager10hasOriginsENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(248) %i.o, i64 %.sroa.0.0.copyload.i40, i1 noundef zeroext false) #15
  br i1 %i.p, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = load i16, ptr %1, align 8
  %i.r = and i16 %i.q, 511
  %.not.i.i.i.i = icmp eq i16 %i.r, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !171  ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.w = call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.t) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i24, ptr %i.t, align 8
  %i.y = and i24 %i.x, 1536
  %.not6.i = icmp eq i24 %i.y, 0
  br i1 %.not6.i, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit

_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61  ; 2 uses
  %.not.not = icmp eq ptr %i.aa, null
  br i1 %.not.not, label %.thread, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread

_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread: ; preds = %bb.h, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit
  %.0.i55 = phi ptr [ %i.aa, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit ], [ %i.w, %bb.h ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ad = call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  call void @_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %i.ad, ptr noundef nonnull %.0.i55, i1 noundef zeroext true, ptr noundef null)
  br label %.critedge

.thread:                                          ; preds = %bb.g, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.copyload.i41 = load i64, ptr %i.b, align 8, !tbaa !80
  %i.ae = and i64 %.sroa.0.0.copyload.i41, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !174
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !80
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !174 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 16            ; 3 uses
  %i.an = add i8 %i.am, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.an, 3
  %.not.i7.i = icmp ne ptr %i.ak, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.ao = and i8 %i.am, 62
  %spec.select.i.i.i = icmp eq i8 %i.ao, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.i, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.i:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !196 ; 3 uses
  %i.ar = icmp eq i8 %i.am, 49
  br i1 %i.ar, label %bb.j, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 127
  %i.av = add nsw i32 %i.au, -60
  %i.aw = icmp ult i32 %i.av, 3
  br i1 %i.aw, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.j, %bb.i
  %i.ax = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.aq) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ax, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.aq, ptr %i.ax
  %i.ay = call noundef zeroext i1 @_ZN5clang9lifetimes24isStdCallableWrapperTypeEPKNS_13CXXRecordDeclE(ptr noundef nonnull %spec.select) #15
  br i1 %i.ay, label %bb.k, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.k:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !190
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bc = load i16, ptr %1, align 8
  %i.bd = and i16 %i.bc, 511
  %.not.i.i.i.i42 = icmp eq i16 %i.bd, 118
  %spec.select.v.i.i.i.i43 = select i1 %.not.i.i.i.i42, i64 48, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i43
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !171 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.bi = call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #15 ; 3 uses
  %.not.i45 = icmp eq ptr %i.bi, null
  br i1 %.not.i45, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load i24, ptr %i.bf, align 8
  %i.bk = and i24 %i.bj, 1536
  %.not6.i46 = icmp eq i24 %i.bk, 0
  br i1 %.not6.i46, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48.thread66, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48

_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48: ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %.not39 = icmp eq ptr %i.bm, null
  br i1 %.not39, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48.thread66

_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48.thread66: ; preds = %bb.m, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48
  %.0.i4769 = phi ptr [ %i.bm, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48 ], [ %i.bi, %bb.m ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  %i.bp = call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %1) #15 ; 2 uses
  %.not.i49.not = icmp eq ptr %i.bp, null
  br i1 %.not.i49.not, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48.thread66
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i, %.lr.ph.i
  %.019.us.i = phi ptr [ %i.cr, %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  %.01218.us.i = phi ptr [ %i.ct, %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i ], [ %.0.i4769, %.lr.ph.i ] ; 2 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %.sroa.0.0.copyload.i.us.i = load i32, ptr %.019.us.i, align 8, !tbaa !30
  %.sroa.0.0.copyload.i16.us.i = load i32, ptr %.01218.us.i, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 488 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !44
  %i.ca = icmp ult i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.n, !prof !45

bb.n:                                             ; preds = %.lr.ph.split.us.i
  %i.cb = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i

bb.o:                                             ; preds = %.lr.ph.split.us.i
  %i.cc = inttoptr i64 %i.bx to ptr
  store ptr %i.cc, ptr %i.bu, align 8, !tbaa !43
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i

_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.us.i = phi ptr [ %i.bv, %bb.o ], [ %i.cb, %bb.n ] ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 8
  store i8 2, ptr %i.cd, align 8, !tbaa !49
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 12 ; 2 uses
  store i32 0, ptr %i.ce, align 4, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang9lifetimes8internal14OriginFlowFactE, i64 16), ptr %.0.i.i.i.i.i.us.i, align 8, !tbaa !52
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 16
  store i32 %.sroa.0.0.copyload.i.us.i, ptr %i.cf, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 20
  store i32 %.sroa.0.0.copyload.i16.us.i, ptr %i.cg, align 4, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 24
  store i8 1, ptr %i.ch, align 8, !tbaa !55
  %.sroa.0.0.copyload.i.i.us.i = load i32, ptr %i.bt, align 8, !tbaa !30 ; 2 uses
  %i.ci = add i32 %.sroa.0.0.copyload.i.i.us.i, 1
  store i32 %i.ci, ptr %i.bt, align 8, !tbaa !50
  store i32 %.sroa.0.0.copyload.i.i.us.i, ptr %i.ce, align 4, !tbaa !30
  %i.cj = load i32, ptr %i.br, align 8, !tbaa !56 ; 2 uses
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !57
  %.not.i.us.i = icmp ult i32 %i.cj, %i.ck
  br i1 %.not.i.us.i, label %bb.q, label %bb.p, !prof !45

bb.p:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %.0.i.i.i.i.i.us.i)
  br label %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i

bb.q:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i
  %i.cl = zext i32 %i.cj to i64
  %i.cm = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  store ptr %.0.i.i.i.i.i.us.i, ptr %i.cn, align 1
  %i.co = load i32, ptr %i.br, align 8, !tbaa !56
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.br, align 8, !tbaa !56
  br label %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i

_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i: ; preds = %bb.q, %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !61 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01218.us.i, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !61 ; 2 uses
  %i.cu = icmp ne ptr %i.cr, null
  %i.cv = icmp ne ptr %i.ct, null
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.split.us.i, label %.critedge, !llvm.loop !0

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread: ; preds = %bb.l, %.thread, %bb.j, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48, %bb.k, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.cy = load i16, ptr %1, align 8
  %i.cz = and i16 %i.cy, 511
  %.not.i.i.i = icmp eq i16 %i.cz, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !190
  %i.dd = zext i32 %i.dc to i64
  call void @_ZN5clang9lifetimes8internal14FactsGenerator18handleFunctionCallEPKNS_4ExprEPKNS_12FunctionDeclEN4llvm8ArrayRefIS5_EEb(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %1, ptr noundef %i.cx, ptr nonnull %i.da, i64 %i.dd, i1 noundef zeroext false)
  br label %.critedge

.critedge:                                        ; preds = %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit.thread, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit48.thread66, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN5clang9lifetimes16isGslPointerTypeENS_8QualTypeE(i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9lifetimes8internal14FactsGenerator28handleGSLPointerConstructionEPKNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !190
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8
  %i.d = and i16 %i.c, 511
  %.not.i.i.i.i = icmp eq i16 %i.d, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !80
  %i.h = tail call noundef zeroext i1 @_ZN5clang9lifetimes16isGslPointerTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i) #15
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.k = tail call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i24, ptr %i.f, align 8
  %i.m = and i24 %i.l, 1536
  %.not6.i = icmp eq i24 %i.m, 0
  br i1 %.not6.i, label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  br label %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit

_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.c ], [ %i.o, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = tail call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %1) #15 ; 2 uses
  %.not.i17 = icmp ne ptr %i.r, null
  %i.s = icmp ne ptr %.0.i, null
  %or.cond.i = and i1 %i.s, %.not.i17
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit

.lr.ph.i:                                         ; preds = %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i, %.lr.ph.i
  %.019.us.i = phi ptr [ %i.au, %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.01218.us.i = phi ptr [ %i.aw, %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i ], [ %.0.i, %.lr.ph.i ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %.sroa.0.0.copyload.i.us.i = load i32, ptr %.019.us.i, align 8, !tbaa !30
  %.sroa.0.0.copyload.i16.us.i = load i32, ptr %.01218.us.i, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 488 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.z, 32                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 496
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.f, !prof !45

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.ae = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.af = inttoptr i64 %i.aa to ptr
  store ptr %i.af, ptr %i.x, align 8, !tbaa !43
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i

_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.us.i = phi ptr [ %i.y, %bb.g ], [ %i.ae, %bb.f ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 8
  store i8 2, ptr %i.ag, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 12 ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang9lifetimes8internal14OriginFlowFactE, i64 16), ptr %.0.i.i.i.i.i.us.i, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 16
  store i32 %.sroa.0.0.copyload.i.us.i, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 20
  store i32 %.sroa.0.0.copyload.i16.us.i, ptr %i.aj, align 4, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 24
  store i8 1, ptr %i.ak, align 8, !tbaa !55
  %.sroa.0.0.copyload.i.i.us.i = load i32, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  %i.al = add i32 %.sroa.0.0.copyload.i.i.us.i, 1
  store i32 %i.al, ptr %i.w, align 8, !tbaa !50
  store i32 %.sroa.0.0.copyload.i.i.us.i, ptr %i.ah, align 4, !tbaa !30
  %i.am = load i32, ptr %i.u, align 8, !tbaa !56  ; 2 uses
  %i.an = load i32, ptr %i.v, align 4, !tbaa !57
  %.not.i.us.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.us.i, label %bb.i, label %bb.h, !prof !45

bb.h:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull %.0.i.i.i.i.i.us.i)
  br label %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i

bb.i:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store ptr %.0.i.i.i.i.i.us.i, ptr %i.aq, align 1
  %i.ar = load i32, ptr %i.u, align 8, !tbaa !56
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.u, align 8, !tbaa !56
  br label %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i

_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i: ; preds = %bb.i, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01218.us.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61 ; 2 uses
  %i.ax = icmp ne ptr %i.au, null
  %i.ay = icmp ne ptr %i.aw, null
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.split.us.i, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit, !llvm.loop !0

bb.j:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.g, align 8, !tbaa !80
  %i.ba = and i64 %.sroa.0.0.copyload.i18, -16
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !174
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !80
  %i.be = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !174
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i8, ptr %i.bh, align 16
  %i.bj = icmp eq i8 %i.bi, 40
  br i1 %i.bj, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 160
  %i.bm = tail call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  %i.bq = tail call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.bq, align 8, !tbaa !30
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.bm, align 8, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 488 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !43 ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, 32                       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 496
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !44
  %i.bx = icmp ult i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.m, !prof !45

bb.l:                                             ; preds = %bb.k
  %i.by = inttoptr i64 %i.bu to ptr
  store ptr %i.by, ptr %i.br, align 8, !tbaa !43
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_bEEEPT_DpOT0_.exit

bb.m:                                             ; preds = %bb.k
  %i.bz = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.br, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_bEEEPT_DpOT0_.exit

_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_bEEEPT_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i.i.i = phi ptr [ %i.bs, %bb.l ], [ %i.bz, %bb.m ] ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i8 2, ptr %i.ca, align 8, !tbaa !49
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 12 ; 2 uses
  store i32 0, ptr %i.cb, align 4, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang9lifetimes8internal14OriginFlowFactE, i64 16), ptr %.0.i.i.i.i.i, align 8, !tbaa !52
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store i32 %.sroa.0.0.copyload.i19, ptr %i.cc, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 20
  store i32 %.sroa.0.0.copyload.i20, ptr %i.cd, align 4, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  store i8 1, ptr %i.ce, align 8, !tbaa !55
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bo, align 8, !tbaa !30 ; 2 uses
  %i.cf = add i32 %.sroa.0.0.copyload.i.i, 1
  store i32 %i.cf, ptr %i.bo, align 8, !tbaa !50
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.cb, align 4, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !56 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !57
  %.not.i21 = icmp ult i32 %i.ch, %i.cj
  br i1 %.not.i21, label %bb.o, label %bb.n, !prof !45

bb.n:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_bEEEPT_DpOT0_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull %.0.i.i.i.i.i)
  br label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit

bb.o:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_bEEEPT_DpOT0_.exit
  %i.ck = zext i32 %i.ch to i64
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  store ptr %.0.i.i.i.i.i, ptr %i.cm, align 1
  %i.cn = load i32, ptr %i.cg, align 8, !tbaa !56
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cg, align 8, !tbaa !56
  br label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit

bb.p:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !189
  %i.cr = load i16, ptr %1, align 8
  %i.cs = and i16 %i.cr, 511
  %.not.i.i.i = icmp eq i16 %i.cs, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !190
  %i.cv = zext i32 %i.cu to i64
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator18handleFunctionCallEPKNS_4ExprEPKNS_12FunctionDeclEN4llvm8ArrayRefIS5_EEb(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %1, ptr noundef %i.cq, ptr nonnull %i.ct, i64 %i.cv, i1 noundef zeroext true)
  br label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit

_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit: ; preds = %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i, %bb.o, %bb.n, %_ZN5clang9lifetimes8internalL16getRValueOriginsEPKNS_4ExprEPNS1_10OriginListE.exit, %bb.p, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4Type18getAsCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !80
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !174 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16              ; 3 uses
  %i.g = add i8 %i.f, -47
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.g, 3
  %.not.i7 = icmp ne ptr %i.d, null
  %.not.i.not8 = and i1 %.not.i7, %switch.i.i.i.i.i.i.i.i.i
  %i.h = and i8 %i.f, 62
  %spec.select.i.i = icmp eq i8 %i.h, 48
  %or.cond = and i1 %.not.i.not8, %spec.select.i.i
  br i1 %or.cond, label %bb.b, label %_ZN4llvm15isa_and_presentIJN5clang10RecordTypeENS1_21InjectedClassNameTypeEEPKNS1_7TagTypeEEEbRKT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !196  ; 3 uses
  %i.k = icmp eq i8 %i.f, 49
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 127
  %i.o = add nsw i32 %i.n, -60
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %_ZN4llvm15isa_and_presentIJN5clang10RecordTypeENS1_21InjectedClassNameTypeEEPKNS1_7TagTypeEEEbRKT0_.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.j) ; 2 uses
  %.not.not.i = icmp eq ptr %i.q, null
  %spec.select.i = select i1 %.not.not.i, ptr %i.j, ptr %i.q
  br label %_ZN4llvm15isa_and_presentIJN5clang10RecordTypeENS1_21InjectedClassNameTypeEEPKNS1_7TagTypeEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_presentIJN5clang10RecordTypeENS1_21InjectedClassNameTypeEEPKNS1_7TagTypeEEEbRKT0_.exit.thread: ; preds = %bb.a, %bb.d, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %spec.select.i, %bb.d ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN5clang9lifetimes24isStdCallableWrapperTypeEPKNS_13CXXRecordDeclE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9lifetimes8internal14FactsGenerator18handleFunctionCallEPKNS_4ExprEPKNS_12FunctionDeclEN4llvm8ArrayRefIS5_EEb(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::ArrayRef.151", align 8 ; 4 uses
  store ptr %3, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = tail call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1) #15 ; 6 uses
  %i.e = tail call noundef ptr @_ZN5clang9lifetimes35getDeclWithMergedLifetimeBoundAttrsEPKNS_12FunctionDeclE(ptr noundef %2) #15 ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %4, 3
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not57116 = icmp eq i64 %4, 0                  ; 2 uses
  br i1 %.not57116, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator22handleInvalidatingCallEPKNS_4ExprEPKNS_12FunctionDeclEN4llvm8ArrayRefIS5_EE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr %3, i64 poison)
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator21handleDestructiveCallEPKNS_4ExprEPKNS_12FunctionDeclEN4llvm8ArrayRefIS5_EE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr %3, i64 poison)
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator21handleMovedArgsInCallEPKNS_12FunctionDeclEN4llvm8ArrayRefIPKNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %i.e, ptr %3, i64 %4)
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator29handleImplicitObjectFieldUsesEPKNS_4ExprEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator23handleLifetimeCaptureByEPKNS_12FunctionDeclEN4llvm8ArrayRefIPKNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull %i.e, ptr %3, i64 %4)
  %.not58 = icmp eq ptr %i.d, null
  br i1 %.not58, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit, label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.052117 = phi ptr [ %i.h, %.lr.ph ], [ %3, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %.052117, align 8, !tbaa !171
  tail call void @_ZN5clang9lifetimes8internal14FactsGenerator9handleUseEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.052117, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.h, %i.f
  br i1 %.not57, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.i = tail call noundef zeroext i1 @_ZN5clang9lifetimes18isStdReferenceCastEPKNS_12FunctionDeclE(ptr noundef nonnull %i.e) #15
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !171
  %i.k = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.m = tail call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.j) #15 ; 2 uses
  %.not114 = icmp eq ptr %i.m, null
  br i1 %.not114, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i, %.lr.ph.i
  %.019.us.i = phi ptr [ %i.ao, %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.01218.us.i = phi ptr [ %i.aq, %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %.sroa.0.0.copyload.i.us.i = load i32, ptr %.019.us.i, align 8, !tbaa !30
  %.sroa.0.0.copyload.i16.us.i = load i32, ptr %.01218.us.i, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 488 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43   ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 32                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !44
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %bb.e, !prof !45

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.y = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.z = inttoptr i64 %i.u to ptr
  store ptr %i.z, ptr %i.r, align 8, !tbaa !43
  br label %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i

_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.us.i = phi ptr [ %i.s, %bb.f ], [ %i.y, %bb.e ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 8
  store i8 2, ptr %i.aa, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 12 ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang9lifetimes8internal14OriginFlowFactE, i64 16), ptr %.0.i.i.i.i.i.us.i, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 16
  store i32 %.sroa.0.0.copyload.i.us.i, ptr %i.ac, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 20
  store i32 %.sroa.0.0.copyload.i16.us.i, ptr %i.ad, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.us.i, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !55
  %.sroa.0.0.copyload.i.i.us.i = load i32, ptr %i.q, align 8, !tbaa !30 ; 2 uses
  %i.af = add i32 %.sroa.0.0.copyload.i.i.us.i, 1
  store i32 %i.af, ptr %i.q, align 8, !tbaa !50
  store i32 %.sroa.0.0.copyload.i.i.us.i, ptr %i.ab, align 4, !tbaa !30
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !56  ; 2 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !57
  %.not.i.us.i = icmp ult i32 %i.ag, %i.ah
  br i1 %.not.i.us.i, label %bb.h, label %bb.g, !prof !45

bb.g:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull %.0.i.i.i.i.i.us.i)
  br label %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i

bb.h:                                             ; preds = %_ZN5clang9lifetimes8internal11FactManager10createFactINS1_14OriginFlowFactEJNS1_5utils2IDINS1_9OriginTagEEES8_RbEEEPT_DpOT0_.exit.us.i
  %i.ai = zext i32 %i.ag to i64
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  store ptr %.0.i.i.i.i.i.us.i, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.o, align 8, !tbaa !56
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.o, align 8, !tbaa !56
  br label %_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i

_ZN5clang9lifetimes8internal11FactManager15appendBlockFactEPKNS_8CFGBlockEPKNS1_4FactE.exit.us.i: ; preds = %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01218.us.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61 ; 2 uses
  %i.ar = icmp ne ptr %i.ao, null
  %i.as = icmp ne ptr %i.aq, null
  %i.at = and i1 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph.split.us.i, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit, !llvm.loop !0

bb.i:                                             ; preds = %bb.c
  br i1 %.not57116, label %_ZN5clang9lifetimes8internal14FactsGenerator4flowEPNS1_10OriginListES4_bPKNS_8CFGBlockE.exit, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  br i1 %5, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit.us
  %i.ay = phi i64 [ %i.dj, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit.us ], [ 0, %.preheader ]
  %.051119.us = phi i32 [ %i.di, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit.us ], [ 0, %.preheader ] ; 2 uses
  %.0111118.us = phi i8 [ %.1.us, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit.us ], [ 1, %.preheader ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ay ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !171
  %i.bb = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  %i.bd = tail call noundef ptr @_ZN5clang9lifetimes8internal13OriginManager15getOrCreateListEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(248) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #15 ; 4 uses
  %.not59.us = icmp eq ptr %i.bd, null
  br i1 %.not59.us, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9lifetimes8internal4FactELb1EE9push_backES5_.exit.us, label %bb.j

bb.j:                                             ; preds = %.preheader.split.us
end_hunk_0
