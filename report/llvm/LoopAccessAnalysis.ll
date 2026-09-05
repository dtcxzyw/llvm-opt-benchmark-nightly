Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopAccessAnalysis?download=true
inline.NumInlined: 8428
inline.NumDeleted: 4399
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZZN4llvm16MemoryDepChecker11isDependentERKNS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEjSA_jENK3$_0clEv":bb.a
  %i.ab = and i64 %.0.copyload.i.i.i7, -8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = and i64 %.0.copyload.i.i.i, -8
  %i.ae = inttoptr i64 %i.ad to ptr
  %.1.in.i9 = getelementptr inbounds nuw i8, ptr %.pn.i8, i64 8
  %.1.i10 = load ptr, ptr %.1.in.i9, align 8, !tbaa !132
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !376, !nonnull !59, !align !121
  %i.ag = tail call noundef ptr @_ZN4llvm25PredicatedScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef %i.ae) #28
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !376, !nonnull !59, !align !121
  %i.ai = tail call noundef ptr @_ZN4llvm25PredicatedScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef %i.ac) #28
  %i.aj = tail call noundef zeroext i1 @_ZN4llvm16MemoryDepChecker34areAccessesCompletelyBeforeOrAfterEPKNS_4SCEVEPNS_4TypeES3_S5_(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef %i.ag, ptr noundef %.1.i, ptr noundef %i.ai, ptr noundef %.1.i10)
  ret i1 %i.aj
}

