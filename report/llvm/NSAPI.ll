Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NSAPI?download=true
inline.NumInlined: 578
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5clang5NSAPI13isObjCTypedefENS_8QualTypeEN4llvm9StringRefERPNS_14IdentifierInfoE:bb.a
  store i64 %i.af, ptr %.0.i.i.i.i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ag, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.m, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.l, ptr %i.ah, align 8, !tbaa !437
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %bb.c, %bb.e, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.n, %bb.c ], [ %i.t, %bb.e ]
  store ptr %.0.i, ptr %4, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit, %bb.b
  %i.ai = and i64 %1, -16
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !442
  %i.al = call noundef ptr @_ZNK5clang4Type5getAsINS_11TypedefTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.ak) #10 ; 2 uses
  %.not1423 = icmp eq ptr %i.al, null
  br i1 %.not1423, label %.thread20, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.am = phi ptr [ %i.ba, %bb.j ], [ %i.al, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !446
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 8, !tbaa !452 ; 2 uses
  %i.aq = and i64 %.sroa.0.0.copyload.i, 7
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = and i64 %.sroa.0.0.copyload.i, -8
  %i.at = inttoptr i64 %i.as to ptr
  %.0.i15 = select i1 %i.ar, ptr %i.at, ptr null
  %i.au = load ptr, ptr %4, align 8, !tbaa !11
  %i.av = icmp eq ptr %.0.i15, %i.au              ; 3 uses
  br i1 %i.av, label %.thread20, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aw = call i64 @_ZNK5clang11TypedefType7desugarEv(ptr noundef nonnull align 16 dereferenceable(32) %i.am) #10
  %i.ax = and i64 %i.aw, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !442
  %i.ba = call noundef ptr @_ZNK5clang4Type5getAsINS_11TypedefTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.az) #10 ; 2 uses
  %.not14 = icmp eq ptr %i.ba, null
  br i1 %.not14, label %.thread20, label %.lr.ph

