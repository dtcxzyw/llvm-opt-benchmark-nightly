inline.NumInlined: 1848
inline.NumDeleted: 843
begin_hunk_0_@_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE4growEj:_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE15allocateBucketsEj.exit
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.b, align 8, !tbaa !352
  %i.s = zext i32 %.sroa.speculated to i64
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #12 ; 7 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !195
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE15allocateBucketsEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !354
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !355
  %i.x = load i32, ptr %i.b, align 8, !tbaa !352  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i = shl nuw nsw i64 %i.y, 4               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = add nsw i64 %.idx.i, -16                ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1
  %xtraiter12 = and i64 %i.ac, 7                  ; 2 uses
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %i.u, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter14 = phi i64 [ %prol.iter14.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i.prol, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter14.next = add i64 %prol.iter14, 1     ; 2 uses
  %prol.iter14.cmp.not = icmp eq i64 %prol.iter14.next, %xtraiter12
  br i1 %prol.iter14.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !356

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.aa, 112
  br i1 %i.ae, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 96
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 112
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.am, %i.z
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !357

bb.b:                                             ; preds = %_ZN4llvh8DenseMapISt4pairIPN6hermes10BasicBlockEPNS2_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEE15allocateBucketsEj.exit
  %i.an = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.an, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !354
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !355
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !352 ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %.idx.i.i = shl nuw nsw i64 %i.as, 4            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.au = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.av = lshr exact i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.av, 1
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i.i.prol, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !358

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = icmp ult i64 %i.au, 112
  br i1 %i.ay, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 112
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bg, %i.at
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !357

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq i32 %i.c, 0
  br i1 %.not16.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E18moveFromOldBucketsEPSE_SH_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i, %bb.e
  %.017.i = phi ptr [ %i.bv, %bb.e ], [ %i.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i ] ; 5 uses
  %i.bh = load ptr, ptr %.017.i, align 8, !tbaa !342 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, inttoptr (i64 -8 to ptr)
  %i.bj = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.bk, inttoptr (i64 -8 to ptr)
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %i.bm, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  %i.bn = icmp eq ptr %i.bh, inttoptr (i64 -16 to ptr)
  %i.bo = icmp eq ptr %i.bk, inttoptr (i64 -16 to ptr)
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bq = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E15LookupBucketForIS8_EEbRKT_RPKSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %.017.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.bs = load <2 x ptr>, ptr %.017.i, align 8, !tbaa !188
  store <2 x ptr> %i.bs, ptr %i.br, align 8, !tbaa !188
  %i.bt = load i32, ptr %i.ap, align 8, !tbaa !354
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.ap, align 8, !tbaa !354
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i6
  %i.bv = getelementptr inbounds nuw i8, ptr %.017.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.bv, %i.ao
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E18moveFromOldBucketsEPSE_SH_.exit, label %.lr.ph.i6, !llvm.loop !359

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E18moveFromOldBucketsEPSE_SH_.exit: ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #11
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E18moveFromOldBucketsEPSE_SH_.exit
  ret void
}