declare noundef zeroext i1 @_ZN4llvm15ScalarEvolution18isKnownNonPositiveEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm15ScalarEvolution18isKnownNonNegativeEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16MemoryDepChecker11areDepsSafeERKNS_18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEEENS_8ArrayRefIS9_EE(ptr noundef nonnull align 8 dereferenceable(408) initializes((216, 224)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallPtrSet.341", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 -1, ptr %i.a, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.b, ptr %4, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 8, ptr %i.c, align 8, !tbaa !365
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !337
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i8 1, ptr %i.e, align 8, !tbaa !66
  %.idx = shl nuw nsw i64 %3, 3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not223 = icmp eq i64 %3, 0
  br i1 %.not223, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 268
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph226, %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread164
  %.034224 = phi ptr [ %2, %.lr.ph226 ], [ %i.nc, %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread164 ] ; 2 uses
  %i.r = load i64, ptr %.034224, align 8, !tbaa !57 ; 4 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i8, ptr %i.e, align 8, !tbaa !66, !range !67, !noundef !59
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %4, align 8, !tbaa !68     ; 2 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !337  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.w, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01218.i.i = phi ptr [ %i.z, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.aa = load ptr, ptr %.01218.i.i, align 8, !tbaa !338
  %.not15.i.i = icmp eq ptr %i.aa, %i.s
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread164, label %bb.d

_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit: ; preds = %bb.b
  %i.ab = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef %i.s) #28
  %.not187 = icmp eq ptr %i.ab, null
  br i1 %.not187, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread164

_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !308, !noalias !883 ; 3 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !309, !noalias !883 ; 2 uses
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !310, !noalias !883 ; 4 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  %i.ah = lshr i64 %i.r, 9
  %i.ai = xor i64 %i.ah, %i.r
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.ag, %i.aj                    ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !80, !noalias !884
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !97

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.as = phi i64 [ %i.ax, %bb.f ], [ %i.al, %bb.e ]
  %.01117.i.i.i.i = phi i32 [ %i.aw, %bb.f ], [ %i.ak, %bb.e ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.as ; 2 uses
  %.0.copyload.i.i2.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !884
  %i.au = icmp eq i64 %i.r, %.0.copyload.i.i2.i.i.i.i.i.i
  br i1 %i.au, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.loopexit.i, label %bb.f, !prof !100

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = add nuw i32 %.01117.i.i.i.i, 1
  %i.aw = and i32 %i.av, %i.ag                    ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !80, !noalias !884
  %i.bb = and i32 %i.aw, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !101

.loopexit.i.i.i:                                  ; preds = %bb.f, %bb.e, %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread
  %i.be = zext i32 %i.ae to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.be
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.ae to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.loopexit.i ], [ %i.be, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.at, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.loopexit.i ], [ %i.bf, %.loopexit.i.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.pre-phi.i
  %i.bh = icmp eq ptr %.lcssa.sink.i.i.i, %i.bg
  br i1 %i.bh, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread164, label %_ZNK4llvm18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE10findLeaderERKS8_.exit

_ZNK4llvm18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE10findLeaderERKS8_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEEPNS_18EquivalenceClassesIS9_E7ECValueENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4findERKS9_.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !315
  %i.bk = call noundef ptr @_ZNK4llvm18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 2 uses
  %.not188220 = icmp eq ptr %i.bk, null
  br i1 %.not188220, label %_ZNK4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE8containsES8_.exit.thread164, label %.lr.ph222

.lr.ph222:                                        ; preds = %_ZNK4llvm18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE10findLeaderERKS8_.exit, %._crit_edge219
  %.sroa.0149.0221 = phi ptr [ %i.nb, %._crit_edge219 ], [ %i.bk, %_ZNK4llvm18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE10findLeaderERKS8_.exit ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0149.0221, i64 16 ; 7 uses
  %.sroa.014.0.copyload = load i64, ptr %i.bl, align 8, !tbaa !57
  %i.bm = inttoptr i64 %.sroa.014.0.copyload to ptr ; 3 uses
  %i.bn = load i8, ptr %i.e, align 8, !tbaa !66, !range !67, !noalias !885, !noundef !59
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.g:                                             ; preds = %.lr.ph222
  %i.bp = load ptr, ptr %4, align 8, !tbaa !68, !noalias !885 ; 2 uses
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !337, !noalias !885 ; 4 uses
  %i.br = zext i32 %i.bq to i64
  %.idx.i.i49 = shl nuw nsw i64 %i.br, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i49 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.g, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.bu, %.critedge.i.i ], [ %i.bp, %bb.g ] ; 2 uses
  %i.bt = load ptr, ptr %.023.i.i, align 8, !tbaa !338, !noalias !885
  %.not15.i.i51 = icmp eq ptr %i.bt, %i.bm
  br i1 %.not15.i.i51, label %_ZN4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE6insertES8_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i50
  %i.bu = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.bu, %i.bs
  br i1 %.not.i.i52, label %._crit_edge.i.i, label %.lr.ph.i.i50

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.g
  %i.bv = load i32, ptr %i.c, align 8, !tbaa !365, !noalias !885
  %i.bw = icmp ult i32 %i.bq, %i.bv
  br i1 %i.bw, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bx = add nuw i32 %i.bq, 1
  store i32 %i.bx, ptr %i.d, align 4, !tbaa !337, !noalias !885
  store ptr %i.bm, ptr %i.bs, align 8, !tbaa !338, !noalias !885
  br label %_ZN4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE6insertES8_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %.lr.ph222
  %i.by = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef %i.bm) #28, !noalias !885 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE6insertES8_.exit

_ZN4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE6insertES8_.exit: ; preds = %.lr.ph.i.i50, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.h
  %.0.copyload.i.i.i = load i64, ptr %i.bl, align 8
  %i.bz = and i64 %.0.copyload.i.i.i, 4
  %.not189 = icmp eq i64 %i.bz, 0
  br i1 %.not189, label %.lr.ph.i.preheader, label %5

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE6insertES8_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0149.0221, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !321
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, -2
  br label %_ZSt9__advanceIN4llvm18EquivalenceClassesINS0_14PointerIntPairIPNS0_5ValueELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEE15member_iteratorElEvRT_T0_St18input_iterator_tag.exit

5:                                                ; preds = %_ZN4llvm15SmallPtrSetImplINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE6insertES8_.exit
  %6 = ptrtoint ptr %.sroa.0149.0221 to i64
  br label %_ZSt9__advanceIN4llvm18EquivalenceClassesINS0_14PointerIntPairIPNS0_5ValueELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEE15member_iteratorElEvRT_T0_St18input_iterator_tag.exit

_ZSt9__advanceIN4llvm18EquivalenceClassesINS0_14PointerIntPairIPNS0_5ValueELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEE15member_iteratorElEvRT_T0_St18input_iterator_tag.exit: ; preds = %.lr.ph.i.preheader, %5
  %storemerge = phi i64 [ %6, %5 ], [ %i.cd, %.lr.ph.i.preheader ] ; 2 uses
  %.not190216 = icmp eq i64 %storemerge, 0
  br i1 %.not190216, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZSt9__advanceIN4llvm18EquivalenceClassesINS0_14PointerIntPairIPNS0_5ValueELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEE15member_iteratorElEvRT_T0_St18input_iterator_tag.exit, %._crit_edge214
  %.sroa.0139.0217.in = phi i64 [ %i.mw, %._crit_edge214 ], [ %storemerge, %_ZSt9__advanceIN4llvm18EquivalenceClassesINS0_14PointerIntPairIPNS0_5ValueELj1EbNS0_21PointerLikeTypeTraitsIS4_EENS0_18PointerIntPairInfoIS4_Lj1ES6_EEEEE15member_iteratorElEvRT_T0_St18input_iterator_tag.exit ]
  %.sroa.0139.0217 = inttoptr i64 %.sroa.0139.0217.in to ptr ; 3 uses
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !244, !noalias !886 ; 3 uses
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !245, !noalias !886 ; 3 uses
  %i.cg = load i32, ptr %i.k, align 4, !tbaa !246, !noalias !886 ; 4 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph218
  %i.ci = add i32 %i.cg, -1                       ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bl, align 8, !tbaa !57 ; 3 uses
  %i.cj = lshr i64 %.sroa.0.0.copyload.i.i, 9
  %i.ck = xor i64 %i.cj, %.sroa.0.0.copyload.i.i
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = and i32 %i.ci, %i.cl                    ; 3 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cn ; 2 uses
  %i.cp = lshr i64 %i.cn, 5
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !80
  %i.cs = and i32 %i.cm, 31
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.i.i64, label %.loopexit.i, !prof !97

.lr.ph.i.i64:                                     ; preds = %bb.i, %bb.j
  %i.cv = phi ptr [ %i.da, %bb.j ], [ %i.co, %bb.i ] ; 3 uses
  %.01624.i.i = phi i32 [ %i.cy, %bb.j ], [ %i.cm, %bb.i ]
  %.0.copyload.i.i2.i.i.i.i = load i64, ptr %i.cv, align 8
  %i.cw = icmp eq i64 %.sroa.0.0.copyload.i.i, %.0.copyload.i.i2.i.i.i.i
  br i1 %i.cw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit.loopexit, label %bb.j, !prof !100

bb.j:                                             ; preds = %.lr.ph.i.i64
  %i.cx = add nuw i32 %.01624.i.i, 1
  %i.cy = and i32 %i.cx, %i.ci                    ; 3 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cz ; 2 uses
  %i.db = lshr i64 %i.cz, 5
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !80
  %i.de = and i32 %i.cy, 31
  %i.df = lshr i32 %i.dd, %i.de
  %i.dg = trunc i32 %i.df to i1
  br i1 %i.dg, label %.lr.ph.i.i64, label %.loopexit.i, !prof !101, !llvm.loop !6

.loopexit.i:                                      ; preds = %bb.j, %bb.i, %.lr.ph218
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.co, %bb.i ], [ null, %.lr.ph218 ], [ %i.da, %bb.j ]
  %i.dh = load i32, ptr %i.l, align 8, !tbaa !392
  %i.di = shl i32 %i.dh, 2
  %i.dj = add i32 %i.di, 4
  %i.dk = mul i32 %i.cg, 3
  %.not.i.i60 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i.i60, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i, label %bb.k, !prof !100

bb.k:                                             ; preds = %.loopexit.i
  %i.dl = shl i32 %i.cg, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i32 noundef %i.dl)
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !244, !noalias !887 ; 5 uses
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !245, !noalias !887 ; 5 uses
  %i.do = load i32, ptr %i.k, align 4, !tbaa !246, !noalias !887 ; 2 uses
  %i.dp = icmp ne i32 %i.do, 0
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add i32 %i.do, -1                       ; 2 uses
  %.sroa.0.0.copyload.i99 = load i64, ptr %i.bl, align 8, !tbaa !57 ; 3 uses
  %i.dr = lshr i64 %.sroa.0.0.copyload.i99, 9
  %i.ds = xor i64 %i.dr, %.sroa.0.0.copyload.i99
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dq, %i.dt                    ; 3 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dv ; 2 uses
  %i.dx = lshr i64 %i.dv, 5
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !80
  %i.ea = and i32 %i.du, 31
  %i.eb = lshr i32 %i.dz, %i.ea
  %i.ec = trunc i32 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.i100, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i, !prof !97

