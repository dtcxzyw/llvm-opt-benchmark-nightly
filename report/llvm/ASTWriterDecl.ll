Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTWriterDecl?download=true
inline.NumInlined: 7860
inline.NumDeleted: 3463
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5clang13ASTDeclWriter17VisitRedeclarableINS_7TagDeclEEEvPNS_12RedeclarableIT_EE:bb.a
_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i: ; preds = %bb.z, %bb.y
  %i.ds = load ptr, ptr %i.at, align 8, !tbaa !592 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !440 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !593
  %.not.i1.i = icmp ult i32 %i.du, %i.dw
  br i1 %.not.i1.i, label %bb.ab, label %bb.aa, !prof !594

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 noundef %i.de)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit29

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i
  %i.dx = zext i32 %i.du to i64
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !439
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store i64 %i.de, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.dt, align 8, !tbaa !440
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dt, align 8, !tbaa !440
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit29

_ZN5clang15ASTRecordWriter9push_backEm.exit29:    ; preds = %bb.ab, %bb.aa, %bb.w, %bb.v
  %i.ec = load ptr, ptr %i.cc, align 8, !tbaa !439 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cd
  br i1 %i.ed, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit29
  call void @free(ptr noundef %i.ec) #20
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i:          ; preds = %bb.ac, %_ZN5clang15ASTRecordWriter9push_backEm.exit29
  %i.ee = load ptr, ptr %i.by, align 8, !tbaa !439 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.bz
  br i1 %i.ef, label %_ZN5clang15ASTRecordWriterD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i
  call void @free(ptr noundef %i.ee) #20
  br label %_ZN5clang15ASTRecordWriterD2Ev.exit

_ZN5clang15ASTRecordWriterD2Ev.exit:              ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.eg = load ptr, ptr %2, align 8, !tbaa !439   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bs
  br i1 %i.eh, label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang15ASTRecordWriterD2Ev.exit
  call void @free(ptr noundef %i.eg) #20
  br label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit

_ZN4llvm11SmallVectorImLj64EED2Ev.exit:           ; preds = %_ZN5clang15ASTRecordWriterD2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ai

bb.af:                                            ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !593
  %.not.i.i31 = icmp ult i32 %i.ba, %i.ej
  br i1 %.not.i.i31, label %bb.ah, label %bb.ag, !prof !594

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 noundef 0)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit32

bb.ah:                                            ; preds = %bb.af
  %i.ek = zext i32 %i.ba to i64
  %i.el = load ptr, ptr %i.ay, align 8, !tbaa !439
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ek
  store i64 0, ptr %i.em, align 1
  %i.en = load i32, ptr %i.az, align 8, !tbaa !440
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.az, align 8, !tbaa !440
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit32

_ZN5clang15ASTRecordWriter9push_backEm.exit32:    ; preds = %bb.ag, %bb.ah
  %i.ep = load ptr, ptr %i.ar, align 8, !tbaa !596
  %i.eq = load ptr, ptr %i.at, align 8, !tbaa !592
  tail call void @_ZN5clang9ASTWriter10AddDeclRefEPKNS_4DeclERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.ep, ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #20
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit32, %_ZN4llvm11SmallVectorImLj64EED2Ev.exit
  %i.er = load ptr, ptr %0, align 8, !tbaa !599, !nonnull !437, !align !438
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %1, align 8 ; 3 uses
  %i.es = and i64 %.0.copyload.i.i.i.i.i.i.i, 3
  %.not.i33 = icmp eq i64 %i.es, 0
  %i.et = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i, 3
  %or.cond.i = and i1 %i.et, %.not.i33
  %i.eu = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  %.0.i = select i1 %or.cond.i, ptr %i.eu, ptr null
  %i.ev = call i64 @_ZN5clang9ASTWriter10GetDeclRefEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(3772) %i.er, ptr noundef %.0.i) #20 ; 0 uses
  %i.ew = load ptr, ptr %0, align 8, !tbaa !599, !nonnull !437, !align !438
  %i.ex = call i64 @_ZN5clang9ASTWriter10GetDeclRefEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(3772) %i.ew, ptr noundef %.3.i.i.i) #20 ; 0 uses
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit35

bb.aj:                                            ; preds = %_ZN5clang12RedeclarableINS_7TagDeclEE17getMostRecentDeclEv.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !592 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !440 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !593
  %.not.i.i34 = icmp ult i32 %i.fb, %i.fd
  br i1 %.not.i.i34, label %bb.al, label %bb.ak, !prof !594

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 noundef 0)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit35

