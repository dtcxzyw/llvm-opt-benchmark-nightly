Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTConsumers?download=true
inline.NumInlined: 15742
inline.NumDeleted: 8027
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang11ASTConsumer37HandleCXXStaticMemberVarInstantiationEPNS_7VarDeclE:bb.a
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang11ASTConsumer29HandleOpenACCRoutineReferenceEPKNS_12FunctionDeclEPKNS_18OpenACCRoutineDeclE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang11ASTConsumer12HandleVTableEPNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang11ASTConsumer22GetASTMutationListenerEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang11ASTConsumer29GetASTDeserializationListenerEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang11ASTConsumer10PrintStatsEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang11ASTConsumer22shouldSkipFunctionBodyEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110ASTPrinter5printEPN5clang4DeclE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %3 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !485, !noundef !484
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5clang11DeclContext7classofEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33) %1) #21
  br i1 %i.d, label %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit, label %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit: ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN5clang4Decl17castToDeclContextEPKS0_(ptr noundef nonnull %1) #21 ; 5 uses
  %.not32 = icmp eq ptr %i.e, null
  br i1 %.not32, label %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit
  %i.f = tail call noundef ptr @_ZN5clang11DeclContext17getPrimaryContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #21
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !486, !nonnull !484, !align !487 ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %i.l = icmp ne i32 %i.k, 3
  %i.m = icmp eq i32 %i.k, 0
  tail call void @_ZNK5clang11DeclContext11dumpLookupsERN4llvm11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i1 noundef zeroext %i.l, i1 noundef zeroext %i.m) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !491
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !492  ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, 37
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull @.str.1, i64 noundef 37) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.q, ptr noundef nonnull align 1 dereferenceable(37) @.str.1, i64 37, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !492
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 37
  store ptr %i.x, ptr %i.p, align 8, !tbaa !492
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i37 = phi ptr [ %i.v, %bb.f ], [ %i.i, %bb.g ]
  %i.y = tail call noundef ptr @_ZN5clang11DeclContext17getPrimaryContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #21
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i37, ptr noundef %i.y) #21 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !491
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !492 ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull @.str.2, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.ad, align 1
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !492
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !492
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread: ; preds = %bb.b, %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !486, !nonnull !484, !align !487 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !491
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !492 ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 18
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull @.str.3, i64 noundef 18) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.k:                                             ; preds = %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.an, ptr noundef nonnull align 1 dereferenceable(18) @.str.3, i64 18, i1 false)
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !492
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 18
  store ptr %i.au, ptr %i.am, align 8, !tbaa !492
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.l:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  switch i32 %i.aw, label %bb.n [
    i32 2, label %bb.m
    i32 3, label %_ZN4llvm11raw_ostreamlsEPKc.exit40
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ax = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2600
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !743, !nonnull !484, !align !487 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 11 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 512
  %i.bd = lshr i64 %i.ba, 5
  %i.be = and i64 %i.bd, 8388608
  %i.bf = or disjoint i64 %i.bc, %i.be
  %i.bg = or disjoint i64 %i.bf, 4472834
  %i.bh = and i64 %i.ba, 8192
  %.not.i = icmp eq i64 %i.bh, 0
  %i.bi = shl i64 %i.ba, 21
  %i.bj = and i64 %i.bi, 16777216
  %i.bk = select i1 %.not.i, i64 %i.bj, i64 16777216
  %i.bl = shl i64 %i.ba, 13
  %i.bm = and i64 %i.bl, 33554432
  %i.bn = or disjoint i64 %i.bk, %i.bm
  %i.bo = shl i64 %i.ba, 26
  %i.bp = and i64 %i.bo, 67108864
  %i.bq = or disjoint i64 %i.bn, %i.bp
  %i.br = shl i64 %i.ba, 14
  %i.bs = and i64 %i.br, 134217728
  %i.bt = or disjoint i64 %i.bq, %i.bs
  %i.bu = shl i64 %i.ba, 27
  %i.bv = and i64 %i.bu, 268435456
  %i.bw = or disjoint i64 %i.bt, %i.bv
  %i.bx = shl i64 %i.ba, 17
  %i.by = and i64 %i.bx, 1610612736
  %i.bz = shl i64 %i.ba, 4                        ; 2 uses
  %i.ca = and i64 %i.bz, 8589934592
  %i.cb = and i64 %i.ba, 128
  %.not17.i = icmp eq i64 %i.cb, 0
  %i.cc = and i64 %i.bz, 17179869184
  %i.cd = xor i64 %i.cc, 112201725640704
  %i.ce = select i1 %.not17.i, i64 112184545771520, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = shl i64 %i.cg, 7
  %i.ci = and i64 %i.ch, 140737488355328
  %.masked.masked.masked = or i64 %i.bw, %i.by
  %.masked59.masked = or i64 %.masked.masked.masked, %i.ca
  %.masked.masked.masked.masked = or i64 %.masked59.masked, %i.bg
  %.masked59.masked.masked = or i64 %.masked.masked.masked.masked, %i.ce
  %.masked.masked = or i64 %.masked59.masked.masked, %i.ci
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %4, align 8, !tbaa !744
  %i.cj = xor i64 %.masked.masked, 1610614784
  store i64 %i.cj, ptr %2, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !486, !nonnull !484, !align !487
  call void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEjb(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, i1 noundef zeroext true) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.n:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !486, !nonnull !484, !align !487
  %i.co = icmp eq i32 %i.aw, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !53
  tail call void @_ZNK5clang4Decl4dumpERN4llvm11raw_ostreamEbNS_19ASTDumpOutputFormatE(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i1 noundef zeroext %i.co, i32 noundef %i.cq) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm11raw_ostreamlsEPKc.exit40:               ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.l, %bb.d, %bb.m, %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !60, !range !485, !noundef !484
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.o, label %bb.u

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 127                      ; 2 uses
  %i.cx = add nsw i32 %i.cw, -76
  %i.cy = icmp ult i32 %i.cx, -7
  %.not3348 = icmp eq ptr %1, null
  %.not33 = or i1 %.not3348, %i.cy
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %.not34 = icmp eq ptr %i.da, null
  %spec.select = select i1 %.not34, ptr %1, ptr %i.da ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %spec.select, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre52 = and i32 %.pre, 127
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi = phi i32 [ %.pre52, %bb.p ], [ %i.cw, %bb.o ] ; 2 uses
  %.1 = phi ptr [ %spec.select, %bb.p ], [ %1, %bb.o ] ; 5 uses
  %i.db = add nsw i32 %.pre-phi, -54
  %i.dc = icmp ult i32 %i.db, -27
  br i1 %i.dc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.1, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.de = getelementptr inbounds nuw i8, ptr %.1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.de, align 8, !tbaa !57
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !486, !nonnull !484, !align !487
  %i.dh = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %.1) #24
  call void @_ZNK5clang8QualType4dumpERN4llvm11raw_ostreamERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef nonnull align 8 dereferenceable(23904) %i.dh) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre51 = load i32, ptr %i.dd, align 4
  %.pre53 = and i32 %.pre51, 127
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi54 = phi i32 [ %.pre53, %bb.r ], [ %.pre-phi, %bb.q ]
  %i.di = add nsw i32 %.pre-phi54, -69
  %i.dj = icmp ult i32 %i.di, -10
  br i1 %i.dj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %.1) #24 ; 2 uses
  %i.dl = call i64 @_ZNK5clang10ASTContext15getTypeDeclTypeEPKNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dk, ptr noundef nonnull %.1) #21
  %i.dm = and i64 %i.dl, -16
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !509
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !486, !nonnull !484, !align !487
  call void @_ZNK5clang4Type4dumpERN4llvm11raw_ostreamERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef nonnull align 8 dereferenceable(23904) %i.dk) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %_ZN4llvm11raw_ostreamlsEPKc.exit40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_110ASTPrinter12TraverseDeclEPN5clang4DeclE(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !noalias !755
  %i.c = and i32 %i.b, 124
  %i.d = add nsw i32 %i.c, -20
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZNK5clang9NamedDecl24getQualifiedNameAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  br label %_ZN12_GLOBAL__N_110ASTPrinter7getNameB5cxx11EPN5clang4DeclE.exit.i

._crit_edge.i.i.i.i:                              ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !54, !alias.scope !755
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !58, !alias.scope !755
  store i8 0, ptr %i.f, align 8, !tbaa !57, !alias.scope !755
  br label %_ZN12_GLOBAL__N_110ASTPrinter7getNameB5cxx11EPN5clang4DeclE.exit.i

_ZN12_GLOBAL__N_110ASTPrinter7getNameB5cxx11EPN5clang4DeclE.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58
  %i.l = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.i, i64 noundef 0, i64 noundef %i.k) #21
  %i.m = load ptr, ptr %2, align 8, !tbaa !56     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN12_GLOBAL__N_110ASTPrinter13filterMatchesEPN5clang4DeclE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_110ASTPrinter7getNameB5cxx11EPN5clang4DeclE.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !57
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZN12_GLOBAL__N_110ASTPrinter13filterMatchesEPN5clang4DeclE.exit

