Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Decl?download=true
inline.NumInlined: 7977
inline.NumDeleted: 4496
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5clang7VarDecl18CreateDeserializedERNS_10ASTContextENS_12GlobalDeclIDE:bb.a
  tail call void @_ZN5clang7VarDeclC1ENS_4Decl4KindERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationES7_PKNS_14IdentifierInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassE(ptr noundef nonnull align 8 dereferenceable(100) %i.a, i32 noundef 41, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef null, i32 0, i32 0, ptr noundef null, i64 0, ptr noundef null, i32 noundef 0) #29
  ret ptr %i.a
}

declare noundef ptr @_ZN5clang4DeclnwEmRKNS_10ASTContextENS_12GlobalDeclIDEm(i64 noundef, ptr noundef nonnull align 8 dereferenceable(23904), i64, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang7VarDecl15setStorageClassENS_12StorageClassE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = trunc i32 %1 to i8
  %i.c = load i8, ptr %i.a, align 8
  %i.d = and i8 %i.b, 7
  %i.e = and i8 %i.c, -8
  %i.f = or disjoint i8 %i.e, %i.d
  store i8 %i.f, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK5clang7VarDecl10getTLSKindEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8
  %i.c = lshr i8 %i.b, 3
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %default.unreachable39 [
    i8 0, label %bb.b
    i8 1, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19
    i8 3, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19
    i8 2, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 256
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #29 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !506  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !507  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.idx.i.i = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.n = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !508
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.p = load i16, ptr %i.o, align 4
  %i.q = icmp eq i16 %i.p, 465
  br i1 %i.q, label %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17, label %.lr.ph.i.i.i.i.i, !llvm.loop !840

_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not25 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.m
  br i1 %.not25, label %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17, label %bb.i

_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17: ; preds = %bb.d, %bb.c, %bb.b, %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit
  %i.s = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2600
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 17179869184
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 17712
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !704
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 274
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !841, !range !447, !noundef !34
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.e, align 4
  %i.ae = and i32 %i.ad, 256
  %.not.i1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i1, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #29 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !506 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !507 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx.i.i2 = shl nuw nsw i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i2 ; 2 uses
  %.not.i.i3 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i3, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %.lr.ph.i.i.i.i.i4

.lr.ph.i.i.i.i.i4:                                ; preds = %bb.g, %bb.h
  %.sroa.07.1.i.i.i.i5 = phi ptr [ %i.ap, %bb.h ], [ %i.ag, %bb.g ] ; 3 uses
  %i.al = load ptr, ptr %.sroa.07.1.i.i.i.i5, align 8, !tbaa !508
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = icmp eq i16 %i.an, 318
  br i1 %i.ao, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i5, i64 8 ; 2 uses
  %.not.i.i.i.i.i6 = icmp eq ptr %i.ap, %i.ak
  br i1 %.not.i.i.i.i.i6, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %.lr.ph.i.i.i.i.i4, !llvm.loop !865

_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i4
  %.not26 = icmp eq ptr %.sroa.07.1.i.i.i.i5, %i.ak
  br i1 %.not26, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit, %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit
  %i.aq = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2600
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp ugt i64 %i.au, 816043786239999999
  br i1 %i.av, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.e, align 4
  %i.ax = and i32 %i.aw, 256
  %.not.i8 = icmp eq i32 %i.ax, 0
  br i1 %.not.i8, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #29 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !506 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !507 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.idx.i.i9 = shl nuw nsw i64 %i.bc, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i.i9
  %.fr = freeze ptr %i.bd                         ; 2 uses
  %.not.i.i10 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i10, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %bb.k, %bb.l
  %.sroa.07.1.i.i.i.i12 = phi ptr [ %i.bi, %bb.l ], [ %i.az, %bb.k ] ; 3 uses
  %i.be = load ptr, ptr %.sroa.07.1.i.i.i.i12, align 8, !tbaa !508
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bg = load i16, ptr %i.bf, align 4
  %i.bh = icmp eq i16 %i.bg, 318
  br i1 %i.bh, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit16, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i11
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i12, i64 8 ; 2 uses
  %.not.i.i.i.i.i13 = icmp eq ptr %i.bi, %.fr
  br i1 %.not.i.i.i.i.i13, label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19, label %.lr.ph.i.i.i.i.i11, !llvm.loop !865

_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit16: ; preds = %.lr.ph.i.i.i.i.i11
  %.not27 = icmp eq ptr %.sroa.07.1.i.i.i.i12, %.fr
  %spec.select = select i1 %.not27, i32 1, i32 2
  br label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19

bb.m:                                             ; preds = %bb.a
  br label %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19

default.unreachable39:                            ; preds = %bb.a
  unreachable

_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit.thread19: ; preds = %bb.h, %bb.l, %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit16, %bb.k, %bb.j, %bb.g, %bb.f, %bb.a, %bb.a, %bb.i, %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17, %bb.e, %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit, %bb.m
  %.0 = phi i32 [ 0, %_ZNK5clang4Decl7hasAttrINS_10ThreadAttrEEEbv.exit.thread17 ], [ 2, %bb.m ], [ 0, %bb.g ], [ 0, %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit ], [ 0, %bb.e ], [ 2, %bb.i ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.l ], [ 1, %bb.k ], [ %spec.select, %_ZNK5clang4Decl7hasAttrINS_24OMPThreadPrivateDeclAttrEEEbv.exit16 ], [ 1, %bb.j ], [ 0, %bb.f ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @_ZNK5clang7VarDecl14getSourceRangeEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(100) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.clang::QualType", align 8   ; 5 uses
  %2 = alloca %"class.clang::TypeLoc", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  %.not.i.i.i = icmp eq i32 %i.c, 44
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1536
  switch i32 %i.f, label %bb.c [
    i32 512, label %_ZNK5clang7VarDecl7getInitEv.exit.thread
    i32 1024, label %_ZNK5clang7VarDecl7getInitEv.exit.thread
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.h, 0         ; 3 uses
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i.i = icmp eq i64 %i.i, 0
  %.not12.not.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not12.not16.i.i.i
  br i1 %.not12.not.i.i.i, label %.split.i.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 7
  br i1 %i.j, label %bb.d, label %_ZNK5clang7VarDecl7getInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit.i.i:            ; preds = %bb.c
  %i.k = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !441
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = select i1 %i.n, i1 true, i1 %i.p
  br i1 %i.q, label %.thread.i, label %_ZNK5clang7VarDecl7getInitEv.exit.thread

bb.d:                                             ; preds = %.split.i.i
  %.pre.i.i = inttoptr i64 %i.i to ptr            ; 2 uses
  %.not.not9.i.i = icmp ne i64 %i.i, 0
  %.not.not.not.i.i = and i1 %.not.not9.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.not.not.i.i, label %_ZNK5clang7VarDecl7getInitEv.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i
  %.pre-phi.i4.i = phi ptr [ %.pre.i.i, %bb.d ], [ %i.k, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ]
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %.pre-phi.i4.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8 ; 4 uses
  %3 = load i8, ptr %i.r, align 8, !tbaa !441
  %i.s = trunc i8 %3 to i1
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread.i
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

bb.e:                                             ; preds = %.thread.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 18624
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !867  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !439
  %i.x = getelementptr i8, ptr %i.w, i64 40, !nosanitize !34
  %i.y = load ptr, ptr %i.x, align 8, !nosanitize !34
  %i.z = load i64, ptr %i.r, align 8, !tbaa !723
  %i.aa = lshr i64 %i.z, 1
  %i.ab = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %i.aa) #29, !inline_history !868 ; 2 uses
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7getInitEv.exit:                ; preds = %bb.d, %._crit_edge.i.i.i, %bb.e
  %.1.i.i = phi ptr [ %i.ab, %bb.e ], [ %.pre.i.i, %bb.d ], [ %.pre.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.1.i.i, null
  br i1 %.not, label %_ZNK5clang7VarDecl7getInitEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit
  %i.ac = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.1.i.i) #28 ; 5 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.ae, align 8
  %i.af = icmp ne i32 %i.ac, %.sroa.0.0.copyload.i
  %or.cond = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond, label %.critedge7, label %_ZNK5clang7VarDecl7getInitEv.exit.thread

.critedge7:                                       ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i32, ptr %i.ah, align 8         ; 2 uses
  %i.ai = and i64 %.val.i, 4
  %.not.i.i.i8 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i8, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit, label %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i

_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i: ; preds = %.critedge7
  %i.aj = and i64 %.val.i, -5
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !837
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.sink.split

_ZNK5clang7VarDecl7getInitEv.exit.thread:         ; preds = %bb.b, %bb.b, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i, %.split.i.i, %_ZNK5clang7VarDecl7getInitEv.exit, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ao, align 8, !tbaa !20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8 ; 3 uses
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit.thread
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !713
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i

bb.h:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit.thread
  %i.av = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i: ; preds = %bb.h, %bb.g
  %i.aw = phi ptr [ %i.au, %bb.g ], [ %i.av, %bb.h ] ; 4 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i7.i = load i64, ptr %i.ax, align 8, !tbaa !723
  %.not13.i = icmp eq i64 %.sroa.0.0.copyload.i7.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  br i1 %.not13.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i8.i = load i64, ptr %i.aw, align 8, !tbaa !441
  store i64 %.sroa.0.0.copyload.i8.i, ptr %1, align 8
  %i.ay = call noundef zeroext i1 @_ZNK5clang8QualType26hasPostfixDeclaratorSyntaxEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %i.ay, label %bb.k, label %bb.l

.critedge.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %.sroa.0.0.copyload.i9.i = load i64, ptr %i.aw, align 8, !tbaa !441
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = inttoptr i64 %.sroa.0.0.copyload.i9.i to ptr
  store ptr %i.ba, ptr %2, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.az, ptr %i.bb, align 8
  %i.bc = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #29 ; 0 uses
  %i.bd = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i
  %.sroa.05.0.i = phi i32 [ %i.bd, %bb.k ], [ %.sroa.0.0.copyload.i.i, %bb.j ], [ %.sroa.0.0.copyload.i.i, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i ] ; 3 uses
  %.val.i.i = load i64, ptr %i.ap, align 8        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load i32, ptr %i.be, align 8       ; 2 uses
  %i.bf = and i64 %.val.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit, label %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i

_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i: ; preds = %bb.l
  %i.bg = and i64 %.val.i.i, -5
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !837
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.sink.split

_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.sink.split: ; preds = %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i
  %.sink = phi ptr [ %i.ak, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i ], [ %i.bh, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i ]
  %.sroa.3.1.ph = phi i32 [ %i.ac, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i ], [ %.sroa.05.0.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !838
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !504
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bo, align 8, !tbaa !20
  br label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit

_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit: ; preds = %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.sink.split, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i, %bb.l, %.critedge7, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i
  %.sroa.3.1 = phi i32 [ %.sroa.05.0.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i ], [ %i.ac, %.critedge7 ], [ %i.ac, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i ], [ %.sroa.05.0.i, %bb.l ], [ %.sroa.3.1.ph, %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.sink.split ]
  %.sroa.012.1 = phi i32 [ %.val1.i.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i ], [ %.val1.i, %.critedge7 ], [ %.val1.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i ], [ %.val1.i.i, %bb.l ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.sink.split ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.1 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.012.0.insert.ext = zext i32 %.sroa.012.1 to i64
  %.sroa.012.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.012.0.insert.ext
  ret i64 %.sroa.012.0.insert.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK5clang7VarDecl18getLanguageLinkageEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.clang::LinkageComputer", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  store i32 1, ptr %1, align 8
  %i.a = call i8 @_ZN5clang15LinkageComputer12getLVForDeclEPKNS_9NamedDeclENS_17LVComputationKindE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(100) %0, i32 7)
  %i.b = load i32, ptr %1, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNK5clang9NamedDecl24hasExternalFormalLinkageEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !441  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK5clang9NamedDecl24hasExternalFormalLinkageEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !441
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #29
  br label %_ZNK5clang9NamedDecl24hasExternalFormalLinkageEv.exit.i

_ZNK5clang9NamedDecl24hasExternalFormalLinkageEv.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.o = and i8 %i.a, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  switch i8 %i.o, label %_ZL22getDeclLanguageLinkageIN5clang7VarDeclEENS0_15LanguageLinkageERKT_.exit [
    i8 6, label %bb.d
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK5clang9NamedDecl24hasExternalFormalLinkageEv.exit.i, %_ZNK5clang9NamedDecl24hasExternalFormalLinkageEv.exit.i
  %i.p = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2600
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 4096
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZL22getDeclLanguageLinkageIN5clang7VarDeclEENS0_15LanguageLinkageERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8 ; 3 uses
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !445
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

_ZNK5clang4Decl14getDeclContextEv.exit.i:         ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 127
  %i.ae = add nsw i16 %i.ad, -59
  %spec.select.i.i = icmp ult i16 %i.ae, 4
  br i1 %spec.select.i.i, label %_ZL22getDeclLanguageLinkageIN5clang7VarDeclEENS0_15LanguageLinkageERKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN5clang7VarDecl13getDefinitionERNS_10ASTContextE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(17) ptr @_ZN5clang12RedeclarableINS_7VarDeclEE15redecl_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !881    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8 ; 2 uses
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i.i, 3
  %.not4 = icmp eq i64 %i.c, 0
  br i1 %.not4, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !883, !range !447, !noundef !34
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8, !tbaa !883
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %bb.c ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.a ] ; 3 uses
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i, 1
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i, -2
  %spec.select.i.i.i.i = select i1 %i.h, i64 %i.i, i64 0 ; 3 uses
  %i.j = icmp ugt i64 %spec.select.i.i.i.i, 3
  br i1 %i.j, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %spec.select.i.i.i.i, 2
  %.not.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %spec.select.i.i.i.i, -4
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  br i1 %.not.i.i, label %_ZNK5clang12RedeclarableINS_7VarDeclEE20getNextRedeclarationEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 18624
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !867  ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2632 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !832  ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = add i64 %i.r, 24                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2640
  %i.u = load i64, ptr %i.t, align 8, !tbaa !833
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.i, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.w = inttoptr i64 %i.s to ptr
  store ptr %i.w, ptr %i.p, align 8, !tbaa !832
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %bb.i ], [ %i.r, %bb.h ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.i ], [ %i.q, %bb.h ] ; 3 uses
  store ptr %i.o, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !872
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !874
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.a, ptr %i.z, align 8, !tbaa !875
  %i.aa = or i64 %.pre-phi.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i

bb.k:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %i.a to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.ab, %bb.k ], [ %i.aa, %bb.j ]
  %i.ac = or i64 %.sroa.0.1.i.i.i.i, 1            ; 2 uses
  store i64 %i.ac, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i, %bb.d
  %.0.copyload.i.i.i.i10.i.i = phi i64 [ %i.ac, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ] ; 2 uses
  %i.ad = and i64 %.0.copyload.i.i.i.i10.i.i, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %.0.copyload.i.i.i.i10.i.i, -6  ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %.not.not14.i.i.i = icmp eq i64 %i.ae, 0
  %.not.not.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %.not.not14.i.i.i
  br i1 %.not.not.i.i.i, label %_ZNK5clang12RedeclarableINS_7VarDeclEE20getNextRedeclarationEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !874
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !872 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !876 ; 2 uses
  %.not12.i.i.i = icmp eq i32 %i.ah, %i.ak
  br i1 %.not12.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !874
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !439
  %i.am = getelementptr i8, ptr %i.al, i64 152, !nosanitize !34
  %i.an = load ptr, ptr %i.am, align 8, !nosanitize !34
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull %i.a) #29, !inline_history !884
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !875
  br label %_ZNK5clang12RedeclarableINS_7VarDeclEE20getNextRedeclarationEv.exit

_ZNK5clang12RedeclarableINS_7VarDeclEE20getNextRedeclarationEv.exit: ; preds = %bb.e, %bb.l, %bb.o
  %.3.i.i = phi ptr [ %i.m, %bb.e ], [ %i.ap, %bb.o ], [ %i.af, %bb.l ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !885
  %.not = icmp eq ptr %.3.i.i, %i.ar
  %i.as = select i1 %.not, ptr null, ptr %.3.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_ZNK5clang12RedeclarableINS_7VarDeclEE20getNextRedeclarationEv.exit
  %storemerge = phi ptr [ %i.as, %_ZNK5clang12RedeclarableINS_7VarDeclEE20getNextRedeclarationEv.exit ], [ null, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !881
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK5clang7VarDecl13hasDefinitionERNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.clang::Redeclarable<clang::VarDecl>::redecl_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !699  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.b, ptr %2, align 8, !tbaa !880
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !880
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !446
  %.not1314 = icmp eq ptr %i.b, null
  br i1 %.not1314, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %.015 = phi i32 [ %.sroa.speculated, %bb.b ], [ 0, %bb.a ]
  %i.d = call noundef i32 @_ZNK5clang7VarDecl28isThisDeclarationADefinitionERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %i.c, ptr noundef nonnull align 8 dereferenceable(23904) %1)
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.015, i32 %i.d) ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated, 2
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN5clang12RedeclarableINS_7VarDeclEE15redecl_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(17) %2) ; 0 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !881    ; 2 uses
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.sroa.speculated, %bb.b ], [ 2, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang7VarDecl17getAnyInitializerERPKS0_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
.lr.ph.preheader:
  %2 = alloca %"class.clang::Redeclarable<clang::VarDecl>::redecl_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %0, ptr %2, align 8, !tbaa !880
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !880
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !446
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5clang7VarDecl7getInitEv.exit.thread
  %i.a = phi ptr [ %i.af, %_ZN5clang7VarDecl7getInitEv.exit.thread ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 127
  %.not.i.i = icmp eq i32 %i.d, 44
  br i1 %.not.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 1536
  switch i32 %i.g, label %bb.b [
    i32 512, label %_ZN5clang7VarDecl7getInitEv.exit.thread
    i32 1024, label %_ZN5clang7VarDecl7getInitEv.exit.thread
  ]

bb.b:                                             ; preds = %bb.a, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 8 ; 3 uses
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0           ; 3 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i = icmp eq i64 %i.j, 0
  %.not12.not.i.i = or i1 %.not.i.i.i.i.i, %.not12.not16.i.i
  br i1 %.not12.not.i.i, label %.split.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i

.split.i:                                         ; preds = %bb.b
  %i.k = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 7
  br i1 %i.k, label %bb.c, label %_ZN5clang7VarDecl7getInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit.i:              ; preds = %bb.b
  %i.l = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !441
  %i.o = trunc i8 %i.n to i1
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = icmp ne ptr %i.p, null
  %i.r = select i1 %i.o, i1 true, i1 %i.q
  br i1 %i.r, label %.thread, label %_ZN5clang7VarDecl7getInitEv.exit.thread

bb.c:                                             ; preds = %.split.i
  %.pre.i = inttoptr i64 %i.j to ptr              ; 2 uses
  %.not.not9.i = icmp ne i64 %i.j, 0
  %.not.not.not.i = and i1 %.not.not9.i, %.not.i.i.i.i.i
  br i1 %.not.not.not.i, label %_ZN5clang7VarDecl7getInitEv.exit.thread25, label %.thread

.thread:                                          ; preds = %_ZNK5clang7VarDecl7hasInitEv.exit.i, %bb.c
  %.pre-phi.i21 = phi ptr [ %.pre.i, %bb.c ], [ %i.l, %_ZNK5clang7VarDecl7hasInitEv.exit.i ]
  %.0.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %.pre-phi.i21
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !441
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread
  %.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !866
  br label %_ZN5clang7VarDecl7getInitEv.exit

bb.d:                                             ; preds = %.thread
  %i.v = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %i.a) #28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 18624
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !867  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !439
  %i.z = getelementptr i8, ptr %i.y, i64 40, !nosanitize !34
  %i.aa = load ptr, ptr %i.z, align 8, !nosanitize !34
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !723
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef %i.ac) #29, !inline_history !886 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !866
  br label %_ZN5clang7VarDecl7getInitEv.exit