declare { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_4EEvS3_PNS_9ScopeDescET_"(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%class.anon.156) align 8 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"struct.std::pair.191", align 8    ; 5 uses
  %4 = alloca %"struct.(anonymous namespace)::StorePoint", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263
  %.not = icmp eq ptr %i.c, %0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 152
  %.val = load ptr, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 160
  %.val15 = load i32, ptr %i.e, align 8, !tbaa !72 ; 2 uses
  %i.f = zext i32 %.val15 to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not11.i = icmp eq i32 %.val15, 0
  br i1 %.not11.i, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_4clEPNS0_9ScopeDescE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.n = load ptr, ptr %2, align 8, !tbaa !360, !nonnull !315, !align !316 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !119  ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_4clEPNS0_9ScopeDescE.exit", label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !315, !align !316 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.w, align 8, !nonnull !315, !align !316 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.v, align 8, !nonnull !315, !align !316
  %i.ad = load ptr, ptr %i.u, align 8, !nonnull !315, !align !316 ; 2 uses
  %i.ae = load ptr, ptr %i.t, align 8, !nonnull !315, !align !316 ; 2 uses
  %i.af = load ptr, ptr %i.s, align 8, !nonnull !315, !align !316 ; 5 uses
  %i.ag = load ptr, ptr %i.r, align 8, !nonnull !315, !align !316
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  br label %.lr.ph.split.i

.lr.ph.split.ithread-pre-split:                   ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i
  %.pr = load i32, ptr %i.o, align 8, !tbaa !119
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.ithread-pre-split
  %5 = phi i32 [ %.pr, %.lr.ph.split.ithread-pre-split ], [ %i.p, %.lr.ph.split.i.preheader ] ; 2 uses
  %.012.i = phi ptr [ %i.du, %.lr.ph.split.ithread-pre-split ], [ %.val, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %.012.i, align 8, !tbaa !120 ; 8 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !102 ; 2 uses
  %i.al = icmp eq i32 %5, 0
  br i1 %i.al, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.am = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = lshr i32 %i.an, 4
  %i.ap = lshr i32 %i.an, 9
  %i.aq = xor i32 %i.ao, %i.ap                    ; 3 uses
  %i.ar = add i32 %5, -1                          ; 2 uses
  %.02944.i.i.i.i = and i32 %i.aq, %i.ar          ; 2 uses
  %i.as = zext nneg i32 %.02944.i.i.i.i to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !120 ; 2 uses
  %i.av = icmp eq ptr %i.aj, %i.au
  br i1 %i.av, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !20

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.aw = phi ptr [ %i.bc, %bb.d ], [ %i.au, %bb.c ]
  %.02947.i.i.i.i = phi i32 [ %.029.i.i.i.i, %bb.d ], [ %.02944.i.i.i.i, %bb.c ]
  %.02746.i.i.i.i = phi i32 [ %i.ay, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.ax = icmp eq ptr %i.aw, inttoptr (i64 -8 to ptr)
  br i1 %i.ax, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = add i32 %.02746.i.i.i.i, 1
  %i.az = add i32 %.02746.i.i.i.i, %.02947.i.i.i.i
  %.029.i.i.i.i = and i32 %i.az, %i.ar            ; 2 uses
  %i.ba = zext i32 %.029.i.i.i.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !120 ; 2 uses
  %i.bd = icmp eq ptr %i.aj, %i.bc
  br i1 %i.bd, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !22, !llvm.loop !175

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i: ; preds = %bb.d, %bb.c
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !102 ; 2 uses
  %i.bf = load i32, ptr %i.z, align 8, !tbaa !119 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i
  %i.bh = add i32 %i.bf, -1                       ; 2 uses
  %.02944.i.i.i14.i = and i32 %i.bh, %i.aq        ; 2 uses
  %i.bi = zext nneg i32 %.02944.i.i.i14.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !120 ; 2 uses
  %i.bl = icmp eq ptr %i.aj, %i.bk
  br i1 %i.bl, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, label %.lr.ph.i.i.i15.i, !prof !20

.lr.ph.i.i.i15.i:                                 ; preds = %bb.e, %bb.f
  %i.bm = phi ptr [ %i.bs, %bb.f ], [ %i.bk, %bb.e ]
  %.02947.i.i.i16.i = phi i32 [ %.029.i.i.i18.i, %bb.f ], [ %.02944.i.i.i14.i, %bb.e ]
  %.02746.i.i.i17.i = phi i32 [ %i.bo, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.bn = icmp eq ptr %i.bm, inttoptr (i64 -8 to ptr)
  br i1 %i.bn, label %.loopexit.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %.lr.ph.i.i.i15.i
  %i.bo = add i32 %.02746.i.i.i17.i, 1
  %i.bp = add i32 %.02746.i.i.i17.i, %.02947.i.i.i16.i
  %.029.i.i.i18.i = and i32 %i.bp, %i.bh          ; 2 uses
  %i.bq = zext i32 %.029.i.i.i18.i to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !120 ; 2 uses
  %i.bt = icmp eq ptr %i.aj, %i.bs
  br i1 %i.bt, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, label %.lr.ph.i.i.i15.i, !prof !22, !llvm.loop !175

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i15.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %i.bv = load i32, ptr %i.ab, align 8, !tbaa !119 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i
  %i.bx = add i32 %i.bv, -1                       ; 2 uses
  %.02944.i.i.i21.i = and i32 %i.bx, %i.aq        ; 2 uses
  %i.by = zext nneg i32 %.02944.i.i.i21.i to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !120 ; 2 uses
  %i.cb = icmp eq ptr %i.aj, %i.ca
  br i1 %i.cb, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit27.i, label %.lr.ph.i.i.i22.i, !prof !20

.lr.ph.i.i.i22.i:                                 ; preds = %bb.g, %bb.h
  %i.cc = phi ptr [ %i.ci, %bb.h ], [ %i.ca, %bb.g ]
  %.02947.i.i.i23.i = phi i32 [ %.029.i.i.i25.i, %bb.h ], [ %.02944.i.i.i21.i, %bb.g ]
  %.02746.i.i.i24.i = phi i32 [ %i.ce, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.cd = icmp eq ptr %i.cc, inttoptr (i64 -8 to ptr)
  br i1 %i.cd, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %.lr.ph.i.i.i22.i
  %i.ce = add i32 %.02746.i.i.i24.i, 1
  %i.cf = add i32 %.02746.i.i.i24.i, %.02947.i.i.i23.i
  %.029.i.i.i25.i = and i32 %i.cf, %i.bx          ; 2 uses
  %i.cg = zext i32 %.029.i.i.i25.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !120 ; 2 uses
  %i.cj = icmp eq ptr %i.aj, %i.ci
  br i1 %i.cj, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit27.i, label %.lr.ph.i.i.i22.i, !prof !22, !llvm.loop !175

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit27.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ck = load ptr, ptr %i.ad, align 8, !tbaa !77
  store ptr %i.ck, ptr %3, align 8, !tbaa !342
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cl = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E15LookupBucketForIS8_EEbRKT_RPKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.cl, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit27.i
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !191 ; 2 uses
  %.not12.i = icmp eq ptr %i.cm, null
  br i1 %.not12.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.cn = load ptr, ptr %i.ad, align 8, !tbaa !77
  store ptr %i.ag, ptr %4, align 8, !tbaa !205
  store ptr %i.cn, ptr %i.i, align 8, !tbaa !212
  store ptr %i.k, ptr %i.j, align 8, !tbaa !71
  store i32 0, ptr %i.l, align 8, !tbaa !72
  store i32 2, ptr %i.m, align 4, !tbaa !73
  %i.co = load i32, ptr %i.ah, align 8, !tbaa !72 ; 2 uses
  %i.cp = load i32, ptr %i.ai, align 4, !tbaa !73
  %.not.i.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i.i, label %bb.l, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
  %.pre.i.i = load i32, ptr %i.ah, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cq = phi i32 [ %.pre.i.i, %bb.k ], [ %i.co, %bb.j ]
  %i.cr = load ptr, ptr %i.af, align 8, !tbaa !71
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.cs ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 16, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !71
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 0, ptr %i.cw, align 8, !tbaa !72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  store i32 2, ptr %i.cx, align 4, !tbaa !73
  %i.cy = load i32, ptr %i.l, align 8, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE9push_backEOS2_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes8VariableEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %i.j) ; 0 uses
  br label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE9push_backEOS2_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE9push_backEOS2_.exit.i: ; preds = %bb.m, %bb.l
  %i.da = load i32, ptr %i.ah, align 8, !tbaa !72
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.ah, align 8, !tbaa !72
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.k
  br i1 %i.dd, label %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE9push_backEOS2_.exit.i
  call void @free(ptr noundef %i.dc) #11
  br label %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i

_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i:         ; preds = %bb.n, %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE9push_backEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !71
  %.val13.i = load i32, ptr %i.ah, align 8, !tbaa !72
  %i.de = zext i32 %.val13.i to i64
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -48 ; 2 uses
  store ptr %i.dg, ptr %i.ae, align 8, !tbaa !191
  br label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i, %bb.i
  %i.dh = phi ptr [ %i.dg, %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i ], [ %i.cm, %bb.i ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !72 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !73
  %.not.i28.i = icmp ult i32 %i.dk, %i.dm
  br i1 %.not.i28.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull %i.dn, i64 noundef 0, i64 noundef 8) #11
  %.pre.i29.i = load i32, ptr %i.dj, align 8, !tbaa !72
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i: ; preds = %bb.p, %bb.o
  %i.do = phi i32 [ %.pre.i29.i, %bb.p ], [ %i.dk, %bb.o ]
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !71
  %i.dq = zext i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  store i64 %i.am, ptr %i.dr, align 1
  %i.ds = load i32, ptr %i.dj, align 8, !tbaa !72
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dj, align 8, !tbaa !72
  br label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i: ; preds = %.lr.ph.i.i.i.i, %bb.f, %.lr.ph.i.i.i22.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit27.i, %.loopexit.i, %bb.e, %.lr.ph.split.i
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.du, %i.g
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_4clEPNS0_9ScopeDescE.exit", label %.lr.ph.split.ithread-pre-split, !llvm.loop !365

"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_4clEPNS0_9ScopeDescE.exit": ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit20.i, %bb.b, %.lr.ph.i
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !71 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !72 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %.idx = shl nuw nsw i64 %i.dz, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx
  %.not143 = icmp eq i32 %i.dy, 0
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_4clEPNS0_9ScopeDescE.exit", %.lr.ph
  %.04 = phi ptr [ %i.ec, %.lr.ph ], [ %i.dw, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_4clEPNS0_9ScopeDescE.exit" ] ; 2 uses
  %i.eb = load ptr, ptr %.04, align 8, !tbaa !225
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_4EEvS3_PNS_9ScopeDescET_"(ptr noundef %0, ptr noundef %i.eb, ptr noundef nonnull byval(%class.anon.156) align 8 %2)
  %i.ec = getelementptr inbounds nuw i8, ptr %.04, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.ec, %i.ea
  br i1 %.not14, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_4clEPNS0_9ScopeDescE.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE4growEm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
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
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = mul nuw nsw i64 %i.r, 48
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #12 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.1, i1 noundef zeroext true) #11
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx = mul nuw nsw i64 %i.y, 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZSt10_ConstructIN12_GLOBAL__N_110StorePointEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aj, %_ZSt10_ConstructIN12_GLOBAL__N_110StorePointEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.t, %_ZN4llvh11safe_mallocEm.exit ] ; 6 uses
  %.sroa.06.08.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructIN12_GLOBAL__N_110StorePointEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.v, %_ZN4llvh11safe_mallocEm.exit ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.08.i.i.i.i, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i32 0, ptr %i.ac, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 28
  store i32 2, ptr %i.ad, align 4, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12_GLOBAL__N_110StorePointEJS1_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i, i64 16
  %i.ah = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes8VariableEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ag) ; 0 uses
  br label %_ZSt10_ConstructIN12_GLOBAL__N_110StorePointEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN12_GLOBAL__N_110StorePointEJS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !366

_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_110StorePointEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !71    ; 3 uses
  %.pre15 = load i32, ptr %i.w, align 8, !tbaa !72 ; 2 uses
  %.not4.i = icmp eq i32 %.pre15, 0
  br i1 %.not4.i, label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit
  %i.ak = zext i32 %.pre15 to i64
  %.idx14 = mul nuw nsw i64 %i.ak, 48
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i
  %.05.i = phi ptr [ %i.am, %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i ], [ %i.al, %.lr.ph.i.preheader ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.05.i, i64 -16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef %i.ao) #11
  br label %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i

_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i:         ; preds = %bb.f, %.lr.ph.i
  %.not.i = icmp eq ptr %.pre, %i.am
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, label %.lr.ph.i, !llvm.loop !194

_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit.loopexit: ; preds = %_ZN12_GLOBAL__N_110StorePointD2Ev.exit.i
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !71
  br label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit

_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit: ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit
  %i.ar = phi ptr [ %.pre16, %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit.loopexit ], [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit ], [ %i.v, %_ZN4llvh11safe_mallocEm.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit
  tail call void @free(ptr noundef %i.ar) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit
  store ptr %i.t, ptr %0, align 8, !tbaa !71
  %i.au = trunc i64 %i.q to i32
  store i32 %i.au, ptr %i.a, align 4, !tbaa !73
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes8VariableEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !71     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #11
  %.pre = load ptr, ptr %1, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  store ptr %i.i, ptr %0, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !3
  store <2 x i32> %i.l, ptr %i.f, align 8, !tbaa !3
  store ptr %i.c, ptr %1, align 8, !tbaa !71
  store i32 0, ptr %i.k, align 4, !tbaa !73
  store i32 0, ptr %i.j, align 8, !tbaa !72
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !72   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.j, label %bb.g

end_hunk_0
