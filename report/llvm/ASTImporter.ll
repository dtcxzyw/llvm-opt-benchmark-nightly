Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTImporter?download=true
inline.NumInlined: 26100
inline.NumDeleted: 9822
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5clang15ASTNodeImporter14VisitFieldDeclEPNS_9FieldDeclE:bb.a
  br i1 %.not56, label %.thread214, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mi = load ptr, ptr %i.h, align 8, !tbaa !1052
  %i.mj = call noundef ptr @_ZNK5clang9FieldDecl21getInClassInitializerEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mi) #22
  %.not57 = icmp eq ptr %i.mj, null
  br i1 %.not57, label %bb.av, label %.thread214

bb.av:                                            ; preds = %bb.au
  %i.mk = load ptr, ptr %i.h, align 8, !tbaa !1052
  call void @_ZN5clang9FieldDecl21setInClassInitializerEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(80) %i.mk, ptr noundef nonnull %i.mh) #22
  br label %.thread214

.thread214:                                       ; preds = %_ZN5clang15ASTNodeImporter13importCheckedIPNS_4ExprEEET_RN4llvm5ErrorERKS4_.exit128, %bb.av, %bb.au, %bb.at
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 8
  %i.mn = and i8 %i.mm, -2
  store i8 %i.mn, ptr %i.ml, align 8
  %i.mo = load ptr, ptr %i.h, align 8, !tbaa !1052
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %.thread214, %bb.ao
  %.sink = phi ptr [ %i.md, %bb.as ], [ %i.mo, %.thread214 ], [ %i.lf, %bb.ao ]
  store ptr %.sink, ptr %0, align 8, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %_ZN4llvm5ErrorD2Ev.exit129

_ZN4llvm5ErrorD2Ev.exit129:                       ; preds = %bb.am, %_ZN4llvm5ErrorD2Ev.exit121, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm8ExpectedIPN5clang4ExprEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit106, %.critedge59, %_ZN4llvm5ErrorD2Ev.exit129
  %i.mp = load ptr, ptr %13, align 8, !tbaa !122  ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef %i.mp) #22
  br label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj2EED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 3 uses
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !810
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 127
  %i.k = add nsw i16 %i.j, -63
  %i.l = icmp ult i16 %i.k, -4
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.m = tail call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i) #22 ; 2 uses
  %.not31 = icmp eq ptr %i.m, null
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.01533 = phi i32 [ %.2.ph, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.sroa.0.032 = phi ptr [ %i.w, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %.not19 = icmp eq ptr %.sroa.0.032, %0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 28
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = add nsw i32 %i.p, -50
  %i.r = icmp ult i32 %i.q, 3
  %i.s = icmp eq i32 %i.p, 33
  %or.cond = or i1 %i.s, %i.r
  %i.t = zext i1 %or.cond to i32
  %.2.ph = add i32 %.01533, %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.x = add i32 %.01533, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.d, %_ZN5clang4Decl14getDeclContextEv.exit
  %.sroa.023.3 = phi i32 [ 0, %_ZN5clang4Decl14getDeclContextEv.exit ], [ %i.x, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ]
  ret i32 %.sroa.023.3
}

declare noundef ptr @_ZNK5clang9FieldDecl21getInClassInitializerEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN5clang9FieldDecl21setInClassInitializerEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

declare void @_ZN5clang9FieldDecl18setCapturedVLATypeEPKNS_17VariableArrayTypeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15ASTNodeImporter22VisitIndirectFieldDeclEPNS_17IndirectFieldDeclE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.511") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.511", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Expected.1462", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.clang::DeclarationName", align 8 ; 5 uses
  %6 = alloca %"class.clang::SourceLocation", align 4 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.783", align 8 ; 8 uses
  %9 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %10 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Expected.471", align 8 ; 11 uses
  %12 = alloca %"class.llvm::MutableArrayRef.882", align 8 ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !tbaa !868
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN5clang15ASTNodeImporter15ImportDeclPartsEPNS_9NamedDeclERPNS_11DeclContextES5_RNS_15DeclarationNameERS2_RNS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.h = load ptr, ptr %7, align 8, !tbaa !169    ; 2 uses
  %.not154 = icmp eq ptr %i.h, null
  br i1 %.not154, label %_ZN4llvm5ErrorD2Ev.exit57, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 8
  store ptr %i.h, ptr %0, align 8, !tbaa !165, !alias.scope !4458
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.at

_ZN4llvm5ErrorD2Ev.exit57:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit57
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, -2
  store i8 %i.o, ptr %i.m, align 8
  store ptr %i.l, ptr %0, align 8, !tbaa !139
  br label %bb.at

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.p = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !838
  %.sroa.024.0.copyload = load i64, ptr %5, align 8, !tbaa !119
  %.fr = freeze i64 %.sroa.024.0.copyload         ; 5 uses
  call void @_ZN5clang11ASTImporter16findDeclsInToCtxEPNS_11DeclContextENS_15DeclarationNameE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.783") align 8 %8, ptr noundef nonnull align 8 dereferenceable(280400) %i.p, ptr noundef %i.q, i64 %.fr)
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !123  ; 4 uses
  %.not48174 = icmp eq i32 %i.s, 0
  br i1 %.not48174, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.not156.not = icmp eq i64 %.fr, 0
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  br i1 %.not156.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = zext i32 %i.s to i64
  %.pre = load ptr, ptr %8, align 8, !tbaa !122
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %13 = add i32 %i.s, -1
  %14 = zext i32 %13 to i64
  %15 = zext i32 %i.s to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.p
  %indvars.iv199 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next200, %bb.p ] ; 3 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !122
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv199
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !187  ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 127
  %i.ac = icmp ne i32 %i.ab, 33
  %.not49155.us = icmp eq ptr %i.y, null
  %.not49.us = or i1 %.not49155.us, %i.ac
  br i1 %.not49.us, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %.0.copyload.i.i.i.i.i.i.i.i.us = load i64, ptr %i.t, align 8 ; 3 uses
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i.i.us, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %16 = and i64 %.0.copyload.i.i.i.i.i.i.i.i.us, -5
  %i.af = inttoptr i64 %16 to ptr
  %17 = load ptr, ptr %i.af, align 8, !tbaa !810
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i.us