_ZN5clang7VarDecl7getInitEv.exit:                 ; preds = %._crit_edge.i.i, %bb.d
  %.1.i = phi ptr [ %i.ad, %bb.d ], [ %.pre.i.i, %._crit_edge.i.i ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %_ZN5clang7VarDecl7getInitEv.exit.thread, label %_ZN5clang7VarDecl7getInitEv.exit.thread25

_ZN5clang7VarDecl7getInitEv.exit.thread:          ; preds = %bb.a, %bb.a, %_ZNK5clang7VarDecl7hasInitEv.exit.i, %.split.i, %_ZN5clang7VarDecl7getInitEv.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN5clang12RedeclarableINS_7VarDeclEE15redecl_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(17) %2) ; 0 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !881   ; 2 uses
  %.not37 = icmp eq ptr %i.af, null
  br i1 %.not37, label %._crit_edge, label %.lr.ph

_ZN5clang7VarDecl7getInitEv.exit.thread25:        ; preds = %bb.c, %_ZN5clang7VarDecl7getInitEv.exit
  %.1.i28 = phi ptr [ %.1.i, %_ZN5clang7VarDecl7getInitEv.exit ], [ %.pre.i, %bb.c ]
  store ptr %i.a, ptr %1, align 8, !tbaa !880
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang7VarDecl7getInitEv.exit.thread, %_ZN5clang7VarDecl7getInitEv.exit.thread25
  %i.ag = phi ptr [ %.1.i28, %_ZN5clang7VarDecl7getInitEv.exit.thread25 ], [ null, %_ZN5clang7VarDecl7getInitEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  %.not.i = icmp eq i32 %i.c, 44
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1536
  switch i32 %i.f, label %bb.c [
    i32 512, label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit
    i32 1024, label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -5 ; 3 uses
  %.not12.not16.i = icmp eq i64 %i.i, 0
  %.not12.not.i = or i1 %.not.i.i.i.i, %.not12.not16.i
  br i1 %.not12.not.i, label %.split, label %_ZNK5clang7VarDecl7hasInitEv.exit

.split:                                           ; preds = %bb.c
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i, 7
  br i1 %i.j, label %.split._crit_edge, label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit

.split._crit_edge:                                ; preds = %.split
  %.pre = inttoptr i64 %i.i to ptr
  br label %bb.d

_ZNK5clang7VarDecl7hasInitEv.exit:                ; preds = %bb.c
  %i.k = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !441
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = select i1 %i.n, i1 true, i1 %i.p
  br i1 %i.q, label %bb.d, label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit

bb.d:                                             ; preds = %.split._crit_edge, %_ZNK5clang7VarDecl7hasInitEv.exit
  %.pre-phi = phi ptr [ %.pre, %.split._crit_edge ], [ %i.k, %_ZNK5clang7VarDecl7hasInitEv.exit ] ; 3 uses
  %.not.not9 = icmp ne ptr %.pre-phi, null
  %.not.not.not = and i1 %.not.not9, %.not.i.i.i.i
  br i1 %.not.not.not, label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %.pre-phi
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 4 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !441
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !866
  br label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 18624
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !867  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !439
  %i.y = getelementptr i8, ptr %i.x, i64 40, !nosanitize !34
  %i.z = load ptr, ptr %i.y, align 8, !nosanitize !34
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !723
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef %i.ab) #29, !inline_history !887 ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !866
  br label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit

_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE3getEPS2_.exit: ; preds = %bb.b, %bb.b, %bb.f, %._crit_edge.i, %.split, %bb.d, %_ZNK5clang7VarDecl7hasInitEv.exit
  %.1 = phi ptr [ null, %.split ], [ %.pre-phi, %bb.d ], [ null, %_ZNK5clang7VarDecl7hasInitEv.exit ], [ %i.ac, %bb.f ], [ %.pre.i, %._crit_edge.i ], [ null, %bb.b ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK5clang7VarDecl16getEvaluatedStmtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i, -5
  %i.d = inttoptr i64 %i.c to ptr
  %.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.d
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang7VarDecl14getInitAddressEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %.not.not7 = icmp eq i64 %i.c, 0
  %.not.not = or i1 %.not.i.i.i.i, %.not.not7
  br i1 %.not.not, label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE19getAddressOfPointerEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !441
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE19getAddressOfPointerEPS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 18624
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !867  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.l = getelementptr i8, ptr %i.k, i64 40, !nosanitize !34
  %i.m = load ptr, ptr %i.l, align 8, !nosanitize !34
  %i.n = load i64, ptr %i.e, align 8, !tbaa !723
  %i.o = lshr i64 %i.n, 1
  %i.p = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.o) #29, !inline_history !888
  store ptr %i.p, ptr %i.e, align 8, !tbaa !866
  br label %_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE19getAddressOfPointerEPS2_.exit

_ZNK5clang13LazyOffsetPtrINS_4StmtEmXadL_ZNS_17ExternalASTSource19GetExternalDeclStmtEmEEE19getAddressOfPointerEPS2_.exit: ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7VarDecl26getInitializingDeclarationEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
.lr.ph:
  %1 = alloca %"class.clang::Redeclarable<clang::VarDecl>::redecl_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %0, ptr %1, align 8, !tbaa !880
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !880
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread
  %i.c = phi ptr [ %0, %.lr.ph ], [ %i.aj, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread ] ; 10 uses
  %.01228 = phi ptr [ null, %.lr.ph ], [ %.2, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 127
  %.not.i = icmp eq i32 %i.f, 44
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 1536
  switch i32 %i.i, label %bb.c [
    i32 512, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread
    i32 1024, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 3 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -5 ; 2 uses
  %.not12.not16.i = icmp eq i64 %i.l, 0
  %.not12.not.i = or i1 %.not.i.i.i.i, %.not12.not16.i
  br i1 %.not12.not.i, label %.split, label %_ZNK5clang7VarDecl7hasInitEv.exit

.split:                                           ; preds = %bb.c
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i, 7
  br i1 %i.m, label %.thread, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit:                ; preds = %bb.c
  %i.n = inttoptr i64 %i.l to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !441
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = icmp ne ptr %i.r, null
  %i.t = select i1 %i.q, i1 true, i1 %i.s
  br i1 %i.t, label %.thread, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit.thread:         ; preds = %bb.b, %bb.b, %.split, %_ZNK5clang7VarDecl7hasInitEv.exit
  %i.u = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %i.c) #28
  %i.v = call noundef i32 @_ZNK5clang7VarDecl28isThisDeclarationADefinitionERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %i.c, ptr noundef nonnull align 8 dereferenceable(23904) %i.u)
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang7VarDecl7hasInitEv.exit.thread
  %i.w = load i32, ptr %i.a, align 4
  %i.x = and i32 %i.w, 127
  %.not.i18 = icmp eq i32 %i.x, 44
  br i1 %.not.i18, label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8 ; 3 uses
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !445
  br label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit

_ZNK5clang7VarDecl18isStaticDataMemberEv.exit:    ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = and i16 %i.af, 127
  %i.ah = add nsw i16 %i.ag, -59
  %spec.select.i.i = icmp ult i16 %i.ah, 4
  br i1 %spec.select.i.i, label %.thread, label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread

_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread: ; preds = %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit, %bb.d, %_ZNK5clang7VarDecl7hasInitEv.exit.thread
  %.2 = phi ptr [ %.01228, %_ZNK5clang7VarDecl7hasInitEv.exit.thread ], [ %i.c, %bb.d ], [ %i.c, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit ] ; 2 uses
  %i.ai = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN5clang12RedeclarableINS_7VarDeclEE15redecl_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(17) %1) ; 0 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !881   ; 2 uses
  %.not26 = icmp eq ptr %i.aj, null
  br i1 %.not26, label %.thread, label %bb.a

