Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Compiler?download=true
inline.NumInlined: 12951
inline.NumDeleted: 3526
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE27VisitCXXReinterpretCastExprEPKNS_22CXXReinterpretCastExprE:bb.a
  %i.af = icmp ne i8 %i.p, %.sroa.0.0.i.i35
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = or i64 %i.ag, 4
  %i.ai = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitInvalidCastENS0_8CastKindEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i8 noundef zeroext 0, i1 noundef zeroext %i.af, i64 %i.ah) #17
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE13VisitCastExprEPKNS_8CastExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread31, %bb.f, %bb.e, %bb.b
  %.1 = phi i1 [ %i.ad, %bb.e ], [ %i.ae, %bb.f ], [ %i.u, %bb.b ], [ false, %.thread31 ], [ %i.aj, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE23VisitCXXDynamicCastExprEPKNS_18CXXDynamicCastExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120, !nonnull !113, !align !121
  %i.c = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang6interp7Context11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.b) #17
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 65536
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = or i64 %i.f, 4
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitInvalidCastENS0_8CastKindEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i8 noundef zeroext 3, i1 noundef zeroext false, i64 %i.g) #17
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %1, align 8
  %i.j = and i32 %i.i, 66584576
  %.not10 = icmp eq i32 %i.j, 4718592
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE13VisitCastExprEPKNS_8CastExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull %1)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !116 ; 2 uses
  %i.m = and i64 %.sroa.0.0.copyload.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !119 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !116
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16
  %i.v = icmp eq i8 %i.u, 49
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.o) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.013.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.e ], [ %i.w, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = load ptr, ptr %0, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %i.y) #17
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ad = and i64 %.sroa.013.0, -16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !119
  %i.ag = load i24, ptr %1, align 8
  %i.ah = and i24 %i.ag, 1536
  %i.ai = icmp ne i24 %i.ah, 0
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = or i64 %i.aj, 4                         ; 2 uses
  %i.al = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitDynamicCastEPKNS_4TypeEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef %i.af, i1 noundef zeroext %i.ai, i64 %i.ak) #17
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.an = load i8, ptr %i.am, align 8, !tbaa !111, !range !112, !noundef !113
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 %i.ak) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.b, %bb.d
  %.1 = phi i1 [ %i.k, %bb.d ], [ false, %bb.b ], [ %i.ap, %bb.j ], [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.i ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitDynamicCastEPKNS_4TypeEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672), ptr noundef, i1 noundef zeroext, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE20VisitCXXNoexceptExprEPKNS_15CXXNoexceptExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.b = load i8, ptr %i.a, align 8, !tbaa !111, !range !112, !noundef !113
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i24, ptr %1, align 8
  %i.e = and i24 %i.d, 524288
  %i.f = icmp ne i24 %i.e, 0
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.g, 4
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter13emitConstBoolEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i1 noundef zeroext %i.f, i64 %i.h) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.llvm::PointerUnion.87", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !559
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !116
  %i.e = and i64 %.sroa.0.0.copyload.i, -16
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !116
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i8, ptr %i.l, align 16              ; 2 uses
  %i.n = icmp eq i8 %i.m, 49
  br i1 %i.n, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !562  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !111, !range !112, !noundef !113
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 8388608
  %.not120 = icmp eq i32 %i.v, 0
  br i1 %.not120, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.x = or i64 %i.w, 2
  store i64 %i.x, ptr %2, align 8
  %i.y = call i32 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE13allocateLocalEON4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEENS_8QualTypeENS0_9ScopeKindE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 0, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not121 = icmp eq i32 %i.y, 0
  br i1 %.not121, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i32 %i.y, -1
  %i.aa = or i64 %i.w, 4
  %i.ab = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitGetPtrLocalEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %i.z, i64 %i.aa) #17
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 33554432
  %.not122 = icmp eq i32 %i.ae, 0
  br i1 %.not122, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.af = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %i.af, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.ac, align 8
  %i.ah = and i32 %i.ag, 8388608
  %.not123 = icmp eq i32 %i.ah, 0
  br i1 %.not123, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i16, ptr %1, align 8
  %i.aj = and i16 %i.ai, 511
  %.not.i.i.i.i = icmp eq i16 %i.aj, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !260
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !120, !nonnull !113, !align !121
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !174, !nonnull !113, !align !121
  %i.ap = load ptr, ptr %i.f, align 16, !tbaa !119
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i.i.i.i62 = load i64, ptr %i.aq, align 8, !tbaa !116
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i.i62, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !119 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i8, ptr %i.au, align 16            ; 3 uses
  %i.aw = add i8 %i.av, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aw, 3
  %.not.i7.i = icmp ne ptr %i.at, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.ax = and i8 %i.av, 62
  %spec.select.i.i.i = icmp eq i8 %i.ax, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.j, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !157 ; 3 uses
  %i.ba = icmp eq i8 %i.av, 49
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 127
  %i.be = add nsw i32 %i.bd, -60
  %i.bf = icmp ult i32 %i.be, 3
  br i1 %i.bf, label %bb.l, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.az) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bg, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %i.az, ptr %i.bg
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.i, %bb.k, %bb.l
  %.1.i = phi ptr [ null, %bb.k ], [ null, %bb.i ], [ %spec.select.i.i, %bb.l ]
  %i.bh = call noundef zeroext i1 @_ZNK5clang4Expr17isTemporaryObjectERNS_10ASTContextEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(23904) %i.ao, ptr noundef %.1.i) #17
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.bi = load i16, ptr %1, align 8
  %i.bj = and i16 %i.bi, 511
  %.not.i.i.i.i63 = icmp eq i16 %i.bj, 118
  %spec.select.v.i.i.i.i64 = select i1 %.not.i.i.i.i63, i64 48, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !260
  %i.bm = call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE16visitInitializerEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %i.bl)
  br label %.critedge

bb.n:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.h, %bb.g, %bb.f
  %i.bn = load i32, ptr %1, align 8               ; 3 uses
  %i.bo = and i32 %i.bn, 8388608
  %.not124 = icmp eq i32 %i.bo, 0
  br i1 %.not124, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i66 = load i64, ptr %i.d, align 8, !tbaa !116
  %i.bp = and i64 %.sroa.0.0.copyload.i66, -16
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !119 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i8, ptr %i.bs, align 16
  %i.bu = icmp ne i8 %i.bt, 40
  %.not.not11.i.i = icmp eq ptr %i.br, null
  %.not.not.i.i67 = or i1 %.not.not11.i.i, %i.bu
  br i1 %.not.not.i.i67, label %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE11getRecordTyENS_8QualTypeE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bv, align 16, !tbaa !116
  %i.bw = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !119
  br label %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE11getRecordTyENS_8QualTypeE.exit.i