bb.f:                                             ; preds = %bb.d
  %i.ag = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.us to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i.us

_ZN5clang4Decl14getDeclContextEv.exit.i.us:       ; preds = %bb.f, %bb.e
  %.0.i.i.us = phi ptr [ %i.ag, %bb.f ], [ %17, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.us, i64 8
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i16 %i.ai, 127
  %i.ak = add nsw i16 %i.aj, -63
  %i.al = icmp ult i16 %i.ak, -4
  br i1 %i.al, label %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit.us, label %bb.g

bb.g:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i.us
  %i.am = call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.us) #22 ; 2 uses
  %.not31.i.us = icmp eq ptr %i.am, null
  br i1 %.not31.i.us, label %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.g, %bb.h
  %.01533.i.us = phi i32 [ %.2.ph.i.us, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.032.i.us = phi ptr [ %i.aw, %bb.h ], [ %i.am, %bb.g ] ; 3 uses
  %.not19.i.us = icmp eq ptr %.sroa.0.032.i.us, %2
  br i1 %.not19.i.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.us
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 28
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 127                      ; 2 uses
  %i.aq = add nsw i32 %i.ap, -50
  %i.ar = icmp ult i32 %i.aq, 3
  %i.as = icmp eq i32 %i.ap, 33
  %or.cond.i.us = or i1 %i.as, %i.ar
  %i.at = zext i1 %or.cond.i.us to i32
  %.2.ph.i.us = add i32 %.01533.i.us, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 8
  %.0.copyload.i.i.i.i.i.i.us = load i64, ptr %i.au, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i.i.i.us, -8 ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %.not.i.us = icmp eq i64 %i.av, 0
  br i1 %.not.i.us, label %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit.us, label %.lr.ph.i.us

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.ax = add i32 %.01533.i.us, 1
  br label %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit.us

_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit.us: ; preds = %bb.h, %bb.g, %bb.i, %_ZN5clang4Decl14getDeclContextEv.exit.i.us
  %.sroa.023.3.i.us = phi i32 [ 0, %_ZN5clang4Decl14getDeclContextEv.exit.i.us ], [ %i.ax, %bb.i ], [ undef, %bb.g ], [ undef, %bb.h ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i58.us = load i64, ptr %i.ay, align 8 ; 3 uses
  %i.az = and i64 %.0.copyload.i.i.i.i.i.i.i.i58.us, 4
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit.us
  %18 = and i64 %.0.copyload.i.i.i.i.i.i.i.i58.us, -5
  %i.bb = inttoptr i64 %18 to ptr
  %19 = load ptr, ptr %i.bb, align 8, !tbaa !810
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i59.us

bb.k:                                             ; preds = %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit.us
  %i.bc = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i58.us to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i59.us

_ZN5clang4Decl14getDeclContextEv.exit.i59.us:     ; preds = %bb.k, %bb.j
  %.0.i.i60.us = phi ptr [ %i.bc, %bb.k ], [ %19, %bb.j ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i60.us, i64 8
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = and i16 %i.be, 127
  %i.bg = add nsw i16 %i.bf, -63
  %i.bh = icmp ult i16 %i.bg, -4
  br i1 %i.bh, label %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.thr_comm.us, label %bb.l

bb.l:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i59.us
  %i.bi = call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i60.us) #22 ; 2 uses
  %.not31.i61.us = icmp eq ptr %i.bi, null
  br i1 %.not31.i61.us, label %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.thread136.us, label %.lr.ph.i62.us

.lr.ph.i62.us:                                    ; preds = %bb.l, %bb.m
  %.01533.i63.us = phi i32 [ %.2.ph.i67.us, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.sroa.0.032.i64.us = phi ptr [ %i.bs, %bb.m ], [ %i.bi, %bb.l ] ; 3 uses
  %.not19.i65.us = icmp eq ptr %.sroa.0.032.i64.us, %i.y
  br i1 %.not19.i65.us, label %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i62.us
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i64.us, i64 28
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = and i32 %i.bk, 127                      ; 2 uses
  %i.bm = add nsw i32 %i.bl, -50
  %i.bn = icmp ult i32 %i.bm, 3
  %i.bo = icmp eq i32 %i.bl, 33
  %or.cond.i66.us = or i1 %i.bo, %i.bn
  %i.bp = zext i1 %or.cond.i66.us to i32
  %.2.ph.i67.us = add i32 %.01533.i63.us, %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i64.us, i64 8
  %.0.copyload.i.i.i.i.i.i68.us = load i64, ptr %i.bq, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i68.us, -8 ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr
  %.not.i69.us = icmp eq i64 %i.br, 0
  br i1 %.not.i69.us, label %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.thread136.us, label %.lr.ph.i62.us

_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.us: ; preds = %.lr.ph.i62.us
  %20 = add i32 %.01533.i63.us, 1                 ; 2 uses
  %21 = icmp ne i32 %.sroa.023.3.i.us, 0          ; 2 uses
  %22 = icmp ne i32 %20, 0                        ; 2 uses
  %or.cond.i.i.us = select i1 %21, i1 %22, i1 false
  br i1 %or.cond.i.i.us, label %.split.us, label %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.us

_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.us: ; preds = %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.us
  %23 = xor i1 %21, %22
  br i1 %23, label %bb.p, label %bb.n

.split.us:                                        ; preds = %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.us
  %.not157.us = icmp eq i32 %.sroa.023.3.i.us, %20
  br i1 %.not157.us, label %bb.n, label %bb.p

_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.thread136.us: ; preds = %bb.m, %bb.l
  %.not158.us = icmp eq i32 %.sroa.023.3.i.us, 0
  br i1 %.not158.us, label %bb.n, label %bb.p

_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.thr_comm.us: ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i59.us
  %.not159.us = icmp eq i32 %.sroa.023.3.i.us, 0
  br i1 %.not159.us, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.thr_comm.us, %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.thread136.us, %.split.us, %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.us
  %24 = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %.sroa.0.0.copyload.i.us = load i64, ptr %i.u, align 8, !tbaa !118
  %25 = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.0.0.copyload.i75.us = load i64, ptr %25, align 8, !tbaa !118
  %26 = call noundef zeroext i1 @_ZN5clang11ASTImporter24IsStructurallyEquivalentENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(280400) %24, i64 %.sroa.0.0.copyload.i.us, i64 %.sroa.0.0.copyload.i75.us, i1 noundef zeroext false)
  br i1 %26, label %.split177.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %27 = icmp samesign ult i64 %indvars.iv199, %14
  br i1 %27, label %bb.p, label %.split179.us

bb.p:                                             ; preds = %bb.o, %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.thr_comm.us, %_ZN5clang11ASTImporter13getFieldIndexEPNS_4DeclE.exit74.thread136.us, %.split.us, %_ZN5clangneENS_16OptionalUnsignedIjEES1_.exit.us, %.lr.ph.split.us
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %.not48.us = icmp eq i64 %indvars.iv.next200, %15
  br i1 %.not48.us, label %.critedge54, label %.lr.ph.split.us, !llvm.loop !4427

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.a, %bb.z ] ; 2 uses
  %28 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %29 = load ptr, ptr %28, align 8, !tbaa !187    ; 5 uses
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 28
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 127
  %33 = icmp ne i32 %32, 33
  %.not49155 = icmp eq ptr %29, null
  %.not49 = or i1 %.not49155, %33
  br i1 %.not49, label %bb.z, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split
  %i.bt = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !118
  %i.bu = getelementptr inbounds nuw i8, ptr %29, i64 48
  %.sroa.0.0.copyload.i75 = load i64, ptr %i.bu, align 8, !tbaa !118
  %i.bv = call noundef zeroext i1 @_ZN5clang11ASTImporter24IsStructurallyEquivalentENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(280400) %i.bt, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i75, i1 noundef zeroext true)
  br i1 %i.bv, label %.split177.us, label %.split179.us

