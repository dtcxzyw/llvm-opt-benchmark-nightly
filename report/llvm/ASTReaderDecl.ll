Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReaderDecl?download=true
inline.NumInlined: 19414
inline.NumDeleted: 7686
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5clang13serialization15BasicReaderBaseINS_15ASTRecordReaderEE19readDeclarationNameEv:bb.a
  %.sroa.0.0.i.i.i40 = phi i64 [ %i.cv, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 17800
  %i.cx = and i64 %.sroa.0.0.i.i.i40, -16
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !974
  %i.db = and i64 %.sroa.0.0.i.i.i40, 7
  %i.dc = or i64 %i.da, %i.db
  %i.dd = tail call i64 @_ZN5clang20DeclarationNameTable28getCXXConversionFunctionNameENS_7CanQualINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(824) %i.cw, i64 %i.dc) #25
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1032 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !973
  %i.di = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.df, ptr noundef nonnull align 8 dereferenceable(3832) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #25
  %i.dj = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.df, i64 %i.di) #25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 17800
  %i.dl = tail call i64 @_ZN5clang20DeclarationNameTable24getCXXDeductionGuideNameEPNS_12TemplateDeclE(ptr noundef nonnull align 8 dereferenceable(824) %i.dk, ptr noundef %i.dj) #25
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.dm = add i32 %i.d, 2
  store i32 %i.dm, ptr %i.c, align 8, !tbaa !163
  %i.dn = zext i32 %i.e to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !165
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 17856
  %sext = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %sext, 28
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = or disjoint i64 %i.dt, 6
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1032 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !973
  %i.dz = add i32 %i.d, 2
  store i32 %i.dz, ptr %i.c, align 8, !tbaa !1081
  %i.ea = zext i32 %i.e to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !165
  %i.ed = tail call noundef i64 @_ZN5clang9ASTReader21getGlobalIdentifierIDERNS_13serialization10ModuleFileEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.dw, ptr noundef nonnull align 8 dereferenceable(3832) %i.dy, i64 noundef %i.ec) #25
  %i.ee = tail call noundef ptr @_ZN5clang9ASTReader20DecodeIdentifierInfoEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.dw, i64 noundef %i.ed) #25
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 17800
  %i.eg = tail call i64 @_ZN5clang20DeclarationNameTable25getCXXLiteralOperatorNameEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(824) %i.ef, ptr noundef %i.ee) #25
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.eh = load atomic i8, ptr @_ZGVZN5clang15DeclarationName21getUsingDirectiveNameEvE9UDirExtra acquire, align 8
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %bb.p, label %_ZN5clang15DeclarationName21getUsingDirectiveNameEv.exit, !prof !1737

bb.p:                                             ; preds = %bb.o
  %i.ej = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang15DeclarationName21getUsingDirectiveNameEvE9UDirExtra) #25
  %.not.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i, label %_ZN5clang15DeclarationName21getUsingDirectiveNameEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr @_ZZN5clang15DeclarationName21getUsingDirectiveNameEvE9UDirExtra, align 8, !tbaa !1739
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang15DeclarationName21getUsingDirectiveNameEvE9UDirExtra) #25
  br label %_ZN5clang15DeclarationName21getUsingDirectiveNameEv.exit

_ZN5clang15DeclarationName21getUsingDirectiveNameEv.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ek = or disjoint i64 ptrtoint (ptr @_ZZN5clang15DeclarationName21getUsingDirectiveNameEvE9UDirExtra to i64), 7
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  unreachable

bb.s:                                             ; preds = %_ZN5clang15DeclarationName21getUsingDirectiveNameEv.exit, %bb.n, %bb.m, %bb.l, %_ZN5clang15ASTRecordReader12readQualTypeEv.exit41, %_ZN5clang15ASTRecordReader12readQualTypeEv.exit38, %_ZN5clang15ASTRecordReader12readQualTypeEv.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.u, %bb.b ], [ %i.ae, %bb.c ], [ %i.ao, %bb.d ], [ %i.ay, %bb.e ], [ %i.br, %_ZN5clang15ASTRecordReader12readQualTypeEv.exit ], [ %i.ck, %_ZN5clang15ASTRecordReader12readQualTypeEv.exit38 ], [ %i.dd, %_ZN5clang15ASTRecordReader12readQualTypeEv.exit41 ], [ %i.dl, %bb.l ], [ %i.du, %bb.m ], [ %i.eg, %bb.n ], [ %i.ek, %_ZN5clang15DeclarationName21getUsingDirectiveNameEv.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader13VisitTypeDeclEPNS_8TypeDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTDeclReader9VisitDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156
  %i.c = tail call i64 @_ZN5clang13serialization15BasicReaderBaseINS_15ASTRecordReaderEE19readDeclarationNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.c, ptr %i.d, align 8, !tbaa !165
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !163
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8, !tbaa !165
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.n, ptr %i.o, align 8, !tbaa !1200
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !973  ; 4 uses
  %i.t = load i32, ptr %i.g, align 8, !tbaa !1081 ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.g, align 8, !tbaa !1081
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !165  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 912
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1196
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.q, ptr noundef nonnull align 8 dereferenceable(3832) %i.s) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.x, 32 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.ab, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 3688
  %i.ad = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ %i.s, %bb.c ]
  %i.aj = trunc i64 %i.x to i32                   ; 3 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 31)
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1712
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = add i32 %i.ak, -2
  %i.ap = add i32 %i.ao, %i.an
  %.sroa.0.0.i.i.i.i.i = select i1 %i.al, i32 0, i32 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !1081
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 127
  switch i32 %i.at, label %bb.e [
    i32 66, label %bb.f
    i32 65, label %bb.f
    i32 63, label %bb.f
    i32 62, label %bb.f
    i32 61, label %bb.f
    i32 60, label %bb.f
    i32 59, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !163 ; 2 uses
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !163
  %i.az = zext i32 %i.ax to i64
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !164
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !165
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1032
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !973
  %i.bh = tail call noundef i64 @_ZNK5clang9ASTReader15getGlobalTypeIDERNS_13serialization10ModuleFileEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.be, ptr noundef nonnull align 8 dereferenceable(3832) %i.bg, i64 noundef %i.bc) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !998
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader16VisitTypedefDeclEPNS_11TypedefDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::RedeclarableResult", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call fastcc void @_ZN5clang13ASTDeclReader20VisitTypedefNameDeclEPNS_15TypedefNameDeclE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
  %i.a = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %spec.select = select i1 %i.a, ptr null, ptr %i.b
  call fastcc void @_ZN5clang13ASTDeclReader17mergeRedeclarableINS_15TypedefNameDeclEEEvPNS_12RedeclarableIT_EERN12_GLOBAL__N_118RedeclarableResultE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(17) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13ASTDeclReader20VisitTypedefNameDeclEPNS_15TypedefNameDeclE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1744, !nonnull !155, !align !156 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1032, !noalias !1744
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !973, !noalias !1744
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.e, ptr noundef nonnull align 8 dereferenceable(3832) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #25, !noalias !1744 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1013, !noalias !1744 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.j
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1744, !nonnull !155, !align !156 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !163, !noalias !1744 ; 2 uses
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !163, !noalias !1744
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !164, !noalias !1744 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !165, !noalias !1744
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %.not.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.x, 1
  %i.z = add i32 %i.x, -1                         ; 2 uses
  %.not2433.i = icmp eq i32 %i.z, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1744 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !1744
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !1744
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.aa = phi ptr [ %i.u, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ab = phi i32 [ %i.s, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ac = phi ptr [ %i.o, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.au, %._crit_edge.loopexit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = add i32 %i.ab, 1
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !163, !noalias !1744
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !165, !noalias !1744 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1744
  %i.ak = sub i64 %i.aj, %i.ah
  %i.al = select i1 %.not.i.i, i64 0, i64 %i.ak
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.av, %.lr.ph.i ], [ 0, %bb.c ]
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1744, !nonnull !155, !align !156 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1032, !noalias !1744 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !973, !noalias !1744
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ao, ptr noundef nonnull align 8 dereferenceable(3832) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as) #25, !noalias !1744
  %i.au = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ao, i64 %i.at) #25, !noalias !1744
  %i.av = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.av, %i.z
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1742

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1032, !noalias !1744 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !973, !noalias !1744
  %i.ba = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ax, ptr noundef nonnull align 8 dereferenceable(3832) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q) #25, !noalias !1744
  %i.bb = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ax, i64 %i.ba) #25, !noalias !1744 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.al, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.j, %bb.d ], [ %i.j, %._crit_edge.i ], [ %i.l, %bb.a ] ; 2 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.m, %bb.d ], [ %i.y, %._crit_edge.i ], [ true, %bb.a ]
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !167, !noalias !1744, !nonnull !155, !align !156
  %i.bd = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.bc, i64 %.sroa.028.0.i) #25, !noalias !1744 ; 4 uses
  %.not25.i11 = icmp eq ptr %2, %i.bd
  br i1 %.not25.i11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = ptrtoint ptr %i.bd to i64
  store i64 %i.be, ptr %i.a, align 8, !noalias !1744
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !987, !noalias !1744
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !1744
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(88) %i.bd) #25, !noalias !1744, !inline_history !1743
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !1205, !noalias !1744
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_15TypedefNameDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %1, align 8, !tbaa !167, !noalias !1744, !nonnull !155, !align !156 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11088 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 11096 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !975, !noalias !1744 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 11100
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !979, !noalias !1744
  %.not.i26.i = icmp ult i32 %i.bn, %i.bp
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr %2, i64 %.032.i), !noalias !1744
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_15TypedefNameDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = zext i32 %i.bn to i64
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !164, !noalias !1744
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  store ptr %2, ptr %i.bs, align 1, !noalias !1744
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !1744
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !975, !noalias !1744
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bm, align 8, !tbaa !975, !noalias !1744
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_15TypedefNameDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_15TypedefNameDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.bv = zext i1 %.118.i to i8
  store ptr %.2.i, ptr %0, align 8, !tbaa !1207, !alias.scope !1744
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.i, ptr %i.bw, align 8, !alias.scope !1744
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !1208, !alias.scope !1744
  tail call void @_ZN5clang13ASTDeclReader13VisitTypeDeclEPNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef %2)
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156
  %i.bz = tail call noundef ptr @_ZN5clang15ASTRecordReader18readTypeSourceInfoEv(ptr noundef nonnull align 8 dereferenceable(560) %i.by) #25 ; 2 uses
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !163 ; 3 uses
  %i.ce = add i32 %i.cd, 1                        ; 3 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !163
  %i.cf = zext i32 %i.cd to i64
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !164 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !165
  %.not = icmp eq i64 %i.ci, 0
  br i1 %.not, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_15TypedefNameDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !975
  %.not.i.i8 = icmp ugt i32 %i.ck, %i.ce
  br i1 %.not.i.i8, label %bb.l, label %_ZN5clang15ASTRecordReader8readTypeEv.exit

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !973
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1032
  %i.cp = zext i32 %i.ce to i64
  %i.cq = add i32 %i.cd, 2
  store i32 %i.cq, ptr %i.cc, align 8, !tbaa !1081
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cp
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !165
  %i.ct = tail call i64 @_ZN5clang9ASTReader12getLocalTypeERNS_13serialization10ModuleFileEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.co, ptr noundef nonnull align 8 dereferenceable(3832) %i.cm, i64 noundef %i.cs) #25
  br label %_ZN5clang15ASTRecordReader8readTypeEv.exit