_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE11getRecordTyENS_8QualTypeE.exit.i: ; preds = %bb.p, %bb.o
  %.sink16.i.i = phi ptr [ %i.by, %bb.p ], [ %i.br, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !116
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !119 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i8, ptr %i.cd, align 16
  %i.cf = icmp ne i8 %i.ce, 49
  %.not7.i = icmp eq ptr %i.cc, null
  %.not.not.i = or i1 %.not7.i, %i.cf
  br i1 %.not.not.i, label %.critedge, label %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE9getRecordENS_8QualTypeE.exit

_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE9getRecordENS_8QualTypeE.exit: ; preds = %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE11getRecordTyENS_8QualTypeE.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !157 ; 2 uses
  %i.ci = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #17 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ci, null
  %spec.select.i.i.i68 = select i1 %.not.not.i.i.i, ptr %i.ch, ptr %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !125, !nonnull !113, !align !121
  %i.cl = call noundef ptr @_ZN5clang6interp7Program17getOrCreateRecordEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(288) %i.ck, ptr noundef nonnull %spec.select.i.i.i68) #17 ; 2 uses
  %.not55 = icmp eq ptr %i.cl, null
  br i1 %.not55, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE9getRecordENS_8QualTypeE.exit
  %i.cm = call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE26visitZeroRecordInitializerEPKNS0_6RecordEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull %i.cl, ptr noundef nonnull %1)
  br i1 %i.cm, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cn = load i32, ptr %i.ac, align 8
  %i.co = and i32 %i.cn, 8388608
  %.not128 = icmp eq i32 %i.co, 0
  br i1 %.not128, label %.thread113, label %.critedge

bb.s:                                             ; preds = %bb.n
  %i.cp = and i32 %i.bn, 524288
  %.not125 = icmp eq i32 %i.cp, 0
  br i1 %.not125, label %.thread113, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = and i32 %i.bn, 511
  %.not.i.i.i.i69 = icmp eq i32 %i.cq, 118
  %spec.select.v.i.i.i.i70 = select i1 %.not.i.i.i.i69, i64 48, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i70
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !260 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 8
  %i.cu = and i16 %i.ct, 511
  %.not127 = icmp eq i16 %i.cu, 50
  br i1 %.not127, label %bb.u, label %.thread113

bb.u:                                             ; preds = %bb.t
  %i.cv = ptrtoint ptr %1 to i64
  %i.cw = or i64 %i.cv, 4
  %i.cx = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter21emitCheckFunctionDeclEPKNS_12FunctionDeclENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %i.p, i64 %i.cw) #17
  br i1 %i.cx, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cy, align 8 ; 3 uses
  %i.cz = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.x:                                             ; preds = %bb.v
  %i.dc = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !543
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.w, %bb.x
  %i.dg = phi ptr [ %i.db, %bb.w ], [ %i.df, %bb.x ]
  %i.dh = call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE16visitInitializerEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %i.dg)
  br label %.critedge

.thread113:                                       ; preds = %bb.r, %bb.t, %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !120, !nonnull !113, !align !121
  %i.dk = call noundef ptr @_ZN5clang6interp7Context19getOrCreateFunctionEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(120) %i.dj, ptr noundef nonnull %i.p) #17 ; 5 uses
  %.not57 = icmp eq ptr %i.dk, null
  br i1 %.not57, label %.critedge, label %bb.y

bb.y:                                             ; preds = %.thread113
  %i.dl = ptrtoint ptr %1 to i64
  %i.dm = or i64 %i.dl, 4                         ; 5 uses
  %i.dn = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter10emitDupPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 %i.dm) #17
  br i1 %i.dn, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.do = load i16, ptr %1, align 8
  %i.dp = and i16 %i.do, 511
  %.not.i.i.i.i73 = icmp eq i16 %i.dp, 118
  %spec.select.v.i.i.i.i74 = select i1 %.not.i.i.i.i73, i64 48, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i74 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !563 ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %.idx = shl nuw nsw i64 %i.dt, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx
  %.not129131 = icmp eq i32 %i.ds, 0
  br i1 %.not129131, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.095.0132, i64 8 ; 2 uses
  %.not129 = icmp eq ptr %i.dv, %i.du
  br i1 %.not129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %.sroa.095.0132 = phi ptr [ %i.dv, %bb.aa ], [ %i.dq, %bb.z ] ; 2 uses
  %i.dw = load ptr, ptr %.sroa.095.0132, align 8, !tbaa !277
  %i.dx = load ptr, ptr %0, align 8, !tbaa !143
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %i.dw) #17
  br i1 %i.ea, label %bb.aa, label %.critedge

._crit_edge:                                      ; preds = %bb.aa, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 616
  %i.ec = load i16, ptr %i.eb, align 8
  %i.ed = and i16 %i.ec, 128
  %.not130 = icmp eq i16 %i.ed, 0
  br i1 %.not130, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 560
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !185 ; 2 uses
  %i.eg = load i32, ptr %i.dr, align 8, !tbaa !563 ; 2 uses
  %.not58133 = icmp eq i32 %i.ef, %i.eg
  br i1 %.not58133, label %._crit_edge138, label %.lr.ph137

._crit_edge138:                                   ; preds = %.lr.ph137, %bb.ab
  %.046.lcssa = phi i32 [ 0, %bb.ab ], [ %i.ev, %.lr.ph137 ]
  %i.eh = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter11emitCallVarEPKNS0_8FunctionEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %i.dk, i32 noundef %.046.lcssa, i64 %i.dm) #17
  br i1 %i.eh, label %bb.af, label %.critedge

.lr.ph137:                                        ; preds = %bb.ab, %.lr.ph137
  %.045135 = phi i32 [ %i.ew, %.lr.ph137 ], [ %i.ef, %bb.ab ] ; 2 uses
  %.046134 = phi i32 [ %i.ev, %.lr.ph137 ], [ 0, %bb.ab ]
  %i.ei = load i16, ptr %1, align 8
  %i.ej = and i16 %i.ei, 511
  %.not.i.i.i.i78 = icmp eq i16 %i.ej, 118
  %spec.select.v.i.i.i.i79 = select i1 %.not.i.i.i.i78, i64 48, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i79
  %i.el = zext i32 %.045135 to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !260
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.0.0.copyload.i81 = load i64, ptr %i.eo, align 8, !tbaa !116
  %i.ep = load ptr, ptr %i.di, align 8, !tbaa !120, !nonnull !113, !align !121
  %i.eq = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.ep, i64 %.sroa.0.0.copyload.i81) #17 ; 2 uses
  %.not.i = icmp eq i8 %i.eq, -1
  %spec.select.i82 = select i1 %.not.i, i8 13, i8 %i.eq
  %i.er = call noundef i64 @_ZN5clang6interp8primSizeENS0_8PrimTypeE(i8 noundef zeroext %spec.select.i82) #17
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, 7
  %i.eu = and i32 %i.et, -8
  %i.ev = add i32 %i.eu, %.046134                 ; 2 uses
  %i.ew = add i32 %.045135, 1                     ; 2 uses
  %.not58 = icmp eq i32 %i.ew, %i.eg
  br i1 %.not58, label %._crit_edge138, label %.lr.ph137, !llvm.loop !1484

bb.ac:                                            ; preds = %._crit_edge
  %i.ex = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter8emitCallEPKNS0_8FunctionEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull %i.dk, i32 noundef 0, i64 %i.dm) #17
  br i1 %i.ex, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load i8, ptr %i.q, align 8, !tbaa !111, !range !112, !noundef !113
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.fa = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 %i.dm) #17 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %bb.ac, %._crit_edge138
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !111, !range !112, !noundef !113
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.fd = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 %i.dm) #17
  br label %.critedge