.split177.us:                                     ; preds = %bb.n, %bb.q
  %.us-phi = phi ptr [ %29, %bb.q ], [ %i.y, %bb.n ] ; 2 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.a, align 8, !tbaa !139
  store ptr %.us-phi, ptr %i.b, align 8, !tbaa !139
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 280208
  %i.by = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JRS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !4459
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.by, 1
  %i.bz = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.bz, label %bb.r, label %_ZN5clang11ASTImporter11MapImportedEPNS_4DeclES2_.exit

bb.r:                                             ; preds = %.split177.us
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 280256
  %i.cc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !139
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !139 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i77 = load i64, ptr %i.cf, align 8 ; 3 uses
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i.i.i77, 4
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i77 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i78

bb.t:                                             ; preds = %bb.r
  %i.cj = and i64 %.0.copyload.i.i.i.i.i.i.i.i77, -5
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !810
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i78

_ZN5clang4Decl14getDeclContextEv.exit.i78:        ; preds = %bb.t, %bb.s
  %.0.i.i79 = phi ptr [ %i.ci, %bb.s ], [ %i.cl, %bb.t ]
  %.not.i80 = icmp eq ptr %.0.i.i79, null
  br i1 %.not.i80, label %_ZN5clang11ASTImporter11MapImportedEPNS_4DeclES2_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i78
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !921
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !923 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not4.i.i.i, label %_ZN5clang11ASTImporter11MapImportedEPNS_4DeclES2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = and i32 %i.cq, 124
  %i.cs = add nsw i32 %i.cr, -84
  %i.ct = icmp ult i32 %i.cs, -64
  br i1 %i.ct, label %_ZN5clang11ASTImporter11MapImportedEPNS_4DeclES2_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5clang22ASTImporterLookupTable3addEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull %i.ce) #22
  br label %_ZN5clang11ASTImporter11MapImportedEPNS_4DeclES2_.exit

