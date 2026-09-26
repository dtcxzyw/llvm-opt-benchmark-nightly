Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTContext?download=true
inline.NumInlined: 31047
inline.NumDeleted: 11167
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5clang10ASTContext31attachCommentsToJustParsedDeclsEN4llvm8ArrayRefIPNS_4DeclEEEPKNS_12PreprocessorE:bb.a
  %.04897 = phi ptr [ %1, %.lr.ph98 ], [ %i.ch, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKN5clang4DeclEPKNS3_9MacroInfoEEEEPKNS3_10RawCommentENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5countERKSA_.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.04897, align 8, !tbaa !666 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 128
  %.not88 = icmp eq i32 %i.ak, 0
  br i1 %.not88, label %bb.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKN5clang4DeclEPKNS3_9MacroInfoEEEEPKNS3_10RawCommentENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5countERKSA_.exit

bb.i:                                             ; preds = %bb.h
  %i.al = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN5clang20adjustDeclToTemplateERKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33) %i.ah) #28 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 5 uses
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !667, !noalias !1611
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !668, !noalias !1611 ; 2 uses
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !669, !noalias !1611 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit89, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add i32 %i.ap, -1                       ; 2 uses
  %i.as = mul i64 %i.am, -4658895280553007687     ; 2 uses
  %i.at = lshr i64 %i.as, 31
  %i.au = xor i64 %i.at, %i.as
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.ar, %i.av                    ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !517
  %i.bb = and i32 %i.aw, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i.i.i, label %.loopexit89, !prof !670

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %i.be = phi i64 [ %i.bj, %bb.k ], [ %i.ax, %bb.j ]
  %.017.i.i.i = phi i32 [ %i.bi, %bb.k ], [ %i.aw, %bb.j ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.be
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bf, align 8
  %i.bg = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, %i.am
  br i1 %i.bg, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKN5clang4DeclEPKNS3_9MacroInfoEEEEPKNS3_10RawCommentENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5countERKSA_.exit, label %bb.k, !prof !671

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = add nuw i32 %.017.i.i.i, 1
  %i.bi = and i32 %i.bh, %i.ar                    ; 3 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !517
  %i.bn = and i32 %i.bi, 31
  %i.bo = lshr i32 %i.bm, %i.bn
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i.i.i, label %.loopexit89, !prof !672

.loopexit89:                                      ; preds = %bb.k, %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !509, !nonnull !510, !align !511
  call fastcc void @_ZL23getLocsForCommentSearchN4llvm12PointerUnionIJPKN5clang4DeclEPKNS1_9MacroInfoEEEERNS1_13SourceManagerE(ptr dead_on_unwind noalias writable align 8 %4, i64 %i.am, ptr noundef nonnull align 8 dereferenceable(776) %i.bq)
  %i.br = load ptr, ptr %4, align 8, !tbaa !655   ; 2 uses
  %i.bs = load i32, ptr %i.ae, align 8, !tbaa !657 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %.idx100 = shl nuw nsw i64 %i.bt, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx100
  %.not5593 = icmp eq i32 %i.bs, 0
  br i1 %.not5593, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %.loopexit89, %bb.n
  %.04794 = phi ptr [ %i.ce, %bb.n ], [ %i.br, %.loopexit89 ] ; 2 uses
  %i.bv = load i32, ptr %.04794, align 4, !tbaa !517 ; 2 uses
  %or.cond84 = icmp sgt i32 %i.bv, 0
  br i1 %or.cond84, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph95
  %i.bw = call noundef ptr @_ZNK5clang10ASTContext24getRawCommentNoCacheImplEN4llvm12PointerUnionIJPKNS_4DeclEPKNS_9MacroInfoEEEENS_14SourceLocationERKSt3mapIjPNS_10RawCommentESt4lessIjESaISt4pairIKjSD_EEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.am, i32 %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.q) ; 3 uses
  %.not56 = icmp eq ptr %i.bw, null
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNK5clang10ASTContext15cacheRawCommentEN4llvm12PointerUnionIJPKNS_4DeclEPKNS_9MacroInfoEEEERKNS_10RawCommentE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.am, ptr noundef nonnull align 8 dereferenceable(33) %i.bw)
  %i.bx = call noundef ptr @_ZNK5clang10RawComment5parseERKNS_10ASTContextEPKNS_12PreprocessorEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33) %i.bw, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %3, ptr noundef nonnull %i.al) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !660
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(33) %i.al) #28, !inline_history !0
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !666
  %i.cc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph95, %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %.04794, i64 4 ; 2 uses
  %.not55 = icmp eq ptr %i.ce, %i.bu
  br i1 %.not55, label %.loopexit, label %.lr.ph95