.thread:                                          ; preds = %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit, %_ZNK5clang7VarDecl7hasInitEv.exit, %.split
  %spec.select.ph = phi ptr [ %.2, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread ], [ %i.c, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit ], [ %i.c, %_ZNK5clang7VarDecl7hasInitEv.exit ], [ %i.c, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret ptr %spec.select.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl22hasInitWithSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  %.not.i = icmp eq i32 %i.c, 44
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1536
  switch i32 %i.f, label %bb.c [
    i32 512, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread
    i32 1024, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 4 uses
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -5 ; 2 uses
  %.not12.not16.i = icmp eq i64 %i.i, 0
  %.not12.not.i = or i1 %.not.i.i.i.i, %.not12.not16.i
  br i1 %.not12.not.i, label %.split, label %_ZNK5clang7VarDecl7hasInitEv.exit

.split:                                           ; preds = %bb.c
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i, 7
  br i1 %i.j, label %bb.d, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit:                ; preds = %bb.c
  %i.k = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !441
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = select i1 %i.n, i1 true, i1 %i.p
  br i1 %i.q, label %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit, label %_ZNK5clang7VarDecl7hasInitEv.exit.thread

bb.d:                                             ; preds = %.split
  %i.r = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2632 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !832  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = add i64 %i.u, 72                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 2640
  %i.x = load i64, ptr %i.w, align 8, !tbaa !833
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.f, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.z = inttoptr i64 %i.v to ptr
  store ptr %i.z, ptr %i.s, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef 72, i64 noundef 72, i8 3) ; 2 uses
  %.pre.i = ptrtoint ptr %i.aa to i64
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

_ZnwmRKN5clang10ASTContextEm.exit.i:              ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %i.u, %bb.e ], [ %.pre.i, %bb.f ]
  %.0.i.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.aa, %bb.f ] ; 5 uses
  store i8 0, ptr %.0.i.i.i.i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !889
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 20 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -2
  store i8 %i.af, ptr %i.ad, align 4
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.ag = and i64 %.0.copyload.i.i.i.i.i, -5
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !866
  %i.ai = or i64 %.pre-phi.i, 4                   ; 2 uses
  store i64 %i.ai, ptr %i.g, align 8
  br label %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit

_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit:   ; preds = %_ZNK5clang7VarDecl7hasInitEv.exit, %_ZnwmRKN5clang10ASTContextEm.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZnwmRKN5clang10ASTContextEm.exit.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_ZNK5clang7VarDecl7hasInitEv.exit ] ; 2 uses
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i ], [ %i.k, %_ZNK5clang7VarDecl7hasInitEv.exit ] ; 3 uses
  %i.aj = load i8, ptr %.0.i, align 8             ; 2 uses
  %.not = icmp sgt i8 %i.aj, -1
  br i1 %.not, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 2 uses
  %.not12.not16.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not12.not16.i.i.i, label %.split.i.i, label %.thread.i

.split.i.i:                                       ; preds = %bb.g
  %i.al = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 7
  tail call void @llvm.assume(i1 %i.al)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %.split.i.i
  %.pre-phi.i4.i = inttoptr i64 %i.ak to ptr
  %1 = getelementptr inbounds nuw i8, ptr %.pre-phi.i4.i, i64 8 ; 4 uses
  %2 = load i8, ptr %1, align 8, !tbaa !441
  %i.am = trunc i8 %2 to i1
  br i1 %i.am, label %bb.h, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

bb.h:                                             ; preds = %.thread.i
  %i.an = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 18624
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !867 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !439
  %i.ar = getelementptr i8, ptr %i.aq, i64 40, !nosanitize !34
  %i.as = load ptr, ptr %i.ar, align 8, !nosanitize !34
  %i.at = load i64, ptr %1, align 8, !tbaa !723
  %i.au = lshr i64 %i.at, 1
  %i.av = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef %i.au) #29, !inline_history !868 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7getInitEv.exit:                ; preds = %._crit_edge.i.i.i, %bb.h
  %.1.i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.av, %bb.h ] ; 2 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.ax = tail call noundef zeroext i1 @_ZNK5clang4Expr14HasSideEffectsERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.aw, i1 noundef zeroext true) #29
  br i1 %i.ax, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit
  %i.ay = load i24, ptr %.1.i.i, align 8
  %i.az = and i24 %i.ay, 131072
  %.not15.a = icmp eq i24 %i.az, 0
  br i1 %.not15.a, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.ba, align 8, !tbaa !441
  %i.bb = and i64 %.sroa.0.0.copyload.i, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !487
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 17
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = and i16 %i.bf, 4
  %.not16 = icmp eq i16 %i.bg, 0
  br i1 %.not16, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br i1 %i.bh, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2600
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 4096
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load i32, ptr %i.a, align 4
  %i.bo = and i32 %i.bn, 127
  %i.bp = icmp ne i32 %i.bo, 44
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = icmp slt i16 %i.br, 0
  %i.bt = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %i.bt, label %bb.n, label %_ZNK5clang7VarDecl13evaluateValueEv.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 2 uses
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp ne i64 %i.bu, 0
  %i.bv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %.not67.i.i = icmp ne i64 %i.bv, 0
  %.not6.not.not.i.i = and i1 %.not.i.i.i.i.i, %.not67.i.i
  br i1 %.not6.not.not.i.i, label %bb.o, label %_ZNK5clang7VarDecl13evaluateValueEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load i8, ptr %i.bw, align 8
  %i.by = and i8 %i.bx, 4
  %i.bz = icmp ne i8 %i.by, 0
  br label %_ZNK5clang7VarDecl13evaluateValueEv.exit