_ZN5clang11ASTImporter11MapImportedEPNS_4DeclES2_.exit: ; preds = %.split177.us, %_ZN5clang4Decl14getDeclContextEv.exit.i78, %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8
  %i.cw = and i8 %i.cv, -2
  store i8 %i.cw, ptr %i.cu, align 8
  store ptr %.us-phi, ptr %0, align 8, !tbaa !139
  br label %bb.ar

.split179.us:                                     ; preds = %bb.o, %bb.q
  %.us-phi180 = phi ptr [ %29, %bb.q ], [ %i.y, %bb.o ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.us-phi180, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cy = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162 ; 4 uses
  %.sroa.013.0.copyload = load i32, ptr %6, align 4, !tbaa !157
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 280176 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !691, !range !678, !noalias !4460, !noundef !161
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.x, label %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit

bb.x:                                             ; preds = %.split179.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 280136
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !231, !noalias !4460, !nonnull !161, !align !162
  %i.de = call noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.dd) #22, !noalias !4460
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 280144
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !692, !noalias !4460, !nonnull !161, !align !162
  %i.dh = call noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.dg) #22, !noalias !4460
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 204
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !731, !noalias !4460
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 204
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !731, !noalias !4460
  br label %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit

_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit: ; preds = %.split179.us, %bb.x
  store i8 0, ptr %i.cz, align 8, !tbaa !691, !noalias !4460
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 280136
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !231, !noalias !4460, !nonnull !161, !align !162
  %i.dn = call noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.dm) #22, !noalias !4460
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %9, ptr noundef nonnull align 8 dereferenceable(15256) %i.dn, i32 %.sroa.013.0.copyload, i32 noundef 2577) #22
  %i.do = load ptr, ptr %9, align 8, !tbaa !735   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit90

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !736
  %i.dr = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.dq) ; 2 uses
  store ptr %i.dr, ptr %9, align 8, !tbaa !735
  br label %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit90