_ZN5clang15ASTRecordReader8readTypeEv.exit:       ; preds = %bb.k, %bb.l
  %.sroa.0.0.i.i = phi i64 [ %i.ct, %bb.l ], [ 0, %bb.k ]
  %i.cu = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #27 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2632 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1039 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = add i64 %i.cx, 16                       ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 2640
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1040
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.m, label %bb.n, !prof !980

bb.m:                                             ; preds = %_ZN5clang15ASTRecordReader8readTypeEv.exit
  %i.dc = inttoptr i64 %i.cy to ptr
  store ptr %i.dc, ptr %i.cv, align 8, !tbaa !1039
  br label %_ZN5clang15TypedefNameDecl22setModedTypeSourceInfoEPNS_14TypeSourceInfoENS_8QualTypeE.exit

bb.n:                                             ; preds = %_ZN5clang15ASTRecordReader8readTypeEv.exit
  %i.dd = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, i64 noundef 16, i64 noundef 16, i8 3) ; 2 uses
  %.pre.i9 = ptrtoint ptr %i.dd to i64
  br label %_ZN5clang15TypedefNameDecl22setModedTypeSourceInfoEPNS_14TypeSourceInfoENS_8QualTypeE.exit

_ZN5clang15TypedefNameDecl22setModedTypeSourceInfoEPNS_14TypeSourceInfoENS_8QualTypeE.exit: ; preds = %bb.m, %bb.n
  %.pre-phi.i = phi i64 [ %i.cx, %bb.m ], [ %.pre.i9, %bb.n ]
  %.0.i.i.i.i.i = phi ptr [ %i.cw, %bb.m ], [ %i.dd, %bb.n ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %i.bz, ptr %.0.i.i.i.i.i, align 8, !tbaa !1746
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.df, align 8, !tbaa !974
  %.0.copyload.i.i.i.i = load i64, ptr %i.de, align 8
  %i.dg = and i64 %.0.copyload.i.i.i.i, 3
  %i.dh = or i64 %.pre-phi.i, %i.dg
  %i.di = or i64 %i.dh, 4
  store i64 %i.di, ptr %i.de, align 8
  br label %bb.p

bb.o:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_15TypedefNameDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.dk = ptrtoint ptr %i.bz to i64
  %.0.copyload.i.i.i.i10 = load i64, ptr %i.dj, align 8
  %i.dl = and i64 %.0.copyload.i.i.i.i10, 3
  %i.dm = or i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.dj, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5clang15TypedefNameDecl22setModedTypeSourceInfoEPNS_14TypeSourceInfoENS_8QualTypeE.exit
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1032 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !973
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.du = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.dp, ptr noundef nonnull align 8 dereferenceable(3832) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.dt) #25
  %i.dv = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.dp, i64 %i.du) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13ASTDeclReader17mergeRedeclarableINS_15TypedefNameDeclEEEvPNS_12RedeclarableIT_EERN12_GLOBAL__N_118RedeclarableResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(89) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.clang::ASTDeclReader::FindExistingResult", align 8 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !588
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2600
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !970, !nonnull !155, !align !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627776
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %_ZN5clang13ASTDeclMerger17mergeRedeclarableINS_15TypedefNameDeclEEEvPNS_12RedeclarableIT_EEPS4_RN12_GLOBAL__N_118RedeclarableResultE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i, 3
  %.not30 = icmp eq i64 %i.k, 0
  br i1 %.not30, label %_ZN5clang13ASTDeclMerger17mergeRedeclarableINS_15TypedefNameDeclEEEvPNS_12RedeclarableIT_EEPS4_RN12_GLOBAL__N_118RedeclarableResultE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %2, align 8, !tbaa !1207  ; 3 uses
  %.not15 = icmp eq ptr %.val, null
  br i1 %.not15, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val20 = load i64, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val21 = load i8, ptr %i.n, align 8, !tbaa !1208, !range !985, !noundef !155
  %i.o = trunc nuw i8 %.val21 to i1
  %spec.select.i = select i1 %i.o, i64 %.val20, i64 0 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %1, i64 -64 ; 2 uses
  %i.q = load ptr, ptr %.val, align 8, !tbaa !987
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(88) %.val) #25, !inline_history !1747 ; 5 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !987
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(88) %i.p) #25, !inline_history !1747
  %.not.i.i = icmp eq ptr %i.t, %i.x
  br i1 %.not.i.i, label %_ZN5clang13ASTDeclMerger17mergeRedeclarableINS_15TypedefNameDeclEEEvPNS_12RedeclarableIT_EEPS4_RN12_GLOBAL__N_118RedeclarableResultE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.t to i64
  store i64 %i.y, ptr %1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.t, ptr %i.z, align 8, !tbaa !1205
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -36 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ab, 1024
  %i.af = or i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.ac, align 4
  %i.ag = load i32, ptr %i.aa, align 4
  %i.ah = and i32 %i.ag, -1025
  store i32 %i.ah, ptr %i.aa, align 4
  %.not23.i.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not23.i.i, label %_ZN5clang13ASTDeclMerger17mergeRedeclarableINS_15TypedefNameDeclEEEvPNS_12RedeclarableIT_EEPS4_RN12_GLOBAL__N_118RedeclarableResultE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 13048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr %i.t, ptr %i.b, align 8, !tbaa !971
  %i.ak = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorINS2_12GlobalDeclIDELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !1747
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ak, 0 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !975 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !979
  %.not.i.i.i = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i.i.i, label %bb.h, label %bb.g, !prof !980

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang12GlobalDeclIDELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 %spec.select.i), !inline_history !1747
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12GlobalDeclIDELb1EE9push_backES2_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.aq = zext i32 %i.an to i64
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !164
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  store i64 %spec.select.i, ptr %i.as, align 1
  %i.at = load i32, ptr %i.am, align 8, !tbaa !975
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.am, align 8, !tbaa !975
end_hunk_0
begin_hunk_1_@_ZN5clang13ASTDeclReader13VisitEnumDeclEPNS_8EnumDeclE:bb.a
  %i.es = load i32, ptr %i.er, align 4, !tbaa !1045 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i32 %i.ep, %i.es
  br i1 %.not12.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.es, ptr %i.eo, align 8, !tbaa !1043
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !987
  %i.eu = getelementptr i8, ptr %i.et, i64 152, !nosanitize !155
  %i.ev = load ptr, ptr %i.eu, align 8, !nosanitize !155
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull %i.dm) #25, !inline_history !1754
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1044
  br label %_ZN5clang8EnumDecl17getMostRecentDeclEv.exit.i