_ZNK5clang7VarDecl13evaluateValueEv.exit:         ; preds = %bb.m, %bb.n, %bb.o
  %.1.i.i13 = phi i1 [ true, %bb.m ], [ %i.bz, %bb.o ], [ false, %bb.n ]
  %i.ca = tail call noundef ptr @_ZNK5clang7VarDecl17evaluateValueImplEPN4llvm15SmallVectorImplISt4pairINS_14SourceLocationENS_17PartialDiagnosticEEEEb(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef null, i1 noundef zeroext %.1.i.i13)
  %.not8 = icmp eq ptr %i.ca, null
  %i.cb = select i1 %.not8, i8 -64, i8 -128
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.j, %_ZNK5clang7VarDecl13evaluateValueEv.exit, %_ZNK5clang7VarDecl7getInitEv.exit
  %i.cc = phi i8 [ -128, %_ZNK5clang7VarDecl7getInitEv.exit ], [ -64, %bb.j ], [ -64, %bb.i ], [ %i.cb, %_ZNK5clang7VarDecl13evaluateValueEv.exit ]
  %i.cd = load i8, ptr %.0.i, align 8
  %i.ce = and i8 %i.cd, 63
  %i.cf = or disjoint i8 %i.cc, %i.ce             ; 2 uses
  store i8 %i.cf, ptr %.0.i, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit
  %i.cg = phi i8 [ %i.cf, %bb.p ], [ %i.aj, %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit ]
  %i.ch = and i8 %i.cg, 64
  %i.ci = icmp ne i8 %i.ch, 0
  br label %_ZNK5clang7VarDecl7hasInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit.thread:         ; preds = %bb.b, %bb.b, %.split, %_ZNK5clang7VarDecl7hasInitEv.exit, %bb.q
  %.0 = phi i1 [ %i.ci, %bb.q ], [ false, %_ZNK5clang7VarDecl7hasInitEv.exit ], [ false, %.split ], [ false, %bb.b ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang7VarDecl19ensureEvaluatedStmtEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i, -5    ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.not6 = icmp eq i64 %i.c, 0
  %.not = or i1 %.not.i.i, %.not6
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2632 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !832  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = add i64 %i.h, 72                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2640
  %i.k = load i64, ptr %i.j, align 8, !tbaa !833
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.i to ptr
  store ptr %i.m, ptr %i.f, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 72, i64 noundef 72, i8 3) ; 2 uses
  %.pre = ptrtoint ptr %i.n to i64
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.c, %bb.d
  %.pre-phi = phi i64 [ %i.h, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.n, %bb.d ] ; 5 uses
  store i8 0, ptr %.0.i.i.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !889
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 4
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i, -5
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.o, align 8, !tbaa !866
  %i.v = or i64 %.pre-phi, 4
  store i64 %i.v, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZnwmRKN5clang10ASTContextEm.exit, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %.0.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZNK5clang4Expr14HasSideEffectsERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang7VarDecl13evaluateValueEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4096
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 127
  %i.j = icmp ne i32 %i.i, 44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i16, ptr %i.k, align 8
  %i.m = icmp slt i16 %i.l, 0
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.d, label %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8 ; 2 uses
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -5 ; 2 uses
  %.not67.i = icmp ne i64 %i.q, 0
  %.not6.not.not.i = and i1 %.not.i.i.i.i, %.not67.i
  br i1 %.not6.not.not.i, label %bb.e, label %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit

bb.e:                                             ; preds = %bb.d
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 4
  %i.u = icmp ne i8 %i.t, 0
  br label %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit

_ZNK5clang7VarDecl25hasConstantInitializationEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi i1 [ true, %bb.c ], [ %i.u, %bb.e ], [ false, %bb.d ]
  %i.v = tail call noundef ptr @_ZNK5clang7VarDecl17evaluateValueImplEPN4llvm15SmallVectorImplISt4pairINS_14SourceLocationENS_17PartialDiagnosticEEEEb(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef null, i1 noundef zeroext %.1.i)
  ret ptr %i.v
}
end_hunk_1
begin_hunk_2_@_ZNK5clang9ValueDecl6isWeakEv:bb.a
  ret i1 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl29isUsableInConstantExpressionsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.a, align 8, !tbaa !880
  %i.b = call noundef ptr @_ZNK5clang7VarDecl17getAnyInitializerERPKS0_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i24, ptr %i.b, align 8
  %i.d = and i24 %i.c, 131072
  %.not19 = icmp eq i24 %i.d, 0
  br i1 %.not19, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !441
  %i.f = and i64 %.sroa.0.0.copyload.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !487
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %i.j = load i16, ptr %i.i, align 1
  %i.k = and i16 %i.j, 4
  %.not20 = icmp eq i16 %i.k, 0
  br i1 %.not20, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !880  ; 7 uses
  %i.m = tail call noundef zeroext i1 @_ZNK5clang7VarDecl34mightBeUsableInConstantExpressionsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %i.l, ptr noundef nonnull align 8 dereferenceable(23904) %1)
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2600 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 4096
  %.not11 = icmp eq i64 %i.q, 0
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang4Decl11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 8
  %.not12 = icmp eq i64 %i.t, 0
  br i1 %.not12, label %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %i.l)
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %i.l) #28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2600
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 4096
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 127
  %i.ad = icmp ne i32 %i.ac, 44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.j, label %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ai, align 8 ; 2 uses
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -5 ; 2 uses
  %.not67.i = icmp ne i64 %i.ak, 0
  %.not6.not.not.i = and i1 %.not.i.i.i.i, %.not67.i
  br i1 %.not6.not.not.i, label %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit, label %.critedge

_ZNK5clang7VarDecl25hasConstantInitializationEv.exit: ; preds = %bb.j
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 4
  %.not21 = icmp eq i8 %i.an, 0
  br i1 %.not21, label %.critedge, label %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit.thread

_ZNK5clang7VarDecl25hasConstantInitializationEv.exit.thread: ; preds = %bb.i, %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit, %bb.f
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !577, !nonnull !34, !align !35 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = and i64 %i.ap, 4096
  %.not13 = icmp eq i64 %i.aq, 0
  br i1 %.not13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, 4611686018427387904
  %.not14 = icmp ne i64 %i.at, 0
  %i.au = and i64 %i.ap, 8192
  %.not15 = icmp eq i64 %i.au, 0
  %or.cond = and i1 %.not15, %.not14
  br i1 %or.cond, label %bb.m, label %bb.n

bb.l:                                             ; preds = %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit.thread
  %.old = and i64 %i.ap, 8192
  %.not15.old = icmp eq i64 %.old, 0
  br i1 %.not15.old, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.av = tail call noundef zeroext i1 @_ZNK5clang7VarDecl17hasICEInitializerERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %i.l, ptr noundef nonnull align 8 dereferenceable(23904) %1)
  br i1 %i.av, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.b, %bb.a, %bb.m, %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit, %bb.d, %bb.c, %bb.n
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.n ], [ false, %_ZNK5clang7VarDecl25hasConstantInitializationEv.exit ], [ false, %bb.d ], [ false, %bb.m ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang4Decl11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl25hasConstantInitializationEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4096
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 127
  %i.j = icmp ne i32 %i.i, 44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i16, ptr %i.k, align 8
  %i.m = icmp slt i16 %i.l, 0
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8 ; 2 uses
  %i.p = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i = icmp ne i64 %i.p, 0
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %.not67 = icmp ne i64 %i.q, 0
  %.not6.not.not = and i1 %.not.i.i.i, %.not67
  br i1 %.not6.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 4
  %i.u = icmp ne i8 %i.t, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ %i.u, %bb.e ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl17hasICEInitializerERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  %.not.i.i.i = icmp eq i32 %i.c, 44
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1536
  switch i32 %i.f, label %bb.c [
    i32 512, label %_ZNK5clang7VarDecl7getInitEv.exit
    i32 1024, label %_ZNK5clang7VarDecl7getInitEv.exit
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.h, 0         ; 3 uses
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i.i = icmp eq i64 %i.i, 0
  %.not12.not.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not12.not16.i.i.i
  br i1 %.not12.not.i.i.i, label %.split.i.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 7
  br i1 %i.j, label %bb.d, label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7hasInitEv.exit.i.i:            ; preds = %bb.c
  %i.k = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !441
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = select i1 %i.n, i1 true, i1 %i.p
  br i1 %i.q, label %.thread.i, label %_ZNK5clang7VarDecl7getInitEv.exit

bb.d:                                             ; preds = %.split.i.i
  %.pre.i.i = inttoptr i64 %i.i to ptr            ; 2 uses
  %.not.not9.i.i = icmp ne i64 %i.i, 0
  %.not.not.not.i.i = and i1 %.not.not9.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.not.not.i.i, label %_ZNK5clang7VarDecl7getInitEv.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i
  %.pre-phi.i4.i = phi ptr [ %.pre.i.i, %bb.d ], [ %i.k, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ]
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %.pre-phi.i4.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8 ; 4 uses
  %2 = load i8, ptr %i.r, align 8, !tbaa !441
  %i.s = trunc i8 %2 to i1
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread.i
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

bb.e:                                             ; preds = %.thread.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 18624
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !867  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !439
  %i.x = getelementptr i8, ptr %i.w, i64 40, !nosanitize !34
  %i.y = load ptr, ptr %i.x, align 8, !nosanitize !34
  %i.z = load i64, ptr %i.r, align 8, !tbaa !723
  %i.aa = lshr i64 %i.z, 1
  %i.ab = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %i.aa) #29, !inline_history !868 ; 2 uses
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7getInitEv.exit:                ; preds = %bb.b, %bb.b, %.split.i.i, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i, %bb.d, %._crit_edge.i.i.i, %bb.e
  %.1.i.i = phi ptr [ null, %.split.i.i ], [ %.pre.i.i, %bb.d ], [ null, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ], [ %i.ab, %bb.e ], [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ null, %bb.b ], [ null, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 8 ; 2 uses
  %i.ad = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i7 = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i, -5 ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %.not6.i = icmp eq i64 %i.ae, 0
  %.not.i = or i1 %.not.i.i.i7, %.not6.i
  br i1 %.not.i, label %bb.f, label %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit

bb.f:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2632 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !832 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = add i64 %i.aj, 72                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 2640
  %i.am = load i64, ptr %i.al, align 8, !tbaa !833
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %bb.h, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.ao = inttoptr i64 %i.ak to ptr
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ap = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i64 noundef 72, i64 noundef 72, i8 3) ; 2 uses
  %.pre.i = ptrtoint ptr %i.ap to i64
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

_ZnwmRKN5clang10ASTContextEm.exit.i:              ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %i.aj, %bb.g ], [ %.pre.i, %bb.h ]
  %.0.i.i.i.i.i8 = phi ptr [ %i.ai, %bb.g ], [ %i.ap, %bb.h ] ; 5 uses
  store i8 0, ptr %.0.i.i.i.i.i8, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i8, i64 8 ; 2 uses
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i8, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !889
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i8, i64 20 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, -2
  store i8 %i.au, ptr %i.as, align 4
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i.i, -5
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !866
  %i.ax = or i64 %.pre-phi.i, 4
  store i64 %i.ax, ptr %i.ac, align 8
  br label %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit

_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit:   ; preds = %_ZNK5clang7VarDecl7getInitEv.exit, %_ZnwmRKN5clang10ASTContextEm.exit.i
  %.0.i = phi ptr [ %i.af, %_ZNK5clang7VarDecl7getInitEv.exit ], [ %.0.i.i.i.i.i8, %_ZnwmRKN5clang10ASTContextEm.exit.i ] ; 4 uses
  %i.ay = load i8, ptr %.0.i, align 8             ; 3 uses
  %i.az = and i8 %i.ay, 32
  %.not = icmp eq i8 %i.az, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit
  %i.ba = or disjoint i8 %i.ay, 32
  store i8 %i.ba, ptr %.0.i, align 8
  %i.bb = tail call noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1) #29
  %i.bc = load i8, ptr %.0.i, align 8
  %i.bd = select i1 %i.bb, i8 16, i8 0
  %i.be = and i8 %i.bc, -17
  %i.bf = or disjoint i8 %i.be, %i.bd             ; 2 uses
  store i8 %i.bf, ptr %.0.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit
  %i.bg = phi i8 [ %i.bf, %bb.i ], [ %i.ay, %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit ]
  %i.bh = and i8 %i.bg, 16
  %i.bi = icmp ne i8 %i.bh, 0
  ret i1 %i.bi
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang7VarDecl17evaluateValueImplEPN4llvm15SmallVectorImplISt4pairINS_14SourceLocationENS_17PartialDiagnosticEEEEb(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 9 uses
  %4 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.not6.i = icmp eq i64 %i.c, 0
  %.not.i = or i1 %.not.i.i.i, %.not6.i
  br i1 %.not.i, label %bb.b, label %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2632 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !832  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = add i64 %i.h, 72                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2640
  %i.k = load i64, ptr %i.j, align 8, !tbaa !833
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.i to ptr
  store ptr %i.m, ptr %i.f, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 72, i64 noundef 72, i8 3) ; 2 uses
  %.pre.i = ptrtoint ptr %i.n to i64
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

