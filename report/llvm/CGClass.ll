Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGClass?download=true
inline.NumInlined: 4438
inline.NumDeleted: 2366
begin_hunk_0_@_ZN5clang7CodeGen15CodeGenFunction22EmitCXXConstructorCallEPKNS_18CXXConstructorDeclENS_11CXXCtorTypeEbbNS0_12AggValueSlotEPKNS_16CXXConstructExprE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 1528
  store i32 0, ptr %i.j, align 8, !tbaa !710
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 1532
  store i32 1, ptr %i.k, align 4, !tbaa !783
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 1552
  store ptr null, ptr %i.l, align 8, !tbaa !802
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !407
  %i.n = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.o = lshr i32 %i.n, 9
  %i.p = call i64 @_ZNK5clang13CXXMethodDecl39getFunctionObjectParameterReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  %i.q = and i64 %i.p, -16
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !685 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16
  %i.v = and i8 %i.u, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.v, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !686
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !685
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 16
  %i.ac = and i8 %i.ab, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i = icmp eq i8 %i.ac, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.b
  %i.ad = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.s) #15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %bb.a
  %.1.i8.i.i = phi ptr [ %i.ad, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %i.s, %bb.a ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i8.i.i, i64 16
  %i.af = load i24, ptr %i.ae, align 16
  %i.ag = and i24 %i.af, 1048576
  %.not4.i.i.i = icmp eq i24 %i.ag, 0
  br i1 %.not4.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i
  %.05.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ], [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !685 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 16
  %i.an = and i8 %i.am, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i8 %i.an, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ak) #15
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ao, %bb.c ], [ %i.ak, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  %i.aq = load i24, ptr %i.ap, align 16
  %i.ar = and i24 %i.aq, 1048576
  %.not.i.i.i = icmp eq i24 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i
  %.0.lcssa.i.i.i = phi ptr [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ], [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i = load i64, ptr %i.as, align 8, !tbaa !686
  %.pre = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, -16
  %.pre70 = inttoptr i64 %.pre to ptr
  br label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit

_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i
  %.pre-phi71 = phi ptr [ %i.r, %bb.b ], [ %i.r, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.pre70, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.pre-phi71, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8 ; 2 uses
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i.i, 8
  %.not.i.i.i30 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i30, label %_ZNK5clang8QualType15getAddressSpaceEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit
  %i.av = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !407
  %i.ay = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.az = lshr i32 %i.ay, 9
  br label %_ZNK5clang8QualType15getAddressSpaceEv.exit

_ZNK5clang8QualType15getAddressSpaceEv.exit:      ; preds = %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.az, %bb.d ], [ 0, %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit ] ; 2 uses
  %i.ba = call i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  %i.bb = and i64 %i.ba, -16
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !685
  %i.be = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bd) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @_ZN5clang7CodeGen15CodeGenFunction21getAsNaturalAddressOfENS0_7AddressENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::Address") align 8 %12, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %5, i64 %i.be) #15
  %.0.copyload.i.i.i.i.i32 = load i64, ptr %12, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i32, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %.not = icmp eq i32 %i.o, %.sroa.0.0.i.i.i
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !404, !nonnull !405, !align !406
  %i.bl = call noundef i32 @_ZNK5clang10ASTContext21getTargetAddressSpaceENS_6LangASE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, i32 noundef %.sroa.0.0.i.i.i) #15
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !713, !nonnull !405, !align !406
  %i.bp = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 noundef %i.bl) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = and i32 %i.br, 536870912
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg) #15 ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 5, ptr %i.bw, align 8, !tbaa !727, !alias.scope !1559
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.bx, align 1, !tbaa !726, !alias.scope !1559
  store ptr %i.bu, ptr %11, align 8, !tbaa !686, !alias.scope !1559
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bv, ptr %i.by, align 8, !tbaa !686, !alias.scope !1559
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.45, ptr %i.bz, align 8, !tbaa !686, !alias.scope !1559
  br label %_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit

bb.g:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i16 257, ptr %i.ca, align 8
  br label %_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit

_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit: ; preds = %bb.f, %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cc = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.cb, i32 noundef 52, ptr noundef nonnull %i.bg, ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit, %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %.0 = phi ptr [ %i.cc, %_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit ], [ %i.bg, %_ZNK5clang8QualType15getAddressSpaceEv.exit ]
  %i.cd = call i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %.0, ptr %10, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i8 0, ptr %.sroa.668.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 144
  store i8 0, ptr %i.ce, align 8, !tbaa !806
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 145
  store i8 0, ptr %i.cf, align 1, !tbaa !807
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 152
  store i64 %i.cd, ptr %i.cg, align 8, !tbaa !686
  %i.ch = load i32, ptr %i.b, align 8, !tbaa !710 ; 2 uses
  %i.ci = load i32, ptr %i.c, align 4, !tbaa !783
  %.not.i.i33 = icmp ult i32 %i.ch, %i.ci
  br i1 %.not.i.i33, label %bb.j, label %bb.i, !prof !459

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen7CallArgELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(1560) %13, ptr noundef nonnull align 8 dereferenceable(160) %10)
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit

bb.j:                                             ; preds = %bb.h
  %i.cj = zext i32 %i.ch to i64
  %i.ck = load ptr, ptr %13, align 8, !tbaa !709
  %i.cl = getelementptr inbounds nuw [160 x i8], ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.cl, ptr noundef nonnull align 8 dereferenceable(160) %10, i64 160, i1 false)
  %i.cm = load i32, ptr %i.b, align 8, !tbaa !710
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.b, align 8, !tbaa !710
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit

_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !404, !nonnull !405, !align !406
  %i.cs = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl31isMemcpyEquivalentSpecialMemberERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.cr) #15
  br i1 %i.cs, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit
  %i.ct = load i16, ptr %6, align 8
  %i.cu = and i16 %i.ct, 511
  %.not.i.i.i.i = icmp eq i16 %i.cu, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %6, ptr null
  %15 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %15, ptr %i.cv
  %i.cw = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !1261
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @_ZN5clang7CodeGen15CodeGenFunction17EmitCheckedLValueEPKNS_4ExprENS1_13TypeCheckKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %14, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.cw, i32 noundef 0) #15
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !404, !nonnull !405, !align !406
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.db = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.da) #15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8 ; 3 uses
  %i.dd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.df = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.m:                                             ; preds = %bb.k
  %i.dg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !682
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

_ZNK5clang13CXXMethodDecl9getParentEv.exit:       ; preds = %bb.l, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.df, %bb.l ], [ %i.di, %bb.m ] ; 2 uses
  %i.dj = icmp eq ptr %.0.i.i.i.i, null
  %i.dk = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -64
  %i.dl = select i1 %i.dj, ptr null, ptr %i.dk
  %i.dm = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cz, ptr noundef %i.dl) #15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.dn = load ptr, ptr %i.co, align 8, !tbaa !679, !noalias !1560, !nonnull !405, !align !406
  call void @_ZN5clang7CodeGen13CodeGenModule17getTBAAAccessInfoENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CodeGen::TBAAAccessInfo") align 8 %9, ptr noundef nonnull align 8 dereferenceable(4008) %i.dn, i64 %i.dm) #15, !noalias !1560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false)
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !679, !noalias !1561, !nonnull !405, !align !406
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !404, !noalias !1561, !nonnull !405, !align !406
  %i.dr = and i64 %i.dm, -16
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i35 = load i64, ptr %i.dt, align 8, !noalias !1562 ; 3 uses
  %i.du = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i35, 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.dv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i35, -16
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !tbaa !407, !noalias !1562
  %i.dy = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -49
  br label %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit

_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit: ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit, %bb.n
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.dy, %bb.n ], [ 0, %_ZNK5clang13CXXMethodDecl9getParentEv.exit ]
  %i.dz = or i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i35, %i.dm
  %i.ea = and i64 %i.dz, 7
  %i.eb = call noundef i32 @_ZNK5clang10ASTContext17getObjCGCAttrKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dq, i64 %i.dm) #15, !noalias !1562
  %i.ec = or i64 %.sroa.0.0.i.i.i.i.i.i, %i.ea
  %i.ed = shl i32 %i.eb, 4
  %i.ee = sext i32 %i.ed to i64
  %i.ef = or i64 %i.ec, %i.ee
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.eh = load i8, ptr %i.eg, align 8
  %i.ei = lshr i8 %i.eh, 4
  %.lobit.i = and i8 %i.ei, 1
  %i.ej = zext nneg i8 %.lobit.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 0, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.4, i64 52, i1 false)
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.dm, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i64 %i.ef, ptr %.sroa.651.0..sroa_idx, align 8
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i8 0, ptr %.sroa.752.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 2, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1054.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false)
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 136
  store ptr null, ptr %.sroa.1155.0..sroa_idx, align 8
  call void @_ZN5clang7CodeGen15CodeGenFunction17EmitAggregateCopyENS0_6LValueES2_NS_8QualTypeENS0_12AggValueSlot9Overlap_tEb(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %7, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %14, i64 %.sroa.3.0.copyload, i32 noundef %i.ej, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.q

bb.o:                                             ; preds = %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i36 = load i64, ptr %i.ek, align 8, !tbaa !686
  %i.el = and i64 %.sroa.0.0.copyload.i36, -16
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !685 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i8, ptr %i.eo, align 16
  %.not.i38 = icmp eq i8 %i.ep, 24
  br i1 %.not.i38, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.en) #15
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.o, %bb.p
  %.1.i = phi ptr [ %i.eq, %bb.p ], [ %i.en, %bb.o ]
  %i.er = load i32, ptr %6, align 8               ; 2 uses
  %i.es = lshr i32 %i.er, 21
  %.lobit = and i32 %i.es, 1
  %i.et = ptrtoint ptr %.1.i to i64
  %i.eu = and i32 %i.er, 511
  %.not.i.i.i.i39 = icmp eq i32 %i.eu, 118        ; 2 uses
  %spec.select.i.i.i.i.i.i40 = select i1 %.not.i.i.i.i39, ptr %6, ptr null
  %16 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i40, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 40
  %spec.select.i.i.i.i41 = select i1 %.not.i.i.i.i39, ptr %16, ptr %i.ev ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !1266
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i41, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !834
  call void @_ZN5clang7CodeGen15CodeGenFunction12EmitCallArgsERNS0_11CallArgListENS1_16PrototypeWrapperEN4llvm14iterator_rangeINS_4Stmt12CastIteratorINS_4ExprEKPKS9_KPKS7_EEEENS1_14AbstractCalleeEjNS1_15EvaluationOrderE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull align 8 dereferenceable(1560) %13, i64 %i.et, ptr nonnull %spec.select.i.i.i.i41, ptr nonnull %i.ez, ptr %i.fb, i32 noundef 0, i32 noundef %.lobit) #15
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fd = load i8, ptr %i.fc, align 8             ; 2 uses
  %i.fe = lshr i8 %i.fd, 4
  %.lobit.i42 = and i8 %i.fe, 1
  %i.ff = zext nneg i8 %.lobit.i42 to i32
  %i.fg = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  %i.fh = and i8 %i.fd, 32
  %i.fi = icmp ne i8 %i.fh, 0
  call void @_ZN5clang7CodeGen15CodeGenFunction22EmitCXXConstructorCallEPKNS_18CXXConstructorDeclENS_11CXXCtorTypeEbbNS0_7AddressERNS0_11CallArgListENS0_12AggValueSlot9Overlap_tENS_14SourceLocationEbPPN4llvm8CallBaseE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1560) %13, i32 noundef %i.ff, i32 %i.fg, i1 noundef zeroext %i.fi, ptr noundef null)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !709 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.i
  br i1 %i.fk, label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.fj) #15
  br label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i: ; preds = %bb.r, %bb.q
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !709 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.e
  br i1 %i.fm, label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i
  call void @free(ptr noundef %i.fl) #15
  br label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i: ; preds = %bb.s, %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i
  %i.fn = load ptr, ptr %13, align 8, !tbaa !709  ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.a
  br i1 %i.fo, label %_ZN5clang7CodeGen11CallArgListD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i
  call void @free(ptr noundef %i.fn) #15
  br label %_ZN5clang7CodeGen11CallArgListD2Ev.exit