.lr.ph.i100:                                      ; preds = %bb.k, %bb.l
  %i.ed = phi ptr [ %i.ei, %bb.l ], [ %i.dw, %bb.k ] ; 2 uses
  %.01624.i = phi i32 [ %i.eg, %bb.l ], [ %i.du, %bb.k ]
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.ed, align 8
  %i.ee = icmp eq i64 %.sroa.0.0.copyload.i99, %.0.copyload.i.i2.i.i.i
  br i1 %i.ee, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i, label %bb.l, !prof !100

bb.l:                                             ; preds = %.lr.ph.i100
  %i.ef = add nuw i32 %.01624.i, 1
  %i.eg = and i32 %i.ef, %i.dq                    ; 3 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.eh ; 2 uses
  %i.ej = lshr i64 %i.eh, 5
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !80
  %i.em = and i32 %i.eg, 31
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = trunc i32 %i.en to i1
  br i1 %i.eo, label %.lr.ph.i100, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i, !prof !101, !llvm.loop !6

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i: ; preds = %bb.l, %.lr.ph.i100, %bb.k, %.loopexit.i
  %i.ep = phi ptr [ %i.ce, %.loopexit.i ], [ %i.dm, %bb.k ], [ %i.dm, %.lr.ph.i100 ], [ %i.dm, %bb.l ]
  %i.eq = phi ptr [ %i.cf, %.loopexit.i ], [ %i.dn, %bb.k ], [ %i.dn, %.lr.ph.i100 ], [ %i.dn, %bb.l ]
  %i.er = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.dw, %bb.k ], [ %i.ei, %bb.l ], [ %i.ed, %.lr.ph.i100 ] ; 4 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 5                 ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 31
  %i.ey = shl nuw i32 1, %i.ex
  %i.ez = lshr i64 %i.ev, 5
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !80
  %i.fc = or i32 %i.ey, %i.fb
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !80
  %i.fd = load i32, ptr %i.l, align 8, !tbaa !392
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.l, align 8, !tbaa !392
  %i.ff = load i64, ptr %i.bl, align 8, !tbaa !57
  store i64 %i.ff, ptr %i.er, align 8, !tbaa !57
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.pre243 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !277
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i
  %i.fh = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i ], [ %.pre243, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.er, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E22findBucketForInsertionIS9_EEPSH_RKT_SL_.exit.i ], [ %i.cv, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit.loopexit ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !277 ; 3 uses
  %.not191211 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not191211, label %._crit_edge214, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEESt6vectorIjSaIjEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEEES9_SC_SE_SH_E24lookupOrInsertIntoBucketIRKS9_JEEESt4pairIPSH_bEOT_DpOT0_.exit
  %i.fk = icmp eq ptr %.sroa.0149.0221, %.sroa.0139.0217
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0139.0217, i64 16 ; 8 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph213, %._crit_edge
  %.sroa.0135.0212 = phi ptr [ %i.fh, %.lr.ph213 ], [ %i.ms, %._crit_edge ] ; 3 uses
  br i1 %i.fk, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0135.0212, i64 4
  br label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !244, !noalias !888 ; 4 uses
  %i.fo = load ptr, ptr %i.j, align 8, !tbaa !245, !noalias !888 ; 4 uses
  %i.fp = load i32, ptr %i.k, align 4, !tbaa !246, !noalias !888 ; 5 uses
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %.loopexit.i66, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = add i32 %i.fp, -1                       ; 2 uses
  %.sroa.0.0.copyload.i.i65 = load i64, ptr %i.fl, align 8, !tbaa !57 ; 3 uses
  %i.fs = lshr i64 %.sroa.0.0.copyload.i.i65, 9
  %i.ft = xor i64 %i.fs, %.sroa.0.0.copyload.i.i65
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = and i32 %i.fr, %i.fu                    ; 3 uses
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fw ; 2 uses
  %i.fy = lshr i64 %i.fw, 5
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !80
  %i.gb = and i32 %i.fv, 31
  %i.gc = lshr i32 %i.ga, %i.gb
  %i.gd = trunc i32 %i.gc to i1
  br i1 %i.gd, label %.lr.ph.i.i77, label %.loopexit.i66, !prof !97

.lr.ph.i.i77:                                     ; preds = %bb.o, %bb.p
  %i.ge = phi ptr [ %i.gj, %bb.p ], [ %i.fx, %bb.o ] ; 2 uses
  %.01624.i.i78 = phi i32 [ %i.gh, %bb.p ], [ %i.fv, %bb.o ]
  %.0.copyload.i.i2.i.i.i.i79 = load i64, ptr %i.ge, align 8
  %i.gf = icmp eq i64 %.sroa.0.0.copyload.i.i65, %.0.copyload.i.i2.i.i.i.i79
  br i1 %i.gf, label %.loopexit194.loopexit, label %bb.p, !prof !100

bb.p:                                             ; preds = %.lr.ph.i.i77
  %i.gg = add nuw i32 %.01624.i.i78, 1
  %i.gh = and i32 %i.gg, %i.fr                    ; 3 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.gi ; 2 uses
  %i.gk = lshr i64 %i.gi, 5
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !80
  %i.gn = and i32 %i.gh, 31
  %i.go = lshr i32 %i.gm, %i.gn
  %i.gp = trunc i32 %i.go to i1
  br i1 %i.gp, label %.lr.ph.i.i77, label %.loopexit.i66, !prof !101, !llvm.loop !6

.loopexit.i66:                                    ; preds = %bb.p, %bb.o, %bb.n
end_hunk_0