.thread20:                                        ; preds = %bb.j, %.lr.ph, %bb.i, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ %i.av, %.lr.ph ], [ %i.av, %bb.j ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK5clang5NSAPI17GetNSIntegralKindENS_8QualTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13, !nonnull !18, !align !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !445, !nonnull !18, !align !19
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1048576
  %.not = icmp eq i64 %i.e, 0
  %i.f = icmp ult i64 %1, 16
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  br i1 %or.cond, label %.thread256, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = and i64 %1, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !442
  %i.j = tail call noundef ptr @_ZNK5clang4Type5getAsINS_11TypedefTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.i) #10 ; 2 uses
  %.not6277 = icmp eq ptr %i.j, null
  br i1 %.not6277, label %.thread256, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97
  %i.k = phi ptr [ %i.co, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97 ], [ %i.j, %.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !tbaa !452
  %i.o = and i64 %.sroa.0.0.copyload.i, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !437  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 17 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !453
  %trunc = trunc i64 %i.t to i32
  switch i32 %trunc, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97 [
    i32 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i32 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i12
    i32 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i32
    i32 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i62
    i32 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i82
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %.lr.ph
  %i.u = load i32, ptr %i.s, align 1
  %i.v = xor i32 %i.u, 947154537
  %i.w = getelementptr i8, ptr %i.s, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 29791
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %.thread256, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97

_ZN4llvmneENS_9StringRefES0_.exit.i.i12:          ; preds = %.lr.ph
  %i.ad = load i32, ptr %i.s, align 1
  %i.ae = xor i32 %i.ad, 829714025
  %i.af = getelementptr i8, ptr %i.s, i64 3
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = xor i32 %i.ag, 1952396849
  %i.ai = or i32 %i.ae, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i14 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i14, label %.thread256, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i22

_ZN4llvmneENS_9StringRefES0_.exit.i.i22:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i12
  %i.al = load i32, ptr %i.s, align 1
  %i.am = xor i32 %i.al, 863268457
  %i.an = getelementptr i8, ptr %i.s, i64 3
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = xor i32 %i.ao, 1952395827
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not.i.i24 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i24, label %.thread256, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i42

_ZN4llvmneENS_9StringRefES0_.exit.i.i32:          ; preds = %.lr.ph
  %i.at = load i64, ptr %i.s, align 1
  %i.au = xor i64 %i.at, 7306920471172830030
  %i.av = getelementptr i8, ptr %i.s, i64 8
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.ax, 114
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not.i.i34 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i34, label %.thread256, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97

_ZN4llvmneENS_9StringRefES0_.exit.i.i42:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i22
  %i.bc = load i32, ptr %i.s, align 1
  %i.bd = xor i32 %i.bc, 913600105
  %i.be = getelementptr i8, ptr %i.s, i64 3
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1952396342
  %i.bh = or i32 %i.bd, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not.i.i44 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i44, label %.thread256, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i52

_ZN4llvmneENS_9StringRefES0_.exit.i.i52:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i42
  %i.bk = load i32, ptr %i.s, align 1
  %i.bl = xor i32 %i.bk, 1953393013
  %i.bm = getelementptr i8, ptr %i.s, i64 3
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = xor i32 %i.bn, 1952397428
  %i.bp = or i32 %i.bl, %i.bo
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %.not.i.i54 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i54, label %.thread256, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97

_ZN4llvmneENS_9StringRefES0_.exit.i.i62:          ; preds = %.lr.ph
  %i.bs = load i64, ptr %i.s, align 1
  %i.bt = icmp ne i64 %i.bs, 8385480617221843317
  %i.bu = zext i1 %i.bt to i32
  %.not.i.i64 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i64, label %.thread256, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i72

_ZN4llvmneENS_9StringRefES0_.exit.i.i72:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i62
  %i.bv = load i64, ptr %i.s, align 1
  %i.bw = icmp ne i64 %i.bv, 8385476227765266805
  %i.bx = zext i1 %i.bw to i32
  %.not.i.i74 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i74, label %.thread256, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i92

_ZN4llvmneENS_9StringRefES0_.exit.i.i82:          ; preds = %.lr.ph
  %i.by = load i64, ptr %i.s, align 1
  %i.bz = xor i64 %i.by, 7450489175579906894
  %i.ca = getelementptr i8, ptr %i.s, i64 8
  %i.cb = load i16, ptr %i.ca, align 1
  %i.cc = zext i16 %i.cb to i64
  %i.cd = xor i64 %i.cc, 29285
  %i.ce = or i64 %i.bz, %i.cd
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %.not.i.i84 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i84, label %.thread256, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97

_ZN4llvmneENS_9StringRefES0_.exit.i.i92:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i72
  %i.ch = load i64, ptr %i.s, align 1
  %i.ci = icmp ne i64 %i.ch, 8385478439673424245
  %i.cj = zext i1 %i.ci to i32
  %.not.i.i94 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i94, label %.thread256, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97

_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i52, %_ZN4llvmneENS_9StringRefES0_.exit.i.i32, %.lr.ph, %_ZN4llvmneENS_9StringRefES0_.exit.i.i92, %_ZN4llvmneENS_9StringRefES0_.exit.i.i82
  %i.ck = tail call i64 @_ZNK5clang11TypedefType7desugarEv(ptr noundef nonnull align 16 dereferenceable(32) %i.k) #10
  %i.cl = and i64 %i.ck, -16
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load ptr, ptr %i.cm, align 16, !tbaa !442
  %i.co = tail call noundef ptr @_ZNK5clang4Type5getAsINS_11TypedefTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.cn) #10 ; 2 uses
  %.not6 = icmp eq ptr %i.co, null
  br i1 %.not6, label %.thread256, label %.lr.ph

.thread256:                                       ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97, %_ZN4llvmneENS_9StringRefES0_.exit.i.i72, %_ZN4llvmneENS_9StringRefES0_.exit.i.i52, %_ZN4llvmneENS_9StringRefES0_.exit.i.i32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i12, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i22, %_ZN4llvmneENS_9StringRefES0_.exit.i.i42, %_ZN4llvmneENS_9StringRefES0_.exit.i.i62, %_ZN4llvmneENS_9StringRefES0_.exit.i.i82, %_ZN4llvmneENS_9StringRefES0_.exit.i.i92, %.preheader, %bb.a
  %.sroa.6.2 = phi i64 [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97 ], [ 9, %_ZN4llvmneENS_9StringRefES0_.exit.i.i32 ], [ 7, %_ZN4llvmneENS_9StringRefES0_.exit.i.i42 ], [ 7, %_ZN4llvmneENS_9StringRefES0_.exit.i.i52 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i62 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i72 ], [ 7, %_ZN4llvmneENS_9StringRefES0_.exit.i.i22 ], [ 6, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 10, %_ZN4llvmneENS_9StringRefES0_.exit.i.i82 ], [ 7, %_ZN4llvmneENS_9StringRefES0_.exit.i.i12 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i92 ]
  %.sroa.0160.2 = phi ptr [ null, %bb.a ], [ null, %.preheader ], [ null, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit97 ], [ @.str.74, %_ZN4llvmneENS_9StringRefES0_.exit.i.i32 ], [ @.str.79, %_ZN4llvmneENS_9StringRefES0_.exit.i.i42 ], [ @.str.80, %_ZN4llvmneENS_9StringRefES0_.exit.i.i52 ], [ @.str.81, %_ZN4llvmneENS_9StringRefES0_.exit.i.i62 ], [ @.str.82, %_ZN4llvmneENS_9StringRefES0_.exit.i.i72 ], [ @.str.78, %_ZN4llvmneENS_9StringRefES0_.exit.i.i22 ], [ @.str.76, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ @.str.75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i82 ], [ @.str.77, %_ZN4llvmneENS_9StringRefES0_.exit.i.i12 ], [ @.str.83, %_ZN4llvmneENS_9StringRefES0_.exit.i.i92 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0160.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare i64 @_ZNK5clang11TypedefType7desugarEv(ptr noundef nonnull align 16 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang5NSAPI14isMacroDefinedEN4llvm9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !13, !nonnull !18, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17768
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20, !nonnull !18, !align !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !422
  %i.e = call { ptr, i8 } @_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !424 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !426  ; 3 uses
  %.not22.i = icmp eq ptr %i.j, null
  br i1 %.not22.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !431
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr %1, i64 %2) #10, !inline_history !433 ; 3 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !11
  %.not23.i = icmp eq ptr %i.n, null
  br i1 %.not23.i, label %bb.d, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !434  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 24                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !435
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.f, !prof !436

bb.e:                                             ; preds = %bb.d
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !434
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.f:                                             ; preds = %bb.d
  %i.w = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.w, %bb.f ] ; 6 uses
  %i.x = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.y = and i64 %i.x, -17592186044416
  %i.z = or disjoint i64 %i.y, 33553413
  store i64 %i.z, ptr %.0.i.i.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.aa, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.g, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.f, ptr %i.ab, align 8, !tbaa !437
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %bb.a, %bb.c, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.h, %bb.a ], [ %i.n, %bb.c ]
  %i.ac = load i64, ptr %.0.i, align 8
  %i.ad = and i64 %i.ac, 33554432
  %i.ae = icmp ne i64 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang5NSAPI19isSubclassOfNSClassEPNS_17ObjCInterfaceDeclENS0_17NSClassIdKindKindE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZNK5clang5NSAPI12getNSClassIdENS0_17NSClassIdKindKindE(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.08 = phi ptr [ %1, %bb.b ], [ %i.j, %bb.d ]   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.08, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !455  ; 2 uses
  %i.d = and i64 %i.c, 7
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.c, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = icmp eq ptr %i.a, %i.g
  %i.i = and i1 %i.e, %i.h                        ; 3 uses
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZNK5clang17ObjCInterfaceDecl13getSuperClassEv(ptr noundef nonnull align 8 dereferenceable(128) %.08) #10 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %.loopexit, label %bb.c, !llvm.loop !457

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %.0
}