bb.ah:                                            ; preds = %bb.a
  %i.fe = add i8 %i.m, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fe, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !562
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !120, !nonnull !113, !align !121
  %i.fj = tail call noundef ptr @_ZN5clang6interp7Context19getOrCreateFunctionEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(120) %i.fi, ptr noundef %i.fg) #17 ; 2 uses
  store ptr %i.fj, ptr %i.c, align 8, !tbaa !565
  %.not = icmp eq ptr %i.fj, null
  br i1 %.not, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = ptrtoint ptr %1 to i64
  %i.fl = or i64 %i.fk, 4
  %i.fm = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter10emitDupPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 %i.fl) #17
  br i1 %i.fm, label %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit, label %bb.al

_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.fn = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  store ptr %i.b, ptr %i.fn, align 16, !tbaa !567
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !568
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !570
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !572
  store ptr %i.fn, ptr %3, align 8
  %.sroa.4.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx151, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.fo, align 8, !tbaa !307
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_, ptr %i.fp, align 8, !tbaa !307
  %.sroa.0.0.copyload.i85.pre = load i64, ptr %i.d, align 8, !tbaa !116
  %i.fq = call noundef zeroext i1 @_ZZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprEENKUlNS_8QualTypeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i64 %.sroa.0.0.copyload.i85.pre)
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !574 ; 2 uses
  %.not.i87 = icmp eq ptr %i.fr, null
  br i1 %.not.i87, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit
  %i.fs = call noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #17, !inline_history !9 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ai, %_ZNSt14_Function_baseD2Ev.exit
  %.13 = phi i1 [ %i.fq, %_ZNSt14_Function_baseD2Ev.exit ], [ false, %bb.ai ], [ false, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %bb.u, %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE11getRecordTyENS_8QualTypeE.exit.i, %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE9getRecordENS_8QualTypeE.exit, %bb.q, %bb.d, %bb.ah, %bb.m, %bb.e, %bb.c, %bb.ag, %._crit_edge138, %.thread113, %bb.y, %bb.ae, %bb.ad, %bb.af, %bb.r, %bb.al
  %.14 = phi i1 [ true, %bb.af ], [ %.13, %bb.al ], [ false, %bb.e ], [ %i.bm, %bb.m ], [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.r ], [ false, %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE11getRecordTyENS_8QualTypeE.exit.i ], [ %i.fd, %bb.ag ], [ false, %bb.ad ], [ false, %._crit_edge138 ], [ false, %bb.y ], [ %i.dh, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ false, %.thread113 ], [ false, %bb.ae ], [ false, %bb.ah ], [ false, %bb.q ], [ false, %_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE9getRecordENS_8QualTypeE.exit ], [ false, %bb.u ], [ false, %.lr.ph ]
  ret i1 %.14
}

declare noundef zeroext i1 @_ZNK5clang4Expr17isTemporaryObjectERNS_10ASTContextEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter21emitCheckFunctionDeclEPKNS_12FunctionDeclENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672), ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE18VisitSourceLocExprEPKNS_13SourceLocExprE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.b = load i8, ptr %i.a, align 8, !tbaa !111, !range !112, !noundef !113
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120, !nonnull !113, !align !121
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174, !nonnull !113, !align !121
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !312
  call void @_ZNK5clang13SourceLocExpr17EvaluateInContextERKNS_10ASTContextEPKNS_4ExprE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.f, ptr noundef %i.h) #17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !116 ; 3 uses
  %i.j = and i64 %.sroa.0.0.copyload.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.m, align 8, !tbaa !116 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !119 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.q, align 16              ; 2 uses
  %i.s = icmp ne i8 %i.r, 13
  %.not.not3039.i = icmp eq ptr %i.p, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.s
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %.not.i70 = icmp eq i8 %i.r, 47
  br i1 %.not.i70, label %.lr.ph.i._crit_edge, label %.lr.ph

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.b
  %.lcssa.i = phi ptr [ %i.p, %bb.b ], [ %i.au, %tailrecurse.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.u = load i32, ptr %i.t, align 16
  %i.v = lshr i32 %i.u, 19
  %i.w = and i32 %i.v, 1023
  %i.x = add nsw i32 %i.w, -453
  %spec.select.i.i = icmp ult i32 %i.x, 20
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.aw, 47
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.au, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 2 uses
  %i.aa = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.z) #17, !inline_history !3 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.aa, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.z, ptr %i.aa ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = trunc i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.ag = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %i.ag, label %_ZNK5clang4Type13isIntegerTypeEv.exit, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i71 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i71, -16
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !119 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 16            ; 2 uses
  %i.am = icmp ne i8 %i.al, 35
  %.not18.not32.i = icmp eq ptr %i.aj, null
  %.not18.not.i = or i1 %.not18.not32.i, %i.am
  br i1 %.not18.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 16, !tbaa !116
  %i.ao = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !119
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !119 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i8, ptr %i.av, align 16            ; 2 uses
  %i.ax = icmp ne i8 %i.aw, 13
  %.not.not30.i = icmp eq ptr %i.au, null