_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit90: ; preds = %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.ds = phi ptr [ %i.dr, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.do, %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.ds, align 8, !tbaa !748
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  store i8 9, ptr %i.dw, align 1, !tbaa !118
  %i.dx = load ptr, ptr %9, align 8, !tbaa !735   ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i8, ptr %i.dx, align 8, !tbaa !748 ; 2 uses
  %i.ea = add i8 %i.dz, 1                         ; 2 uses
  store i8 %i.ea, ptr %i.dx, align 8, !tbaa !748
  %i.eb = zext i8 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eb
  store i64 %.fr, ptr %i.ec, align 8, !tbaa !119
  %.sroa.0.0.copyload.i82 = load i64, ptr %i.u, align 8, !tbaa !118
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.ee = zext i8 %i.ea to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 8, ptr %i.ef, align 1, !tbaa !118
  %i.eg = load ptr, ptr %9, align 8, !tbaa !735   ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i8, ptr %i.eg, align 8, !tbaa !748 ; 2 uses
  %i.ej = add i8 %i.ei, 1                         ; 2 uses
  store i8 %i.ej, ptr %i.eg, align 8, !tbaa !748
  %i.ek = zext i8 %i.ei to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ek
  store i64 %.sroa.0.0.copyload.i82, ptr %i.el, align 8, !tbaa !119
  %.sroa.0.0.copyload.i86 = load i64, ptr %i.cx, align 8, !tbaa !118
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.en = zext i8 %i.ej to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i8 8, ptr %i.eo, align 1, !tbaa !118
  %i.ep = load ptr, ptr %9, align 8, !tbaa !735   ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i8, ptr %i.ep, align 8, !tbaa !748 ; 2 uses
  %i.es = add i8 %i.er, 1
  store i8 %i.es, ptr %i.ep, align 8, !tbaa !748
  %i.et = zext i8 %i.er to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.et
  store i64 %.sroa.0.0.copyload.i86, ptr %i.eu, align 8, !tbaa !119
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ev = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.us-phi180, i64 24
  %.sroa.0.0.copyload.i91 = load i32, ptr %i.ew, align 8, !tbaa !157
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 280176 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !691, !range !678, !noalias !4461, !noundef !161
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.y, label %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit92

bb.y:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit90
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 280136
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !231, !noalias !4461, !nonnull !161, !align !162
  %i.fc = call noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.fb) #22, !noalias !4461
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 280144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !692, !noalias !4461, !nonnull !161, !align !162
  %i.ff = call noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.fe) #22, !noalias !4461
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 204
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !731, !noalias !4461
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 204
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !731, !noalias !4461
  br label %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit92

_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit92: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_8QualTypeEvEERKS0_OT_.exit90, %bb.y
  store i8 0, ptr %i.ex, align 8, !tbaa !691, !noalias !4461
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 280136
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !231, !noalias !4461, !nonnull !161, !align !162
  %i.fl = call noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.fk) #22, !noalias !4461
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %10, ptr noundef nonnull align 8 dereferenceable(15256) %i.fl, i32 %.sroa.0.0.copyload.i91, i32 noundef 2564) #22
  %.sroa.0.0.copyload.i93 = load i64, ptr %i.cx, align 8, !tbaa !118
  %i.fm = load ptr, ptr %10, align 8, !tbaa !735  ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i95, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96, label %_ZN4llvm5ErrorD2Ev.exit98

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96: ; preds = %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit92
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !736
  %i.fp = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.fo) ; 2 uses
  store ptr %i.fp, ptr %10, align 8, !tbaa !735
  br label %_ZN4llvm5ErrorD2Ev.exit98