_ZN5clang7CodeGen11CallArgListD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  ret void
}

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang13CXXRecordDecl13getDestructorEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

declare i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang10ASTContext21getTargetAddressSpaceENS_6LangASE(ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang13CXXMethodDecl31isMemcpyEquivalentSpecialMemberERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

declare void @_ZN5clang7CodeGen15CodeGenFunction17EmitCheckedLValueEPKNS_4ExprENS1_13TypeCheckKindE(ptr dead_on_unwind writable sret(%"class.clang::CodeGen::LValue") align 8, ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang7CodeGen15CodeGenFunction12EmitCallArgsERNS0_11CallArgListENS1_16PrototypeWrapperEN4llvm14iterator_rangeINS_4Stmt12CastIteratorINS_4ExprEKPKS9_KPKS7_EEEENS1_14AbstractCalleeEjNS1_15EvaluationOrderE(ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef nonnull align 8 dereferenceable(1560), i64, ptr, ptr, ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction22EmitCXXConstructorCallEPKNS_18CXXConstructorDeclENS_11CXXCtorTypeEbbNS0_7AddressERNS0_11CallArgListENS0_12AggValueSlot9Overlap_tENS_14SourceLocationEbPPN4llvm8CallBaseE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"class.clang::CodeGen::Address") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(1560) %6, i32 noundef %7, i32 %8, i1 noundef zeroext %9, ptr noundef %10) local_unnamed_addr #0 align 2 {
bb.a:
  %11 = alloca %"class.llvm::SmallPtrSet.1132", align 8 ; 9 uses
  %12 = alloca %"class.llvm::SmallVector.1114", align 8 ; 9 uses
  %13 = alloca %"class.clang::CodeGen::LValue", align 8 ; 17 uses
  %14 = alloca %"class.clang::CodeGen::LValue", align 8 ; 12 uses
  %15 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 2 uses
  %16 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %17 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 2 uses
  %18 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %19 = alloca %"struct.clang::SanitizerSet", align 8 ; 4 uses
  %20 = alloca %"class.clang::CodeGen::Address", align 8 ; 6 uses
  %21 = alloca %"class.clang::CodeGen::RValue", align 8 ; 4 uses
  %.sroa.482 = alloca [52 x i8], align 4          ; 2 uses
  %22 = alloca %"class.clang::InheritedConstructor", align 16 ; 5 uses
  %23 = alloca %"class.clang::CodeGen::CGCallee", align 8 ; 9 uses
  %24 = alloca %"class.clang::CodeGen::ReturnValueSlot", align 8 ; 3 uses
  %25 = alloca %"class.clang::CodeGen::RValue", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !682
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

_ZNK5clang13CXXMethodDecl9getParentEv.exit:       ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = icmp eq ptr %.0.i.i.i.i, null
  %i.k = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -64 ; 6 uses
  %i.l = select i1 %i.j, ptr null, ptr %i.k       ; 2 uses
  br i1 %9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !404, !nonnull !405, !align !406
  %i.q = tail call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.p, ptr noundef %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.r = tail call noundef zeroext i1 @_ZNK5clang7CodeGen15CodeGenFunction24sanitizePerformTypeCheckEv(ptr noundef nonnull align 8 dereferenceable(6288) %0) #15
  br i1 %i.r, label %bb.e, label %_ZN5clang7CodeGen15CodeGenFunction13EmitTypeCheckENS1_13TypeCheckKindENS_14SourceLocationENS0_7AddressENS_8QualTypeENS_9CharUnitsENS_12SanitizerSetEPN4llvm5ValueE.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, 3
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %20, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.w = inttoptr i64 %i.v to ptr
  br label %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.x = call noundef ptr @_ZNK5clang7CodeGen7Address18emitRawPointerSlowERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(6288) %0) #15
  br label %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit.i