end_hunk_0
begin_hunk_1_@_ZN5clang6interp8CompilerINS0_11EvalEmitterEE27VisitCXXReinterpretCastExprEPKNS_22CXXReinterpretCastExprE:bb.a
  %i.af = icmp ne i8 %i.p, %.sroa.0.0.i.i35
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = or i64 %i.ag, 4
  %i.ai = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitInvalidCastENS0_8CastKindEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef zeroext 0, i1 noundef zeroext %i.af, i64 %i.ah) #17
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE13VisitCastExprEPKNS_8CastExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread31, %bb.f, %bb.e, %bb.b
  %.1 = phi i1 [ %i.ad, %bb.e ], [ %i.ae, %bb.f ], [ %i.u, %bb.b ], [ false, %.thread31 ], [ %i.aj, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE23VisitCXXDynamicCastExprEPKNS_18CXXDynamicCastExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !833, !nonnull !113, !align !121
  %i.c = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang6interp7Context11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.b) #17
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 65536
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = or i64 %i.f, 4
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitInvalidCastENS0_8CastKindEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef zeroext 3, i1 noundef zeroext false, i64 %i.g) #17
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %1, align 8
  %i.j = and i32 %i.i, 66584576
  %.not10 = icmp eq i32 %i.j, 4718592
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE13VisitCastExprEPKNS_8CastExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef nonnull %1)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !116 ; 2 uses
  %i.m = and i64 %.sroa.0.0.copyload.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !119 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !116
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16
  %i.v = icmp eq i8 %i.u, 49
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.o) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.013.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.e ], [ %i.w, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = load ptr, ptr %0, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %i.y) #17
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ad = and i64 %.sroa.013.0, -16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !119
  %i.ag = load i24, ptr %1, align 8
  %i.ah = and i24 %i.ag, 1536
  %i.ai = icmp ne i24 %i.ah, 0
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = or i64 %i.aj, 4                         ; 2 uses
  %i.al = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitDynamicCastEPKNS_4TypeEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, ptr noundef %i.af, i1 noundef zeroext %i.ai, i64 %i.ak) #17
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.an = load i8, ptr %i.am, align 8, !tbaa !830, !range !112, !noundef !113
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %i.ak) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.b, %bb.d
  %.1 = phi i1 [ %i.k, %bb.d ], [ false, %bb.b ], [ %i.ap, %bb.j ], [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.i ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitDynamicCastEPKNS_4TypeEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140), ptr noundef, i1 noundef zeroext, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE20VisitCXXNoexceptExprEPKNS_15CXXNoexceptExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load i8, ptr %i.a, align 8, !tbaa !830, !range !112, !noundef !113
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i24, ptr %1, align 8
  %i.e = and i24 %i.d, 524288
  %i.f = icmp ne i24 %i.e, 0
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.g, 4
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter13emitConstBoolEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i1 noundef zeroext %i.f, i64 %i.h) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.llvm::PointerUnion.87", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !559
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !116
  %i.e = and i64 %.sroa.0.0.copyload.i, -16
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !116
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i8, ptr %i.l, align 16              ; 2 uses
  %i.n = icmp eq i8 %i.m, 49
  br i1 %i.n, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !562  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !830, !range !112, !noundef !113
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 8388608
  %.not120 = icmp eq i32 %i.v, 0
  br i1 %.not120, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.x = or i64 %i.w, 2
  store i64 %i.x, ptr %2, align 8
  %i.y = call i32 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE13allocateLocalEON4llvm12PointerUnionIJPKNS_4DeclEPKNS_4ExprEEEENS_8QualTypeENS0_9ScopeKindE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 0, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not121 = icmp eq i32 %i.y, 0
  br i1 %.not121, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i32 %i.y, -1
  %i.aa = or i64 %i.w, 4
  %i.ab = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitGetPtrLocalEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i32 noundef %i.z, i64 %i.aa) #17
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 33554432
  %.not122 = icmp eq i32 %i.ae, 0
  br i1 %.not122, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.af = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %i.af, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.ac, align 8
  %i.ah = and i32 %i.ag, 8388608
  %.not123 = icmp eq i32 %i.ah, 0
  br i1 %.not123, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i16, ptr %1, align 8
  %i.aj = and i16 %i.ai, 511
  %.not.i.i.i.i = icmp eq i16 %i.aj, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !260
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !833, !nonnull !113, !align !121
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !174, !nonnull !113, !align !121
  %i.ap = load ptr, ptr %i.f, align 16, !tbaa !119
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i.i.i.i62 = load i64, ptr %i.aq, align 8, !tbaa !116
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i.i62, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !119 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i8, ptr %i.au, align 16            ; 3 uses
  %i.aw = add i8 %i.av, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aw, 3
  %.not.i7.i = icmp ne ptr %i.at, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.ax = and i8 %i.av, 62
  %spec.select.i.i.i = icmp eq i8 %i.ax, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.j, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !157 ; 3 uses
  %i.ba = icmp eq i8 %i.av, 49
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 127
  %i.be = add nsw i32 %i.bd, -60
  %i.bf = icmp ult i32 %i.be, 3
  br i1 %i.bf, label %bb.l, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.az) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bg, null
  %spec.select.i.i = select i1 %.not.not.i.i, ptr %i.az, ptr %i.bg
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.i, %bb.k, %bb.l
  %.1.i = phi ptr [ null, %bb.k ], [ null, %bb.i ], [ %spec.select.i.i, %bb.l ]
  %i.bh = call noundef zeroext i1 @_ZNK5clang4Expr17isTemporaryObjectERNS_10ASTContextEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(23904) %i.ao, ptr noundef %.1.i) #17
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.bi = load i16, ptr %1, align 8
  %i.bj = and i16 %i.bi, 511
  %.not.i.i.i.i63 = icmp eq i16 %i.bj, 118
  %spec.select.v.i.i.i.i64 = select i1 %.not.i.i.i.i63, i64 48, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !260
  %i.bm = call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE16visitInitializerEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %i.bl)
  br label %.critedge

bb.n:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.h, %bb.g, %bb.f
  %i.bn = load i32, ptr %1, align 8               ; 3 uses
  %i.bo = and i32 %i.bn, 8388608
  %.not124 = icmp eq i32 %i.bo, 0
  br i1 %.not124, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i66 = load i64, ptr %i.d, align 8, !tbaa !116
  %i.bp = and i64 %.sroa.0.0.copyload.i66, -16
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !119 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i8, ptr %i.bs, align 16
  %i.bu = icmp ne i8 %i.bt, 40
  %.not.not11.i.i = icmp eq ptr %i.br, null
  %.not.not.i.i67 = or i1 %.not.not11.i.i, %i.bu
  br i1 %.not.not.i.i67, label %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE11getRecordTyENS_8QualTypeE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bv, align 16, !tbaa !116
  %i.bw = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !119
  br label %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE11getRecordTyENS_8QualTypeE.exit.i

_ZN5clang6interp8CompilerINS0_11EvalEmitterEE11getRecordTyENS_8QualTypeE.exit.i: ; preds = %bb.p, %bb.o
  %.sink16.i.i = phi ptr [ %i.by, %bb.p ], [ %i.br, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !116
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !119 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i8, ptr %i.cd, align 16
  %i.cf = icmp ne i8 %i.ce, 49
  %.not7.i = icmp eq ptr %i.cc, null
  %.not.not.i = or i1 %.not7.i, %i.cf
  br i1 %.not.not.i, label %.critedge, label %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9getRecordENS_8QualTypeE.exit

_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9getRecordENS_8QualTypeE.exit: ; preds = %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE11getRecordTyENS_8QualTypeE.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !157 ; 2 uses
  %i.ci = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #17 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ci, null
  %spec.select.i.i.i68 = select i1 %.not.not.i.i.i, ptr %i.ch, ptr %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !834, !nonnull !113, !align !121
  %i.cl = call noundef ptr @_ZN5clang6interp7Program17getOrCreateRecordEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(288) %i.ck, ptr noundef nonnull %spec.select.i.i.i68) #17 ; 2 uses
  %.not55 = icmp eq ptr %i.cl, null
  br i1 %.not55, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9getRecordENS_8QualTypeE.exit
  %i.cm = call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE26visitZeroRecordInitializerEPKNS0_6RecordEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef nonnull %i.cl, ptr noundef nonnull %1)
  br i1 %i.cm, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cn = load i32, ptr %i.ac, align 8
  %i.co = and i32 %i.cn, 8388608
  %.not128 = icmp eq i32 %i.co, 0
  br i1 %.not128, label %.thread113, label %.critedge

bb.s:                                             ; preds = %bb.n
  %i.cp = and i32 %i.bn, 524288
  %.not125 = icmp eq i32 %i.cp, 0
  br i1 %.not125, label %.thread113, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = and i32 %i.bn, 511
  %.not.i.i.i.i69 = icmp eq i32 %i.cq, 118
  %spec.select.v.i.i.i.i70 = select i1 %.not.i.i.i.i69, i64 48, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i70
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !260 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 8
  %i.cu = and i16 %i.ct, 511
  %.not127 = icmp eq i16 %i.cu, 50
  br i1 %.not127, label %bb.u, label %.thread113

