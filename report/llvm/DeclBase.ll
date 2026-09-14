Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeclBase?download=true
inline.NumInlined: 4606
inline.NumDeleted: 2347
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5clang17ExternalASTSource30SetExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameEN4llvm8ArrayRefIPNS_9NamedDeclEEE:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i.i, %_ZN5clang11DeclContext9getParentEv.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %_ZN5clang11DeclContext9getParentEv.exit.i.i.i.i ], [ %.0.i.i.i.i.i, %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i.i ]
  %i.p = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 3 uses
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !432
  br label %_ZN5clang11DeclContext9getParentEv.exit.i.i.i.i

_ZN5clang11DeclContext9getParentEv.exit.i.i.i.i:  ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.y = load i16, ptr %i.x, align 8
  %i.z = and i16 %i.y, 127
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %_ZN5clang11DeclContext9getParentEv.exit.i.i.i.i, %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i.i ], [ %.0.i.i.i.i.i.i, %_ZN5clang11DeclContext9getParentEv.exit.i.i.i.i ]
  %i.ab = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i, i64 -40
  br label %_ZNK5clang11DeclContext19getParentASTContextEv.exit

_ZNK5clang11DeclContext19getParentASTContextEv.exit: ; preds = %bb.a, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ab, %._crit_edge.i.i.i.i ], [ %i.a, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !452, !nonnull !428, !align !429
  %i.ae = load ptr, ptr %0, align 8, !tbaa !709   ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK5clang11DeclContext19getParentASTContextEv.exit
  %i.af = tail call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ag, i8 0, i64 80, i1 false)
  store i32 1, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZNK5clang11DeclContext20CreateStoredDeclsMapERNS_10ASTContextE.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #34 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.ai, i8 0, i64 80, i1 false)
  store i32 1, ptr %i.ai, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store i64 0, ptr %i.aj, align 16
  br label %_ZNK5clang11DeclContext20CreateStoredDeclsMapERNS_10ASTContextE.exit