_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.x, %bb.g ], [ %i.w, %bb.f ]
  call void @_ZN5clang7CodeGen15CodeGenFunction13EmitTypeCheckENS1_13TypeCheckKindENS_14SourceLocationEPN4llvm5ValueENS_8QualTypeENS_9CharUnitsENS_12SanitizerSetES6_(ptr noundef nonnull align 8 dereferenceable(6288) %0, i32 noundef 5, i32 %8, ptr noundef %.0.i.i, i64 %i.q, i64 0, ptr noundef nonnull byval(%"struct.clang::SanitizerSet") align 8 %19, ptr noundef null) #15
  br label %_ZN5clang7CodeGen15CodeGenFunction13EmitTypeCheckENS1_13TypeCheckKindENS_14SourceLocationENS0_7AddressENS_8QualTypeENS_9CharUnitsENS_12SanitizerSetEPN4llvm5ValueE.exit

_ZN5clang7CodeGen15CodeGenFunction13EmitTypeCheckENS1_13TypeCheckKindENS_14SourceLocationENS0_7AddressENS_8QualTypeENS_9CharUnitsENS_12SanitizerSetEPN4llvm5ValueE.exit: ; preds = %bb.d, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5clang7CodeGen15CodeGenFunction13EmitTypeCheckENS1_13TypeCheckKindENS_14SourceLocationENS0_7AddressENS_8QualTypeENS_9CharUnitsENS_12SanitizerSetEPN4llvm5ValueE.exit, %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 8388608
  %.not147 = icmp eq i32 %i.aa, 0
  br i1 %.not147, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl20isDefaultConstructorEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #15
  br i1 %i.ab, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 17 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !404, !nonnull !405, !align !406
  %i.ag = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl31isMemcpyEquivalentSpecialMemberERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.af) #15
  br i1 %i.ag, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1267
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1269
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.0.0.copyload.i58 = load i64, ptr %i.ak, align 8, !tbaa !686 ; 3 uses
  %i.al = and i64 %.sroa.0.0.copyload.i58, -16
  %i.am = inttoptr i64 %i.al to ptr               ; 3 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !685 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 16
  %i.aq = and i8 %i.ap, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.aq, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !686
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !685
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i8, ptr %i.av, align 16
  %i.ax = and i8 %i.aw, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.ax, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.l
  %i.ay = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.an) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.k
  %.1.i8.i = phi ptr [ %i.ay, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.an, %bb.k ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.ba = load i24, ptr %i.az, align 16
  %i.bb = and i24 %i.ba, 1048576
  %.not4.i.i = icmp eq i24 %i.bb, 0
end_hunk_0
begin_hunk_1_@_ZN5clang7CodeGen15CodeGenFunction12GetVTablePtrENS0_7AddressEPN4llvm4TypeEPKNS_13CXXRecordDeclENS1_14VTableAuthModeE:_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit
  %.not14 = icmp eq i64 %i.az, 0
  br i1 %.not14, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, 35184372088832
  %.not15 = icmp eq i64 %i.bc, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5clang7CodeGen13CodeGenModule37DecorateInstructionWithInvariantGroupEPN4llvm11InstructionEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(4008) %i.au, ptr noundef %.0, ptr noundef %3) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm13IRBuilderBase16CreateAssumptionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction17getVTablePointersEPKNS_13CXXRecordDeclE(ptr dead_on_unwind noalias nonnull writable sret(%"class.llvm::SmallVector.1114") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6288) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallPtrSet.1132", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !709
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !710
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !783
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %3, align 8, !tbaa !1215
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %i.e, align 8, !tbaa !1216
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !1217
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i8 1, ptr %i.g, align 8, !tbaa !1218
  call void @_ZN5clang7CodeGen15CodeGenFunction17getVTablePointersENS_13BaseSubobjectEPKNS_13CXXRecordDeclENS_9CharUnitsEbS5_RN4llvm11SmallPtrSetIS5_Lj4EEERNS7_11SmallVectorINS1_4VPtrELj4EEE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr %2, i64 0, ptr noundef null, i64 0, i1 noundef zeroext false, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1218, !range !797, !noundef !405
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !1215
  call void @free(ptr noundef %i.j) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction30EmitSynthesizedCXXCopyCtorCallEPKNS_18CXXConstructorDeclENS0_7AddressES5_PKNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %1, ptr nofree noundef readonly byval(%"class.clang::CodeGen::Address") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"class.clang::CodeGen::Address") align 8 captures(none) %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %6 = alloca %"class.clang::CodeGen::Address", align 8 ; 4 uses
  %7 = alloca %"struct.clang::CodeGen::CallArg", align 8 ; 10 uses
  %8 = alloca %"class.clang::CodeGen::Address", align 8 ; 4 uses
  %9 = alloca %"class.clang::CodeGen::CallArgList", align 8 ; 22 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !686
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !685 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16
  %.not.i = icmp eq i8 %i.f, 24
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.d) #15
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.h, ptr %9, align 8, !tbaa !709
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i32 0, ptr %i.i, align 8, !tbaa !710
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  store i32 8, ptr %i.j, align 4, !tbaa !783
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 1296 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 1312 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !709
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 1304
  store i32 0, ptr %i.m, align 8, !tbaa !710
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 1308
  store i32 1, ptr %i.n, align 4, !tbaa !783
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 1520 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 1536 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !709
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 1528
  store i32 0, ptr %i.q, align 8, !tbaa !710
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 1532
  store i32 1, ptr %i.r, align 4, !tbaa !783
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 1552
  store ptr null, ptr %i.s, align 8, !tbaa !802
  %i.t = call i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZN5clang7CodeGen15CodeGenFunction21getAsNaturalAddressOfENS0_7AddressENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::Address") align 8 %8, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %2, i64 %i.t) #15
  %.0.copyload.i.i.i.i.i22 = load i64, ptr %8, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i.i22, -8
  %i.v = inttoptr i64 %i.u to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.w = call i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.v, ptr %7, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i8 0, ptr %i.x, align 8, !tbaa !806
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 145
  store i8 0, ptr %i.y, align 1, !tbaa !807
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 152
  store i64 %i.w, ptr %i.z, align 8, !tbaa !686
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !710 ; 2 uses
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !783
  %.not.i.i = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !459