.loopexit:                                        ; preds = %bb.n, %.loopexit89, %bb.m
  %i.cf = load ptr, ptr %4, align 8, !tbaa !655   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ag
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.cf) #28
  br label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang14SourceLocationELj2EED2Ev.exit: ; preds = %.loopexit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKN5clang4DeclEPKNS3_9MacroInfoEEEEPKNS3_10RawCommentENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5countERKSA_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKN5clang4DeclEPKNS3_9MacroInfoEEEEPKNS3_10RawCommentENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5countERKSA_.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj2EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.04897, i64 8 ; 2 uses
  %.not53 = icmp eq ptr %i.ch, %i.e
  br i1 %.not53, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.c, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKN5clang4DeclEPKNS3_9MacroInfoEEEEPKNS3_10RawCommentENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E5countERKSA_.exit, %bb.d, %bb.g, %bb.e, %bb.f, %bb.a
  ret void
}

declare noundef ptr @_ZNK5clang10RawComment5parseERKNS_10ASTContextEPKNS_12PreprocessorEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang10ASTContext16cloneFullCommentEPNS_8comments11FullCommentEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !680  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 56                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !681
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !671

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !680
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 56, i64 noundef 56, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr %2, ptr %.0.i.i.i.i, align 8, !tbaa !1614
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 48 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, -2
  store i16 %i.m, ptr %i.k, align 8
  tail call void @_ZN5clang8comments8DeclInfo4fillEv(ptr noundef nonnull align 8 dereferenceable(50) %.0.i.i.i.i) #28
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1620 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1614
  store ptr %i.p, ptr %.0.i.i.i.i, align 8, !tbaa !1614
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1621
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZnwmRKN5clang10ASTContextEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 1
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %bb.e, label %_ZNK5clang8comments11FullComment11getDeclInfoEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5clang8comments8DeclInfo4fillEv(ptr noundef nonnull align 8 dereferenceable(50) %i.o) #28
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !1620
  br label %_ZNK5clang8comments11FullComment11getDeclInfoEv.exit