bb.x:                                             ; preds = %bb.k
  %i.ey = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i.i, 3
  %i.ez = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  %.0.i.i.i = select i1 %i.ey, ptr %i.ez, ptr null
  br label %_ZN5clang8EnumDecl17getMostRecentDeclEv.exit.i

_ZN5clang8EnumDecl17getMostRecentDeclEv.exit.i:   ; preds = %bb.x, %bb.w, %bb.t, %bb.m
  %.sroa.444.1 = phi ptr [ %.sroa.444.092, %bb.x ], [ %.sroa.645.093, %bb.m ], [ %.sroa.645.093, %bb.t ], [ %.sroa.645.093, %bb.w ] ; 2 uses
  %storemerge.i = phi ptr [ %.0.i.i.i, %bb.x ], [ %i.du, %bb.m ], [ %i.en, %bb.t ], [ %i.ex, %bb.w ] ; 4 uses
  %i.fa = icmp eq ptr %storemerge.i, %i.dc
  %i.fb = icmp eq ptr %storemerge.i, %.sroa.444.1
  %or.cond = select i1 %i.fa, i1 true, i1 %i.fb
  %.not88105 = icmp eq ptr %storemerge.i, null
  %.not88 = or i1 %or.cond, %.not88105
  br i1 %.not88, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5clang8EnumDecl17getMostRecentDeclEv.exit.i, %bb.i
  %.pr.pr = load ptr, ptr %i.cx, align 8, !tbaa !1214 ; 2 uses
  %.not27 = icmp eq ptr %.pr.pr, null
  br i1 %.not27, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.h, %.thread81, %._crit_edge
  %i.fc = phi ptr [ %i.cy, %bb.h ], [ %.sroa.645.093, %.thread81 ], [ %.pr.pr, %._crit_edge ]
  %i.fd = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 13072
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ff, ptr %3, align 8, !tbaa !1217
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !1218
  %i.fi = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11DeclContextES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.fg), !noalias !1766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fj = load i8, ptr %i.cg, align 2
  %i.fk = and i8 %i.fj, -34
  %i.fl = or disjoint i8 %i.fk, 32
  store i8 %i.fl, ptr %i.cg, align 2
  %i.fm = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.fn = load ptr, ptr %i.cx, align 8, !tbaa !1214
  call void @_ZN5clang9ASTReader25mergeDefinitionVisibilityEPNS_9NamedDeclES2_(ptr noundef nonnull align 8 dereferenceable(16376) %i.fm, ptr noundef %i.fn, ptr noundef nonnull %1) #25
  %i.fo = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2600
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !970, !nonnull !155, !align !156
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = and i64 %i.fs, 8796093022208
  %.not.i35 = icmp eq i64 %i.ft, 0
  br i1 %.not.i35, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread84, label %bb.y

bb.y:                                             ; preds = %.thread
  %i.fu = call noundef zeroext i1 @_ZNK5clang4Decl18isFromGlobalModuleEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #25
  br i1 %i.fu, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit

_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit: ; preds = %bb.y
  %i.fv = call noundef zeroext i1 @_ZNK5clang4Decl16isFromHeaderUnitEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #25
  br i1 %i.fv, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread84

_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread84: ; preds = %.thread, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit
  %i.fw = load ptr, ptr %i.cx, align 8, !tbaa !1214 ; 4 uses
  %i.fx = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %i.fw) #27
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2600
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !970, !nonnull !155, !align !156
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = and i64 %i.gb, 8796093022208
  %.not.i36 = icmp eq i64 %i.gc, 0
  br i1 %.not.i36, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85, label %bb.z

bb.z:                                             ; preds = %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread84
  %i.gd = call noundef zeroext i1 @_ZNK5clang4Decl18isFromGlobalModuleEv(ptr noundef nonnull align 8 dereferenceable(33) %i.fw) #25
  br i1 %i.gd, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37

_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37: ; preds = %bb.z
  %i.ge = call noundef zeroext i1 @_ZNK5clang4Decl16isFromHeaderUnitEv(ptr noundef nonnull align 8 dereferenceable(33) %i.fw) #25
  br i1 %i.ge, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37._ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85_crit_edge

_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37._ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85_crit_edge: ; preds = %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37
  %.pre = load ptr, ptr %i.cx, align 8, !tbaa !1214
  br label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85

_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85: ; preds = %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37._ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85_crit_edge, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread84
  %i.gf = phi ptr [ %.pre, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37._ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85_crit_edge ], [ %i.fw, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread84 ]
  %i.gg = call noundef i32 @_ZN5clang8EnumDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(164) %i.gf) #25
  %i.gh = call noundef i32 @_ZN5clang8EnumDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(164) %1) #25
  %.not28 = icmp eq i32 %i.gg, %i.gh
  br i1 %.not28, label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85
  %i.gi = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12360
  %i.gk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang8EnumDeclENS_11SmallVectorIS4_Lj2EEELj2ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
  %.fca.0.extract.i38 = extractvalue { ptr, i8 } %i.gk, 0
  %i.gl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i38, i64 8
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang8EnumDeclELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull %1)
  br label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread

bb.ab:                                            ; preds = %._crit_edge
  store ptr %1, ptr %i.cx, align 8, !tbaa !1214
  br label %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread

_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread: ; preds = %bb.z, %bb.y, %bb.ab, %bb.aa, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37.thread85, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit37, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit, %bb.g, %_ZN5clang15ASTRecordReader8readTypeEv.exit34
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1032 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !973
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gt = call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.go, ptr noundef nonnull align 8 dereferenceable(3832) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(4) %i.gs) #25
  %i.gu = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.go, i64 %i.gt) #25 ; 2 uses
  %.not29 = icmp eq ptr %i.gu, null
  br i1 %.not29, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread
  %i.gv = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 24 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !163 ; 3 uses
  %i.gz = add i32 %i.gy, 1
  %i.ha = zext i32 %i.gy to i64
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !164 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !165
  %i.he = trunc i64 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1032
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !973 ; 4 uses
  %i.hj = add i32 %i.gy, 2
  store i32 %i.hj, ptr %i.gx, align 8, !tbaa !1081
  %i.hk = zext i32 %i.gz to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !165 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 912
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !1196
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.hg, ptr noundef nonnull align 8 dereferenceable(3832) %i.hi) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.hm, 32 ; 2 uses
  %i.hq = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.hq, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 3688
  %i.hs = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.ht = and i64 %i.hs, 4294967295
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !164
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit: ; preds = %bb.ae, %bb.af
  %i.hx = phi ptr [ %i.hw, %bb.af ], [ %i.hi, %bb.ae ]
  %i.hy = trunc i64 %i.hm to i32                  ; 3 uses
  %i.hz = call i32 @llvm.fshl.i32(i32 %i.hy, i32 %i.hy, i32 31)
  %i.ia = icmp eq i32 %i.hy, 0
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 1712
  %i.ic = load i32, ptr %i.ib, align 8
  %i.id = add i32 %i.hz, -2
  %i.ie = add i32 %i.id, %i.ic
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ia, i32 0, i32 %i.ie
  %i.if = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 152
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !588
  call void @_ZN5clang8EnumDecl28setInstantiationOfMemberEnumERNS_10ASTContextEPS0_NS_26TemplateSpecializationKindE(ptr noundef nonnull align 8 dereferenceable(164) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.ih, ptr noundef nonnull %i.gu, i32 noundef %i.he) #25
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !1767
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ik, align 8, !tbaa !1081
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang21shouldSkipCheckingODREPKNS_4DeclE.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13ASTDeclReader12VisitTagDeclEPNS_7TagDeclE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1772, !nonnull !155, !align !156 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1032, !noalias !1772
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !973, !noalias !1772
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.e, ptr noundef nonnull align 8 dereferenceable(3832) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #25, !noalias !1772 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1013, !noalias !1772 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.j
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1772, !nonnull !155, !align !156 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !163, !noalias !1772 ; 2 uses
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !163, !noalias !1772
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !164, !noalias !1772 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !165, !noalias !1772
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %.not.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.x, 1
  %i.z = add i32 %i.x, -1                         ; 2 uses
  %.not2433.i = icmp eq i32 %i.z, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1772 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !1772
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !1772
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.aa = phi ptr [ %i.u, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ab = phi i32 [ %i.s, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ac = phi ptr [ %i.o, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.au, %._crit_edge.loopexit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = add i32 %i.ab, 1
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !163, !noalias !1772
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !165, !noalias !1772 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1772
  %i.ak = sub i64 %i.aj, %i.ah
  %i.al = select i1 %.not.i.i, i64 0, i64 %i.ak
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.av, %.lr.ph.i ], [ 0, %bb.c ]
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !1772, !nonnull !155, !align !156 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1032, !noalias !1772 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !973, !noalias !1772
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ao, ptr noundef nonnull align 8 dereferenceable(3832) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as) #25, !noalias !1772
  %i.au = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ao, i64 %i.at) #25, !noalias !1772
  %i.av = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.av, %i.z
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1770

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1032, !noalias !1772 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !973, !noalias !1772
  %i.ba = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ax, ptr noundef nonnull align 8 dereferenceable(3832) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q) #25, !noalias !1772
  %i.bb = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ax, i64 %i.ba) #25, !noalias !1772 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.al, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.j, %bb.d ], [ %i.j, %._crit_edge.i ], [ %i.l, %bb.a ] ; 2 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.m, %bb.d ], [ %i.y, %._crit_edge.i ], [ true, %bb.a ]
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !167, !noalias !1772, !nonnull !155, !align !156
  %i.bd = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.bc, i64 %.sroa.028.0.i) #25, !noalias !1772 ; 4 uses
  %.not25.i25 = icmp eq ptr %2, %i.bd
  br i1 %.not25.i25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = ptrtoint ptr %i.bd to i64
  store i64 %i.be, ptr %i.a, align 8, !noalias !1772
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !987, !noalias !1772
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !1772
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #25, !noalias !1772, !inline_history !1771
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !1215, !noalias !1772
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %1, align 8, !tbaa !167, !noalias !1772, !nonnull !155, !align !156 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11088 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 11096 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !975, !noalias !1772 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 11100
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !979, !noalias !1772
  %.not.i26.i = icmp ult i32 %i.bn, %i.bp
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr %2, i64 %.032.i), !noalias !1772
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = zext i32 %i.bn to i64
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !164, !noalias !1772
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  store ptr %2, ptr %i.bs, align 1, !noalias !1772
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !1772
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !975, !noalias !1772
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bm, align 8, !tbaa !975, !noalias !1772
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.bv = zext i1 %.118.i to i8
  store ptr %.2.i, ptr %0, align 8, !tbaa !1207, !alias.scope !1772
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.i, ptr %i.bw, align 8, !alias.scope !1772
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !1208, !alias.scope !1772
  tail call void @_ZN5clang13ASTDeclReader13VisitTypeDeclEPNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef %2)
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !163 ; 2 uses
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !163
  %i.cd = zext i32 %i.cb to i64
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !164
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !165
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = shl i32 %i.ch, 16
  %i.cl = and i32 %i.ck, 1073676288
  %i.cm = and i32 %i.cj, -1073676289
  %i.cn = or disjoint i32 %i.cl, %i.cm
  store i32 %i.cn, ptr %i.ci, align 4
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !163 ; 2 uses
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !163
  %i.ct = zext i32 %i.cr to i64
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !164
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !165 ; 3 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.cz = trunc i64 %i.cw to i16
  %i.da = load i16, ptr %i.cy, align 8
  %i.db = shl i16 %i.cz, 13
  %i.dc = and i16 %i.da, 8191
  %i.dd = or disjoint i16 %i.dc, %i.db
  store i16 %i.dd, ptr %i.cy, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 74 ; 2 uses
  %i.df = trunc i64 %i.cw to i8                   ; 2 uses
  %i.dg = lshr i8 %i.df, 3
  %i.dh = and i8 %i.dg, 1
  %i.di = load i8, ptr %i.de, align 2
  %i.dj = and i8 %i.di, -30
  %i.dk = lshr i8 %i.df, 2
  %i.dl = and i8 %i.dk, 28
  %i.dm = or disjoint i8 %i.dl, %i.dh
  %i.dn = or disjoint i8 %i.dm, %i.dj
  store i8 %i.dn, ptr %i.de, align 2
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1032
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !973
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dv = tail call i64 @_ZN5clang9ASTReader15ReadSourceRangeERNS_13serialization10ModuleFileERKN4llvm11SmallVectorImLj64EEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.dq, ptr noundef nonnull align 8 dereferenceable(3832) %i.ds, ptr noundef nonnull align 8 dereferenceable(528) %i.dt, ptr noundef nonnull align 4 dereferenceable(4) %i.du) #25
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !1081
  %i.dx = lshr i32 %i.cx, 7
  %i.dy = and i32 %i.dx, 3
  switch i32 %i.dy, label %bb.o [
    i32 0, label %bb.p
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.dz = load ptr, ptr %1, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !588 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2632 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1039 ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = add i64 %i.ee, 32                       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 2640
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !1040
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %bb.l, label %bb.m, !prof !980

bb.l:                                             ; preds = %bb.k
  %i.ej = inttoptr i64 %i.ef to ptr
  store ptr %i.ej, ptr %i.ec, align 8, !tbaa !1039
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.m:                                             ; preds = %bb.k
  %i.ek = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ec, i64 noundef 32, i64 noundef 32, i8 3) ; 2 uses
  %.pre = ptrtoint ptr %i.ek to i64
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.l, %bb.m
  %.pre-phi = phi i64 [ %i.ee, %bb.l ], [ %.pre, %bb.m ]
  %.0.i.i.i.i = phi ptr [ %i.ed, %bb.l ], [ %i.ek, %bb.m ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i.i, i8 0, i64 32, i1 false)
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156
  tail call void @_ZN5clang15ASTRecordReader17readQualifierInfoERNS_13QualifierInfoE(ptr noundef nonnull align 8 dereferenceable(560) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i.i) #25
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.en = or i64 %.pre-phi, 4
  store i64 %i.en, ptr %i.em, align 8
  br label %bb.p

bb.n:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1032
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !973
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.ev = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.eq, ptr noundef nonnull align 8 dereferenceable(3832) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(4) %i.eu) #25
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.ev, ptr %i.ew, align 8
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1032 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !973
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !1081 ; 2 uses
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !1081
  %i.fg = zext i32 %i.fe to i64
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !164
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !165
  %i.fk = tail call noundef i64 @_ZN5clang9ASTReader21getGlobalIdentifierIDERNS_13serialization10ModuleFileEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.ez, ptr noundef nonnull align 8 dereferenceable(3832) %i.fb, i64 noundef %i.fj) #25
  %i.fl = tail call noundef ptr @_ZN5clang9ASTReader20DecodeIdentifierInfoEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.ez, i64 noundef %i.fk) #25
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !1219
  br label %bb.p