bb.c:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen7CallArgELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(1560) %9, ptr noundef nonnull align 8 dereferenceable(160) %7)
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit

bb.d:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %9, align 8, !tbaa !709
  %i.ae = getelementptr inbounds nuw [160 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.ae, ptr noundef nonnull align 8 dereferenceable(160) %7, i64 160, i1 false)
  %i.af = load i32, ptr %i.i, align 8, !tbaa !710
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.i, align 8, !tbaa !710
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit

_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  %.sroa.07.0.copyload = load i64, ptr %i.ah, align 8, !tbaa !686 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 400
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !704
  %i.am = call noundef ptr @_ZN5clang7CodeGen12CodeGenTypes11ConvertTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(232) %i.al, i64 %.sroa.07.0.copyload) #15
  %i.an = call i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN5clang7CodeGen15CodeGenFunction21getAsNaturalAddressOfENS0_7AddressENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::Address") align 8 %6, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %3, i64 %i.an) #15
  %.0.copyload.i.i.i.i.i23 = load i64, ptr %6, align 8
  %i.ao = and i64 %.0.copyload.i.i.i.i.i23, -8
  %i.ap = inttoptr i64 %i.ao to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.ar, align 8
  %i.as = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, i32 noundef 51, ptr noundef %i.ap, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.as, ptr %5, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %.sroa.642.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i8 0, ptr %i.at, align 8, !tbaa !806
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 145
  store i8 0, ptr %i.au, align 1, !tbaa !807
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %.sroa.07.0.copyload, ptr %i.av, align 8, !tbaa !686
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !710 ; 2 uses
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !783
  %.not.i.i24 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i.i24, label %bb.f, label %bb.e, !prof !459