_ZnwmRKN5clang10ASTContextEm.exit.i:              ; preds = %bb.d, %bb.c
  %.pre-phi.i = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %.0.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.n, %bb.d ] ; 5 uses
  store i8 0, ptr %.0.i.i.i.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !889
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 20 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 4
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i, -5
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.o, align 8, !tbaa !866
  %i.v = or i64 %.pre-phi.i, 4                    ; 2 uses
  store i64 %i.v, ptr %i.a, align 8
  br label %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit

_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit:   ; preds = %bb.a, %_ZnwmRKN5clang10ASTContextEm.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.a ], [ %i.v, %_ZnwmRKN5clang10ASTContextEm.exit.i ] ; 3 uses
  %.0.i = phi ptr [ %i.d, %bb.a ], [ %.0.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 127
  %.not.i.i.i31 = icmp eq i32 %i.y, 44
  br i1 %.not.i.i.i31, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 1536
  switch i32 %i.ab, label %bb.f [
    i32 512, label %_ZNK5clang7VarDecl7getInitEv.exit
    i32 1024, label %_ZNK5clang7VarDecl7getInitEv.exit
  ]

bb.f:                                             ; preds = %bb.e, %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ac, 0        ; 3 uses
  %i.ad = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i.i = icmp eq i64 %i.ad, 0
  %.not12.not.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not12.not16.i.i.i
  br i1 %.not12.not.i.i.i, label %.split.i.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i.i

.split.i.i:                                       ; preds = %bb.f
  %i.ae = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 7
  br i1 %i.ae, label %bb.g, label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7hasInitEv.exit.i.i:            ; preds = %bb.f
  %i.af = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !441
  %i.ai = trunc i8 %i.ah to i1
  %i.aj = load ptr, ptr %i.ag, align 8
  %i.ak = icmp ne ptr %i.aj, null
  %i.al = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %i.al, label %.thread.i, label %_ZNK5clang7VarDecl7getInitEv.exit

bb.g:                                             ; preds = %.split.i.i
  %.pre.i.i = inttoptr i64 %i.ad to ptr           ; 2 uses
  %.not.not9.i.i = icmp ne i64 %i.ad, 0
  %.not.not.not.i.i = and i1 %.not.not9.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.not.not.i.i, label %_ZNK5clang7VarDecl7getInitEv.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i
  %.pre-phi.i4.i = phi ptr [ %.pre.i.i, %bb.g ], [ %i.af, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ]
  %.0.i.i.i.i.i32 = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %.pre-phi.i4.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i32, i64 8 ; 4 uses
  %5 = load i8, ptr %i.am, align 8, !tbaa !441
  %i.an = trunc i8 %5 to i1
  br i1 %i.an, label %bb.h, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread.i
  %.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

bb.h:                                             ; preds = %.thread.i
  %i.ao = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 18624
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !867 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !439
  %i.as = getelementptr i8, ptr %i.ar, i64 40, !nosanitize !34
  %i.at = load ptr, ptr %i.as, align 8, !nosanitize !34
  %i.au = load i64, ptr %i.am, align 8, !tbaa !723
  %i.av = lshr i64 %i.au, 1
  %i.aw = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %i.av) #29, !inline_history !868 ; 2 uses
  store ptr %i.aw, ptr %i.am, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7getInitEv.exit:                ; preds = %bb.e, %bb.e, %.split.i.i, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i, %bb.g, %._crit_edge.i.i.i, %bb.h
  %.1.i.i = phi ptr [ null, %.split.i.i ], [ %.pre.i.i, %bb.g ], [ null, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ], [ %i.aw, %bb.h ], [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ null, %bb.e ], [ null, %bb.e ]
  %i.ax = load i8, ptr %.0.i, align 8             ; 3 uses
  %i.ay = and i8 %i.ax, 1
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !889
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = select i1 %i.bb, ptr null, ptr %i.az
  br label %bb.v

bb.j:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit
  %i.bd = and i8 %i.ax, 2
  %.not26 = icmp eq i8 %i.bd, 0
  br i1 %.not26, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.be = or disjoint i8 %i.ax, 2
  store i8 %i.be, ptr %.0.i, align 8
  %i.bf = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 0, ptr %3, align 8, !tbaa !896
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !899
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  store i8 0, ptr %i.bh, align 2, !tbaa !900
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !889
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bk, align 4
  store ptr %1, ptr %i.bi, align 8, !tbaa !901
  %i.bn = call noundef zeroext i1 @_ZNK5clang4Expr21EvaluateAsInitializerERKNS_10ASTContextEPKNS_7VarDeclERNS0_10EvalResultEb(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.bf, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(72) %3, i1 noundef zeroext %2) #29 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 6 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #29 ; 0 uses
  br i1 %2, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 2600
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = and i64 %i.bs, 4096
  %.not27 = icmp eq i64 %i.bt, 0
  br i1 %.not27, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %i.w, align 4
  %i.bv = and i32 %i.bu, 127
  %i.bw = icmp ne i32 %i.bv, 44
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = icmp slt i16 %i.by, 0
  %i.ca = select i1 %i.bw, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cb = and i64 %i.bs, 8
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = load i8, ptr %i.bh, align 2, !range !447
  %i.ce = trunc nuw i8 %i.cd to i1
  %or.cond = select i1 %i.cc, i1 %i.ce, i1 false
  %.not29 = xor i1 %i.bn, true
  %brmerge30 = or i1 %or.cond, %.not29
  br i1 %brmerge30, label %.critedge, label %bb.r

bb.o:                                             ; preds = %bb.l
  %.old1 = load i8, ptr %i.bh, align 2, !tbaa !900, !range !447, !noundef !34
  %.old2 = trunc nuw i8 %.old1 to i1
  %.not28 = xor i1 %i.bn, true
  %brmerge = or i1 %.not28, %.old2
  br i1 %brmerge, label %.critedge, label %bb.r

bb.p:                                             ; preds = %bb.m, %bb.k
  br i1 %i.bn, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 0, ptr %4, align 8, !tbaa !889
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4
  %i.ch = and i8 %i.cg, -2
  store i8 %i.ch, ptr %i.cf, align 4
  %i.ci = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %4) #29 ; 0 uses
  %i.cj = load i32, ptr %4, align 8, !tbaa !889
  %switch.i = icmp ult i32 %i.cj, 2
  br i1 %switch.i, label %_ZN5clang7APValueD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #29
  br label %_ZN5clang7APValueD2Ev.exit

_ZN5clang7APValueD2Ev.exit:                       ; preds = %.critedge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.ck = call noundef zeroext i1 @_ZNK5clang7APValue12needsCleanupEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bo) #29
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZNK5clang10ASTContext15AddDeallocationEPFvPvES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.bf, ptr noundef nonnull @_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENUlPvE_8__invokeES5_, ptr noundef nonnull %i.bo) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %_ZN5clang7APValueD2Ev.exit
  %i.cl = phi ptr [ %i.bo, %bb.r ], [ %i.bo, %bb.s ], [ null, %_ZN5clang7APValueD2Ev.exit ]
  %i.cm = load i8, ptr %.0.i, align 8
  %i.cn = and i8 %i.cm, -4
  %i.co = or disjoint i8 %i.cn, 1
  store i8 %i.co, ptr %.0.i, align 8
  %i.cp = load i32, ptr %i.bj, align 8, !tbaa !889
  %switch.i.i = icmp ult i32 %i.cp, 2
  br i1 %switch.i.i, label %_ZN5clang4Expr10EvalResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #29
  br label %_ZN5clang4Expr10EvalResultD2Ev.exit

_ZN5clang4Expr10EvalResultD2Ev.exit:              ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.j, %_ZN5clang4Expr10EvalResultD2Ev.exit, %bb.i
  %.025 = phi ptr [ %i.bc, %bb.i ], [ %i.cl, %_ZN5clang4Expr10EvalResultD2Ev.exit ], [ null, %bb.j ]
  ret ptr %.025
}

declare noundef zeroext i1 @_ZNK5clang4Expr21EvaluateAsInitializerERKNS_10ASTContextEPKNS_7VarDeclERNS0_10EvalResultEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK5clang7APValue12needsCleanupEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK5clang7VarDecl17getEvaluatedValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.not11 = icmp eq i64 %i.c, 0
  %.not = or i1 %.not.i.i.i, %.not11
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not8 = icmp eq i8 %i.f, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !889
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %i.g, %bb.c ]
  ret ptr %i.j
}

declare noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl30checkForConstantInitializationERN4llvm15SmallVectorImplISt4pairINS_14SourceLocationENS_17PartialDiagnosticEEEE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %.not6.i = icmp eq i64 %i.c, 0
  %.not.i = or i1 %.not.i.i.i, %.not6.i
  br i1 %.not.i, label %bb.b, label %_ZNK5clang7VarDecl19ensureEvaluatedStmtEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2632 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !832  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = add i64 %i.h, 72                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2640
  %i.k = load i64, ptr %i.j, align 8, !tbaa !833
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.i to ptr
  store ptr %i.m, ptr %i.f, align 8, !tbaa !832
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i

bb.d:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZNK5clang7VarDecl18isKnownToBeDefinedEv:bb.a
  %.015.i.i = phi i32 [ %.sroa.speculated.i.i, %bb.h ], [ 0, %.critedge ]
  %i.al = call noundef i32 @_ZNK5clang7VarDecl28isThisDeclarationADefinitionERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(23904) %i.ah)
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %.015.i.i, i32 %i.al) ; 3 uses
  %.not.i.i5 = icmp eq i32 %.sroa.speculated.i.i, 2
  br i1 %.not.i.i5, label %_ZNK5clang7VarDecl13hasDefinitionEv.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.am = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN5clang12RedeclarableINS_7VarDeclEE15redecl_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(17) %1) ; 0 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !881   ; 2 uses
  %.not13.i.i = icmp eq ptr %i.an, null
  br i1 %.not13.i.i, label %_ZNK5clang7VarDecl13hasDefinitionEv.exit.loopexit, label %.lr.ph.i.i

_ZNK5clang7VarDecl13hasDefinitionEv.exit.loopexit: ; preds = %bb.h, %.lr.ph.i.i
  %i.ao = icmp ne i32 %.sroa.speculated.i.i, 0
  br label %_ZNK5clang7VarDecl13hasDefinitionEv.exit