bb.o:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZnwmRKN5clang10ASTContextEm.exit, %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7TagDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.fn = load i32, ptr %i.ci, align 4
  %i.fo = and i32 %i.fn, 127
  %i.fp = add nsw i32 %i.fo, -60
  %i.fq = icmp ult i32 %i.fp, 3
  br i1 %i.fq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_ZN5clang13ASTDeclReader17mergeRedeclarableINS_7TagDeclEEEvPNS_12RedeclarableIT_EERN12_GLOBAL__N_118RedeclarableResultE(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(17) %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare void @_ZN5clang9ASTReader25mergeDefinitionVisibilityEPNS_9NamedDeclES2_(ptr noundef nonnull align 8 dereferenceable(16376), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5clang8EnumDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(164)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang8EnumDeclELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !975  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !979
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !980

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang8EnumDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !164
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store ptr %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !975
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !975
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN5clang8EnumDecl28setInstantiationOfMemberEnumERNS_10ASTContextEPS0_NS_26TemplateSpecializationKindE(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader15VisitRecordDeclEPNS_10RecordDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN5clang13ASTDeclReader20VisitLinkageSpecDeclEPNS_15LinkageSpecDeclE:bb.a
  %i.aq = icmp eq i32 %i.ao, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1712
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = add i32 %i.ap, -2
  %i.au = add i32 %i.at, %i.as
  %.sroa.0.0.i.i.i.i.i = select i1 %i.aq, i32 0, i32 %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.av, align 8, !tbaa !1081
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1032
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !973 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1081 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !1081
  %i.bf = zext i32 %i.bd to i64
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !164
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !165 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 912
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !1196
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ay, ptr noundef nonnull align 8 dereferenceable(3832) %i.ba) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  %.sroa.4.0.extract.shift.i.i.i.i6 = lshr i64 %i.bi, 32 ; 2 uses
  %i.bm = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i6, 0
  br i1 %i.bm, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 3688
  %i.bo = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i6, 4294967295
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !164
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit8

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit8: ; preds = %bb.f, %bb.g
  %i.bt = phi ptr [ %i.bs, %bb.g ], [ %i.ba, %bb.f ]
  %i.bu = trunc i64 %i.bi to i32                  ; 3 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 31)
  %i.bw = icmp eq i32 %i.bu, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1712
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = add i32 %i.bv, -2
  %i.ca = add i32 %i.bz, %i.by
  %.sroa.0.0.i.i.i.i.i7 = select i1 %i.bw, i32 0, i32 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %.sroa.0.0.i.i.i.i.i7, ptr %i.cb, align 4, !tbaa !1081
  %i.cc = icmp ne i32 %.sroa.0.0.i.i.i.i.i7, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 50 ; 2 uses
  %i.ce = zext i1 %i.cc to i8
  %i.cf = load i8, ptr %i.cd, align 2
  %i.cg = and i8 %i.cf, -2
  %i.ch = or disjoint i8 %i.cg, %i.ce
  store i8 %i.ch, ptr %i.cd, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader15VisitExportDeclEPNS_10ExportDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTDeclReader9VisitDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1032
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !973  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1081 ; 2 uses
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !1081
  %i.k = zext i32 %i.i to i64
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 912
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1196
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.d, ptr noundef nonnull align 8 dereferenceable(3832) %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.n, 32 ; 2 uses
  %i.r = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.r, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 3688
  %i.t = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.u = and i64 %i.t, 4294967295
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %i.f, %bb.c ]
  %i.z = trunc i64 %i.n to i32                    ; 3 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 31)
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1712
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = add i32 %i.aa, -2
  %i.af = add i32 %i.ae, %i.ad
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ab, i32 0, i32 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !1081
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader14VisitLabelDeclEPNS_9LabelDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTDeclReader9VisitDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156
  %i.c = tail call i64 @_ZN5clang13serialization15BasicReaderBaseINS_15ASTRecordReaderEE19readDeclarationNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.c, ptr %i.d, align 8, !tbaa !165
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !163
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8, !tbaa !165
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.n, ptr %i.o, align 8, !tbaa !1200
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1032
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !973  ; 4 uses
  %i.t = load i32, ptr %i.g, align 8, !tbaa !1081 ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.g, align 8, !tbaa !1081
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !165  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 912
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1196
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.q, ptr noundef nonnull align 8 dereferenceable(3832) %i.s) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.x, 32 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.ab, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 3688
  %i.ad = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ %i.s, %bb.c ]
  %i.aj = trunc i64 %i.x to i32                   ; 3 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 31)
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1712
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = add i32 %i.ak, -2
  %i.ap = add i32 %i.ao, %i.an
  %.sroa.0.0.i.i.i.i.i = select i1 %i.al, i32 0, i32 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.aq, align 4, !tbaa !1081
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader18VisitNamespaceDeclEPNS_13NamespaceDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.clang::ASTDeclReader::FindExistingResult", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !1986, !nonnull !155, !align !156 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1032, !noalias !1986
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !973, !noalias !1986
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.g, ptr noundef nonnull align 8 dereferenceable(3832) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #25, !noalias !1986 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1013, !noalias !1986 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.l
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !1986, !nonnull !155, !align !156 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !163, !noalias !1986 ; 2 uses
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !163, !noalias !1986
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !164, !noalias !1986 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !165, !noalias !1986
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %.not.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  %.not2433.i = icmp eq i32 %i.ab, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !1986 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !1986
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !1986
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.ac = phi ptr [ %i.w, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ad = phi i32 [ %i.u, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ae = phi ptr [ %i.q, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.aw, %._crit_edge.loopexit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = add i32 %i.ad, 1
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !163, !noalias !1986
  %i.ah = zext i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !165, !noalias !1986 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noalias !1986
  %i.am = sub i64 %i.al, %i.aj
  %i.an = select i1 %.not.i.i, i64 0, i64 %i.am
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !1986, !nonnull !155, !align !156 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1032, !noalias !1986 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !973, !noalias !1986
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.av = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.aq, ptr noundef nonnull align 8 dereferenceable(3832) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.au) #25, !noalias !1986
  %i.aw = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.aq, i64 %i.av) #25, !noalias !1986
  %i.ax = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.ax, %i.ab
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1983

bb.d:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1032, !noalias !1986 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !973, !noalias !1986
  %i.bc = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.az, ptr noundef nonnull align 8 dereferenceable(3832) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.s) #25, !noalias !1986
  %i.bd = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.az, i64 %i.bc) #25, !noalias !1986 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.an, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.l, %bb.d ], [ %i.l, %._crit_edge.i ], [ %i.n, %bb.a ] ; 4 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.o, %bb.d ], [ %i.aa, %._crit_edge.i ], [ true, %bb.a ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ] ; 3 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !167, !noalias !1986, !nonnull !155, !align !156
  %i.bf = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.be, i64 %.sroa.028.0.i) #25, !noalias !1986 ; 4 uses
  %.not25.i26 = icmp eq ptr %1, %i.bf
  br i1 %.not25.i26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = ptrtoint ptr %i.bf to i64
  store i64 %i.bg, ptr %i.c, align 8, !noalias !1986
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !987, !noalias !1986
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1986
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(112) %i.bf) #25, !noalias !1986, !inline_history !1984
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1325, !noalias !1986
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_13NamespaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %0, align 8, !tbaa !167, !noalias !1986, !nonnull !155, !align !156 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 11088 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 11096 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !975, !noalias !1986 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 11100
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !979, !noalias !1986
  %.not.i26.i = icmp ult i32 %i.bp, %i.br
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr %1, i64 %.032.i), !noalias !1986
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_13NamespaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bs = zext i32 %i.bp to i64
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !164, !noalias !1986
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  store ptr %1, ptr %i.bu, align 1, !noalias !1986
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !1986
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !975, !noalias !1986
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bo, align 8, !tbaa !975, !noalias !1986
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_13NamespaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_13NamespaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  tail call void @_ZN5clang13ASTDeclReader9VisitDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156
  %i.by = tail call i64 @_ZN5clang13serialization15BasicReaderBaseINS_15ASTRecordReaderEE19readDeclarationNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !165
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !163 ; 3 uses
  %i.ce = add i32 %i.cd, 1
  %i.cf = zext i32 %i.cd to i64
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !164 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !165
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !1200
  %i.cl = add i32 %i.cd, 2
  store i32 %i.cl, ptr %i.cc, align 8, !tbaa !163
  %i.cm = zext i32 %i.ce to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !165
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = trunc i64 %i.co to i16
  %i.cs = shl i16 %i.cr, 13
  %i.ct = and i16 %i.cq, -24577
  %i.cu = and i16 %i.cs, 24576
  %i.cv = or disjoint i16 %i.cu, %i.ct
  store i16 %i.cv, ptr %i.cp, align 8
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1032
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !973 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !1081 ; 2 uses
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !1081
  %i.df = zext i32 %i.dd to i64
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !164
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !165 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 912
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !1196
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_13NamespaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.cy, ptr noundef nonnull align 8 dereferenceable(3832) %i.da) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_13NamespaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.di, 32 ; 2 uses
  %i.dm = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.dm, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 3688
  %i.do = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !164
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit: ; preds = %bb.l, %bb.m
  %i.dt = phi ptr [ %i.ds, %bb.m ], [ %i.da, %bb.l ]
  %i.du = trunc i64 %i.di to i32                  ; 3 uses
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 31)
  %i.dw = icmp eq i32 %i.du, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1712
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = add i32 %i.dv, -2
  %i.ea = add i32 %i.dz, %i.dy
  %.sroa.0.0.i.i.i.i.i = select i1 %i.dw, i32 0, i32 %i.ea
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.eb, align 8, !tbaa !1081
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1032
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !973 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !1081 ; 2 uses
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !1081
  %i.el = zext i32 %i.ej to i64
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !164
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !165 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 912
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !1196
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ee, ptr noundef nonnull align 8 dereferenceable(3832) %i.eg) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  %.sroa.4.0.extract.shift.i.i.i.i14 = lshr i64 %i.eo, 32 ; 2 uses
  %i.es = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i14, 0
  br i1 %i.es, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 3688
  %i.eu = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i14, 4294967295
  %i.ev = and i64 %i.eu, 4294967295
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !164
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit16

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit16: ; preds = %bb.o, %bb.p
  %i.ez = phi ptr [ %i.ey, %bb.p ], [ %i.eg, %bb.o ]
  %i.fa = trunc i64 %i.eo to i32                  ; 3 uses
  %i.fb = tail call i32 @llvm.fshl.i32(i32 %i.fa, i32 %i.fa, i32 31)
  %i.fc = icmp eq i32 %i.fa, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1712
  %i.fe = load i32, ptr %i.fd, align 8
  %i.ff = add i32 %i.fb, -2
  %i.fg = add i32 %i.ff, %i.fe
  %.sroa.0.0.i.i.i.i.i15 = select i1 %i.fc, i32 0, i32 %i.fg
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 %.sroa.0.0.i.i.i.i.i15, ptr %i.fh, align 4, !tbaa !1081
  %i.fi = load i64, ptr %i.m, align 8, !tbaa !1013
  %i.fj = icmp eq i64 %.sroa.028.0.i, %i.fi
  br i1 %i.fj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit16
  %i.fk = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1032
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !973
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fr = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.fm, ptr noundef nonnull align 8 dereferenceable(3832) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 4 dereferenceable(4) %i.fq) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit16
  %.sroa.017.0 = phi i64 [ %i.fr, %bb.q ], [ 0, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit16 ] ; 2 uses
  %i.fs = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 152
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !588
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2600
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !970, !nonnull !155, !align !156
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = and i64 %i.fy, 1099511627776
  %.not.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i, label %_ZN5clang13ASTDeclReader17mergeRedeclarableINS_13NamespaceDeclEEEvPNS_12RedeclarableIT_EERN12_GLOBAL__N_118RedeclarableResultE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.ga = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 3
  %.not30.i = icmp eq i64 %i.ga, 0
  br i1 %.not30.i, label %_ZN5clang13ASTDeclReader17mergeRedeclarableINS_13NamespaceDeclEEEvPNS_12RedeclarableIT_EERN12_GLOBAL__N_118RedeclarableResultE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not15.i = icmp eq ptr %.2.i, null
  br i1 %.not15.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select.i.i = select i1 %.118.i, i64 %.sroa.028.0.i, i64 0 ; 3 uses
  %i.gc = load ptr, ptr %.2.i, align 8, !tbaa !987
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = tail call noundef ptr %i.ge(ptr noundef nonnull align 8 dereferenceable(112) %.2.i) #25, !inline_history !1985 ; 5 uses
  %i.gg = load ptr, ptr %1, align 8, !tbaa !987
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = tail call noundef ptr %i.gi(ptr noundef nonnull align 8 dereferenceable(112) %1) #25, !inline_history !1985
  %.not.i.i.i = icmp eq ptr %i.gf, %i.gj
  br i1 %.not.i.i.i, label %_ZN5clang13ASTDeclReader17mergeRedeclarableINS_13NamespaceDeclEEEvPNS_12RedeclarableIT_EERN12_GLOBAL__N_118RedeclarableResultE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gk = ptrtoint ptr %i.gf to i64
  store i64 %i.gk, ptr %i.c, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.gf, ptr %i.gl, align 8, !tbaa !1325
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 28 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = and i32 %i.gn, 1024
  %i.gr = or i32 %i.gq, %i.gp
  store i32 %i.gr, ptr %i.go, align 4