_ZN4llvm5ErrorD2Ev.exit98:                        ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96, %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit92
  %i.fq = phi ptr [ %i.fp, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i96 ], [ %i.fm, %_ZN5clang11ASTImporter6ToDiagENS_14SourceLocationEj.exit92 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fs = load i8, ptr %i.fq, align 8, !tbaa !748
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft
  store i8 8, ptr %i.fu, align 1, !tbaa !118
  %i.fv = load ptr, ptr %10, align 8, !tbaa !735  ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i8, ptr %i.fv, align 8, !tbaa !748 ; 2 uses
  %i.fy = add i8 %i.fx, 1
  store i8 %i.fy, ptr %i.fv, align 8, !tbaa !748
  %i.fz = zext i8 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fz
  store i64 %.sroa.0.0.copyload.i93, ptr %i.ga, align 8, !tbaa !119
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.gb = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !4462 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5clang14ASTImportErrorE, i64 16), ptr %i.gb, align 8, !tbaa !167, !noalias !4462
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 0, ptr %i.gc, align 8, !tbaa !110, !noalias !4462
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 8
  %i.gf = or i8 %i.ge, 1
  store i8 %i.gf, ptr %i.gd, align 8
  store ptr %i.gb, ptr %0, align 8, !tbaa !165, !alias.scope !4463
  br label %bb.ar

bb.z:                                             ; preds = %.lr.ph.split
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not48 = icmp eq i64 %indvars.iv.next.a, %i.v
  br i1 %.not48, label %.critedge54, label %.lr.ph.split, !llvm.loop !4427

.critedge54:                                      ; preds = %bb.z, %bb.p, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i99 = load i64, ptr %i.gg, align 8, !tbaa !118 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4464)
  %i.gh = load ptr, ptr %1, align 8, !tbaa !160, !noalias !4464, !nonnull !161, !align !162 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  %i.gi = icmp ult i64 %.sroa.0.0.copyload.i99, 16
  br i1 %i.gi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge54
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 8, !alias.scope !4466
  %i.gl = and i8 %i.gk, -2                        ; 2 uses
  store i8 %i.gl, ptr %i.gj, align 8, !alias.scope !4466
  store i64 0, ptr %11, align 8, !tbaa !118, !alias.scope !4466
  br label %_ZN5clang15ASTNodeImporter6importINS_8QualTypeEEEN4llvm8ExpectedIT_EERKS5_.exit

bb.ab:                                            ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !4466
  %i.gm = and i64 %.sroa.0.0.copyload.i99, -16
  %i.gn = inttoptr i64 %i.gm to ptr               ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 16, !tbaa !238, !noalias !4466
  call void @_ZN5clang11ASTImporter6ImportEPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1462") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280400) %i.gh, ptr noundef %i.go), !noalias !4466, !inline_history !1009
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gq = load i8, ptr %i.gp, align 8, !noalias !4466
  %i.gr = trunc i8 %i.gq to i1
  br i1 %i.gr, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 280136
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !231, !noalias !4466, !nonnull !161, !align !162
  %i.gu = load ptr, ptr %4, align 8, !tbaa !240, !noalias !4466 ; 2 uses
  %i.gv = and i64 %.sroa.0.0.copyload.i99, 8
  %.not.i.i.i101 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i.i101, label %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i, label %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i

_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i: ; preds = %bb.ac
  %i.gw = and i64 %.sroa.0.0.copyload.i99, 7
  br label %bb.ad