_ZNK5clang7VarDecl13hasDefinitionEv.exit:         ; preds = %_ZNK5clang7VarDecl13hasDefinitionEv.exit.loopexit, %.critedge
  %.1.i.i = phi i1 [ false, %.critedge ], [ %i.ao, %_ZNK5clang7VarDecl13hasDefinitionEv.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_ZNK5clang7VarDecl13hasDefinitionEv.exit
  %.0 = phi i1 [ %.1.i.i, %_ZNK5clang7VarDecl13hasDefinitionEv.exit ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl11isNoDestroyERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 256
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit.thread12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #29 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !506  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !507  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit.thread12, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !508
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i16, ptr %i.l, align 4
  %i.n = icmp eq i16 %i.m, 291
  br i1 %i.n, label %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit.thread12, label %.lr.ph.i.i.i.i.i, !llvm.loop !910

_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.j
  br i1 %.not, label %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit.thread12, label %bb.h

_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit.thread12: ; preds = %bb.d, %bb.c, %bb.b, %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit
  %i.p = load i32, ptr %i.b, align 4
  %i.q = and i32 %i.p, 256
  %.not.i5 = icmp eq i32 %i.q, 0
  br i1 %.not.i5, label %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit.thread12
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #29 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !506  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !507  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i6 = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i6 ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i7, label %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14, label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %bb.e, %bb.f
  %.sroa.07.1.i.i.i.i9 = phi ptr [ %i.ab, %bb.f ], [ %i.s, %bb.e ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.07.1.i.i.i.i9, align 8, !tbaa !508
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = icmp eq i16 %i.z, 137
  br i1 %i.aa, label %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i9, i64 8 ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ab, %i.w
  br i1 %.not.i.i.i.i.i10, label %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14, label %.lr.ph.i.i.i.i.i8, !llvm.loop !911

_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i8
  %.not16 = icmp eq ptr %.sroa.07.1.i.i.i.i9, %i.w
  br i1 %.not16, label %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14, label %bb.h

_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14: ; preds = %bb.f, %bb.e, %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit.thread12, %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2600
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = lshr i16 %i.af, 8
  %i.ah = and i16 %i.ag, 3
  switch i16 %i.ah, label %.fold.split [
    i16 2, label %bb.h
    i16 1, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14
  %i.ai = tail call noundef i32 @_ZNK5clang7VarDecl10getTLSKindEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %i.aj = icmp eq i32 %i.ai, 0
  br label %bb.h

.fold.split:                                      ; preds = %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.fold.split, %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14, %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit, %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZNK5clang4Decl7hasAttrINS_13NoDestroyAttrEEEbv.exit ], [ false, %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit ], [ true, %_ZNK5clang4Decl7hasAttrINS_17AlwaysDestroyAttrEEEbv.exit.thread14 ], [ %i.aj, %bb.g ], [ false, %.fold.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK5clang7VarDecl16needsDestructionERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %.not10 = icmp eq i64 %i.c, 0
  %.not = or i1 %.not.i.i.i, %.not10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 8
  %.not7 = icmp eq i8 %i.f, 0
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = tail call noundef zeroext i1 @_ZNK5clang7VarDecl11isNoDestroyERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1)
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !441
  %i.i = tail call noundef i32 @_ZN5clang8QualType20isDestructedTypeImplES0_(i64 %.sroa.0.0.copyload.i) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.1 = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl20hasFlexibleArrayInitERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !441
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !441
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !487 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16              ; 2 uses
  %i.k = add i8 %i.j, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.k, 3
  %.not.i5.i = icmp ne ptr %i.h, null
  %.not.i.not7.i = and i1 %.not.i5.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.l = and i8 %i.j, 62
  %spec.select.i.i.i = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not7.i
  br i1 %or.cond.i, label %select.unfold, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

select.unfold:                                    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !729  ; 2 uses
  %i.o = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.n) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.o, null
  %spec.select = select i1 %.not.not.i.i.i, ptr %i.n, ptr %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 72
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 8388608
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.b

bb.b:                                             ; preds = %select.unfold
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8 ; 3 uses
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.t, 0         ; 3 uses
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i.i = icmp eq i64 %i.u, 0
  %.not12.not.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not12.not16.i.i.i
  br i1 %.not12.not.i.i.i, label %.split.i.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.v = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 7
  tail call void @llvm.assume(i1 %i.v)
  %.pre.i.i = inttoptr i64 %i.u to ptr            ; 2 uses
  %.not.not9.i.i = icmp ne i64 %i.u, 0
  %.not.not.not.i.i = and i1 %.not.not9.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.not.not.i.i, label %_ZNK5clang7VarDecl7getInitEv.exit, label %.thread.i

_ZNK5clang7VarDecl7hasInitEv.exit.i.i:            ; preds = %bb.b
  %i.w = inttoptr i64 %i.u to ptr
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNK5clang7VarDecl7hasInitEv.exit.i.i, %.split.i.i
  %.pre-phi.i4.i = phi ptr [ %.pre.i.i, %.split.i.i ], [ %i.w, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ]
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %.pre-phi.i4.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8 ; 4 uses
  %2 = load i8, ptr %i.x, align 8, !tbaa !441
  %i.y = trunc i8 %2 to i1
  br i1 %i.y, label %bb.c, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread.i
  %.pre.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

bb.c:                                             ; preds = %.thread.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 18624
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !867 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !439
  %i.ad = getelementptr i8, ptr %i.ac, i64 40, !nosanitize !34
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !34
  %i.af = load i64, ptr %i.x, align 8, !tbaa !723
  %i.ag = lshr i64 %i.af, 1
  %i.ah = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 noundef %i.ag) #29, !inline_history !868 ; 2 uses
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7getInitEv.exit:                ; preds = %.split.i.i, %._crit_edge.i.i.i, %bb.c
  %.1.i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.pre.i.i, %.split.i.i ], [ %i.ah, %bb.c ]
  %i.ai = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i) #28 ; 3 uses
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = and i16 %i.aj, 511
  %.not25 = icmp eq i16 %i.ak, 55
  br i1 %.not25, label %bb.d, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

bb.d:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !912
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !917 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !866
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.ax, align 8, !tbaa !441
  %i.ay = tail call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %.sroa.0.0.copyload.i16) #29 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i17, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 16
  %i.bb = and i8 %i.ba, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bb, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit: ; preds = %bb.e
  %i.bc = load i32, ptr %i.az, align 16
  %i.bd = and i32 %i.bc, 33554432
  %.not.i = icmp eq i32 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !441 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !918 ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 65
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !441
  %i.bk = icmp eq i64 %i.bj, 0
  br label %_ZNK5clang17ConstantArrayType10isZeroSizeEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bl = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.bf) #28
  %i.bm = icmp eq i32 %i.bl, %i.bh
  br label %_ZNK5clang17ConstantArrayType10isZeroSizeEv.exit

bb.i:                                             ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit
  %i.bn = load i64, ptr %i.be, align 8, !tbaa !441
  %i.bo = icmp eq i64 %i.bn, 0
  br label %_ZNK5clang17ConstantArrayType10isZeroSizeEv.exit

_ZNK5clang17ConstantArrayType10isZeroSizeEv.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.bp = phi i1 [ %i.bo, %bb.i ], [ %i.bk, %bb.g ], [ %i.bm, %bb.h ]
  %i.bq = xor i1 %i.bp, true
  br label %_ZNK5clang4Type15getAsRecordDeclEv.exit

_ZNK5clang4Type15getAsRecordDeclEv.exit:          ; preds = %bb.d, %bb.e, %bb.a, %_ZNK5clang7VarDecl7getInitEv.exit, %_ZNK5clang17ConstantArrayType10isZeroSizeEv.exit, %select.unfold
  %.2 = phi i1 [ false, %bb.a ], [ false, %select.unfold ], [ false, %_ZNK5clang7VarDecl7getInitEv.exit ], [ %i.bq, %_ZNK5clang17ConstantArrayType10isZeroSizeEv.exit ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK5clang7VarDecl25getFlexibleArrayInitCharsERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !441
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !441
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !487 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16              ; 2 uses
  %i.k = add i8 %i.j, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.k, 3
  %.not.i5.i = icmp ne ptr %i.h, null
  %.not.i.not7.i = and i1 %.not.i5.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.l = and i8 %i.j, 62
  %spec.select.i.i.i = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not7.i
  br i1 %or.cond.i, label %select.unfold, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

select.unfold:                                    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !729  ; 2 uses
  %i.o = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.n) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.o, null
  %spec.select = select i1 %.not.not.i.i.i, ptr %i.n, ptr %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 72
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 8388608
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.b

bb.b:                                             ; preds = %select.unfold
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8 ; 3 uses
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.t, 0         ; 3 uses
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i.i = icmp eq i64 %i.u, 0
  %.not12.not.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not12.not16.i.i.i
  br i1 %.not12.not.i.i.i, label %.split.i.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.v = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 7
  tail call void @llvm.assume(i1 %i.v)
  %.pre.i.i = inttoptr i64 %i.u to ptr            ; 2 uses
  %.not.not9.i.i = icmp ne i64 %i.u, 0
  %.not.not.not.i.i = and i1 %.not.not9.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.not.not.i.i, label %_ZNK5clang7VarDecl7getInitEv.exit, label %.thread.i

_ZNK5clang7VarDecl7hasInitEv.exit.i.i:            ; preds = %bb.b
  %i.w = inttoptr i64 %i.u to ptr
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNK5clang7VarDecl7hasInitEv.exit.i.i, %.split.i.i
  %.pre-phi.i4.i = phi ptr [ %.pre.i.i, %.split.i.i ], [ %i.w, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ]
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %.pre-phi.i4.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8 ; 4 uses
  %2 = load i8, ptr %i.x, align 8, !tbaa !441
  %i.y = trunc i8 %2 to i1
  br i1 %i.y, label %bb.c, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread.i
  %.pre.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

bb.c:                                             ; preds = %.thread.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 18624
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !867 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !439
  %i.ad = getelementptr i8, ptr %i.ac, i64 40, !nosanitize !34
  %i.ae = load ptr, ptr %i.ad, align 8, !nosanitize !34
  %i.af = load i64, ptr %i.x, align 8, !tbaa !723
  %i.ag = lshr i64 %i.af, 1
  %i.ah = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 noundef %i.ag) #29, !inline_history !868 ; 2 uses
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7getInitEv.exit:                ; preds = %.split.i.i, %._crit_edge.i.i.i, %bb.c
  %.1.i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %.pre.i.i, %.split.i.i ], [ %i.ah, %bb.c ]
  %i.ai = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i) #28 ; 3 uses
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = and i16 %i.aj, 511
  %.not44 = icmp eq i16 %i.ak, 55
  br i1 %.not44, label %bb.d, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

bb.d:                                             ; preds = %_ZNK5clang7VarDecl7getInitEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !912
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !917 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ar, 34359738360
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = lshr exact i64 %i.ar, 3
  %i.av = add nuw nsw i64 %i.au, 4294967295
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !866
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.0.copyload.i24 = load i64, ptr %i.az, align 8, !tbaa !441
  %i.ba = tail call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %.sroa.0.0.copyload.i24) #29 ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i25, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 16
  %i.bd = and i8 %i.bc, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit: ; preds = %bb.f
  %i.be = tail call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull %i.ba) #29
  %i.bf = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull %spec.select) #29 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !920
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !925 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 4294967295
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !723
  %i.bs = tail call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 noundef %i.br) #29
  %i.bt = add nsw i64 %i.bs, %i.be                ; 2 uses
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.bf, align 8, !tbaa !723 ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %.sroa.0.0.copyload.i26
  %i.bv = sub nsw i64 %i.bt, %.sroa.0.0.copyload.i26
  %spec.select42 = select i1 %i.bu, i64 0, i64 %i.bv
  br label %_ZNK5clang4Type15getAsRecordDeclEv.exit