bb.u:                                             ; preds = %bb.t
  %i.cv = ptrtoint ptr %1 to i64
  %i.cw = or i64 %i.cv, 4
  %i.cx = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter21emitCheckFunctionDeclEPKNS_12FunctionDeclENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, ptr noundef nonnull %i.p, i64 %i.cw) #17
  br i1 %i.cx, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cy, align 8 ; 3 uses
  %i.cz = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.x:                                             ; preds = %bb.v
  %i.dc = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !543
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.w, %bb.x
  %i.dg = phi ptr [ %i.db, %bb.w ], [ %i.df, %bb.x ]
  %i.dh = call noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE16visitInitializerEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %i.dg)
  br label %.critedge

.thread113:                                       ; preds = %bb.r, %bb.t, %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !833, !nonnull !113, !align !121
  %i.dk = call noundef ptr @_ZN5clang6interp7Context19getOrCreateFunctionEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(120) %i.dj, ptr noundef nonnull %i.p) #17 ; 5 uses
  %.not57 = icmp eq ptr %i.dk, null
  br i1 %.not57, label %.critedge, label %bb.y

bb.y:                                             ; preds = %.thread113
  %i.dl = ptrtoint ptr %1 to i64
  %i.dm = or i64 %i.dl, 4                         ; 5 uses
  %i.dn = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitDupPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %i.dm) #17
  br i1 %i.dn, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.do = load i16, ptr %1, align 8
  %i.dp = and i16 %i.do, 511
  %.not.i.i.i.i73 = icmp eq i16 %i.dp, 118
  %spec.select.v.i.i.i.i74 = select i1 %.not.i.i.i.i73, i64 48, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i74 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !563 ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %.idx = shl nuw nsw i64 %i.dt, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx
  %.not129131 = icmp eq i32 %i.ds, 0
  br i1 %.not129131, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.095.0132, i64 8 ; 2 uses
  %.not129 = icmp eq ptr %i.dv, %i.du
  br i1 %.not129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %.sroa.095.0132 = phi ptr [ %i.dv, %bb.aa ], [ %i.dq, %bb.z ] ; 2 uses
  %i.dw = load ptr, ptr %.sroa.095.0132, align 8, !tbaa !277
  %i.dx = load ptr, ptr %0, align 8, !tbaa !143
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %i.dw) #17
  br i1 %i.ea, label %bb.aa, label %.critedge

._crit_edge:                                      ; preds = %bb.aa, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 616
  %i.ec = load i16, ptr %i.eb, align 8
  %i.ed = and i16 %i.ec, 128
  %.not130 = icmp eq i16 %i.ed, 0
  br i1 %.not130, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 560
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !185 ; 2 uses
  %i.eg = load i32, ptr %i.dr, align 8, !tbaa !563 ; 2 uses
  %.not58133 = icmp eq i32 %i.ef, %i.eg
  br i1 %.not58133, label %._crit_edge138, label %.lr.ph137

._crit_edge138:                                   ; preds = %.lr.ph137, %bb.ab
  %.046.lcssa = phi i32 [ 0, %bb.ab ], [ %i.ev, %.lr.ph137 ]
  %i.eh = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter11emitCallVarEPKNS0_8FunctionEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, ptr noundef nonnull %i.dk, i32 noundef %.046.lcssa, i64 %i.dm) #17
  br i1 %i.eh, label %bb.af, label %.critedge

.lr.ph137:                                        ; preds = %bb.ab, %.lr.ph137
  %.045135 = phi i32 [ %i.ew, %.lr.ph137 ], [ %i.ef, %bb.ab ] ; 2 uses
  %.046134 = phi i32 [ %i.ev, %.lr.ph137 ], [ 0, %bb.ab ]
  %i.ei = load i16, ptr %1, align 8
  %i.ej = and i16 %i.ei, 511
  %.not.i.i.i.i78 = icmp eq i16 %i.ej, 118
  %spec.select.v.i.i.i.i79 = select i1 %.not.i.i.i.i78, i64 48, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i79
  %i.el = zext i32 %.045135 to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !260
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.0.0.copyload.i81 = load i64, ptr %i.eo, align 8, !tbaa !116
  %i.ep = load ptr, ptr %i.di, align 8, !tbaa !833, !nonnull !113, !align !121
  %i.eq = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.ep, i64 %.sroa.0.0.copyload.i81) #17 ; 2 uses
  %.not.i = icmp eq i8 %i.eq, -1
  %spec.select.i82 = select i1 %.not.i, i8 13, i8 %i.eq
  %i.er = call noundef i64 @_ZN5clang6interp8primSizeENS0_8PrimTypeE(i8 noundef zeroext %spec.select.i82) #17
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, 7
  %i.eu = and i32 %i.et, -8
  %i.ev = add i32 %i.eu, %.046134                 ; 2 uses
  %i.ew = add i32 %.045135, 1                     ; 2 uses
  %.not58 = icmp eq i32 %i.ew, %i.eg
  br i1 %.not58, label %._crit_edge138, label %.lr.ph137, !llvm.loop !1751

bb.ac:                                            ; preds = %._crit_edge
  %i.ex = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter8emitCallEPKNS0_8FunctionEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, ptr noundef nonnull %i.dk, i32 noundef 0, i64 %i.dm) #17
  br i1 %i.ex, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load i8, ptr %i.q, align 8, !tbaa !830, !range !112, !noundef !113
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.fa = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %i.dm) #17 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %bb.ac, %._crit_edge138
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !830, !range !112, !noundef !113
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.fd = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %i.dm) #17
  br label %.critedge

bb.ah:                                            ; preds = %bb.a
  %i.fe = add i8 %i.m, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fe, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !562
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !833, !nonnull !113, !align !121
  %i.fj = tail call noundef ptr @_ZN5clang6interp7Context19getOrCreateFunctionEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(120) %i.fi, ptr noundef %i.fg) #17 ; 2 uses
  store ptr %i.fj, ptr %i.c, align 8, !tbaa !565
  %.not = icmp eq ptr %i.fj, null
  br i1 %.not, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = ptrtoint ptr %1 to i64
  %i.fl = or i64 %i.fk, 4
  %i.fm = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitDupPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 %i.fl) #17
  br i1 %i.fm, label %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit, label %bb.al