_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i: ; preds = %bb.ac
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.gx, align 8, !tbaa !119, !noalias !4466 ; 2 uses
  %i.gy = and i64 %.sroa.0.0.copyload.i99, 7
  %i.gz = or i64 %.sroa.0.0.copyload.i.i.i.i, %i.gy ; 2 uses
  %i.ha = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i, 7
  br i1 %i.ha, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i
  %i.hb = phi i64 [ %i.gw, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.thread.i.i ], [ %i.gz, %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i ]
  %i.hc = ptrtoint ptr %i.gu to i64
  %i.hd = and i64 %i.hc, -8
  %i.he = or disjoint i64 %i.hb, %i.hd
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK5clang8QualType18getLocalQualifiersEv.exit.i.i
  %i.hf = call i64 @_ZNK5clang10ASTContext14getExtQualTypeEPKNS_4TypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %i.gt, ptr noundef %i.gu, i64 %i.gz) #22, !noalias !4466, !inline_history !1009
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.05.0.i.i.i = phi i64 [ %i.hf, %bb.ae ], [ %i.he, %bb.ad ]
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 8, !alias.scope !4466
  %i.hi = and i8 %i.hh, -2                        ; 2 uses
  store i8 %i.hi, ptr %i.hg, align 8, !alias.scope !4466
  br label %_ZN4llvm8ExpectedIPKN5clang4TypeEED2Ev.exit.i.i

bb.ag:                                            ; preds = %bb.ab
  %i.hj = load i64, ptr %4, align 8, !tbaa !165, !noalias !4467
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 8, !alias.scope !4466
  %i.hm = or i8 %i.hl, 1                          ; 2 uses
  store i8 %i.hm, ptr %i.hk, align 8, !alias.scope !4466
  br label %_ZN4llvm8ExpectedIPKN5clang4TypeEED2Ev.exit.i.i

_ZN4llvm8ExpectedIPKN5clang4TypeEED2Ev.exit.i.i:  ; preds = %bb.ag, %bb.af
  %i.hn = phi i8 [ %i.hm, %bb.ag ], [ %i.hi, %bb.af ]
  %.sink.i.i = phi i64 [ %i.hj, %bb.ag ], [ %.sroa.05.0.i.i.i, %bb.af ] ; 2 uses
  %storemerge12.i.i = inttoptr i64 %.sink.i.i to ptr
  store ptr %storemerge12.i.i, ptr %11, align 8, !tbaa !118, !alias.scope !4466
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !4466
  %i.ho = inttoptr i64 %.sink.i.i to ptr
  br label %_ZN5clang15ASTNodeImporter6importINS_8QualTypeEEEN4llvm8ExpectedIT_EERKS5_.exit

_ZN5clang15ASTNodeImporter6importINS_8QualTypeEEEN4llvm8ExpectedIT_EERKS5_.exit: ; preds = %bb.aa, %_ZN4llvm8ExpectedIPKN5clang4TypeEED2Ev.exit.i.i
  %i.hp = phi ptr [ null, %bb.aa ], [ %i.ho, %_ZN4llvm8ExpectedIPKN5clang4TypeEED2Ev.exit.i.i ]
  %i.hq = phi i8 [ %i.gl, %bb.aa ], [ %i.hn, %_ZN4llvm8ExpectedIPKN5clang4TypeEED2Ev.exit.i.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hs = trunc i8 %i.hq to i1
  br i1 %i.hs, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.ah

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZN5clang15ASTNodeImporter6importINS_8QualTypeEEEN4llvm8ExpectedIT_EERKS5_.exit
  store ptr null, ptr %11, align 8, !tbaa !165, !noalias !4468
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8
  %i.hv = or i8 %i.hu, 1
  store i8 %i.hv, ptr %i.ht, align 8
  store ptr %i.hp, ptr %0, align 8, !tbaa !165, !alias.scope !4469
  br label %bb.ap

bb.ah:                                            ; preds = %_ZN5clang15ASTNodeImporter6importINS_8QualTypeEEEN4llvm8ExpectedIT_EERKS5_.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !4471 ; 2 uses
  %i.hy = zext i32 %i.hx to i64
  %i.hz = shl nuw nsw i64 %i.hy, 3                ; 4 uses
  %i.ia = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 280136
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !231, !nonnull !161, !align !162 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2632 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !256 ; 2 uses
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = add i64 %i.hz, %i.if                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 2640
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !257
  %i.ij = icmp ult i64 %i.ig, %i.ii
  br i1 %i.ij, label %bb.ai, label %bb.aj, !prof !141

bb.ai:                                            ; preds = %bb.ah
  %i.ik = inttoptr i64 %i.ig to ptr
  store ptr %i.ik, ptr %i.id, align 8, !tbaa !256
  br label %_ZnamRKN5clang10ASTContextEm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.il = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.id, i64 noundef %i.hz, i64 noundef %i.hz, i8 3)
  %.pre205 = load i32, ptr %i.hw, align 8, !tbaa !4471 ; 2 uses
  %.pre208 = zext i32 %.pre205 to i64
  %.pre209 = shl nuw nsw i64 %.pre208, 3
  br label %_ZnamRKN5clang10ASTContextEm.exit