bb.al:                                            ; preds = %bb.aj
  %i.fe = zext i32 %i.fb to i64
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !439
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fe
  store i64 0, ptr %i.fg, align 1
  %i.fh = load i32, ptr %i.fa, align 8, !tbaa !440
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fa, align 8, !tbaa !440
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit35

_ZN5clang15ASTRecordWriter9push_backEm.exit35:    ; preds = %bb.al, %bb.ak, %bb.ai
  ret void
}

declare void @_ZN5clang15ASTRecordWriter16AddQualifierInfoERKNS_13QualifierInfoE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclWriter13VisitEnumDeclEPNS_8EnumDeclE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTDeclWriter12VisitTagDeclEPNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8 ; 2 uses
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i, -5
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.e
  tail call void @_ZN5clang15ASTRecordWriter17AddTypeSourceInfoEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef %.0.i.i.i.i) #20
  %.sroa.0.0.copyload.i.i.i.i38 = load i64, ptr %i.b, align 8 ; 4 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i38, 4
  %.not.i.i.i.i39 = icmp eq i64 %i.f, 0           ; 2 uses
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i38, -5 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %.not78 = icmp eq i64 %i.g, 0
  %.not = or i1 %.not.i.i.i.i39, %.not78
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i38, 7
  br i1 %i.i, label %bb.c, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i39, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i38, -8
  br label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !572 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !813 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i.i5.i = load i64, ptr %i.n, align 8, !tbaa !572
  %i.o = and i64 %.sroa.0.0.copyload.i.i5.i, 15
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i) #20
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.q, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  %.sroa.03.0.i.i = and i64 %.sroa.03.0.in.i.i, -8
  br label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit

_ZNK5clang8EnumDecl14getIntegerTypeEv.exit:       ; preds = %bb.b, %bb.d, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i
  %.sroa.06.1.i = phi i64 [ %.sroa.03.0.i.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i ], [ %i.j, %bb.d ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !596
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !765, !nonnull !437, !align !438
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !592
  tail call void @_ZN5clang9ASTWriter10AddTypeRefERNS_10ASTContextENS_8QualTypeERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.s, ptr noundef nonnull align 8 dereferenceable(23904) %i.t, i64 %.sroa.06.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !572
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !596
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !765, !nonnull !437, !align !438
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !592
  tail call void @_ZN5clang9ASTWriter10AddTypeRefERNS_10ASTContextENS_8QualTypeERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.y, ptr noundef nonnull align 8 dereferenceable(23904) %i.z, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i40, ptr %i.ac, align 8            ; 2 uses
  %2 = zext i40 %i.ad to i64
  %3 = lshr i64 %2, 23
  %4 = and i64 %3, 255
  %sh.diff = lshr i40 %i.ad, 23                   ; 2 uses
  %5 = and i40 %sh.diff, 65280
  %6 = zext nneg i40 %5 to i64
  %7 = or disjoint i64 %4, %6
  %8 = and i40 %sh.diff, 65536
  %i.ae = zext nneg i40 %8 to i64
  %9 = or disjoint i64 %7, %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.ag = load i8, ptr %i.af, align 1
  %.mask = and i8 %i.ag, 3
  %.zext = zext nneg i8 %.mask to i64
  %i.ah = shl nuw nsw i64 %.zext, 17
  %i.ai = or disjoint i64 %9, %i.ah               ; 2 uses
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !592 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !440 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !593
  %.not.i.i41 = icmp ult i32 %i.al, %i.an
  br i1 %.not.i.i41, label %bb.i, label %bb.h, !prof !594

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef %i.ai)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.al to i64
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !439
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store i64 %i.ai, ptr %i.aq, align 1
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !440
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ak, align 8, !tbaa !440
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

_ZN5clang15ASTRecordWriter9push_backEm.exit:      ; preds = %bb.h, %bb.i
  %i.at = tail call noundef i32 @_ZN5clang8EnumDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(164) %1) #20
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !592 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !440 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !593
  %.not.i.i42 = icmp ult i32 %i.ax, %i.az
  br i1 %.not.i.i42, label %bb.k, label %bb.j, !prof !594

bb.j:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef %i.au)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit43

bb.k:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.ba = zext i32 %i.ax to i64
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !439
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  store i64 %i.au, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.aw, align 8, !tbaa !440
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.aw, align 8, !tbaa !440
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit43