end_hunk_2
begin_hunk_3_@_ZN5clang13ASTDeclReader16VisitConceptDeclEPNS_11ConceptDeclE:bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !588
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !987
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(72) %i.ay) #25, !inline_history !2087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !971
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 1952
  %i.bk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5clang13ASTDeclReader18FindExistingResultcvPT_INS_11ConceptDeclEEEv.exit.i, %bb.d
  call void @_ZN5clang13ASTDeclReader18FindExistingResultD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5clang13ASTDeclReader14mergeMergeableINS_11ConceptDeclEEEvPNS_9MergeableIT_EE.exit

_ZN5clang13ASTDeclReader14mergeMergeableINS_11ConceptDeclEEEvPNS_9MergeableIT_EE.exit: ; preds = %_ZN5clang13ASTDeclReader17VisitTemplateDeclEPNS_12TemplateDeclE.exit, %_ZL20allowODRLikeMergeInCPN5clang9NamedDeclE.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader38VisitImplicitConceptSpecializationDeclEPNS_33ImplicitConceptSpecializationDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1246", align 8 ; 10 uses
  %3 = alloca %"class.clang::TemplateArgument", align 8 ; 5 uses
  tail call void @_ZN5clang13ASTDeclReader9VisitDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !975
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !979
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2092
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !164
  %.pre6 = load i32, ptr %i.b, align 8, !tbaa !975
  %i.g = zext i32 %.pre6 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi i64 [ %i.g, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  call void @_ZN5clang33ImplicitConceptSpecializationDecl20setTemplateArgumentsEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %i.i, i64 %i.h) #25
  %i.j = load ptr, ptr %2, align 8, !tbaa !164    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.j) #25
  br label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.t, %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !154, !nonnull !155, !align !156
  call void @_ZN5clang13serialization15BasicReaderBaseINS_15ASTRecordReaderEE20readTemplateArgumentEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::TemplateArgument") align 8 %3, ptr noundef nonnull align 8 dereferenceable(560) %i.l)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !975  ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !979
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !980

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !164
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.r = load i32, ptr %i.b, align 8, !tbaa !975
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang16TemplateArgumentELb1EE9push_backERKS2_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.t = add nuw i32 %.05, 1                      ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !2092
  %i.v = icmp ult i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !2090
}

declare void @_ZN5clang33ImplicitConceptSpecializationDecl20setTemplateArgumentsEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5clang13ASTDeclReader25VisitRequiresExprBodyDeclEPNS_20RequiresExprBodyDeclE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(89) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader19ReadSpecializationsERNS_13serialization10ModuleFileEPNS_4DeclERN4llvm15BitstreamCursorEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(3832) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(344) %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !163  ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !163
  %i.g = zext i32 %i.e to i64
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165  ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8
  %i.m = sub i64 %i.l, %i.j
  %i.n = select i1 %.not.i, i64 0, i64 %i.m
  %i.o = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.p = tail call noundef zeroext i1 @_ZN5clang9ASTReader19ReadSpecializationsERNS_13serialization10ModuleFileERN4llvm15BitstreamCursorEmPNS_4DeclEb(ptr noundef nonnull align 8 dereferenceable(16376) %i.o, ptr noundef nonnull align 8 dereferenceable(3832) %1, ptr noundef nonnull align 8 dereferenceable(344) %3, i64 noundef %i.n, ptr noundef %2, i1 noundef zeroext %4) #25 ; 0 uses
  ret void
}

declare noundef zeroext i1 @_ZN5clang9ASTReader19ReadSpecializationsERNS_13serialization10ModuleFileERN4llvm15BitstreamCursorEmPNS_4DeclEb(ptr noundef nonnull align 8 dereferenceable(16376), ptr noundef nonnull align 8 dereferenceable(3832), ptr noundef nonnull align 8 dereferenceable(344), i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader22VisitClassTemplateDeclEPNS_17ClassTemplateDeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::RedeclarableResult", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call fastcc void @_ZN5clang13ASTDeclReader29VisitRedeclarableTemplateDeclEPNS_24RedeclarableTemplateDeclE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
  call fastcc void @_ZN5clang13ASTDeclReader25mergeRedeclarableTemplateEPNS_24RedeclarableTemplateDeclERN12_GLOBAL__N_118RedeclarableResultE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i64, ptr %i.b, align 8
  %i.c = load i64, ptr %i.a, align 8, !tbaa !1013
  %i.d = icmp eq i64 %i.c, %.val
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3072
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !163  ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !163
  %i.n = zext i32 %i.l to i64
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !164
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !165  ; 2 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 %i.s, %i.q
  %i.u = select i1 %.not.i.i, i64 0, i64 %i.t
  %i.v = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.w = tail call noundef zeroext i1 @_ZN5clang9ASTReader19ReadSpecializationsERNS_13serialization10ModuleFileERN4llvm15BitstreamCursorEmPNS_4DeclEb(ptr noundef nonnull align 8 dereferenceable(16376) %i.v, ptr noundef nonnull align 8 dereferenceable(3832) %i.f, ptr noundef nonnull align 8 dereferenceable(344) %i.g, i64 noundef %i.u, ptr noundef %1, i1 noundef zeroext false) #25 ; 0 uses
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3072
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !163 ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !163
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !165 ; 2 uses
  %.not.i.i5 = icmp eq i64 %i.ah, 0
  %i.ai = load i64, ptr %i.r, align 8
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = select i1 %.not.i.i5, i64 0, i64 %i.aj
  %i.al = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.am = tail call noundef zeroext i1 @_ZN5clang9ASTReader19ReadSpecializationsERNS_13serialization10ModuleFileERN4llvm15BitstreamCursorEmPNS_4DeclEb(ptr noundef nonnull align 8 dereferenceable(16376) %i.al, ptr noundef nonnull align 8 dereferenceable(3832) %i.x, ptr noundef nonnull align 8 dereferenceable(344) %i.y, i64 noundef %i.ak, ptr noundef %1, i1 noundef zeroext true) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13ASTDeclReader29VisitRedeclarableTemplateDeclEPNS_24RedeclarableTemplateDeclE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !2099, !nonnull !155, !align !156 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1032, !noalias !2099
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !973, !noalias !2099
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.e, ptr noundef nonnull align 8 dereferenceable(3832) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #25, !noalias !2099 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1013, !noalias !2099 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.j
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !2099, !nonnull !155, !align !156 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !163, !noalias !2099 ; 2 uses
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !163, !noalias !2099
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !164, !noalias !2099 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !165, !noalias !2099
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %.not.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.x, 1
  %i.z = add i32 %i.x, -1                         ; 2 uses
  %.not2433.i = icmp eq i32 %i.z, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !2099 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !2099
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !2099
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.aa = phi ptr [ %i.u, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ab = phi i32 [ %i.s, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ac = phi ptr [ %i.o, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.au, %._crit_edge.loopexit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = add i32 %i.ab, 1
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !163, !noalias !2099
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !165, !noalias !2099 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !2099
  %i.ak = sub i64 %i.aj, %i.ah
  %i.al = select i1 %.not.i.i, i64 0, i64 %i.ak
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.av, %.lr.ph.i ], [ 0, %bb.c ]
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !154, !noalias !2099, !nonnull !155, !align !156 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1032, !noalias !2099 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !973, !noalias !2099
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ao, ptr noundef nonnull align 8 dereferenceable(3832) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as) #25, !noalias !2099
  %i.au = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ao, i64 %i.at) #25, !noalias !2099
  %i.av = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.av, %i.z
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2095

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1032, !noalias !2099 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !973, !noalias !2099
  %i.ba = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ax, ptr noundef nonnull align 8 dereferenceable(3832) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q) #25, !noalias !2099
  %i.bb = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ax, i64 %i.ba) #25, !noalias !2099 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.al, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.j, %bb.d ], [ %i.j, %._crit_edge.i ], [ %i.l, %bb.a ] ; 3 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.m, %bb.d ], [ %i.y, %._crit_edge.i ], [ true, %bb.a ]
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !167, !noalias !2099, !nonnull !155, !align !156
  %i.bd = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.bc, i64 %.sroa.028.0.i) #25, !noalias !2099 ; 4 uses
  %.not25.i23 = icmp eq ptr %2, %i.bd
  br i1 %.not25.i23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = ptrtoint ptr %i.bd to i64
  store i64 %i.be, ptr %i.a, align 8, !noalias !2099
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !987, !noalias !2099
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2099
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(88) %i.bd) #25, !noalias !2099, !inline_history !2096
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !1363, !noalias !2099
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_24RedeclarableTemplateDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %1, align 8, !tbaa !167, !noalias !2099, !nonnull !155, !align !156 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11088 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 11096 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !975, !noalias !2099 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 11100
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !979, !noalias !2099
  %.not.i26.i = icmp ult i32 %i.bn, %i.bp
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr %2, i64 %.032.i), !noalias !2099
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_24RedeclarableTemplateDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = zext i32 %i.bn to i64
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !164, !noalias !2099
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  store ptr %2, ptr %i.bs, align 1, !noalias !2099
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !2099
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !975, !noalias !2099
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bm, align 8, !tbaa !975, !noalias !2099
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_24RedeclarableTemplateDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_24RedeclarableTemplateDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.bv = zext i1 %.118.i to i8
  store ptr %.2.i, ptr %0, align 8, !tbaa !1207, !alias.scope !2099
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.i, ptr %i.bw, align 8, !alias.scope !2099
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !1208, !alias.scope !2099
  %i.by = load ptr, ptr %2, align 8, !tbaa !987
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(88) %2) #25 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1366
  %.not = icmp eq ptr %i.cd, null
  br i1 %.not, label %bb.k, label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE6insertES3_.exit