_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.fn = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  store ptr %i.b, ptr %i.fn, align 16, !tbaa !567
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !897
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !570
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !572
  store ptr %i.fn, ptr %3, align 8
  %.sroa.4.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx151, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_11EvalEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.fo, align 8, !tbaa !307
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_11EvalEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_, ptr %i.fp, align 8, !tbaa !307
  %.sroa.0.0.copyload.i85.pre = load i64, ptr %i.d, align 8, !tbaa !116
  %i.fq = call noundef zeroext i1 @_ZZN5clang6interp8CompilerINS0_11EvalEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprEENKUlNS_8QualTypeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i64 %.sroa.0.0.copyload.i85.pre)
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !574 ; 2 uses
  %.not.i87 = icmp eq ptr %i.fr, null
  br i1 %.not.i87, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit
  %i.fs = call noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #17, !inline_history !9 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ai, %_ZNSt14_Function_baseD2Ev.exit
  %.13 = phi i1 [ %i.fq, %_ZNSt14_Function_baseD2Ev.exit ], [ false, %bb.ai ], [ false, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %bb.u, %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE11getRecordTyENS_8QualTypeE.exit.i, %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9getRecordENS_8QualTypeE.exit, %bb.q, %bb.d, %bb.ah, %bb.m, %bb.e, %bb.c, %bb.ag, %._crit_edge138, %.thread113, %bb.y, %bb.ae, %bb.ad, %bb.af, %bb.r, %bb.al
  %.14 = phi i1 [ true, %bb.af ], [ %.13, %bb.al ], [ false, %bb.e ], [ %i.bm, %bb.m ], [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.r ], [ false, %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE11getRecordTyENS_8QualTypeE.exit.i ], [ %i.fd, %bb.ag ], [ false, %bb.ad ], [ false, %._crit_edge138 ], [ false, %bb.y ], [ %i.dh, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ false, %.thread113 ], [ false, %bb.ae ], [ false, %bb.ah ], [ false, %bb.q ], [ false, %_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9getRecordENS_8QualTypeE.exit ], [ false, %bb.u ], [ false, %.lr.ph ]
  ret i1 %.14
}

declare noundef zeroext i1 @_ZN5clang6interp11EvalEmitter21emitCheckFunctionDeclEPKNS_12FunctionDeclENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140), ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE18VisitSourceLocExprEPKNS_13SourceLocExprE(ptr noundef nonnull align 8 dereferenceable(1408) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load i8, ptr %i.a, align 8, !tbaa !830, !range !112, !noundef !113
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !833, !nonnull !113, !align !121
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174, !nonnull !113, !align !121
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !873
  call void @_ZNK5clang13SourceLocExpr17EvaluateInContextERKNS_10ASTContextEPKNS_4ExprE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.f, ptr noundef %i.h) #17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !116 ; 3 uses
  %i.j = and i64 %.sroa.0.0.copyload.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.m, align 8, !tbaa !116 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !119 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.q, align 16              ; 2 uses
  %i.s = icmp ne i8 %i.r, 13
  %.not.not3039.i = icmp eq ptr %i.p, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.s
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %.not.i70 = icmp eq i8 %i.r, 47
  br i1 %.not.i70, label %.lr.ph.i._crit_edge, label %.lr.ph

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.b
  %.lcssa.i = phi ptr [ %i.p, %bb.b ], [ %i.au, %tailrecurse.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.u = load i32, ptr %i.t, align 16
  %i.v = lshr i32 %i.u, 19
  %i.w = and i32 %i.v, 1023
  %i.x = add nsw i32 %i.w, -453
  %spec.select.i.i = icmp ult i32 %i.x, 20
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.aw, 47
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.au, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 2 uses
  %i.aa = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.z) #17, !inline_history !3 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.aa, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.z, ptr %i.aa ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = trunc i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.ag = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %i.ag, label %_ZNK5clang4Type13isIntegerTypeEv.exit, label %_ZNK5clang4Type13isIntegerTypeEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i71 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i71, -16
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !119 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 16            ; 2 uses
  %i.am = icmp ne i8 %i.al, 35
  %.not18.not32.i = icmp eq ptr %i.aj, null
  %.not18.not.i = or i1 %.not18.not32.i, %i.am
  br i1 %.not18.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 16, !tbaa !116
  %i.ao = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !119
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !119 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i8, ptr %i.av, align 16            ; 2 uses
  %i.ax = icmp ne i8 %i.aw, 13
  %.not.not30.i = icmp eq ptr %i.au, null
  %.not.not.i = or i1 %.not.not30.i, %i.ax
  br i1 %.not.not.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_:bb.a
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1918

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !524
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !41
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !41
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !41
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !41
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1919

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1920

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !522
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !919
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !919
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !522
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang15OpaqueValueExprEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE9emitConstIbEEbT_NS0_8PrimTypeENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  switch i8 %2, label %bb.k [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 10, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter14emitConstSint8EaNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i8 noundef signext %i.a, i64 %3) #17
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter14emitConstUint8EhNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i8 noundef zeroext %i.a, i64 %3) #17
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.d = zext i1 %1 to i16
  %i.e = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitConstSint16EsNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i16 noundef signext %i.d, i64 %3) #17
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.f = zext i1 %1 to i16
  %i.g = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitConstUint16EtNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i16 noundef zeroext %i.f, i64 %3) #17
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.h = zext i1 %1 to i32
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitConstSint32EiNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %i.h, i64 %3) #17
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.j = zext i1 %1 to i32
  %i.k = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitConstUint32EjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %i.j, i64 %3) #17
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.l = zext i1 %1 to i64
  %i.m = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitConstSint64ElNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 noundef %i.l, i64 %3) #17
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.n = zext i1 %1 to i64
  %i.o = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitConstUint64EmNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 noundef %i.n, i64 %3) #17
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter13emitConstBoolEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %0, i1 noundef zeroext %1, i64 %3) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ]
  ret i1 %.0
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !307
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !116
  %i.b = tail call noundef zeroext i1 @_ZZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprEENKUlNS_8QualTypeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 %.sroa.0.0.copyload.i.i)
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !307
  store ptr %i.a, ptr %0, align 8, !tbaa !307
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !922
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !307
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !1921
  store ptr %i.c, ptr %0, align 8, !tbaa !307
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !307    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #18
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprEENKUlNS_8QualTypeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1924 ; 7 uses
  %i.c = and i64 %1, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !116
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = add i8 %i.k, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !113, !align !121
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !559  ; 4 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 511
  %.not.i.i.i.i = icmp eq i16 %i.p, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.v.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !563  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %.not40 = icmp eq i32 %i.s, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.030.041 = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.030.041, align 8, !tbaa !277
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(936) %i.b, ptr noundef %i.w) #17
  br i1 %i.aa, label %bb.c, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !1925
  %.pre46 = load ptr, ptr %.pre, align 8, !tbaa !559
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ab = phi ptr [ %.pre46, %._crit_edge.loopexit ], [ %i.n, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1926, !nonnull !113, !align !121
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !565
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.af, 4
  %i.ah = tail call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter8emitCallEPKNS0_8FunctionEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %i.b, ptr noundef %i.ae, i32 noundef 0, i64 %i.ag) #17
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120, !nonnull !113, !align !121
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !174, !nonnull !113, !align !121
  %i.al = tail call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ak, i64 %1) #17 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i8, ptr %i.am, align 16
  %i.ao = and i8 %i.an, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.ap, align 16, !tbaa !116
  %i.aq = load i32, ptr %i.am, align 16
  %i.ar = and i32 %i.aq, 33554432
  %.not.i = icmp eq i32 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  br i1 %.not.i, label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !116 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !176
  %i.aw = icmp ult i32 %i.av, 65
  %i.ax = load ptr, ptr %i.at, align 8
  %spec.select.i.i = select i1 %i.aw, ptr %i.at, ptr %i.ax
  br label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit

_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit: ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, %bb.f
  %.in.i = phi ptr [ %spec.select.i.i, %bb.f ], [ %i.as, %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit ]
  %i.ay = load i64, ptr %.in.i, align 8, !tbaa !116
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  %.not2242 = icmp eq i64 %i.az, 0
  br i1 %.not2242, label %.critedge, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit
  %i.bb = add nuw nsw i64 %.01743, 1              ; 2 uses
  %.not22 = icmp eq i64 %i.bb, %i.az
  br i1 %.not22, label %.critedge, label %bb.h, !llvm.loop !1922

bb.h:                                             ; preds = %.lr.ph44, %bb.g
  %.01743 = phi i64 [ 0, %.lr.ph44 ], [ %i.bb, %bb.g ] ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !113, !align !121
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !559
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = or i64 %i.be, 4
  %i.bg = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter15emitConstUint64EmNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %i.b, i64 noundef %.01743, i64 %i.bf) #17
  br i1 %i.bg, label %bb.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !113, !align !121
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !559
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = or i64 %i.bj, 4
  %i.bl = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter22emitArrayElemPtrUint64ENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %i.b, i64 %i.bk) #17
  br i1 %i.bl, label %bb.j, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !1927, !nonnull !113, !align !121 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i25, ptr %2, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !574
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.k, label %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZSt25__throw_bad_function_callv() #22
  unreachable

_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !924
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %2) #17, !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.br, label %bb.g, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

.critedge:                                        ; preds = %bb.g, %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit
  %i.bs = load ptr, ptr %0, align 8, !tbaa !1925, !nonnull !113, !align !121
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !559
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = or i64 %i.bu, 4
  %i.bw = call noundef zeroext i1 @_ZN5clang6interp15ByteCodeEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(672) %i.b, i64 %i.bv) #17
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread: ; preds = %.lr.ph, %bb.h, %bb.i, %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit, %bb.d, %bb.e, %.critedge, %._crit_edge
  %.6 = phi i1 [ false, %bb.h ], [ %i.ah, %._crit_edge ], [ false, %bb.d ], [ %i.bw, %.critedge ], [ false, %bb.e ], [ false, %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit ], [ false, %bb.i ], [ false, %.lr.ph ]
  ret i1 %.6
}

declare void @_ZN5clang16APNumericStorage11setIntValueERKNS_10ASTContextERKN4llvm5APIntE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(28) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_15ByteCodeEmitterEE9LabelInfoELb1EE18growAndEmplaceBackIJRPKNS1_4StmtERjSD_RKSt9nullopt_tRPNS2_13VariableScopeIS4_EEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.clang::interp::Compiler<clang::interp::ByteCodeEmitter>::LabelInfo", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !277
  %i.b = load i32, ptr %2, align 4, !tbaa !41
  %i.c = add i32 %i.b, 1
  %i.d = load i32, ptr %3, align 4, !tbaa !41
  %i.e = add i32 %i.d, 1
  %i.f = load ptr, ptr %5, align 8, !tbaa !631
  call void @_ZN5clang6interp8CompilerINS0_15ByteCodeEmitterEE9LabelInfoC1EPKNS_4StmtENS_16OptionalUnsignedIjEES9_S9_PKNS0_13VariableScopeIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.a, i32 %i.c, i32 %i.e, i32 0, ptr noundef %i.f) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !185  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !186
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !198

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_15ByteCodeEmitterEE9LabelInfoELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(28) %6)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !185
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_15ByteCodeEmitterEE9LabelInfoELb1EE9push_backERKS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !184
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !185
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !185
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_15ByteCodeEmitterEE9LabelInfoELb1EE9push_backERKS6_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_15ByteCodeEmitterEE9LabelInfoELb1EE9push_backERKS6_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.q = load ptr, ptr %0, align 8, !tbaa !184
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  ret ptr %i.t
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_15ByteCodeEmitterEE9LabelInfoELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.clang::interp::Compiler<clang::interp::ByteCodeEmitter>::LabelInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1928
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !184
  %i.g = load i32, ptr %i.a, align 8, !tbaa !185
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !185
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10SwitchCaseEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !711, !noalias !1933 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !925, !noalias !1933 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !710, !noalias !1933 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9emitConstItEEbT_NS0_8PrimTypeENS0_10SourceInfoE:bb.a
bb.a:
  switch i8 %2, label %bb.k [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 10, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i16 %1 to i8
  %i.b = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter14emitConstSint8EaNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef signext %i.a, i64 %3) #17
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i16 %1 to i8
  %i.d = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter14emitConstUint8EhNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef zeroext %i.c, i64 %3) #17
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstSint16EsNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i16 noundef signext %1, i64 %3) #17
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstUint16EtNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i16 noundef zeroext %1, i64 %3) #17
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32
  %i.h = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstSint32EiNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i32 noundef %i.g, i64 %3) #17
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.i = zext i16 %1 to i32
  %i.j = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstUint32EjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i32 noundef %i.i, i64 %3) #17
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.k = zext i16 %1 to i64
  %i.l = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstSint64ElNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 noundef %i.k, i64 %3) #17
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.m = zext i16 %1 to i64
  %i.n = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstUint64EmNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 noundef %i.m, i64 %3) #17
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.o = icmp ne i16 %1, 0
  %i.p = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter13emitConstBoolEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i1 noundef zeroext %i.o, i64 %3) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.h, %bb.f ], [ %i.j, %bb.g ], [ %i.l, %bb.h ], [ %i.n, %bb.i ], [ %i.p, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9emitConstIbEEbT_NS0_8PrimTypeENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1408) %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  switch i8 %2, label %bb.k [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 10, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter14emitConstSint8EaNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef signext %i.a, i64 %3) #17
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter14emitConstUint8EhNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i8 noundef zeroext %i.a, i64 %3) #17
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.d = zext i1 %1 to i16
  %i.e = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstSint16EsNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i16 noundef signext %i.d, i64 %3) #17
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.f = zext i1 %1 to i16
  %i.g = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstUint16EtNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i16 noundef zeroext %i.f, i64 %3) #17
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.h = zext i1 %1 to i32
  %i.i = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstSint32EiNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i32 noundef %i.h, i64 %3) #17
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.j = zext i1 %1 to i32
  %i.k = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstUint32EjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i32 noundef %i.j, i64 %3) #17
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.l = zext i1 %1 to i64
  %i.m = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstSint64ElNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 noundef %i.l, i64 %3) #17
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.n = zext i1 %1 to i64
  %i.o = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstUint64EmNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i64 noundef %i.n, i64 %3) #17
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter13emitConstBoolEbNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %0, i1 noundef zeroext %1, i64 %3) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_11EvalEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !307
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !116
  %i.b = tail call noundef zeroext i1 @_ZZN5clang6interp8CompilerINS0_11EvalEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprEENKUlNS_8QualTypeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 %.sroa.0.0.copyload.i.i)
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbN5clang8QualTypeEEZNS0_6interp8CompilerINS3_11EvalEmitterEE21VisitCXXConstructExprEPKNS0_16CXXConstructExprEEUlS1_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_11EvalEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !307
  store ptr %i.a, ptr %0, align 8, !tbaa !307
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_11EvalEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !922
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_11EvalEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !307
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !2007
  store ptr %i.c, ptr %0, align 8, !tbaa !307
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_11EvalEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !307    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_11EvalEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #18
  br label %_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_11EvalEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5clang6interp8CompilerINS2_11EvalEmitterEE21VisitCXXConstructExprEPKNS1_16CXXConstructExprEEUlNS1_8QualTypeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZN5clang6interp8CompilerINS0_11EvalEmitterEE21VisitCXXConstructExprEPKNS_16CXXConstructExprEENKUlNS_8QualTypeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2010 ; 7 uses
  %i.c = and i64 %1, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !116
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = add i8 %i.k, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !2011, !nonnull !113, !align !121
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !559  ; 4 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 511
  %.not.i.i.i.i = icmp eq i16 %i.p, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.v.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !563  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %.not40 = icmp eq i32 %i.s, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.030.041 = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.030.041, align 8, !tbaa !277
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(1408) %i.b, ptr noundef %i.w) #17
  br i1 %i.aa, label %bb.c, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !2011
  %.pre46 = load ptr, ptr %.pre, align 8, !tbaa !559
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ab = phi ptr [ %.pre46, %._crit_edge.loopexit ], [ %i.n, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2012, !nonnull !113, !align !121
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !565
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.af, 4
  %i.ah = tail call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter8emitCallEPKNS0_8FunctionEjNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %i.b, ptr noundef %i.ae, i32 noundef 0, i64 %i.ag) #17
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !833, !nonnull !113, !align !121
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !174, !nonnull !113, !align !121
  %i.al = tail call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ak, i64 %1) #17 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i8, ptr %i.am, align 16
  %i.ao = and i8 %i.an, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.ap, align 16, !tbaa !116
  %i.aq = load i32, ptr %i.am, align 16
  %i.ar = and i32 %i.aq, 33554432
  %.not.i = icmp eq i32 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  br i1 %.not.i, label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !116 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !176
  %i.aw = icmp ult i32 %i.av, 65
  %i.ax = load ptr, ptr %i.at, align 8
  %spec.select.i.i = select i1 %i.aw, ptr %i.at, ptr %i.ax
  br label %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit

_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit: ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, %bb.f
  %.in.i = phi ptr [ %spec.select.i.i, %bb.f ], [ %i.as, %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit ]
  %i.ay = load i64, ptr %.in.i, align 8, !tbaa !116
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  %.not2242 = icmp eq i64 %i.az, 0
  br i1 %.not2242, label %.critedge, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit
  %i.bb = add nuw nsw i64 %.01743, 1              ; 2 uses
  %.not22 = icmp eq i64 %i.bb, %i.az
  br i1 %.not22, label %.critedge, label %bb.h, !llvm.loop !2008

bb.h:                                             ; preds = %.lr.ph44, %bb.g
  %.01743 = phi i64 [ 0, %.lr.ph44 ], [ %i.bb, %bb.g ] ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !2011, !nonnull !113, !align !121
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !559
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = or i64 %i.be, 4
  %i.bg = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter15emitConstUint64EmNS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %i.b, i64 noundef %.01743, i64 %i.bf) #17
  br i1 %i.bg, label %bb.i, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %0, align 8, !tbaa !2011, !nonnull !113, !align !121
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !559
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = or i64 %i.bj, 4
  %i.bl = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter22emitArrayElemPtrUint64ENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %i.b, i64 %i.bk) #17
  br i1 %i.bl, label %bb.j, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !2013, !nonnull !113, !align !121 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i25, ptr %2, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !574
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.k, label %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZSt25__throw_bad_function_callv() #22
  unreachable

_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !924
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %2) #17, !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.br, label %bb.g, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

.critedge:                                        ; preds = %bb.g, %_ZNK5clang17ConstantArrayType11getZExtSizeEv.exit
  %i.bs = load ptr, ptr %0, align 8, !tbaa !2011, !nonnull !113, !align !121
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !559
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = or i64 %i.bu, 4
  %i.bw = call noundef zeroext i1 @_ZN5clang6interp11EvalEmitter10emitPopPtrENS0_10SourceInfoE(ptr noundef nonnull align 8 dereferenceable(1140) %i.b, i64 %i.bv) #17
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit.thread: ; preds = %.lr.ph, %bb.h, %bb.i, %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit, %bb.d, %bb.e, %.critedge, %._crit_edge
  %.6 = phi i1 [ false, %bb.h ], [ %i.ah, %._crit_edge ], [ false, %bb.d ], [ %i.bw, %.critedge ], [ false, %bb.e ], [ false, %_ZNKSt8functionIFbN5clang8QualTypeEEEclES1_.exit ], [ false, %bb.i ], [ false, %.lr.ph ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(28) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_11EvalEmitterEE9LabelInfoELb1EE18growAndEmplaceBackIJRPKNS1_4StmtERjSD_RKSt9nullopt_tRPNS2_13VariableScopeIS4_EEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.clang::interp::Compiler<clang::interp::EvalEmitter>::LabelInfo", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !277
  %i.b = load i32, ptr %2, align 4, !tbaa !41
  %i.c = add i32 %i.b, 1
  %i.d = load i32, ptr %3, align 4, !tbaa !41
  %i.e = add i32 %i.d, 1
  %i.f = load ptr, ptr %5, align 8, !tbaa !898
  call void @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9LabelInfoC1EPKNS_4StmtENS_16OptionalUnsignedIjEES9_S9_PKNS0_13VariableScopeIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.a, i32 %i.c, i32 %i.e, i32 0, ptr noundef %i.f) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !185  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !186
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !198

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_11EvalEmitterEE9LabelInfoELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(28) %6)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !185
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_11EvalEmitterEE9LabelInfoELb1EE9push_backERKS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !184
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !185
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !185
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_11EvalEmitterEE9LabelInfoELb1EE9push_backERKS6_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_11EvalEmitterEE9LabelInfoELb1EE9push_backERKS6_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.q = load ptr, ptr %0, align 8, !tbaa !184
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  ret ptr %i.t
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_11EvalEmitterEE9LabelInfoELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.clang::interp::Compiler<clang::interp::EvalEmitter>::LabelInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !2014
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !184
  %i.g = load i32, ptr %i.a, align 8, !tbaa !185
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !185
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(28) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang6interp8CompilerINS2_11EvalEmitterEE9LabelInfoELb1EE18growAndEmplaceBackIJRPKNS1_4StmtERjRKSt9nullopt_tRNS1_16OptionalUnsignedIjEERPNS2_13VariableScopeIS4_EEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.clang::interp::Compiler<clang::interp::EvalEmitter>::LabelInfo", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !277
  %i.b = load i32, ptr %2, align 4, !tbaa !41
  %i.c = add i32 %i.b, 1
  %.sroa.0.0.copyload = load i32, ptr %4, align 4, !tbaa !41
  %i.d = load ptr, ptr %5, align 8, !tbaa !898
  call void @_ZN5clang6interp8CompilerINS0_11EvalEmitterEE9LabelInfoC1EPKNS_4StmtENS_16OptionalUnsignedIjEES9_S9_PKNS0_13VariableScopeIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.a, i32 %i.c, i32 0, i32 %.sroa.0.0.copyload, ptr noundef %i.d) #17
end_hunk_3