bb.e:                                             ; preds = %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen7CallArgELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(1560) %9, ptr noundef nonnull align 8 dereferenceable(160) %5)
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit25

bb.f:                                             ; preds = %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %9, align 8, !tbaa !709
  %i.ba = getelementptr inbounds nuw [160 x i8], ptr %i.az, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.ba, ptr noundef nonnull align 8 dereferenceable(160) %5, i64 160, i1 false)
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !710
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.i, align 8, !tbaa !710
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit25

_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit25: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.bd = ptrtoint ptr %.1.i to i64
  %i.be = load i16, ptr %4, align 8
  %i.bf = and i16 %i.be, 511
  %.not.i.i.i.i = icmp eq i16 %i.bf, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %4, ptr null
  %11 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %11, ptr %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1266
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !834
  call void @_ZN5clang7CodeGen15CodeGenFunction12EmitCallArgsERNS0_11CallArgListENS1_16PrototypeWrapperEN4llvm14iterator_rangeINS_4Stmt12CastIteratorINS_4ExprEKPKS9_KPKS7_EEEENS1_14AbstractCalleeEjNS1_15EvaluationOrderE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull align 8 dereferenceable(1560) %9, i64 %i.bd, ptr nonnull %i.bl, ptr nonnull %i.bk, ptr %i.bn, i32 noundef 1, i32 noundef 0) #15
  %i.bo = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @_ZN5clang7CodeGen15CodeGenFunction22EmitCXXConstructorCallEPKNS_18CXXConstructorDeclENS_11CXXCtorTypeEbbNS0_7AddressERNS0_11CallArgListENS0_12AggValueSlot9Overlap_tENS_14SourceLocationEbPPN4llvm8CallBaseE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1560) %9, i32 noundef 1, i32 %i.bo, i1 noundef zeroext false, ptr noundef null)
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !709 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit25
  call void @free(ptr noundef %i.bp) #15
  br label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i: ; preds = %bb.g, %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit25
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !709 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.l
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i
  call void @free(ptr noundef %i.br) #15
  br label %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList14CallArgCleanupELj1EED2Ev.exit.i
  %i.bt = load ptr, ptr %9, align 8, !tbaa !709   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.h
  br i1 %i.bu, label %_ZN5clang7CodeGen11CallArgListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i
  call void @free(ptr noundef %i.bt) #15
  br label %_ZN5clang7CodeGen11CallArgListD2Ev.exit

_ZN5clang7CodeGen11CallArgListD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorIN5clang7CodeGen11CallArgList9WritebackELj1EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret void
}