_ZN5clang15ASTRecordWriter9push_backEm.exit43:    ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1145 ; 4 uses
  %.not34 = icmp eq ptr %i.bg, null
  br i1 %.not34, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit43
  %.0.copyload.i.i.i.i44 = load i64, ptr %i.bg, align 8
  %i.bh = and i64 %.0.copyload.i.i.i.i44, -8
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !596
  %i.bk = load ptr, ptr %i.aa, align 8, !tbaa !592
  tail call void @_ZN5clang9ASTWriter10AddDeclRefEPKNS_4DeclERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.bj, ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #20
  %.0.copyload.i.i.i.i45 = load i64, ptr %i.bg, align 8
  %i.bl = lshr i64 %.0.copyload.i.i.i.i45, 1
  %i.bm = and i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %i.bo = load ptr, ptr %i.aa, align 8, !tbaa !592 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !440 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !593
  %.not.i.i46 = icmp ult i32 %i.bq, %i.bs
  br i1 %.not.i.i46, label %bb.n, label %bb.m, !prof !594

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 noundef %i.bn)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit47

bb.n:                                             ; preds = %bb.l
  %i.bt = zext i32 %i.bq to i64
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !439
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  store i64 %i.bn, ptr %i.bv, align 1
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !440
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bp, align 8, !tbaa !440
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit47

_ZN5clang15ASTRecordWriter9push_backEm.exit47:    ; preds = %bb.m, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0.0.copyload.i48 = load i32, ptr %i.by, align 8, !tbaa !782
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !596
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !592
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.bz, i32 %.sroa.0.0.copyload.i48, ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20
  br label %bb.p

bb.o:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit43
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !596
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !592
  tail call void @_ZN5clang9ASTWriter10AddDeclRefEPKNS_4DeclERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.cb, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5clang15ASTRecordWriter9push_backEm.exit47
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 8 ; 2 uses
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread, label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

_ZN5clang4Decl21getLexicalDeclContextEv.exit:     ; preds = %bb.p
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !770
  %i.cl = icmp eq ptr %i.ci, %i.ck
  br i1 %i.cl, label %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread, label %.critedge

_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread: ; preds = %bb.p, %_ZN5clang4Decl21getLexicalDeclContextEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = and i32 %i.cn, 896
  %or.cond75.not = icmp eq i32 %i.co, 0
  br i1 %or.cond75.not, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cp, align 8
  %or.cond77 = icmp eq i64 %.0.copyload.i.i.i.i.i.i, 0
  br i1 %or.cond77, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !811
  %i.cs = tail call noundef ptr @_ZN5clang8EnumDecl17getMostRecentDeclEv(ptr noundef nonnull align 8 dereferenceable(164) %1)
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.cu = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.cv = and i32 %i.cu, 4096
  %.not81 = icmp eq i32 %i.cv, 0
  br i1 %.not81, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cw = and i32 %i.cu, 127
  %i.cx = add nsw i32 %i.cw, -60
  %i.cy = icmp ult i32 %i.cx, 3
  br i1 %i.cy, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.copyload.i.i.i.i53 = load i64, ptr %i.b, align 8 ; 2 uses
  %i.cz = and i64 %.sroa.0.0.copyload.i.i.i.i53, 4
  %.not.i.i.i.i54 = icmp eq i64 %i.cz, 0
  %i.da = and i64 %.sroa.0.0.copyload.i.i.i.i53, -5
  %.not3682 = icmp eq i64 %i.da, 0
  %.not36 = or i1 %.not.i.i.i.i54, %.not3682
  br i1 %.not36, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.db = load ptr, ptr %i.bf, align 8, !tbaa !1145
  %.not37 = icmp eq ptr %i.db, null
  br i1 %.not37, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.dc = tail call noundef zeroext i1 @_ZN5clang13serialization31needsAnonymousDeclarationNumberEPKNS_9NamedDeclE(ptr noundef nonnull %1) #20
  br i1 %i.dc, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i56 = load i64, ptr %i.dd, align 8, !tbaa !781
  %i.de = and i64 %.sroa.0.0.copyload.i56, 7
  %cond = icmp eq i64 %i.de, 0
  br i1 %cond, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %0, align 8, !tbaa !599, !nonnull !437, !align !438
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 3684
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !823
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !808
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_ZN5clang4Decl21getLexicalDeclContextEv.exit.thread, %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 53, ptr %i.dj, align 8, !tbaa !595
  ret void
}

declare noundef i32 @_ZN5clang8EnumDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(164)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang8EnumDecl17getMostRecentDeclEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !811  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -2
  %spec.select.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
end_hunk_0