_ZN12_GLOBAL__N_110ASTPrinter13filterMatchesEPN5clang4DeclE.exit: ; preds = %_ZN12_GLOBAL__N_110ASTPrinter7getNameB5cxx11EPN5clang4DeclE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.not34 = icmp eq i64 %i.l, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.not34, label %.split8, label %bb.di

.split8:                                          ; preds = %_ZN12_GLOBAL__N_110ASTPrinter13filterMatchesEPN5clang4DeclE.exit
  %i.r = load i32, ptr %i.a, align 4              ; 2 uses
  %i.s = and i32 %i.r, 512
  %.not35 = icmp eq i32 %i.s, 0
  %i.t = and i32 %i.r, 127                        ; 3 uses
  br i1 %.not35, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.split8
  %.not41 = icmp eq i32 %i.t, 68
  br i1 %.not41, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, 4
  %.not.i.i19 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i19, label %.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !514  ; 4 uses
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.y, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !515
  %i.z = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_110ASTPrinterEE30TraverseNestedNameSpecifierLocENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.0.copyload.i25, ptr %.sroa.2.0.copyload.i), !inline_history !747
  br i1 %i.z, label %bb.g, label %.split

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_110ASTPrinterEE27TraverseDeclarationNameInfoENS_19DeclarationNameInfoE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull byval(%"struct.clang::DeclarationNameInfo") align 8 %i.aa)
  br i1 %i.ab, label %bb.h, label %.split

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !523 ; 3 uses
  %.not38 = icmp eq ptr %i.ad, null
  br i1 %.not38, label %.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !525 ; 2 uses
  %.not42 = icmp eq i32 %i.ag, 0
  br i1 %.not42, label %.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext i32 %i.ag to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ai = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_110ASTPrinterEE27TraverseTemplateArgumentLocERKNS_19TemplateArgumentLocE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah), !inline_history !748 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.ai, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.split, !llvm.loop !1

bb.j:                                             ; preds = %.split8
  %.not43 = icmp eq i32 %i.t, 72
  br i1 %.not43, label %bb.k, label %_ZN4llvm15isa_and_presentIJN5clang21TypeAliasTemplateDeclEEPNS1_12TemplateDeclEEEbRKT0_.exit.thread

bb.k:                                             ; preds = %bb.j
end_hunk_0