declare noundef ptr @_ZNK5clang17ObjCInterfaceDecl13getSuperClassEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang5NSAPI16isObjCEnumeratorEPKNS_4ExprEN4llvm9StringRefERPNS_14IdentifierInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr nofree noundef readonly %1, ptr %2, i64 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !13, !nonnull !18, !align !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445, !nonnull !18, !align !19
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1048576
  %.not = icmp eq i64 %i.f, 0
  %.not19 = icmp eq ptr %1, null
  %or.cond = or i1 %.not19, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 17768
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20, !nonnull !18, !align !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !422
  %i.j = call { ptr, i8 } @_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.j, 0
  %i.k = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !424 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !426  ; 3 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !431
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr %2, i64 %3) #10, !inline_history !433 ; 3 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !11
  %.not23.i = icmp eq ptr %i.s, null
  br i1 %.not23.i, label %bb.f, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !434  ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 24                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !435
  %i.z = icmp ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.h, !prof !436

bb.g:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %i.w to ptr
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !434
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ab = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.ab, %bb.h ] ; 6 uses
  %i.ac = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.ad = and i64 %i.ac, -17592186044416
  %i.ae = or disjoint i64 %i.ad, 33553413
  store i64 %i.ae, ptr %.0.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.af, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.l, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !437
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %bb.c, %bb.e, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.m, %bb.c ], [ %i.s, %bb.e ] ; 2 uses
  store ptr %.0.i, ptr %4, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit, %bb.b
end_hunk_0