_ZNK5clang4Type15getAsRecordDeclEv.exit:          ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, %bb.e, %bb.f, %_ZNK5clang7VarDecl7getInitEv.exit, %bb.d, %select.unfold, %bb.a
  %.sroa.019.3 = phi i64 [ 0, %_ZNK5clang7VarDecl7getInitEv.exit ], [ 0, %select.unfold ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.f ], [ %spec.select42, %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit ]
  ret i64 %.sroa.019.3
}

declare i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #4

declare i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7VarDecl29setTemplateSpecializationKindENS_26TemplateSpecializationKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 126
  %.not = icmp eq i32 %i.c, 42
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.e = trunc i32 %1 to i8
  %i.f = load i8, ptr %i.d, align 4
  %i.g = and i8 %i.e, 7
  %i.h = and i8 %i.f, -8
  %i.i = or disjoint i8 %i.h, %i.g
  store i8 %i.i, ptr %i.d, align 4
  %.not25 = icmp ne i32 %1, 2
  %i.j = icmp ne i32 %2, 0
  %or.cond = select i1 %.not25, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !tbaa !20
  %i.l = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.k, align 8, !tbaa !20
  %i.m = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 18632
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !926  ; 2 uses
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %.critedge, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.a
  %i.p = and i32 %i.b, 127
  %.not.i.i = icmp eq i32 %i.p, 44
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 3 uses
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !445
  br label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.i

_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.i:  ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.w, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.y = load i16, ptr %i.x, align 8
  %i.z = and i16 %i.y, 127
  %i.aa = add nsw i16 %i.z, -59
  %spec.select.i.i.i = icmp ult i16 %i.aa, 4
  br i1 %spec.select.i.i.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.i
  %i.ab = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #28
  %i.ac = tail call i64 @_ZN5clang10ASTContext31getTemplateOrSpecializationInfoEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ab, ptr noundef nonnull align 8 dereferenceable(100) %0) #29 ; 2 uses
  %i.ad = and i64 %i.ac, 4
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = and i64 %i.ac, -5                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %.not22 = icmp eq i64 %i.ae, 0
  %or.cond35 = or i1 %.not.i.i.i.i, %.not22
  br i1 %or.cond35, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i32 %1, -1
  %.0.copyload.i.i.i.i = load i64, ptr %i.af, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = and i64 %.0.copyload.i.i.i.i, -7
  %i.aj = shl nuw nsw i64 %i.ah, 1
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.af, align 8
  %.not23 = icmp ne i32 %1, 2
  %i.al = icmp ne i32 %2, 0
  %or.cond36 = select i1 %.not23, i1 %i.al, i1 false
  br i1 %or.cond36, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.am, align 8, !tbaa !20
  %i.an = icmp eq i32 %.sroa.0.0.copyload.i27, 0
  br i1 %i.an, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  store i32 %2, ptr %i.am, align 8, !tbaa !20
  %i.ao = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 18632
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !926 ; 2 uses
  %.not24 = icmp eq ptr %i.aq, null
  br i1 %.not24, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.l, %bb.d
  %.sink42 = phi ptr [ %i.o, %bb.d ], [ %i.aq, %bb.l ] ; 2 uses
  %i.ar = load ptr, ptr %.sink42, align 8, !tbaa !439
end_hunk_3
begin_hunk_4_@_ZNK5clang11ParmVarDecl14getSourceRangeEv:bb.a
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !837
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !838
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !504
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.t, align 8, !tbaa !20
  br label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.thread

_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit: ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8 ; 3 uses
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit
  %i.x = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

bb.f:                                             ; preds = %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !445
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

_ZNK5clang4Decl14getDeclContextEv.exit:           ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.x, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 127
  %i.ae = icmp eq i16 %i.ad, 20
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load i64, ptr %i.af, align 8        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load i32, ptr %i.ag, align 8       ; 2 uses
  %i.ah = and i64 %.val.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang14DeclaratorDecl11getBeginLocEv.exit, label %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i

_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i: ; preds = %bb.g
  %i.ai = and i64 %.val.i.i, -5
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !837
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZNK5clang14DeclaratorDecl11getBeginLocEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !838
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !504
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.aq, align 8, !tbaa !20
  br label %_ZNK5clang14DeclaratorDecl11getBeginLocEv.exit

