Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGExprScalar?download=true
inline.NumInlined: 7193
inline.NumDeleted: 2875
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_117ScalarExprEmitter7EmitSubERKNS_9BinOpInfoE:bb.a
  %i.mc = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 16, ptr noundef %i.li, ptr noundef %i.lq, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, i64 0) #22 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !723, !nonnull !102, !align !103 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %.sroa.0.0.copyload.i.i.i138 = load ptr, ptr %i.mf, align 8
  %.sroa.2.0..sroa_idx.i.i.i139 = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %.sroa.2.0.copyload.i.i.i140 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i139, align 8
  %i.mg = load ptr, ptr %i.me, align 8, !tbaa !722
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef %i.mc, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr %.sroa.0.0.copyload.i.i.i138, i64 %.sroa.2.0.copyload.i.i.i140) #22, !inline_history !9
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.lr, ptr noundef %i.mc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit141

_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit141: ; preds = %bb.ai, %bb.aj
  %.1.i137 = phi ptr [ %i.lz, %bb.ai ], [ %i.mc, %bb.aj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !1166
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !116
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.sroa.0.0.copyload.i142 = load i64, ptr %i.mn, align 8, !tbaa !56
  %i.mo = and i64 %.sroa.0.0.copyload.i142, -16
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = load ptr, ptr %i.mp, align 16, !tbaa !63
  %i.mr = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.mq) #22 ; 3 uses
  %i.ms = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 144
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 144
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !694, !nonnull !102, !align !103
  %i.mx = call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.mw, i64 %i.mr) #22 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit141
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load i8, ptr %i.my, align 16
  %i.na = icmp eq i8 %i.mz, 6
  br i1 %i.na, label %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit, label %bb.an

_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit: ; preds = %bb.ak
  %i.nb = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  %i.nc = call { ptr, i64 } @_ZN5clang7CodeGen15CodeGenFunction10getVLASizeEPKNS_17VariableArrayTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %i.nb, ptr noundef nonnull %i.mx) #22 ; 2 uses
  %i.nd = extractvalue { ptr, i64 } %i.nc, 0      ; 3 uses
  %i.ne = extractvalue { ptr, i64 } %i.nc, 1
  %i.nf = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 144
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 144
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !694, !nonnull !102, !align !103
  %i.nk = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.nj, i64 %i.ne) #22 ; 2 uses
  %i.nl = icmp eq i64 %i.nk, 1
  br i1 %i.nl, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit
  %i.nm = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103 ; 6 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 144
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.np = call noundef ptr @_ZN5clang7CodeGen13CodeGenModule7getSizeENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(4008) %i.no, i64 %i.nk) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 320
  store i16 257, ptr %i.nq, align 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !720, !nonnull !102, !align !103 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !722
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = call noundef ptr %i.nv(ptr noundef nonnull align 8 dereferenceable(8) %i.ns, i32 noundef 18, ptr noundef %i.np, ptr noundef %i.nd, i1 noundef zeroext true, i1 noundef zeroext false) #22, !inline_history !27 ; 2 uses
  %.not.not.i.i144 = icmp eq ptr %i.nw, null
  br i1 %.not.not.i.i144, label %bb.am, label %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit

bb.am:                                            ; preds = %bb.al
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nm, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.ny, align 8, !tbaa !74
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.nz, align 1, !tbaa !73
  %i.oa = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 18, ptr noundef %i.np, ptr noundef %i.nd, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #22 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nm, i64 328
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !723, !nonnull !102, !align !103 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nm, i64 296
  %.sroa.0.0.copyload.i.i.i.i146 = load ptr, ptr %i.od, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %i.nm, i64 304
  %.sroa.2.0.copyload.i.i.i.i148 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i147, align 8
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !722
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef %i.oa, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr %.sroa.0.0.copyload.i.i.i.i146, i64 %.sroa.2.0.copyload.i.i.i.i148) #22, !inline_history !28
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.nx, ptr noundef %i.oa) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN4llvm11Instruction20setHasNoUnsignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.oa, i1 noundef zeroext true) #22
  br label %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %bb.al, %bb.am
  %.1.i.i145 = phi ptr [ %i.nw, %bb.al ], [ %i.oa, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.aq

bb.an:                                            ; preds = %bb.ak, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit141
  %i.oh = and i64 %i.mr, -16
  %i.oi = inttoptr i64 %i.oh to ptr
  %i.oj = load ptr, ptr %i.oi, align 16, !tbaa !63
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ok, align 8, !tbaa !56
  %i.ol = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = load ptr, ptr %i.om, align 16, !tbaa !63 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 16            ; 2 uses
  %i.oq = icmp eq i8 %i.op, 13
  %.not7.i.i = icmp ne ptr %i.on, null
  %.not.not.not.i.i150 = and i1 %.not7.i.i, %i.oq
  br i1 %.not.not.not.i.i150, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %bb.ao

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.an
  %i.or = load i32, ptr %i.oo, align 16
  %i.os = and i32 %i.or, 536346624
  %i.ot = icmp eq i32 %i.os, 236978176
  br i1 %i.ot, label %.critedge89, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.ou = add i8 %i.op, -23
  %spec.select.i.i.i.i.i.i.i.i.i154 = icmp ult i8 %i.ou, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i154, label %.critedge89, label %.thread

.thread:                                          ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.ao
  %i.ov = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 144
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 144
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !694, !nonnull !102, !align !103
  %i.pa = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.oz, i64 %i.mr) #22 ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 1
  br i1 %i.pb, label %.critedge89, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.pc = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 144
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.pf = call noundef ptr @_ZN5clang7CodeGen13CodeGenModule7getSizeENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(4008) %i.pe, i64 %i.pa) #22
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit, %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit, %bb.ap
  %.384 = phi ptr [ %i.pf, %bb.ap ], [ %i.nd, %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit ], [ %.1.i.i145, %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit ] ; 2 uses
  %i.pg = load ptr, ptr %i.lb, align 8, !tbaa !758, !nonnull !102, !align !103 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.ph = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.pi = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.pi, align 1, !tbaa !73
  store ptr @.str.112, ptr %27, align 8, !tbaa !56
  store i8 3, ptr %i.ph, align 8, !tbaa !74
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !720, !nonnull !102, !align !103 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !722
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8
  %i.po = call noundef ptr %i.pn(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, i32 noundef 21, ptr noundef %.1.i137, ptr noundef %.384, i1 noundef zeroext true) #22, !inline_history !1383 ; 2 uses
  %.not.not.i.i155 = icmp eq ptr %i.po, null
  br i1 %.not.not.i.i155, label %bb.ar, label %_ZN4llvm13IRBuilderBase15CreateExactSDivEPNS_5ValueES2_RKNS_5TwineE.exit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.pp, align 8
  %i.pq = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 21, ptr noundef %.1.i137, ptr noundef %.384, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr null, i64 0) #22 ; 4 uses
  call void @_ZN4llvm11Instruction10setIsExactEb(ptr noundef nonnull align 8 dereferenceable(72) %i.pq, i1 noundef zeroext true) #22
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !723, !nonnull !102, !align !103 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %.sroa.0.0.copyload.i15.i.i = load ptr, ptr %i.pt, align 8
  %.sroa.2.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %.sroa.2.0.copyload.i17.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i16.i.i, align 8
  %i.pu = load ptr, ptr %i.ps, align 8, !tbaa !722
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(8) %i.ps, ptr noundef nonnull %i.pq, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr %.sroa.0.0.copyload.i15.i.i, i64 %.sroa.2.0.copyload.i17.i.i) #22, !inline_history !1384
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.pg, ptr noundef nonnull %i.pq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN4llvm13IRBuilderBase15CreateExactSDivEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase15CreateExactSDivEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %bb.aq, %bb.ar
  %.1.i.i156 = phi ptr [ %i.pq, %bb.ar ], [ %i.po, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %.critedge89

.critedge89:                                      ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.ao, %_ZN4llvm13IRBuilderBase15CreateExactSDivEPNS_5ValueES2_RKNS_5TwineE.exit, %.thread, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit103, %_ZN4llvm13IRBuilderBase12CreateNSWSubEPNS_5ValueES2_RKNS_5TwineE.exit, %_ZN4llvm13IRBuilderBase12CreateNSWSubEPNS_5ValueES2_RKNS_5TwineE.exit115, %bb.w, %bb.ah, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread173, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit132.thread, %bb.aa
  %.7 = phi ptr [ %i.eb, %_ZN4llvm13IRBuilderBase12CreateNSWSubEPNS_5ValueES2_RKNS_5TwineE.exit ], [ %i.la, %bb.ah ], [ %i.he, %bb.aa ], [ %i.hz, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit132.thread ], [ %i.kd, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread173 ], [ %i.kk, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread ], [ %i.gm, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread ], [ %.1.i99, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit103 ], [ %.1.i, %_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb.exit ], [ %i.fu, %_ZN4llvm13IRBuilderBase12CreateNSWSubEPNS_5ValueES2_RKNS_5TwineE.exit115 ], [ %i.fv, %bb.w ], [ %.1.i.i156, %_ZN4llvm13IRBuilderBase15CreateExactSDivEPNS_5ValueES2_RKNS_5TwineE.exit ], [ %.1.i137, %.thread ], [ %.1.i137, %bb.ao ], [ %.1.i137, %_ZNK5clang4Type10isVoidTypeEv.exit ]
  ret ptr %.7
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_117ScalarExprEmitter7EmitShlERKNS_9BinOpInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.1935", align 8 ; 10 uses
  %6 = alloca %"class.clang::CodeGen::SanitizerDebugLocation", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.922", align 8 ; 10 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1166 ; 4 uses
  %i.b = load i16, ptr %.val, align 8             ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.c, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZNK5clang4Type16isFixedPointTypeEv.exit20.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i13.i = load i64, ptr %i.i, align 8, !tbaa !56
  %i.j = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !56
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !63  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 16
  %i.s = icmp eq i8 %i.r, 13
  %.not8.i.i = icmp ne ptr %i.p, null
  %.not.not.not.i.i = and i1 %.not8.i.i, %i.s
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type16isFixedPointTypeEv.exit.i, label %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread.i

_ZNK5clang4Type16isFixedPointTypeEv.exit.i:       ; preds = %bb.b
  %i.t = load i32, ptr %i.q, align 16
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1023
  %i.w = add nsw i32 %i.v, -473
  %spec.select7.i.i = icmp ult i32 %i.w, 24
  br i1 %spec.select7.i.i, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread97, label %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread.i

_ZNK5clang4Type16isFixedPointTypeEv.exit.thread.i: ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit.i, %bb.b
  %i.x = and i64 %.sroa.0.0.copyload.i13.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0.0.copyload.i.i.i.i15.i = load i64, ptr %i.aa, align 8, !tbaa !56
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i15.i, -16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !63 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 16
  %i.ag = icmp eq i8 %i.af, 13
  %.not8.i16.i = icmp ne ptr %i.ad, null
  %.not.not.not.i17.i = and i1 %.not8.i16.i, %i.ag
  br i1 %.not.not.not.i17.i, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit20.i:     ; preds = %bb.a
  %i.ah = and i16 %i.b, 511
  %.not.i = icmp eq i16 %i.ah, 4
  br i1 %.not.i, label %bb.c, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread

bb.c:                                             ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit20.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0.0.copyload.i22.i = load i64, ptr %i.ak, align 8, !tbaa !56
  %i.al = and i64 %.sroa.0.0.copyload.i22.i, -16
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i.i.i.i24.i = load i64, ptr %i.ao, align 8, !tbaa !56
  %i.ap = and i64 %.sroa.0.0.copyload.i.i.i.i24.i, -16
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !63 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load i8, ptr %i.as, align 16
  %i.au = icmp eq i8 %i.at, 13
  %.not8.i25.i = icmp ne ptr %i.ar, null
  %.not.not.not.i26.i = and i1 %.not8.i25.i, %i.au
  br i1 %.not.not.not.i26.i, label %.split, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread

.split:                                           ; preds = %bb.c
  %i.av = load i32, ptr %i.as, align 16
  %i.aw = lshr i32 %i.av, 19
  %i.ax = and i32 %i.aw, 1023
  %i.ay = add nsw i32 %i.ax, -473
  %spec.select7.i28.i = icmp ult i32 %i.ay, 24
  br i1 %spec.select7.i28.i, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread97, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread

_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit: ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread.i
  %i.az = load i32, ptr %i.ae, align 16
  %i.ba = lshr i32 %i.az, 19
  %i.bb = and i32 %i.ba, 1023
  %i.bc = add nsw i32 %i.bb, -473
  %spec.select7.i19.i = icmp ult i32 %i.bc, 24
  br i1 %spec.select7.i19.i, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread97, label %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread

_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread97: ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit.i, %.split, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit
  %i.bd = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_117ScalarExprEmitter19EmitFixedPointBinOpERKNS_9BinOpInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.aj

_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread: ; preds = %bb.c, %_ZNK5clang4Type16isFixedPointTypeEv.exit20.i, %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread.i, %.split, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1164 ; 3 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !1163
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70
  %.not = icmp eq ptr %i.bi, %i.bk
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !758, !nonnull !102, !align !103
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.bo, align 1, !tbaa !73
  store ptr @.str.113, ptr %3, align 8, !tbaa !56
  store i8 3, ptr %i.bn, align 8, !tbaa !74
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !70
  %i.bq = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp) #23
  %i.br = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #23
  %i.bs = icmp ugt i32 %i.bq, %i.br
  %i.bt = select i1 %i.bs, i32 39, i32 40
  %i.bu = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i32 noundef %i.bt, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bi, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread
  %.063 = phi ptr [ %i.bu, %bb.d ], [ %i.bf, %_ZNK12_GLOBAL__N_19BinOpInfo14isFixedPointOpEv.exit.thread ] ; 7 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1920
  %.sroa.0.0.copyload.i = load i64, ptr %i.bw, align 8
  %i.bx = and i64 %.sroa.0.0.copyload.i, 274877906944
  %.not.i.i.not = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.by, align 8
  %i.bz = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !63
  %i.cc = call noundef zeroext i1 @_ZNK5clang4Type30hasSignedIntegerRepresentationEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cb) #22
  %.pre = load ptr, ptr %0, align 8, !tbaa !757   ; 4 uses
  br i1 %i.cc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 144
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 152
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !695, !nonnull !102, !align !103 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ci = load i64, ptr %i.ch, align 8
  %.mask.i = and i64 %i.ci, -4611686018427387904
  %i.cj = icmp eq i64 %.mask.i, 4611686018427387904
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = load i64, ptr %i.cg, align 8
  %i.cl = and i64 %i.ck, 65536
  %.not65 = icmp eq i64 %i.cl, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.cm = phi ptr [ %.pre, %bb.g ], [ %.pre, %bb.f ], [ %i.bv, %bb.e ], [ %.pre, %bb.h ] ; 2 uses
  %i.cn = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ %.not65, %bb.h ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 1920
  %.sroa.0.0.copyload.i74 = load i64, ptr %i.co, align 8 ; 2 uses
  %i.cp = and i64 %.sroa.0.0.copyload.i74, 70368744177664
  %.not.i.i77.not = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i77.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i78 = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i78, -16
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !63
  %i.cu = call noundef zeroext i1 @_ZNK5clang4Type32hasUnsignedIntegerRepresentationEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ct) #22
  %.pre99 = load ptr, ptr %0, align 8, !tbaa !757 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre99, i64 1920
  %.sroa.0.0.copyload.i79.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i79 = phi i64 [ %.sroa.0.0.copyload.i74, %bb.i ], [ %.sroa.0.0.copyload.i79.pre, %bb.j ]
  %i.cv = phi ptr [ %i.cm, %bb.i ], [ %.pre99, %bb.j ]
  %i.cw = phi i1 [ false, %bb.i ], [ %i.cu, %bb.j ] ; 3 uses
  %i.cx = or i1 %i.cn, %i.cw                      ; 2 uses
  %i.cy = and i64 %.sroa.0.0.copyload.i79, 549755813888
  %.not.i.i82 = icmp ne i64 %i.cy, 0              ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 152
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !695, !nonnull !102, !align !103 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = and i64 %i.de, 4611686018427387904
  %.not66 = icmp eq i64 %i.df, 0
  br i1 %.not66, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, 1099511627776
  %.not67 = icmp eq i64 %i.di, 0
  br i1 %.not67, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dj = load ptr, ptr %1, align 8, !tbaa !1163
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.dl, align 1, !tbaa !73
  store ptr @.str.114, ptr %4, align 8, !tbaa !56
  store i8 3, ptr %i.dk, align 8, !tbaa !74
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val71 = load ptr, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %i.dj, i64 8
  %.val72 = load ptr, ptr %i.dn, align 8, !tbaa !70
  %i.do = call fastcc noundef ptr @_ZN12_GLOBAL__N_117ScalarExprEmitter19ConstrainShiftValueEPN4llvm5ValueES3_RKNS1_5TwineE(ptr %.val71, ptr %.val72, ptr noundef %.063, ptr noundef nonnull align 8 dereferenceable(34) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %or.cond = or i1 %i.cx, %.not.i.i82
  br i1 %or.cond, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %1, align 8, !tbaa !1163
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !70
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = and i32 %i.dt, 255
  %i.dv = icmp eq i32 %i.du, 12
  br i1 %i.dv, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.dw, ptr %5, align 8, !tbaa !749
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.dx, align 8, !tbaa !750
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 3, ptr %i.dy, align 4, !tbaa !751
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 38, ptr %i.dw, align 8
  store i32 1, ptr %i.dx, align 8, !tbaa !750
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.cw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang13SanitizerKind16SanitizerOrdinalELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 46)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not.i.i82, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang13SanitizerKind16SanitizerOrdinalELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 39)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dz = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  %i.ea = load ptr, ptr %5, align 8, !tbaa !749
  %i.eb = load i32, ptr %i.dx, align 8, !tbaa !750
  %i.ec = zext i32 %i.eb to i64
  call void @_ZN5clang7CodeGen22SanitizerDebugLocationC1EPNS0_15CodeGenFunctionEN4llvm8ArrayRefINS_13SanitizerKind16SanitizerOrdinalEEE16SanitizerHandler(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.dz, ptr %i.ea, i64 %i.ec, i32 noundef 20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ed, ptr %7, align 8, !tbaa !749
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.ee, align 8, !tbaa !750
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 2, ptr %i.ef, align 4, !tbaa !751
  %.val73 = load ptr, ptr %i.a, align 8, !tbaa !1166 ; 2 uses
  %i.eg = load i16, ptr %.val73, align 8
  %i.eh = and i16 %i.eg, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.eh, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.w, label %_ZNK12_GLOBAL__N_19BinOpInfo33rhsHasSignedIntegerRepresentationEv.exit

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %.val73, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !116
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.0.0.copyload.i.i83 = load i64, ptr %i.ek, align 8, !tbaa !56
  %i.el = and i64 %.sroa.0.0.copyload.i.i83, -16
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !63
  %i.eo = call noundef zeroext i1 @_ZNK5clang4Type30hasSignedIntegerRepresentationEv(ptr noundef nonnull align 16 dereferenceable(24) %i.en) #22
  br label %_ZNK12_GLOBAL__N_19BinOpInfo33rhsHasSignedIntegerRepresentationEv.exit

_ZNK12_GLOBAL__N_19BinOpInfo33rhsHasSignedIntegerRepresentationEv.exit: ; preds = %bb.v, %bb.w
  %.04.i = phi i1 [ %i.eo, %bb.w ], [ false, %bb.v ] ; 2 uses
  %i.ep = load ptr, ptr %1, align 8, !tbaa !1163
  %i.eq = load ptr, ptr %i.be, align 8, !tbaa !1164
  %i.er = getelementptr i8, ptr %i.ep, i64 8
  %.val70 = load ptr, ptr %i.er, align 8, !tbaa !70
  %i.es = call fastcc noundef ptr @_ZN12_GLOBAL__N_117ScalarExprEmitter21GetMaximumShiftAmountEPN4llvm5ValueES3_b(ptr %.val70, ptr noundef %i.eq, i1 noundef zeroext %.04.i) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103
  %i.ev = load ptr, ptr %i.be, align 8, !tbaa !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.ew, align 8
  %i.ex = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.eu, i32 noundef 37, ptr noundef %i.ev, ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(34) %8) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.not.i.i82, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK12_GLOBAL__N_19BinOpInfo33rhsHasSignedIntegerRepresentationEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEN5clang13SanitizerKind16SanitizerOrdinalEELb1EE9push_backES7_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.ex, i64 39)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNK12_GLOBAL__N_19BinOpInfo33rhsHasSignedIntegerRepresentationEv.exit
  br i1 %i.cx, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ey = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !696
  %i.fb = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.fd, align 1, !tbaa !73
  store ptr @.str.115, ptr %9, align 8, !tbaa !56
  store i8 3, ptr %i.fc, align 8, !tbaa !74
  %i.fe = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction16createBasicBlockERKN4llvm5TwineEPNS2_8FunctionEPNS2_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(6288) %i.fb, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef null, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ff = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.fh, align 1, !tbaa !73
  store ptr @.str.116, ptr %10, align 8, !tbaa !56
  store i8 3, ptr %i.fg, align 8, !tbaa !74
  %i.fi = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction16createBasicBlockERKN4llvm5TwineEPNS2_8FunctionEPNS2_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(6288) %i.ff, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef null, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103
  %i.fk = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateCondBrEPNS_5ValueEPNS_10BasicBlockES4_PNS_6MDNodeES6_(ptr noundef nonnull align 8 dereferenceable(88) %i.fj, ptr noundef %i.ex, ptr noundef %i.fi, ptr noundef %i.fe, ptr noundef null, ptr noundef null) ; 0 uses
  %i.fl = load ptr, ptr %i.be, align 8, !tbaa !1164
  %i.fm = icmp eq ptr %.063, %i.fl
  br i1 %i.fm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = load ptr, ptr %1, align 8, !tbaa !1163
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %.val69 = load ptr, ptr %i.fo, align 8, !tbaa !70
  %i.fp = call fastcc noundef ptr @_ZN12_GLOBAL__N_117ScalarExprEmitter21GetMaximumShiftAmountEPN4llvm5ValueES3_b(ptr %.val69, ptr noundef %.063, i1 noundef zeroext %.04.i)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.fq = phi ptr [ %i.fp, %bb.aa ], [ %i.es, %bb.z ]
  %i.fr = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %i.fr, ptr noundef %i.fi, i1 noundef zeroext false) #22
  %i.fs = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103 ; 2 uses
  %i.ft = load ptr, ptr %1, align 8, !tbaa !1163
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.fv, align 1, !tbaa !73
  store ptr @.str.117, ptr %11, align 8, !tbaa !56
  store i8 3, ptr %i.fu, align 8, !tbaa !74
  %i.fw = call noundef ptr @_ZN4llvm13IRBuilderBase9CreateSubEPNS_5ValueES2_RKNS_5TwineEbb(ptr noundef nonnull align 8 dereferenceable(88) %i.fs, ptr noundef %i.fq, ptr noundef %.063, ptr noundef nonnull align 8 dereferenceable(34) %11, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.fy, align 1, !tbaa !73
  store ptr @.str.118, ptr %12, align 8, !tbaa !56
  store i8 3, ptr %i.fx, align 8, !tbaa !74
  %i.fz = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(88) %i.fs, ptr noundef %i.ft, ptr noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(34) %12, i1 noundef zeroext false) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %i.cw, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 144
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !341, !nonnull !102, !align !103
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 152
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !695, !nonnull !102, !align !103
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = and i64 %i.gf, 4096
  %.not68 = icmp eq i64 %i.gg, 0
  br i1 %.not68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !70
  %i.gj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.gi, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #22
  %i.gk = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.gl, align 8
  %i.gm = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(88) %i.gk, ptr noundef nonnull %i.fz, ptr noundef %i.gj, ptr noundef nonnull align 8 dereferenceable(34) %13, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.064 = phi ptr [ %i.gm, %bb.ad ], [ %i.fz, %bb.ac ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !70
  %i.gp = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.go, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #22
  %i.gq = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i16 257, ptr %i.gr, align 8
  %i.gs = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.gq, i32 noundef 32, ptr noundef nonnull %.064, ptr noundef %i.gp, ptr noundef nonnull align 8 dereferenceable(34) %14) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.gt = load ptr, ptr %0, align 8, !tbaa !757, !nonnull !102, !align !103
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %i.gt, ptr noundef %i.fe, i1 noundef zeroext false) #22
  %i.gu = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.gx = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i16 257, ptr %i.gx, align 8
  %i.gy = call noundef ptr @_ZN4llvm13IRBuilderBase9CreatePHIEPNS_4TypeEjRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.gu, ptr noundef %i.gw, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(34) %15) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.gz = load ptr, ptr %i.et, align 8, !tbaa !758, !nonnull !102, !align !103
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !101, !nonnull !102, !align !103
  %i.hc = call noundef ptr @_ZN4llvm11ConstantInt7getTrueERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.hb) #22
  call void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %i.gy, ptr noundef %i.hc, ptr noundef %i.fa)
  call void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %i.gy, ptr noundef nonnull %i.gs, ptr noundef %i.fi)
  %i.hd = select i1 %i.cn, i64 38, i64 46
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEN5clang13SanitizerKind16SanitizerOrdinalEELb1EE9push_backES7_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull %i.gy, i64 %i.hd)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %i.he = load ptr, ptr %7, align 8, !tbaa !749
  %i.hf = load i32, ptr %i.ee, align 8, !tbaa !750
  %i.hg = zext i32 %i.hf to i64
  call fastcc void @_ZN12_GLOBAL__N_117ScalarExprEmitter14EmitBinOpCheckEN4llvm8ArrayRefISt4pairIPNS1_5ValueEN5clang13SanitizerKind16SanitizerOrdinalEEEERKNS_9BinOpInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.he, i64 %i.hg, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.hh = load ptr, ptr %7, align 8, !tbaa !749   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ed
  br i1 %i.hi, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEN5clang13SanitizerKind16SanitizerOrdinalEELj2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.hh) #22
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEN5clang13SanitizerKind16SanitizerOrdinalEELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEN5clang13SanitizerKind16SanitizerOrdinalEELj2EED2Ev.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN5clang7CodeGen22SanitizerDebugLocationD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
end_hunk_0