_ZNK5clang8comments11FullComment11getDeclInfoEv.exit: ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %.pre.i, %bb.e ], [ %i.o, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1621
  store ptr %i.x, ptr %i.q, align 8, !tbaa !1621
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang8comments11FullComment11getDeclInfoEv.exit, %_ZnwmRKN5clang10ASTContextEm.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !680  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.z, 48                        ; 2 uses
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !681
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !671

bb.g:                                             ; preds = %bb.f
  %i.ad = inttoptr i64 %i.aa to ptr
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !680
  br label %_ZnwmRKN5clang10ASTContextEm.exit14

bb.h:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit14

_ZnwmRKN5clang10ASTContextEm.exit14:              ; preds = %bb.g, %bb.h
  %.0.i.i.i.i13 = phi ptr [ %i.y, %bb.g ], [ %i.ae, %bb.h ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !tbaa !1622 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !656 ; 3 uses
  store i32 0, ptr %.0.i.i.i.i13, align 4, !tbaa !517
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13, i64 4 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !517
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13, i64 8
  store i32 0, ptr %i.ah, align 4, !tbaa !517
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13, i64 12
  store i8 6, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.aj, align 8, !tbaa !1622
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13, i64 32
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !656
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i13, i64 40
  store ptr %.0.i.i.i.i, ptr %i.ak, align 8, !tbaa !1620
  %i.al = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.al, label %_ZN5clang8comments11FullCommentC2EN4llvm8ArrayRefIPNS0_19BlockContentCommentEEEPNS0_8DeclInfoE.exit, label %bb.i

bb.i:                                             ; preds = %_ZnwmRKN5clang10ASTContextEm.exit14
  %i.am = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1624
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.an, align 4, !tbaa !517
  %i.ao = getelementptr [8 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1624
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i.i4.i = load i32, ptr %i.ar, align 4, !tbaa !517
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.0.0.copyload.i.i4.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ag, align 4
  %3 = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1624
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.0.0.copyload.i.i5.i = load i32, ptr %4, align 4, !tbaa !517
  store i32 %.sroa.0.0.copyload.i.i5.i, ptr %.0.i.i.i.i13, align 8, !tbaa !517
  br label %_ZN5clang8comments11FullCommentC2EN4llvm8ArrayRefIPNS0_19BlockContentCommentEEEPNS0_8DeclInfoE.exit

_ZN5clang8comments11FullCommentC2EN4llvm8ArrayRefIPNS0_19BlockContentCommentEEEPNS0_8DeclInfoE.exit: ; preds = %_ZnwmRKN5clang10ASTContextEm.exit14, %bb.i
  ret ptr %.0.i.i.i.i13
}

declare void @_ZN5clang8comments8DeclInfo4fillEv(ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang10ASTContext30getLocalCommentForDeclUncachedEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = tail call noundef ptr @_ZNK5clang10ASTContext20getRawCommentNoCacheEN4llvm12PointerUnionIJPKNS_4DeclEPKNS_9MacroInfoEEEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK5clang10RawComment5parseERKNS_10ASTContextEPKNS_12PreprocessorEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef null, ptr noundef %1) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang10ASTContext17getCommentForDeclEPKNS_4DeclEPKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.505", align 8 ; 11 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 128
  %.not322 = icmp eq i32 %i.e, 0
  br i1 %.not322, label %bb.c, label %bb.az

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZN5clang20adjustDeclToTemplateERKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33) %1) #28 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !660
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(33) %i.f) #28, !inline_history !0 ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !666
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18808 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !686, !noalias !1635 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18816
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687, !noalias !1635 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18828
  %i.p = load i32, ptr %i.o, align 4, !tbaa !688, !noalias !1635 ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %i.p, -1                         ; 2 uses
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.r, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !517, !noalias !1636
  %i.ac = and i32 %i.x, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !670

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %i.af = phi i64 [ %i.al, %bb.e ], [ %i.y, %bb.d ]
  %.017.i.i.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.x, %bb.d ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !666, !noalias !1636
  %i.ai = icmp eq ptr %i.j, %i.ah
  br i1 %i.ai, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit, label %bb.e, !prof !671

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = add nuw i32 %.017.i.i.i.i, 1
  %i.ak = and i32 %i.aj, %i.r                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !517, !noalias !1636
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !672

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %i.as = zext i32 %i.p to i64                    ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.as
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.p to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit ], [ %i.as, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ag, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit ], [ %i.at, %.loopexit.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi
  %.not323 = icmp eq ptr %.lcssa.sink.i.i, %i.au
  br i1 %.not323, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit
  %.not212 = icmp eq ptr %i.j, %i.f
  %i.av = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1638 ; 2 uses
  br i1 %.not212, label %bb.ay, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = tail call noundef ptr @_ZNK5clang10ASTContext16cloneFullCommentEPNS_8comments11FullCommentEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.aw, ptr noundef nonnull %i.f)
  br label %bb.ay

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEPNS2_8comments11FullCommentENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !666
  %i.ay = ptrtoint ptr %i.f to i64
  %i.az = call noundef ptr @_ZNK5clang10ASTContext25getRawCommentForAnyRedeclEN4llvm12PointerUnionIJPKNS_4DeclEPKNS_9MacroInfoEEEEPS5_(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.ay, ptr noundef nonnull %i.b) ; 2 uses
  %.not185 = icmp eq ptr %i.az, null
  br i1 %.not185, label %bb.i, label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 127                      ; 4 uses
  switch i32 %i.bc, label %bb.y [
    i32 40, label %bb.j
    i32 39, label %bb.j
    i32 38, label %bb.j
    i32 37, label %bb.j
    i32 36, label %bb.j
    i32 35, label %bb.j
    i32 20, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bd, ptr %3, align 8, !tbaa !655
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.be, align 8, !tbaa !657
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.bf, align 4, !tbaa !662
  %i.bg = load i32, ptr %i.ba, align 4
  %i.bh = and i32 %i.bg, 127
  %.not324 = icmp eq i32 %i.bh, 20
  br i1 %.not324, label %bb.k, label %_ZL20addRedeclaredMethodsPKN5clang14ObjCMethodDeclERN4llvm15SmallVectorImplIPKNS_9NamedDeclEEE.exit

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.bj = load i24, ptr %i.bi, align 8
  %i.bk = and i24 %i.bj, 524288
  %.not325 = icmp eq i24 %i.bk, 0
  br i1 %.not325, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = call noundef ptr @_ZNK5clang14ObjCMethodDecl16findPropertyDeclEb(ptr noundef nonnull align 8 dereferenceable(136) %i.f, i1 noundef zeroext true) #28 ; 2 uses
  %.not208 = icmp eq ptr %i.bl, null
  br i1 %.not208, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = call noundef ptr @_ZNK5clang10ASTContext17getCommentForDeclEPKNS_4DeclEPKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull %i.bl, ptr noundef %2) ; 2 uses
  %.not209 = icmp eq ptr %i.bm, null
  br i1 %.not209, label %.thread, label %.loopexit.sink.split

.thread:                                          ; preds = %bb.m, %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8 ; 3 uses
  %i.bo = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread
  %i.bq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

bb.o:                                             ; preds = %.thread
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !665
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

_ZNK5clang4Decl14getDeclContextEv.exit.i:         ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.bq, %bb.n ], [ %i.bt, %bb.o ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = and i16 %i.bv, 127
  %i.bx = add nsw i16 %i.bw, -25
  %i.by = icmp ult i16 %i.bx, -2
  br i1 %i.by, label %_ZL20addRedeclaredMethodsPKN5clang14ObjCMethodDeclERN4llvm15SmallVectorImplIPKNS_9NamedDeclEEE.exit, label %bb.p

end_hunk_0