bb.k:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_24RedeclarableTemplateDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.ce = load ptr, ptr %1, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 152
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !588
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !987
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(88) %i.cb, ptr noundef nonnull align 8 dereferenceable(23904) %i.cg) #25
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !1366
  %i.cl = load ptr, ptr %1, align 8, !tbaa !167, !nonnull !155, !align !156 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 3920 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 3936
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !1287, !range !985, !noalias !2100, !noundef !155
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.l, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !1288, !noalias !2100 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 3932 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !1289, !noalias !2100 ; 4 uses
  %i.ct = zext i32 %i.cs to i64
  %.idx.i.i = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.cw, %.critedge.i.i ], [ %i.cq, %bb.l ] ; 2 uses
  %i.cv = load ptr, ptr %.023.i.i, align 8, !tbaa !1234, !noalias !2100
  %.not15.i.i = icmp eq ptr %i.cv, %i.cb
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE6insertES3_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cw, %i.cu
  br i1 %.not.i.i19, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 3928
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !1290, !noalias !2100
  %i.cz = icmp ult i32 %i.cs, %i.cy
  br i1 %i.cz, label %bb.m, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.da = add nuw i32 %i.cs, 1
  store i32 %i.da, ptr %i.cr, align 4, !tbaa !1289, !noalias !2100
  store ptr %i.cb, ptr %i.cu, align 8, !tbaa !1234, !noalias !2100
  br label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE6insertES3_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.k
  %i.db = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.cm, ptr noundef nonnull %i.cb) #25, !noalias !2100 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE6insertES3_.exit

_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE6insertES3_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.m, %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_24RedeclarableTemplateDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.dc = load ptr, ptr %i.cc, align 8, !tbaa !1366
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !1366
  %i.de = load i64, ptr %i.k, align 8, !tbaa !1013
  %i.df = icmp eq i64 %i.de, %.sroa.028.0.i
  br i1 %i.df, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE6insertES3_.exit
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1032 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !973
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.di, ptr noundef nonnull align 8 dereferenceable(3832) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.dm) #25
  %i.do = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.di, i64 %i.dn) #25 ; 2 uses
  %.not15 = icmp eq ptr %i.do, null
  br i1 %.not15, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = tail call noundef ptr @_ZNK5clang24RedeclarableTemplateDecl12getCommonPtrEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #25 ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.dp, align 8
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = and i64 %.0.copyload.i.i.i.i, 7
  %i.ds = or i64 %i.dr, %i.dq
  store i64 %i.ds, ptr %i.dp, align 8
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !163 ; 2 uses
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !163
  %i.dy = zext i32 %i.dw to i64
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !164
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !165
  %.not16 = icmp eq i64 %i.eb, 0
  br i1 %.not16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = tail call noundef ptr @_ZNK5clang24RedeclarableTemplateDecl12getCommonPtrEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #25 ; 2 uses
  %.0.copyload.i.i.i.i20 = load i64, ptr %i.ec, align 8
  %i.ed = or i64 %.0.copyload.i.i.i.i20, 4
  store i64 %i.ed, ptr %i.ec, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE6insertES3_.exit
  tail call void @_ZN5clang13ASTDeclReader9VisitDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef nonnull %2)
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156
  %i.ef = tail call i64 @_ZN5clang13serialization15BasicReaderBaseINS_15ASTRecordReaderEE19readDeclarationNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !165
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !163 ; 2 uses
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !163
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !164
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !165
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !1200
  %i.es = tail call noundef ptr @_ZN5clang15ASTRecordReader25readTemplateParameterListEv(ptr noundef nonnull align 8 dereferenceable(560) %i.eh) #25
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.es, ptr %i.et, align 8, !tbaa !1359
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1032 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !973
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fb = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ew, ptr noundef nonnull align 8 dereferenceable(3832) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 4 dereferenceable(4) %i.fa) #25
  %i.fc = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ew, i64 %i.fb) #25
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1233
  %.not.i.i21 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i21, label %bb.r, label %_ZN5clang13ASTDeclReader17VisitTemplateDeclEPNS_12TemplateDeclE.exit

bb.r:                                             ; preds = %bb.q
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !1233
  br label %_ZN5clang13ASTDeclReader17VisitTemplateDeclEPNS_12TemplateDeclE.exit