_ZnamRKN5clang10ASTContextEm.exit:                ; preds = %bb.ai, %bb.aj
  %.idx.pre-phi = phi i64 [ %i.hz, %bb.ai ], [ %.pre209, %bb.aj ]
  %i.im = phi i32 [ %i.hx, %bb.ai ], [ %.pre205, %bb.aj ]
  %.0.i.i.i.i = phi ptr [ %i.ie, %bb.ai ], [ %i.il, %bb.aj ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !4472 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx.pre-phi
  %.not50183 = icmp eq i32 %i.im, 0
  br i1 %.not50183, label %.critedge56, label %.lr.ph186

.lr.ph186:                                        ; preds = %_ZnamRKN5clang10ASTContextEm.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph186, %bb.al
  %indvars.iv202 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next203, %bb.al ] ; 2 uses
  %.0185 = phi ptr [ %i.io, %.lr.ph186 ], [ %i.ix, %bb.al ] ; 2 uses
  %i.ir = load ptr, ptr %.0185, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !4473
  %i.is = load ptr, ptr %1, align 8, !tbaa !160, !noalias !4473, !nonnull !161, !align !162
  call void @_ZN5clang11ASTImporter6ImportEPNS_4DeclE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.511") align 8 %3, ptr noundef nonnull align 8 dereferenceable(280400) %i.is, ptr noundef %i.ir), !noalias !4473, !inline_history !48
  %i.it = load i8, ptr %i.iq, align 8, !noalias !4473
  %i.iu = trunc i8 %i.it to i1
  br i1 %i.iu, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iv = load ptr, ptr %3, align 8, !tbaa !139, !noalias !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !4473
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv202
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !187
  %i.ix = getelementptr inbounds nuw i8, ptr %.0185, i64 8 ; 2 uses
  %.not50 = icmp eq ptr %i.ix, %i.ip
  br i1 %.not50, label %.critedge56.loopexit, label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.iy = load i64, ptr %3, align 8, !tbaa !165, !noalias !4474
  %i.iz = inttoptr i64 %i.iy to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !4473
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 8
  %i.jc = or i8 %i.jb, 1
  store i8 %i.jc, ptr %i.ja, align 8
  store ptr %i.iz, ptr %0, align 8, !tbaa !165, !alias.scope !4475
  br label %bb.ap

.critedge56.loopexit:                             ; preds = %bb.al
  %.pre206 = load i32, ptr %i.hw, align 8, !tbaa !4471
  %i.jd = zext i32 %.pre206 to i64
  br label %.critedge56

.critedge56:                                      ; preds = %.critedge56.loopexit, %_ZnamRKN5clang10ASTContextEm.exit
  %i.je = phi i64 [ %i.jd, %.critedge56.loopexit ], [ 0, %_ZnamRKN5clang10ASTContextEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %.0.i.i.i.i, ptr %12, align 8, !tbaa !1055
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !1056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.jg = load ptr, ptr %1, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 280136
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !231, !nonnull !161, !align !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.jj = and i64 %.fr, 7
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = and i64 %.fr, -8
  %i.jm = inttoptr i64 %i.jl to ptr
  %.0.i107 = select i1 %i.jk, ptr %i.jm, ptr null
  store ptr %.0.i107, ptr %i.g, align 8, !tbaa !642
  %i.jn = call noundef zeroext i1 @_ZN5clang15ASTNodeImporter30GetImportedOrCreateSpecialDeclINS_17IndirectFieldDeclENS0_23CallOverloadedCreateFunIS2_EES2_JRNS_10ASTContextERPNS_11DeclContextERNS_14SourceLocationEPNS_14IdentifierInfoERNS_8QualTypeERN4llvm15MutableArrayRefIPNS_9NamedDeclEEEEEEbRPT_T0_PT1_DpOT2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(23904) %i.ji, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br i1 %i.jn, label %bb.ao, label %bb.an
end_hunk_0