_ZNK5clang11DeclContext20CreateStoredDeclsMapERNS_10ASTContextE.exit: ; preds = %bb.h, %bb.i
  %i.ak = phi i64 [ 4, %bb.h ], [ 0, %bb.i ]
  %.0.i = phi ptr [ %i.ag, %bb.h ], [ %i.ai, %bb.i ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 23728 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.an = load i64, ptr %i.al, align 8, !tbaa !663
  store i64 %i.an, ptr %i.am, align 8, !tbaa !663
  %i.ao = ptrtoint ptr %.0.i to i64
  %i.ap = or disjoint i64 %i.ak, %i.ao
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !663
  store ptr %.0.i, ptr %0, align 8, !tbaa !709
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang11DeclContext20CreateStoredDeclsMapERNS_10ASTContextE.exit, %_ZNK5clang11DeclContext19getParentASTContextEv.exit
  %.0 = phi ptr [ %i.ae, %_ZNK5clang11DeclContext19getParentASTContextEv.exit ], [ %.0.i, %_ZNK5clang11DeclContext20CreateStoredDeclsMapERNS_10ASTContextE.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = and i16 %i.ar, 512
  %.not13 = icmp eq i16 %i.as, 0
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNK5clang11DeclContext31reconcileExternalVisibleStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang15DeclarationNameENS2_15StoredDeclsListELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %.0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  call void @_ZN5clang15StoredDeclsList20replaceExternalDeclsEN4llvm8ArrayRefIPNS_9NamedDeclEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr %2, i64 %3)
  %.0.copyload.i.i.i.i = load i64, ptr %i.au, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i, -4
  ret i64 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang15StoredDeclsList20replaceExternalDeclsEN4llvm8ArrayRefIPNS_9NamedDeclEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang15StoredDeclsList8erase_ifIZNS0_20replaceExternalDeclsEN4llvm8ArrayRefIPNS_9NamedDeclEEEEUlS5_E_EEPNS2_12PointerUnionIJS5_PNS_12DeclListNodeEEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.b = and i64 %.0.copyload.i.i.i, -3           ; 2 uses
  store i64 %i.b, ptr %0, align 8
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !732    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNK5clang4Decl13getASTContextEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8 ; 3 uses
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !432
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i

_ZN5clang4Decl14getDeclContextEv.exit.i.i.i:      ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, 127
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i, %_ZN5clang11DeclContext9getParentEv.exit.i.i.i
  %.09.i.i.i = phi ptr [ %.0.i.i.i.i.i, %_ZN5clang11DeclContext9getParentEv.exit.i.i.i ], [ %.0.i.i.i.i, %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i ]
  %i.s = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8 ; 3 uses
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.w = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !432
  br label %_ZN5clang11DeclContext9getParentEv.exit.i.i.i

_ZN5clang11DeclContext9getParentEv.exit.i.i.i:    ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.z, %bb.g ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = and i16 %i.ab, 127
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %_ZN5clang11DeclContext9getParentEv.exit.i.i.i, %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i.i, %_ZN5clang4Decl14getDeclContextEv.exit.i.i.i ], [ %.0.i.i.i.i.i, %_ZN5clang11DeclContext9getParentEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i, i64 -40
  br label %_ZNK5clang4Decl13getASTContextEv.exit

_ZNK5clang4Decl13getASTContextEv.exit:            ; preds = %bb.b, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.ae, %._crit_edge.i.i.i ], [ %i.d, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !452, !nonnull !428, !align !429 ; 6 uses
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %2
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !732
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %.033 = add i64 %2, -1                          ; 2 uses
  %.not34 = icmp eq i64 %.033, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang4Decl13getASTContextEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 17760 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 2632 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 2640
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit
  %.0.copyload.i.i.i12.pre = load i64, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK5clang4Decl13getASTContextEv.exit
  %.0.copyload.i.i.i12 = phi i64 [ %i.b, %_ZNK5clang4Decl13getASTContextEv.exit ], [ %.0.copyload.i.i.i12.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.025.0.lcssa = phi i64 [ %i.ak, %_ZNK5clang4Decl13getASTContextEv.exit ], [ %i.bh, %._crit_edge.loopexit ] ; 2 uses
  %i.ao = icmp ugt i64 %.0.copyload.i.i.i12, 7
  br i1 %i.ao, label %bb.n, label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit
  %.037 = phi i64 [ %.033, %.lr.ph ], [ %.0, %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit ] ; 2 uses
  %.0.in36 = phi i64 [ %2, %.lr.ph ], [ %.037, %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit ]
  %.sroa.025.035 = phi i64 [ %i.ak, %.lr.ph ], [ %i.bh, %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit ]
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %.0.in36
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !732 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !731 ; 4 uses
  %.not.not.i = icmp eq ptr %i.as, null
  br i1 %.not.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.at, align 8 ; 2 uses
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i14 = icmp eq i64 %i.au, 0
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i.i, -5
  %i.aw = inttoptr i64 %i.av to ptr
  %.0.i.i.i = select i1 %.not.i.i.i14, ptr null, ptr %i.aw
  store ptr %.0.i.i.i, ptr %i.al, align 8, !tbaa !731
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !730
  store i64 0, ptr %i.at, align 8
  br label %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit

bb.j:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = add i64 %i.ay, 16                       ; 2 uses
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !35
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.l, !prof !36

bb.k:                                             ; preds = %bb.j
  %i.bc = inttoptr i64 %i.az to ptr
  store ptr %i.bc, ptr %i.am, align 8, !tbaa !34
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bd = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 noundef 16, i64 noundef 16, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

_ZnwmRKN5clang10ASTContextEm.exit.i:              ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i15 = phi ptr [ %i.ax, %bb.k ], [ %i.bd, %bb.l ] ; 3 uses
  store ptr %i.ar, ptr %.0.i.i.i.i.i15, align 8, !tbaa !730
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i15, i64 8
  store i64 0, ptr %i.be, align 8
  br label %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit

_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit: ; preds = %bb.i, %_ZnwmRKN5clang10ASTContextEm.exit.i
  %.1.i = phi ptr [ %.0.i.i.i.i.i15, %_ZnwmRKN5clang10ASTContextEm.exit.i ], [ %i.as, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i64 %.sroa.025.035, ptr %i.bf, align 8
  %i.bg = ptrtoint ptr %.1.i to i64
  %i.bh = or i64 %i.bg, 4                         ; 2 uses
  %.0 = add i64 %.037, -1                         ; 2 uses
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !862

bb.m:                                             ; preds = %._crit_edge
  %i.bi = and i64 %.0.copyload.i.i.i12, 3
  %i.bj = or i64 %i.bi, %.sroa.025.0.lcssa
  store i64 %i.bj, ptr %0, align 8
  br label %bb.s

bb.n:                                             ; preds = %._crit_edge
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.bk = and i64 %.0.copyload.i.i.i.i, -5
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 17760 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !731 ; 4 uses
  %.not.not.i17 = icmp eq ptr %i.bn, null
  br i1 %.not.not.i17, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i18 = load i64, ptr %i.bo, align 8 ; 2 uses
  %i.bp = and i64 %.sroa.0.0.copyload.i.i.i.i18, 4
  %.not.i.i.i19 = icmp eq i64 %i.bp, 0
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i18, -5
  %i.br = inttoptr i64 %i.bq to ptr
  %.0.i.i.i20 = select i1 %.not.i.i.i19, ptr null, ptr %i.br
  store ptr %.0.i.i.i20, ptr %i.bm, align 8, !tbaa !731
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !730
  store i64 0, ptr %i.bo, align 8
  br label %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit24

bb.p:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 2632 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, 16                       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 2640
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !35
  %i.by = icmp ult i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.q, label %bb.r, !prof !36

bb.q:                                             ; preds = %bb.p
  %i.bz = inttoptr i64 %i.bv to ptr
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !34
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i22

bb.r:                                             ; preds = %bb.p
  %i.ca = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bs, i64 noundef 16, i64 noundef 16, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i22

_ZnwmRKN5clang10ASTContextEm.exit.i22:            ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i23 = phi ptr [ %i.bt, %bb.q ], [ %i.ca, %bb.r ] ; 3 uses
  store ptr %i.bl, ptr %.0.i.i.i.i.i23, align 8, !tbaa !730
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i23, i64 8
  store i64 0, ptr %i.cb, align 8
  br label %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit24

_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit24: ; preds = %bb.o, %_ZnwmRKN5clang10ASTContextEm.exit.i22
  %.1.i21 = phi ptr [ %.0.i.i.i.i.i23, %_ZnwmRKN5clang10ASTContextEm.exit.i22 ], [ %i.bn, %bb.o ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1.i21, i64 8
  store i64 %.sroa.025.0.lcssa, ptr %i.cc, align 8
  %i.cd = ptrtoint ptr %.1.i21 to i64
  %i.ce = or i64 %i.cd, 4
  store i64 %i.ce, ptr %i.a, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %_ZN5clang10ASTContext20AllocateDeclListNodeEPNS_9NamedDeclE.exit24, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 128
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK5clang11DeclContext35LoadLexicalDeclsFromExternalStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !723
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang11DeclContext11decls_emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 128
  %.not1 = icmp eq i16 %i.c, 0
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK5clang11DeclContext35LoadLexicalDeclsFromExternalStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !723
  %.not = icmp eq ptr %i.f, null
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang11DeclContext12containsDeclEPNS_4DeclE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !661
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

_ZN5clang4Decl21getLexicalDeclContextEv.exit:     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq ptr %.0.i, %0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.j, align 8
  %.not = icmp ult i64 %.0.copyload.i.i.i, 8
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !724
  %i.m = icmp eq ptr %1, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN5clang4Decl21getLexicalDeclContextEv.exit
  %i.n = phi i1 [ false, %_ZN5clang4Decl21getLexicalDeclContextEv.exit ], [ true, %bb.d ], [ %i.m, %bb.e ]
  ret i1 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang11DeclContext19containsDeclAndLoadEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 128
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK5clang11DeclContext35LoadLexicalDeclsFromExternalStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !661
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit.i

_ZN5clang4Decl21getLexicalDeclContextEv.exit.i:   ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.h, %bb.d ], [ %i.l, %bb.e ]
  %i.m = icmp eq ptr %.0.i.i, %0
  br i1 %i.m, label %bb.f, label %_ZNK5clang11DeclContext12containsDeclEPNS_4DeclE.exit

bb.f:                                             ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.n, align 8
  %.not.i = icmp ult i64 %.0.copyload.i.i.i.i, 8
  br i1 %.not.i, label %bb.g, label %_ZNK5clang11DeclContext12containsDeclEPNS_4DeclE.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !724
  %i.q = icmp eq ptr %1, %i.p
  br label %_ZNK5clang11DeclContext12containsDeclEPNS_4DeclE.exit

_ZNK5clang11DeclContext12containsDeclEPNS_4DeclE.exit: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit.i, %bb.f, %bb.g
end_hunk_0