_ZN5clang13ASTDeclReader17VisitTemplateDeclEPNS_12TemplateDeclE.exit: ; preds = %bb.q, %bb.r
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !163 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !163
  %i.fk = zext i32 %i.fi to i64
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !164
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !165
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = shl i32 %i.fo, 16
  %i.fs = and i32 %i.fr, 1073676288
  %i.ft = and i32 %i.fq, -1073676289
  %i.fu = or disjoint i32 %i.fs, %i.ft
  store i32 %i.fu, ptr %i.fp, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13ASTDeclReader25mergeRedeclarableTemplateEPNS_24RedeclarableTemplateDeclERN12_GLOBAL__N_118RedeclarableResultE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.clang::ASTDeclReader::FindExistingResult", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !588
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2600
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !970, !nonnull !155, !align !156
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1099511627776
  %.not.i = icmp eq i64 %i.i, 0
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.604", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1532
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1530
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1531
  store i32 0, ptr %i.p, align 16, !tbaa !1534
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1234
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1533
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1234
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1234
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1234
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1081 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !1081
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !1081
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !1081
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !1081
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1530   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1532 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1531 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1530
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1532
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1081 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !971  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1081 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1081 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2566

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !971
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !971
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !971
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !1081
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2567

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2568

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1532
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1534
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1534
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1532
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13ASTDeclReader16VisitVarDeclImplEPNS_7VarDeclE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %spec.select = select i1 %i.b, ptr null, ptr %i.c ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575, !nonnull !155, !align !156 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1032, !noalias !2575
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !973, !noalias !2575
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.g, ptr noundef nonnull align 8 dereferenceable(3832) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #25, !noalias !2575 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1013, !noalias !2575 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.l
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575, !nonnull !155, !align !156 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !163, !noalias !2575 ; 2 uses
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !163, !noalias !2575
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !164, !noalias !2575 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !165, !noalias !2575
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %.not.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  %.not2433.i = icmp eq i32 %i.ab, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !2575
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !2575
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.ac = phi ptr [ %i.w, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ad = phi i32 [ %i.u, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ae = phi ptr [ %i.q, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.aw, %._crit_edge.loopexit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = add i32 %i.ad, 1
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !163, !noalias !2575
  %i.ah = zext i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !165, !noalias !2575 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noalias !2575
  %i.am = sub i64 %i.al, %i.aj
  %i.an = select i1 %.not.i.i, i64 0, i64 %i.am
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575, !nonnull !155, !align !156 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1032, !noalias !2575 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !973, !noalias !2575
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.av = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.aq, ptr noundef nonnull align 8 dereferenceable(3832) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.au) #25, !noalias !2575
  %i.aw = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.aq, i64 %i.av) #25, !noalias !2575
  %i.ax = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.ax, %i.ab
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2571

bb.d:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1032, !noalias !2575 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !973, !noalias !2575
  %i.bc = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.az, ptr noundef nonnull align 8 dereferenceable(3832) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.s) #25, !noalias !2575
  %i.bd = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.az, i64 %i.bc) #25, !noalias !2575 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.an, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.l, %bb.d ], [ %i.l, %._crit_edge.i ], [ %i.n, %bb.a ] ; 2 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.o, %bb.d ], [ %i.aa, %._crit_edge.i ], [ true, %bb.a ]
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !167, !noalias !2575, !nonnull !155, !align !156
  %i.bf = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.be, i64 %.sroa.028.0.i) #25, !noalias !2575 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %.not25.i95 = icmp eq ptr %i.bh, %spec.select
  %.not25.i = select i1 %i.bg, i1 %i.b, i1 %.not25.i95
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = ptrtoint ptr %i.bf to i64
  store i64 %i.bi, ptr %i.c, align 8, !noalias !2575
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !987, !noalias !2575
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !2575
  %i.bm = tail call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(100) %i.bf) #25, !noalias !2575, !inline_history !2572
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !1399, !noalias !2575
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %1, align 8, !tbaa !167, !noalias !2575, !nonnull !155, !align !156 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 11088 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 11096 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !975, !noalias !2575 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 11100
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !979, !noalias !2575
  %.not.i26.i = icmp ult i32 %i.br, %i.bt
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr %2, i64 %.032.i), !noalias !2575
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bu = zext i32 %i.br to i64
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !164, !noalias !2575
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bu ; 2 uses
  store ptr %2, ptr %i.bw, align 1, !noalias !2575
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !2575
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !975, !noalias !2575
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bq, align 8, !tbaa !975, !noalias !2575
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.bz = zext i1 %.118.i to i8
  store ptr %.2.i, ptr %0, align 8, !tbaa !1207, !alias.scope !2575
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.i, ptr %i.ca, align 8, !alias.scope !2575
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bz, ptr %i.cb, align 8, !tbaa !1208, !alias.scope !2575
  tail call void @_ZN5clang13ASTDeclReader19VisitDeclaratorDeclEPNS_14DeclaratorDeclE(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef %2)
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !163
  %i.ch = zext i32 %i.cf to i64
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !164
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !165 ; 10 uses
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = trunc i64 %i.ck to i8
  %i.cn = and i8 %i.cm, 7                         ; 2 uses
  %i.co = and i32 %i.cl, 8
  %.not96 = icmp eq i32 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %sh.diff = lshr i64 %i.ck, 4
  %tr.sh.diff = trunc i64 %sh.diff to i8
  store i8 %tr.sh.diff, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 6 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 127
  %i.ct = icmp eq i32 %i.cs, 44
  br i1 %i.ct, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.cu = load i16, ptr %i.cp, align 8
  %i.cv = trunc i64 %i.ck to i16
  %i.cw = lshr i16 %i.cv, 4
  %i.cx = and i16 %i.cu, 255
  %i.cy = lshr i64 %i.ck, 3
  %i.cz = trunc i64 %i.cy to i16
  %i.da = and i16 %i.cw, 3840
  %i.db = and i16 %i.cz, -8192
  %i.dc = or disjoint i16 %i.da, %i.db
  %i.dd = or disjoint i16 %i.dc, %i.cx
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 98 ; 2 uses
  %i.df = lshr i64 %i.ck, 19
  %i.dg = trunc i64 %i.df to i8
  %i.dh = load i8, ptr %i.de, align 2
  %i.di = and i8 %i.dh, 64
  %i.dj = lshr i64 %i.ck, 16
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = and i8 %i.dk, 32
  %i.dm = and i32 %i.cl, 4194304
  %.not110 = icmp eq i32 %i.dm, 0
  %sh.diff111 = lshr i64 %i.ck, 21
  %tr.sh.diff112 = trunc i64 %sh.diff111 to i8
  %i.dn = and i8 %tr.sh.diff112, 28
  %i.do = and i8 %i.dg, 3
  %i.dp = or disjoint i8 %i.do, %i.dl
  %i.dq = or disjoint i8 %i.dp, %i.dn
  %i.dr = or disjoint i8 %i.dq, %i.di
  %i.ds = lshr i64 %i.ck, 14
  %i.dt = trunc i64 %i.ds to i16
  %i.du = and i16 %i.dt, 4096
  %i.dv = or disjoint i16 %i.dd, %i.du
  store i16 %i.dv, ptr %i.cp, align 8
  %i.dw = lshr i64 %i.ck, 20
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = and i8 %i.dx, -128
  %i.dz = or disjoint i8 %i.dr, %i.dy
  store i8 %i.dz, ptr %i.de, align 2
  br i1 %.not110, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = load ptr, ptr %1, align 8, !tbaa !167, !nonnull !155, !align !156 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 10816 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !165 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 10824 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !975 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 10828
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !979
  %.not.i = icmp ult i32 %i.ef, %i.eh
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !980

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr nonnull %2, i64 %i.ed)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit

bb.n:                                             ; preds = %bb.l
  %i.ei = zext i32 %i.ef to i64
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !164
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.ei ; 2 uses
  store ptr %2, ptr %i.ek, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %i.ed, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.el = load i32, ptr %i.ee, align 8, !tbaa !975
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ee, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit

.critedge:                                        ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit, %bb.k
  %i.en = load ptr, ptr %1, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !998
  %i.eq = tail call i64 @_ZN5clang9ASTReader7GetTypeEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.en, i64 noundef %i.ep) #25
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !974
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit: ; preds = %bb.n, %bb.m, %.critedge
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 0, ptr %i.es, align 8, !tbaa !998
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 8
  %i.ev = and i8 %i.eu, -8
  %i.ew = or disjoint i8 %i.ev, %i.cn
  store i8 %i.ew, ptr %i.et, align 8
  %i.ex = load i8, ptr %i.cp, align 8
  %i.ey = and i8 %i.ex, 7
  %i.ez = icmp eq i8 %i.ey, 1
  %i.fa = icmp ne i8 %i.cn, 1
  %or.cond = and i1 %i.fa, %i.ez
  br i1 %or.cond, label %bb.o, label %_ZN5clang4Decl18setLocalExternDeclEv.exit

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.fb, align 8 ; 3 uses
  %i.fc = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fe = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

bb.q:                                             ; preds = %bb.o
  %i.ff = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1434
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

_ZN5clang4Decl21getLexicalDeclContextEv.exit:     ; preds = %bb.p, %bb.q
  %.0.i = phi ptr [ %i.fe, %bb.p ], [ %i.fi, %bb.q ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fk = load i16, ptr %i.fj, align 8
  %i.fl = and i16 %i.fk, 127                      ; 2 uses
  switch i16 %i.fl, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit [
    i16 9, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 7, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 20, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 1, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
  ]

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit
  %i.fm = add nsw i16 %i.fl, -35
  %spec.select.i15 = icmp ult i16 %i.fm, 6
  br i1 %spec.select.i15, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread, label %_ZN5clang4Decl18setLocalExternDeclEv.exit

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit
  %i.fn = load ptr, ptr %2, align 8, !tbaa !987
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = tail call noundef ptr %i.fp(ptr noundef nonnull align 8 dereferenceable(33) %2) #25, !inline_history !2573 ; 2 uses
  %i.fr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.fs = and i32 %i.fr, -136314881
  %i.ft = or disjoint i32 %i.fs, 134217728
  store i32 %i.ft, ptr %i.cq, align 4
  %.not.i16 = icmp eq ptr %i.fq, null
  br i1 %.not.i16, label %_ZN5clang4Decl18setLocalExternDeclEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = and i32 %i.fv, 2097152
  %.not3.i = icmp eq i32 %i.fw, 0
  br i1 %.not3.i, label %_ZN5clang4Decl18setLocalExternDeclEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fx = or i32 %i.fr, 136314880
  store i32 %i.fx, ptr %i.cq, align 4
  br label %_ZN5clang4Decl18setLocalExternDeclEv.exit

_ZN5clang4Decl18setLocalExternDeclEv.exit:        ; preds = %bb.s, %bb.r, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit
  br i1 %.not96, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZN5clang4Decl18setLocalExternDeclEv.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !66
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !166
  %i.gc = icmp eq i32 %i.gb, 4
end_hunk_4