_ZNK5clang14DeclaratorDecl11getBeginLocEv.exit:   ; preds = %bb.g, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i, %bb.h
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i, %bb.h ], [ %.val1.i.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i ], [ %.val1.i.i, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i4 = load i32, ptr %i.ar, align 8, !tbaa !20
  br label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i5 = load i64, ptr %i.at, align 8 ; 3 uses
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i.i.i5, 4
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = and i64 %.0.copyload.i.i.i.i.i.i.i.i5, -5
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !713
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.az = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i5 to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i: ; preds = %bb.k, %bb.j
  %i.ba = phi ptr [ %i.ay, %bb.j ], [ %i.az, %bb.k ] ; 4 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i7.i = load i64, ptr %i.bb, align 8, !tbaa !723
  %.not13.i = icmp eq i64 %.sroa.0.0.copyload.i7.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  br i1 %.not13.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i8.i = load i64, ptr %i.ba, align 8, !tbaa !441
  store i64 %.sroa.0.0.copyload.i8.i, ptr %1, align 8
  %i.bc = call noundef zeroext i1 @_ZNK5clang8QualType26hasPostfixDeclaratorSyntaxEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %i.bc, label %bb.n, label %bb.o

.critedge.i:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %.sroa.0.0.copyload.i9.i = load i64, ptr %i.ba, align 8, !tbaa !441
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = inttoptr i64 %.sroa.0.0.copyload.i9.i to ptr
  store ptr %i.be, ptr %2, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #29 ; 0 uses
  %i.bh = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i
  %.sroa.05.0.i = phi i32 [ %i.bh, %bb.n ], [ %.sroa.0.0.copyload.i.i, %bb.m ], [ %.sroa.0.0.copyload.i.i, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit.i ] ; 3 uses
  %.val.i.i6 = load i64, ptr %i.at, align 8       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i7 = load i32, ptr %i.bi, align 8      ; 2 uses
  %i.bj = and i64 %.val.i.i6, 4
  %.not.i.i.i.i8 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i8, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.thread, label %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i9

_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i9: ; preds = %bb.o
  %i.bk = and i64 %.val.i.i6, -5
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !837
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !838
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !504
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.0.0.copyload.i.i.i.i10 = load i32, ptr %i.bs, align 8, !tbaa !20
  br label %_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.thread

_ZNK5clang14DeclaratorDecl16getOuterLocStartEv.exit.thread: ; preds = %bb.p, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i9, %bb.o, %bb.c, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i, %bb.d, %_ZNK5clang14DeclaratorDecl11getBeginLocEv.exit
  %.sroa.413.1 = phi i32 [ %.sroa.0.0.copyload.i4, %_ZNK5clang14DeclaratorDecl11getBeginLocEv.exit ], [ %.sroa.4.0.extract.trunc, %bb.c ], [ %.sroa.4.0.extract.trunc, %bb.d ], [ %.sroa.4.0.extract.trunc, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i ], [ %.sroa.05.0.i, %bb.o ], [ %.sroa.05.0.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i9 ], [ %.sroa.05.0.i, %bb.p ]
  %.sroa.012.1 = phi i32 [ %.sroa.0.1.i.i.i, %_ZNK5clang14DeclaratorDecl11getBeginLocEv.exit ], [ %.val1.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.val1.i, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i ], [ %.val1.i.i7, %bb.o ], [ %.val1.i.i7, %_ZNK5clang14DeclaratorDecl25getTemplateParameterListsEv.exit.i.i.i9 ], [ %.sroa.0.0.copyload.i.i.i.i10, %bb.p ]
  %.sroa.413.0.insert.ext = zext i32 %.sroa.413.1 to i64
  %.sroa.413.0.insert.shift = shl nuw i64 %.sroa.413.0.insert.ext, 32
  %.sroa.012.0.insert.ext = zext i32 %.sroa.012.1 to i64
  %.sroa.012.0.insert.insert = or disjoint i64 %.sroa.413.0.insert.shift, %.sroa.012.0.insert.ext
  ret i64 %.sroa.012.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK5clang11ParmVarDecl18getDefaultArgRangeEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i32 %i.b, 9
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable13 [
    i32 0, label %_ZNK5clang7VarDecl7getInitEv.exit.thread
    i32 1, label %_ZNK5clang7VarDecl7getInitEv.exit.thread
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.g = inttoptr i64 %i.f to ptr
  br label %_ZNK5clang7VarDecl7getInitEv.exit.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 127
  %.not.i.i.i = icmp eq i32 %i.j, 44
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.b, 1536
  switch i32 %i.k, label %bb.e [
    i32 512, label %_ZNK5clang7VarDecl7getInitEv.exit.thread
    i32 1024, label %_ZNK5clang7VarDecl7getInitEv.exit.thread
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8 ; 3 uses
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, 0         ; 3 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i.i = icmp eq i64 %i.n, 0
  %.not12.not.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not12.not16.i.i.i
  br i1 %.not12.not.i.i.i, label %.split.i.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 7
  br i1 %i.o, label %bb.f, label %_ZNK5clang7VarDecl7getInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit.i.i:            ; preds = %bb.e
  %i.p = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !441
  %i.s = trunc i8 %i.r to i1
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = icmp ne ptr %i.t, null
  %i.v = select i1 %i.s, i1 true, i1 %i.u
  br i1 %i.v, label %.thread.i, label %_ZNK5clang7VarDecl7getInitEv.exit.thread

bb.f:                                             ; preds = %.split.i.i
  %.pre.i.i = inttoptr i64 %i.n to ptr            ; 2 uses
  %.not.not9.i.i = icmp ne i64 %i.n, 0
  %.not.not.not.i.i = and i1 %.not.not9.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.not.not.i.i, label %_ZNK5clang7VarDecl7getInitEv.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.f, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i
  %.pre-phi.i4.i = phi ptr [ %.pre.i.i, %bb.f ], [ %i.p, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ]
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %.pre-phi.i4.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8 ; 4 uses
  %1 = load i8, ptr %i.w, align 8, !tbaa !441
  %i.x = trunc i8 %1 to i1
  br i1 %i.x, label %bb.g, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread.i
  %.pre.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

bb.g:                                             ; preds = %.thread.i
  %i.y = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 18624
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !867 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !439
  %i.ac = getelementptr i8, ptr %i.ab, i64 40, !nosanitize !34
  %i.ad = load ptr, ptr %i.ac, align 8, !nosanitize !34
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !723
  %i.af = lshr i64 %i.ae, 1
  %i.ag = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 noundef %i.af) #29, !inline_history !868 ; 2 uses
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !866
  br label %_ZNK5clang7VarDecl7getInitEv.exit

_ZNK5clang7VarDecl7getInitEv.exit:                ; preds = %bb.f, %._crit_edge.i.i.i, %bb.g
  %.1.i.i = phi ptr [ %i.ag, %bb.g ], [ %.pre.i.i, %bb.f ], [ %.pre.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not.not = icmp eq ptr %.1.i.i, null
  br i1 %.not.not, label %_ZNK5clang7VarDecl7getInitEv.exit.thread, label %_ZNK5clang7VarDecl7getInitEv.exit.thread.sink.split

default.unreachable13:                            ; preds = %bb.a
  unreachable

_ZNK5clang7VarDecl7getInitEv.exit.thread.sink.split: ; preds = %_ZNK5clang7VarDecl7getInitEv.exit, %bb.b
  %.1.i.i.sink = phi ptr [ %i.g, %bb.b ], [ %.1.i.i, %_ZNK5clang7VarDecl7getInitEv.exit ]
  %i.ah = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.1.i.i.sink) #28
  br label %_ZNK5clang7VarDecl7getInitEv.exit.thread

_ZNK5clang7VarDecl7getInitEv.exit.thread:         ; preds = %_ZNK5clang7VarDecl7getInitEv.exit.thread.sink.split, %bb.d, %bb.d, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i, %.split.i.i, %_ZNK5clang7VarDecl7getInitEv.exit, %bb.a, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %_ZNK5clang7VarDecl7getInitEv.exit ], [ 0, %.split.i.i ], [ 0, %_ZNK5clang7VarDecl7hasInitEv.exit.i.i ], [ %i.ah, %_ZNK5clang7VarDecl7getInitEv.exit.thread.sink.split ]
  ret i64 %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang11ParmVarDecl19isDestroyedInCalleeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 256
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.thread9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #29 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !506  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !507  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.thread9, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !508
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i16, ptr %i.k, align 4
  %i.m = icmp eq i16 %i.l, 108
  br i1 %i.m, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.thread9, label %.lr.ph.i.i.i.i.i, !llvm.loop !928

_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not11 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.i
  br i1 %.not11, label %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.thread9, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit
  %i.o = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2600
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !577, !nonnull !34, !align !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 4611686018427387904
  %i.u = icmp ne i64 %i.t, 0
  br label %bb.g

_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.thread9: ; preds = %bb.c, %bb.b, %bb.a, %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !441
  %i.w = and i64 %.sroa.0.0.copyload.i, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !487
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !441
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !487 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = icmp ne i8 %i.ae, 49
  %.not12 = icmp eq ptr %i.ac, null
  %.not = or i1 %.not12, %i.af
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.thread9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !729 ; 2 uses
  %i.ai = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ai, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %i.ah, ptr %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 72
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 34359738368
  %.not13 = icmp eq i64 %i.al, 0
  br i1 %.not13, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.v, align 8, !tbaa !441
  %i.am = tail call noundef i32 @_ZN5clang8QualType20isDestructedTypeImplES0_(i64 %.sroa.0.0.copyload.i6) #29
  %.not5 = icmp eq i32 %i.am, 0
  br i1 %.not5, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.e, %_ZNK5clang4Decl7hasAttrINS_14NSConsumedAttrEEEbv.exit.thread9, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f, %bb.d
  %.1 = phi i1 [ %i.u, %bb.d ], [ false, %.critedge ], [ true, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang11ParmVarDecl13getDefaultArgEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  %.not.i.i = icmp eq i32 %i.c, 44
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1536
  switch i32 %i.f, label %bb.c [
    i32 512, label %_ZN5clang7VarDecl7getInitEv.exit.thread
    i32 1024, label %_ZN5clang7VarDecl7getInitEv.exit.thread
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0           ; 3 uses
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 4 uses
  %.not12.not16.i.i = icmp eq i64 %i.i, 0
  %.not12.not.i.i = or i1 %.not.i.i.i.i.i, %.not12.not16.i.i
  br i1 %.not12.not.i.i, label %.split.i, label %_ZNK5clang7VarDecl7hasInitEv.exit.i

.split.i:                                         ; preds = %bb.c
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 7
  br i1 %i.j, label %bb.d, label %_ZN5clang7VarDecl7getInitEv.exit.thread

_ZNK5clang7VarDecl7hasInitEv.exit.i:              ; preds = %bb.c
  %i.k = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !441
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = select i1 %i.n, i1 true, i1 %i.p
  br i1 %i.q, label %.thread, label %_ZN5clang7VarDecl7getInitEv.exit.thread

bb.d:                                             ; preds = %.split.i
  %.pre.i = inttoptr i64 %i.i to ptr              ; 2 uses
  %.not.not9.i = icmp ne i64 %i.i, 0
  %.not.not.not.i = and i1 %.not.not9.i, %.not.i.i.i.i.i
  br i1 %.not.not.not.i, label %_ZN5clang7VarDecl7getInitEv.exit.thread15, label %.thread

.thread:                                          ; preds = %_ZNK5clang7VarDecl7hasInitEv.exit.i, %bb.d
  %.pre-phi.i11 = phi ptr [ %.pre.i, %bb.d ], [ %i.k, %_ZNK5clang7VarDecl7hasInitEv.exit.i ]
  %.0.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %.pre-phi.i11
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 4 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !441
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !866
  br label %_ZN5clang7VarDecl7getInitEv.exit

bb.e:                                             ; preds = %.thread
  %i.u = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull readonly align 8 dereferenceable(100) %0) #28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 18624
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !867  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !439
  %i.y = getelementptr i8, ptr %i.x, i64 40, !nosanitize !34
  %i.z = load ptr, ptr %i.y, align 8, !nosanitize !34
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !723
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef %i.ab) #29, !inline_history !886 ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !866
  br label %_ZN5clang7VarDecl7getInitEv.exit

_ZN5clang7VarDecl7getInitEv.exit:                 ; preds = %._crit_edge.i.i, %bb.e
  %.1.i = phi ptr [ %i.ac, %bb.e ], [ %.pre.i.i, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZN5clang7VarDecl7getInitEv.exit.thread, label %_ZN5clang7VarDecl7getInitEv.exit.thread15

_ZN5clang7VarDecl7getInitEv.exit.thread15:        ; preds = %bb.d, %_ZN5clang7VarDecl7getInitEv.exit
  %.1.i18 = phi ptr [ %.1.i, %_ZN5clang7VarDecl7getInitEv.exit ], [ %.pre.i, %bb.d ] ; 3 uses
  %i.ad = load i16, ptr %.1.i18, align 8
  %i.ae = and i16 %i.ad, 510
  %spec.select.i.i.i.i.i.i.i.i = icmp eq i16 %i.ae, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN5clang7VarDecl7getInitEv.exit.thread

bb.f:                                             ; preds = %_ZN5clang7VarDecl7getInitEv.exit.thread15
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i18, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !929
  br label %_ZN5clang7VarDecl7getInitEv.exit.thread

_ZN5clang7VarDecl7getInitEv.exit.thread:          ; preds = %bb.b, %bb.b, %_ZNK5clang7VarDecl7hasInitEv.exit.i, %.split.i, %_ZN5clang7VarDecl7getInitEv.exit, %_ZN5clang7VarDecl7getInitEv.exit.thread15, %bb.f
  %i.ah = phi ptr [ %i.ag, %bb.f ], [ %.1.i18, %_ZN5clang7VarDecl7getInitEv.exit.thread15 ], [ null, %_ZN5clang7VarDecl7getInitEv.exit ], [ null, %.split.i ], [ null, %_ZNK5clang7VarDecl7hasInitEv.exit.i ], [ null, %bb.b ], [ null, %bb.b ]
  ret ptr %i.ah
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang11ParmVarDecl13setDefaultArgEPNS_4ExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((88, 96)) %0, ptr noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 1536
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang11ParmVarDecl27setUninstantiatedDefaultArgEPNS_4ExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((88, 96)) %0, ptr noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, -1537
  %i.d = or disjoint i32 %i.c, 1024
  store i32 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = ptrtoint ptr %1 to i64
  store i64 %i.f, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN5clang11ParmVarDecl27getUninstantiatedDefaultArgEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -5
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang11ParmVarDecl13hasDefaultArgEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1536
  switch i32 %i.c, label %bb.b [
    i32 512, label %bb.c
    i32 1024, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.0.copyload.i.i = load i64, ptr %i.d, align 8
  %i.e = icmp ugt i64 %.0.copyload.i.i, 7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %i.f = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang11ParmVarDecl22setParameterIndexLargeEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  tail call void @_ZN5clang10ASTContext17setParameterIndexEPKNS_11ParmVarDeclEj(ptr noundef nonnull align 8 dereferenceable(23904) %i.a, ptr noundef nonnull %0, i32 noundef %1) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = or i32 %i.c, 267386880
  store i32 %i.d, ptr %i.b, align 8
  ret void
}

declare void @_ZN5clang10ASTContext17setParameterIndexEPKNS_11ParmVarDeclEj(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK5clang11ParmVarDecl22getParameterIndexLargeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.b = tail call noundef i32 @_ZNK5clang10ASTContext17getParameterIndexEPKNS_11ParmVarDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.a, ptr noundef nonnull %0) #29
  ret i32 %i.b
}

declare noundef i32 @_ZNK5clang10ASTContext17getParameterIndexEPKNS_11ParmVarDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12FunctionDeclC2ENS_4Decl4KindERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationERKNS_19DeclarationNameInfoENS_8QualTypeEPNS_14TypeSourceInfoENS_12StorageClassEbbNS_17ConstexprSpecKindERKNS_20AssociatedConstraintE(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(23904) %2, ptr noundef %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10, i32 noundef %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %12) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !20
  %.sroa.0.0.copyload.i21 = load i64, ptr %5, align 8, !tbaa !723
  tail call void @_ZN5clang4DeclC2ENS0_4KindEPNS_11DeclContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, ptr noundef %3, i32 %.sroa.0.0.copyload.i)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.copyload.i21, ptr %i.b, align 8, !tbaa !723
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %6, ptr %i.c, align 8, !tbaa !441
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5clang14DeclaratorDeclE, i64 16), ptr %0, align 8, !tbaa !439
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = ptrtoint ptr %7 to i64
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN5clang11DeclContextC2ENS_4Decl4KindE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef %1) #29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = ptrtoint ptr %2 to i64
  %i.j = or disjoint i64 %i.i, 2
  store i64 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %0, ptr %i.k, align 8, !tbaa !700
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5clang12FunctionDeclE, i64 16), ptr %0, align 8, !tbaa !439
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  %i.n = tail call i32 @_ZNK5clang19DeclarationNameInfo16getEndLocPrivateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %.sroa.0.0.i = select i1 %.not.i, i32 %.sroa.0.0.copyload.i.i, i32 %i.n
  store i32 %.sroa.0.0.i, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.o, align 8, !tbaa !927
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !441
  store i64 %i.s, ptr %i.q, align 8, !tbaa !441
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = shl i32 %8, 13
  %i.w = and i32 %i.v, 57344
  %i.x = and i32 %i.u, 8191
  %i.y = select i1 %10, i32 65536, i32 0
  %i.z = select i1 %10, i32 131072, i32 0
  %i.aa = or disjoint i32 %i.w, %i.y
  %i.ab = or disjoint i32 %i.aa, %i.z
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = or disjoint i32 %i.ac, 2097152
  store i32 %i.ad, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.af = trunc i32 %11 to i16
  %i.ag = load i16, ptr %i.ae, align 4
  %i.ah = and i16 %i.af, 3
  %i.ai = and i16 %i.ag, -8192
  %i.aj = select i1 %9, i16 2048, i16 0
  %i.ak = or disjoint i16 %i.ah, %i.aj
  %i.al = or disjoint i16 %i.ak, %i.ai
  store i16 %i.al, ptr %i.ae, align 4
  %i.am = load ptr, ptr %12, align 8, !tbaa !934
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8 ; 3 uses
  %i.an = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i22 = icmp eq i64 %i.an, 0
end_hunk_4