declare noundef ptr @_ZNK5clang18CXXConstructorDecl10init_beginEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction21PushDestructorCleanupEPKNS_17CXXDestructorDeclENS_8QualTypeENS0_7AddressE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %1, i64 %2, ptr nofree noundef readonly byval(%"class.clang::CodeGen::Address") align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.b = tail call noundef ptr @_ZN5clang7CodeGen12EHScopeStack11pushCleanupENS0_11CleanupKindEm(ptr noundef nonnull align 8 dereferenceable(320) %i.a, i32 noundef 3, i64 noundef 72) #15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113CallLocalDtorE, i64 16), ptr %i.b, align 8, !tbaa !468
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !1302
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %2, ptr %i.e, align 8, !tbaa !686
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction21PushDestructorCleanupENS_8QualTypeENS0_7AddressE(ptr noundef nonnull align 8 dereferenceable(6288) %0, i64 %1, ptr nofree noundef readonly byval(%"class.clang::CodeGen::Address") align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !685
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !686
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !685 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16              ; 3 uses
  %i.j = add i8 %i.i, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.j, 3
  %.not.i7.i = icmp ne ptr %i.g, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.k = and i8 %i.i, 62
  %spec.select.i.i.i = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.b, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !701  ; 3 uses
  %i.n = icmp eq i8 %i.i, 49
  br i1 %i.n, label %bb.c, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 127
  %i.r = add nsw i32 %i.q, -60
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.c, %bb.b
  %i.t = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.m) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.t, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.m, ptr %i.t ; 2 uses
  %i.u = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl20hasTrivialDestructorEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select)
  br i1 %i.u, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.v = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDestructorEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select) #15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.x = tail call noundef ptr @_ZN5clang7CodeGen12EHScopeStack11pushCleanupENS0_11CleanupKindEm(ptr noundef nonnull align 8 dereferenceable(320) %i.w, i32 noundef 3, i64 noundef 72) #15 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_113CallLocalDtorE, i64 16), ptr %i.x, align 8, !tbaa !468
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %i.z, align 8, !tbaa !1302
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i64 %1, ptr %i.aa, align 8, !tbaa !686
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread: ; preds = %bb.a, %bb.c, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction23InitializeVTablePointerERKNS1_4VPtrE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::CodeGen::Address", align 8 ; 2 uses
  %3 = alloca %"class.clang::CodeGen::Address", align 8 ; 15 uses
  %4 = alloca %"class.clang::CodeGen::Address", align 8 ; 4 uses
  %5 = alloca %"class.std::optional.1124", align 8 ; 5 uses
  %6 = alloca %"struct.clang::CodeGen::TBAAAccessInfo", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !691  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1297
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8, !tbaa !703
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !407
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1298
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !468
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 544
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.f, ptr %.sroa.08.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %i.h) #15 ; 3 uses
  %.not27 = icmp eq ptr %i.l, null
  br i1 %.not27, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !691  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !468
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 520
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"struct.clang::CodeGen::CodeGenFunction::VPtr") align 8 %1) #15
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !679, !nonnull !405, !align !406
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !691  ; 2 uses
  call void @_ZN5clang7CodeGen15CodeGenFunction18LoadCXXThisAddressEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::Address") align 8 %2, ptr noundef nonnull align 8 dereferenceable(6288) %0)
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !1297
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1298
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !468
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 376
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %2, ptr noundef %i.w, ptr noundef %i.x) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge.in = phi ptr [ %i.ac, %bb.c ], [ %.sroa.2.0..sroa_idx, %bb.b ]
  %.025 = phi ptr [ %i.ab, %bb.c ], [ null, %bb.b ] ; 2 uses
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !407 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN5clang7CodeGen15CodeGenFunction18LoadCXXThisAddressEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::Address") align 8 %3, ptr noundef nonnull align 8 dereferenceable(6288) %0)
  %i.ad = icmp eq i64 %storemerge, 0
  %i.ae = icmp eq ptr %.025, null
  %or.cond.not = and i1 %i.ae, %i.ad
  br i1 %or.cond.not, label %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !1297
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !1298
  call fastcc void @_ZL31ApplyNonVirtualAndVirtualOffsetRN5clang7CodeGen15CodeGenFunctionENS0_7AddressENS_9CharUnitsEPN4llvm5ValueEPKNS_13CXXRecordDeclESA_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"class.clang::CodeGen::Address") align 8 %3, i64 %storemerge, ptr noundef %.025, ptr noundef %i.af, ptr noundef %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !722
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit

_ZNK5clang7CodeGen7Address15withElementTypeEPN4llvm4TypeE.exit: ; preds = %bb.d, %bb.e
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !679, !nonnull !405, !align !406 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !779, !nonnull !405, !align !406
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 308
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !1628
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !713, !nonnull !405, !align !406
  %i.ao = tail call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %i.al) #15 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.0.copyload.i.i.i.i.i = load i64, ptr %3, align 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = and i64 %.0.copyload.i.i.i.i.i, -4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ao, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !706
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_1
