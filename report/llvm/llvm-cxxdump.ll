Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-cxxdump?download=true
inline.NumInlined: 3266
inline.NumDeleted: 1527
begin_hunk_0_@_ZL11dumpCXXDataPKN4llvm6object10ObjectFileE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 11 uses
  store i32 0, ptr %i.at, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr null, ptr %i.au, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  store ptr %i.at, ptr %i.av, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !82
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr null, ptr %i.az, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !84
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr null, ptr %i.be, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !84
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !83
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 0, ptr %i.bm, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 0, ptr %i.br, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !56
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 0, ptr %i.bw, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !82
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr null, ptr %i.by, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 0, ptr %i.cb, align 8, !tbaa !85
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 16), align 8, !tbaa !56
  call void @_ZNSt8_Rb_treeIN4llvm6object10SectionRefESt4pairIKS2_NS0_11SmallVectorIS2_Lj1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) @_ZL15SectionRelocMap, ptr noundef %i.cc)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 16), align 8, !tbaa !56
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 24), align 8, !tbaa !83
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 32), align 8, !tbaa !84
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 40), align 8, !tbaa !85
  %i.cd = load ptr, ptr %0, align 8, !tbaa !23, !noalias !315
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !315
  %i.cg = call { i64, ptr } %i.cf(ptr noundef nonnull align 8 dereferenceable(48) %0) #24, !noalias !315, !inline_history !268 ; 2 uses
  %i.ch = extractvalue { i64, ptr } %i.cg, 0      ; 3 uses
  %i.ci = extractvalue { i64, ptr } %i.cg, 1      ; 3 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !23, !noalias !315
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 360
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !315
  %i.cm = call { i64, ptr } %i.cl(ptr noundef nonnull align 8 dereferenceable(48) %0) #24, !noalias !315, !inline_history !268 ; 2 uses
  %i.cn = extractvalue { i64, ptr } %i.cm, 0      ; 2 uses
  %i.co = extractvalue { i64, ptr } %i.cm, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  store i64 %i.ch, ptr %21, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store ptr %i.ci, ptr %i.cp, align 8
  %i.cq = icmp ne ptr %i.ci, %i.co
  %.not.i.i.i.i1838 = icmp ne i64 %i.ch, %i.cn
  %.not2.i1839 = select i1 %i.cq, i1 true, i1 %.not.i.i.i.i1838
  br i1 %.not2.i1839, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.ct = load ptr, ptr %0, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 376
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef zeroext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZN4llvm6object18computeSymbolSizesERKNS0_10ObjectFileE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.181") align 8 %25, ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  %i.cx = load ptr, ptr %25, align 8, !tbaa !317  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !317 ; 2 uses
  %.not18051843 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not18051843, label %._crit_edge1849, label %.lr.ph1848

.lr.ph1848:                                       ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %.sroa.41722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %.sroa.41718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 2 uses
  %.sroa.41712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.dk = zext i8 %i.cw to i64                    ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.dm = icmp eq i8 %i.cw, 8                     ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.do = shl nuw nsw i64 %i.dk, 1
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 32
  %scevgep.i = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.dr = getelementptr inbounds nuw i8, ptr %39, i64 16
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit
  %lhsv.i.i.i.i1840 = phi i64 [ %i.ch, %.lr.ph ], [ %lhsv.i.i.i.i, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit ]
  %i.ds = phi ptr [ %i.ci, %.lr.ph ], [ %i.fr, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !23, !noalias !318
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 288
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !318
  call void %i.dv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.178") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i64 %lhsv.i.i.i.i1840) #24, !inline_history !271
  %i.dw = load i8, ptr %i.cr, align 8
  %i.dx = trunc i8 %i.dw to i1
  br i1 %i.dx, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.dy = load i64, ptr %22, align 8, !tbaa !62, !noalias !319
  %i.dz = inttoptr i64 %i.dy to ptr
  store ptr null, ptr %22, align 8, !tbaa !62, !noalias !319
  store ptr %i.dz, ptr %23, align 8, !tbaa !64, !alias.scope !319
  call fastcc void @_ZN4llvmL5errorENS_5ErrorE(ptr nofree noundef align 8 dereferenceable(8) %23) #26
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !88
  %i.ea = load ptr, ptr %0, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 360
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call { i64, ptr } %i.ec(ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 2 uses
  %i.ee = extractvalue { i64, ptr } %i.ed, 0
  %i.ef = extractvalue { i64, ptr } %i.ed, 1
  %i.eg = load ptr, ptr %i.cs, align 8, !tbaa !90
  %i.eh = icmp ne ptr %i.eg, %i.ef
  %lhsv.i.i.i.i420 = load i64, ptr %24, align 8
  %.not.i.i.i.i422 = icmp ne i64 %lhsv.i.i.i.i420, %i.ee
  %.not2.i423 = select i1 %i.eh, i1 true, i1 %.not.i.i.i.i422
  br i1 %.not2.i423, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseINS_6object10SectionRefELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.c
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ei, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %bb.d ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = load i64, ptr %24, align 8
  %i.em = call i64 @llvm.bswap.i64(i64 %i.ek)
  %i.en = call i64 @llvm.bswap.i64(i64 %i.el)
  %i.eo = icmp ult i64 %i.em, %i.en               ; 2 uses
  %.19.i.i.i.i = select i1 %i.eo, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.eo, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i424 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i424, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ep = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8)
  br i1 %i.ep, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.er = load i64, ptr %24, align 8
  %i.es = load i64, ptr %i.eq, align 8
  %i.et = call i64 @llvm.bswap.i64(i64 %i.er)
  %i.eu = call i64 @llvm.bswap.i64(i64 %i.es)
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %.critedge.i, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.d
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %24, ptr %3, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ew = call ptr @_ZNSt8_Rb_treeIN4llvm6object10SectionRefESt4pairIKS2_NS0_11SmallVectorIS2_Lj1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZL15SectionRelocMap, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.e, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.ew, %.critedge.i ], [ %.19.i.i.i.i, %bb.e ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %.sroa.0339.0.copyload = load i64, ptr %21, align 8, !tbaa !38 ; 2 uses
  %.sroa.2340.0.copyload = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !94 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 60
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !95
  %.not.i = icmp ult i32 %i.ez, %i.fb
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !320

bb.f:                                             ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_6object10SectionRefELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 %.sroa.0339.0.copyload, ptr %.sroa.2340.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6object10SectionRefELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  %i.fc = zext i32 %i.ez to i64
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !51
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fc ; 2 uses
  store i64 %.sroa.0339.0.copyload, ptr %i.fe, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %.sroa.2340.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.ff = load i32, ptr %i.ey, align 8, !tbaa !94
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.ey, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6object10SectionRefELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_6object10SectionRefELb1EE9push_backES2_.exit: ; preds = %bb.g, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.fh = load i8, ptr %i.cr, align 8
  %i.fi = trunc i8 %i.fh to i1
  br i1 %i.fi, label %bb.h, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6object10SectionRefELb1EE9push_backES2_.exit
  %i.fj = load ptr, ptr %22, align 8, !tbaa !62   ; 3 uses
  %.not.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.h
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !23
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj) #24, !inline_history !274
  br label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit

_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6object10SectionRefELb1EE9push_backES2_.exit, %bb.h, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.fn = load ptr, ptr %i.cp, align 8, !tbaa !90 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !23
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(48) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %21) #24, !inline_history !275
  %i.fr = load ptr, ptr %i.cp, align 8, !tbaa !90 ; 2 uses
  %i.fs = icmp ne ptr %i.fr, %i.co
  %lhsv.i.i.i.i = load i64, ptr %21, align 8      ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.cn
  %.not2.i = select i1 %i.fs, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.b, label %._crit_edge

._crit_edge1849:                                  ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit1145, %._crit_edge
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !83  ; 2 uses
  %.not18061850 = icmp eq ptr %i.ft, %i.a
  br i1 %.not18061850, label %._crit_edge1854, label %.lr.ph1853

bb.i:                                             ; preds = %.lr.ph1848, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit1145
  %.sroa.01763.01846 = phi ptr [ %i.cx, %.lr.ph1848 ], [ %i.agj, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit1145 ] ; 4 uses
  %.sroa.01758.0.copyload = load i64, ptr %.sroa.01763.01846, align 8 ; 3 uses
  %.sroa.61759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01763.01846, i64 8
  %.sroa.61759.0.copyload = load ptr, ptr %.sroa.61759.0..sroa_idx, align 8 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.01763.01846, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !325 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.fw = load ptr, ptr %.sroa.61759.0.copyload, align 8, !tbaa !23, !noalias !326
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 80
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !326
  call void %i.fy(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.189") align 8 %26, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.61759.0.copyload, i64 %.sroa.01758.0.copyload) #24, !inline_history !4
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.fz = load i8, ptr %i.da, align 8, !noalias !327
  %i.ga = trunc i8 %i.fz to i1
  br i1 %i.ga, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i427, label %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i427: ; preds = %bb.i
  %i.gb = load i64, ptr %26, align 8, !tbaa !62, !noalias !327
  %i.gc = inttoptr i64 %i.gb to ptr
  store ptr null, ptr %26, align 8, !tbaa !62, !noalias !327
  br label %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit: ; preds = %bb.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i427
  %storemerge.i426 = phi ptr [ %i.gc, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i427 ], [ null, %bb.i ]
  store ptr %storemerge.i426, ptr %27, align 8, !tbaa !64, !alias.scope !327
  %i.gd = call { i32, ptr } @_ZN4llvm16errorToErrorCodeENS_5ErrorE(ptr nofree noundef nonnull align 8 dereferenceable(8) %27) #24 ; 2 uses
  %i.ge = extractvalue { i32, ptr } %i.gd, 0
  %i.gf = extractvalue { i32, ptr } %i.gd, 1
  call fastcc void @_ZN4llvmL5errorESt10error_code(i32 %i.ge, ptr %i.gf)
  %i.gg = load ptr, ptr %27, align 8, !tbaa !64   ; 3 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gg) #24, !inline_history !5
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.gl = load ptr, ptr %.sroa.61759.0.copyload, align 8, !tbaa !23, !noalias !328
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !328
  call void %i.gn(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.178") align 8 %29, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.61759.0.copyload, i64 %.sroa.01758.0.copyload) #24, !inline_history !282
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.go = load i8, ptr %i.db, align 8, !noalias !329
  %i.gp = trunc i8 %i.go to i1
  br i1 %i.gp, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i430, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit431

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i430: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.gq = load i64, ptr %29, align 8, !tbaa !62, !noalias !329
  %i.gr = inttoptr i64 %i.gq to ptr
  store ptr null, ptr %29, align 8, !tbaa !62, !noalias !329
  br label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit431

_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit431: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i430
  %storemerge.i429 = phi ptr [ %i.gr, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i430 ], [ null, %_ZN4llvm5ErrorD2Ev.exit ]
  store ptr %storemerge.i429, ptr %30, align 8, !tbaa !64, !alias.scope !329
  %i.gs = call { i32, ptr } @_ZN4llvm16errorToErrorCodeENS_5ErrorE(ptr nofree noundef nonnull align 8 dereferenceable(8) %30) #24 ; 2 uses
  %i.gt = extractvalue { i32, ptr } %i.gs, 0
  %i.gu = extractvalue { i32, ptr } %i.gs, 1
  call fastcc void @_ZN4llvmL5errorESt10error_code(i32 %i.gt, ptr %i.gu)
  %i.gv = load ptr, ptr %30, align 8, !tbaa !64   ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN4llvm5ErrorD2Ev.exit432, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit431
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !23
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv) #24, !inline_history !5
  br label %_ZN4llvm5ErrorD2Ev.exit432

_ZN4llvm5ErrorD2Ev.exit432:                       ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit431, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !88
  %i.ha = load ptr, ptr %0, align 8, !tbaa !23
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 360
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = call { i64, ptr } %i.hc(ptr noundef nonnull align 8 dereferenceable(48) %0) #24 ; 2 uses
  %i.he = extractvalue { i64, ptr } %i.hd, 0
  %i.hf = extractvalue { i64, ptr } %i.hd, 1
  %i.hg = load ptr, ptr %i.dc, align 8, !tbaa !90 ; 3 uses
  %i.hh = icmp eq ptr %i.hg, %i.hf
  %lhsv.i.i.i = load i64, ptr %31, align 8        ; 2 uses
  %.not.i.i.i = icmp eq i64 %lhsv.i.i.i, %i.he
  %i.hi = select i1 %i.hh, i1 %.not.i.i.i, i1 false
  br i1 %i.hi, label %bb.bw, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit432
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !23
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 216
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(48) %i.hg, i64 %lhsv.i.i.i) #24, !inline_history !285
  br i1 %i.hm, label %bb.bw, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hn = load ptr, ptr %i.dc, align 8, !tbaa !90 ; 2 uses
  %.sroa.0.0.copyload.i434 = load i64, ptr %31, align 8, !tbaa !38
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !23
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 224
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, i64 %.sroa.0.0.copyload.i434) #24, !inline_history !286
  br i1 %i.hr, label %bb.bw, label %_ZNK4llvm6object10SectionRef11getContentsEv.exit

_ZNK4llvm6object10SectionRef11getContentsEv.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !330
  %i.hs = load ptr, ptr %i.dc, align 8, !tbaa !90, !noalias !330 ; 2 uses
  %.sroa.0.0.copyload.i435 = load i64, ptr %31, align 8, !tbaa !38, !noalias !330
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !23, !noalias !330
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 176
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !330
  call void %i.hv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.253") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.hs, i64 %.sroa.0.0.copyload.i435) #24, !noalias !330, !inline_history !289
  %i.hw = load i8, ptr %i.dd, align 8, !noalias !330
  %i.hx = trunc i8 %i.hw to i1
  %i.hy = load i64, ptr %2, align 8
  %i.hz = load i64, ptr %i.de, align 8            ; 2 uses
  %.sink.i = inttoptr i64 %i.hy to ptr            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  br i1 %i.hx, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !62, !alias.scope !414
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !62, !alias.scope !414
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !62, !alias.scope !413
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !62, !alias.scope !413
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !62, !alias.scope !414
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !62, !alias.scope !414
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !62, !alias.scope !414
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !62, !alias.scope !413
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !62, !alias.scope !414
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !404

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16 ; 2 uses
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !62, !alias.scope !417
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !62, !alias.scope !417
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !62, !alias.scope !418, !noalias !419
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !62, !alias.scope !418, !noalias !419
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !62, !alias.scope !417
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !62, !alias.scope !417
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !411

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !62, !alias.scope !416
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !62, !alias.scope !415
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !62, !alias.scope !416
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !412

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !108
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !109
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !107
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !108
  ret void
}

declare void @_ZNK4llvm6object7Archive5Child7getNextEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected.117") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() local_unnamed_addr #5

declare void @_ZN4llvm6object18computeSymbolSizesERKNS0_10ObjectFileE(ptr dead_on_unwind writable sret(%"class.std::vector.181") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZN4llvmL5errorESt10error_code(i32 %0, ptr %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr nonnull @.str.1, i64 0, i1 noundef zeroext false) #24
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull @.str.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = load ptr, ptr %1, align 8, !tbaa !23, !noalias !422
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !422
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %0) #24, !inline_history !2
  %i.g = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull @.str.66) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.i = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #24
  call void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i)
  call void @exit(i32 noundef 1) #30
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZL24collectRelocationOffsetsPKN4llvm6object10ObjectFileERKNS0_10SectionRefEmmmNS_9StringRefERSt3mapISt4pairIS7_mES7_St4lessISA_ESaIS9_IKSA_S7_EEE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) unnamed_addr #4 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %8 = alloca %"class.std::tuple.245", align 8    ; 4 uses
  %9 = alloca %"class.std::tuple.248", align 1    ; 3 uses
  %10 = alloca %"class.llvm::object::content_iterator.258", align 8 ; 7 uses
  %11 = alloca %"class.llvm::Expected.189", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %13 = alloca %"struct.std::pair.199", align 8   ; 5 uses
  %i.a = sub i64 %3, %2                           ; 3 uses
  %i.b = add i64 %i.a, %4
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i64, ptr %1, align 8
  %i.g = tail call i64 @llvm.bswap.i64(i64 %i.e)
  %i.h = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.i = icmp ult i64 %i.g, %i.h                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8)
  br i1 %i.j, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load i64, ptr %1, align 8
  %i.m = load i64, ptr %i.k, align 8
  %i.n = tail call i64 @llvm.bswap.i64(i64 %i.l)
  %i.o = tail call i64 @llvm.bswap.i64(i64 %i.m)
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.critedge.i, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %1, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.q = call ptr @_ZNSt8_Rb_treeIN4llvm6object10SectionRefESt4pairIKS2_NS0_11SmallVectorIS2_Lj1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZL15SectionRelocMap, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.q, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !94   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx = shl nuw nsw i64 %i.v, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.c

._crit_edge51:                                    ; preds = %._crit_edge, %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  ret void

bb.c:                                             ; preds = %.lr.ph50, %._crit_edge
  %.02449 = phi ptr [ %i.s, %.lr.ph50 ], [ %i.ao, %._crit_edge ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02449, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90, !noalias !433 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.02449, align 8, !tbaa !38, !noalias !433
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23, !noalias !433
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !433
  %i.af = call { i64, ptr } %i.ae(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 %.sroa.0.0.copyload.i.i) #24, !noalias !433, !inline_history !8 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { i64, ptr } %i.af, 1
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !90, !noalias !433 ; 2 uses
  %.sroa.0.0.copyload.i3.i = load i64, ptr %.02449, align 8, !tbaa !38, !noalias !433
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23, !noalias !433
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 280
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !433
  %i.am = call { i64, ptr } %i.al(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 %.sroa.0.0.copyload.i3.i) #24, !noalias !433, !inline_history !9
  %i.an = extractvalue { i64, ptr } %i.am, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 %i.ag, ptr %10, align 8
  store ptr %i.ah, ptr %i.x, align 8
  %.not.i.i.i.i33.not46 = icmp eq i64 %i.ag, %i.an
  br i1 %.not.i.i.i.i33.not46, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %.02449, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.w
  br i1 %.not, label %._crit_edge51, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %lhsv.i.i.i.i47 = phi i64 [ %lhsv.i.i.i.i, %bb.j ], [ %i.ag, %bb.c ]
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !113 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 312
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call { i64, ptr } %i.as(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 %lhsv.i.i.i.i47) #24, !inline_history !10 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0      ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call { i64, ptr } %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %.not.i.i.i = icmp eq i64 %i.au, %i.az
  br i1 %.not.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ba = extractvalue { i64, ptr } %i.at, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23, !noalias !434
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !434
  call void %i.bd(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.189") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 %i.au) #24, !inline_history !4
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.be = load i8, ptr %i.y, align 8, !noalias !435
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.d
  %i.bg = load i64, ptr %11, align 8, !tbaa !62, !noalias !435
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr null, ptr %11, align 8, !tbaa !62, !noalias !435
  br label %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit: ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %storemerge.i = phi ptr [ %i.bh, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ], [ null, %bb.d ]
  store ptr %storemerge.i, ptr %12, align 8, !tbaa !64, !alias.scope !435
  %i.bi = call { i32, ptr } @_ZN4llvm16errorToErrorCodeENS_5ErrorE(ptr nofree noundef nonnull align 8 dereferenceable(8) %12) #24 ; 2 uses
  %i.bj = extractvalue { i32, ptr } %i.bi, 0      ; 2 uses
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %_ZN4llvmL5errorESt10error_code.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit
  %i.bk = extractvalue { i32, ptr } %i.bi, 1      ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #24
  %i.bm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr nonnull @.str.1, i64 0, i1 noundef zeroext false) #24
  %i.bn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull @.str.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !23, !noalias !436
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !436
  call void %i.bq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i32 noundef %i.bj) #24, !inline_history !11
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.bs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull @.str.66) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bt = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #24
  call void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bt)
  call void @exit(i32 noundef 1) #30
  unreachable

_ZN4llvmL5errorESt10error_code.exit:              ; preds = %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit
  %i.bu = load ptr, ptr %12, align 8, !tbaa !64   ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvmL5errorESt10error_code.exit
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #24, !inline_history !5
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvmL5errorESt10error_code.exit, %bb.f
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !113 ; 2 uses
  %.sroa.0.0.copyload.i36 = load i64, ptr %10, align 8, !tbaa !38
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 304
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i64 %i.cc(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 %.sroa.0.0.copyload.i36) #24, !inline_history !12 ; 3 uses
  %.not27 = icmp uge i64 %i.cd, %i.a
  %i.ce = icmp ult i64 %i.cd, %i.b
  %or.cond = and i1 %.not27, %i.ce
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.cf = sub nuw i64 %i.cd, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !78
  store i64 %i.cf, ptr %i.z, align 8, !tbaa !99, !alias.scope !437
  %i.cg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapISt4pairIN4llvm9StringRefEmES2_St4lessIS3_ESaIS0_IKS3_S2_EEEixEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(24) %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm5ErrorD2Ev.exit
  %i.ch = load i8, ptr %i.y, align 8
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %bb.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr %11, align 8, !tbaa !62   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #24, !inline_history !6
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.h, %bb.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  %i.cn = load ptr, ptr %i.x, align 8, !tbaa !113 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 296
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %10) #24, !inline_history !13
  %lhsv.i.i.i.i = load i64, ptr %10, align 8      ; 2 uses
  %.not.i.i.i.i33.not = icmp eq i64 %lhsv.i.i.i.i, %i.an
  br i1 %.not.i.i.i.i33.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIN4llvm9StringRefENS0_8ArrayRefINS0_7support6detail31packed_endian_specific_integralIiLNS0_10endiannessE1ELm1ELm1EEEEESt4lessIS1_ESaISt4pairIKS1_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.269", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.248", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not13.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !77 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %1, align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i ] ; 5 uses
  %.0814.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i ]
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29
  %.fr.i.i.i.i.i.i = freeze i32 %i.f              ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.g = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.g, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.h = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i, %.thread.i.i.i.i.i.i
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i, %.thread.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i ], [ 16, %.thread.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0814.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread11.i.i.i ], [ %.015.i.i.i, %.thread.i.i.i.i.i.i ], [ %.015.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4llvm9StringRefENS0_8ArrayRefINS0_7support6detail31packed_endian_specific_integralIiLNS0_10endiannessE1ELm1ELm1EEEEESt4lessIS1_ESaISt4pairIKS1_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !438

_ZNSt3mapIN4llvm9StringRefENS0_8ArrayRefINS0_7support6detail31packed_endian_specific_integralIiLNS0_10endiannessE1ELm1ELm1EEEEESt4lessIS1_ESaISt4pairIKS1_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4llvm9StringRefENS0_8ArrayRefINS0_7support6detail31packed_endian_specific_integralIiLNS0_10endiannessE1ELm1ELm1EEEEESt4lessIS1_ESaISt4pairIKS1_S8_EEE11lower_boundERSC_.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !77 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.2.0.copyload.i.i.i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.m = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #29
  %.fr.i.i.i = freeze i32 %i.m                    ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %bb.c
  %i.n = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i
  br i1 %i.n, label %.critedge, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit:   ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %i.o = icmp slt i32 %.fr.i.i.i, 0
  br i1 %i.o, label %.critedge, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread

.critedge:                                        ; preds = %.thread.i.i.i, %bb.a, %_ZNSt3mapIN4llvm9StringRefENS0_8ArrayRefINS0_7support6detail31packed_endian_specific_integralIiLNS0_10endiannessE1ELm1ELm1EEEEESt4lessIS1_ESaISt4pairIKS1_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ], [ %.19.i.i.i, %_ZNSt3mapIN4llvm9StringRefENS0_8ArrayRefINS0_7support6detail31packed_endian_specific_integralIiLNS0_10endiannessE1ELm1ELm1EEEEESt4lessIS1_ESaISt4pairIKS1_S8_EEE11lower_boundERSC_.exit ], [ %.19.i.i.i, %.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %1, ptr %2, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.p = call ptr @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_NS0_8ArrayRefINS0_7support6detail31packed_endian_specific_integralIiLNS0_10endiannessE1ELm1ELm1EEEEEESt10_Select1stISB_ESt4lessIS1_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread: ; preds = %.thread.i.i.i, %.critedge, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit
  %.sroa.07.0 = phi ptr [ %i.p, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ], [ %.19.i.i.i, %.thread.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 48
  ret ptr %i.q
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZL23collectRelocatedSymbolsPKN4llvm6object10ObjectFileERKNS0_10SectionRefEmmmPNS_9StringRefES8_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address) %5, ptr nofree noundef readnone captures(address) %6) unnamed_addr #4 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %8 = alloca %"class.std::tuple.245", align 8    ; 4 uses
  %9 = alloca %"class.std::tuple.248", align 1    ; 3 uses
  %10 = alloca %"class.llvm::object::content_iterator.258", align 8 ; 7 uses
  %11 = alloca %"class.llvm::Expected.189", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  %i.b = add i64 %i.a, %4
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 16), align 8, !tbaa !56 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i64, ptr %1, align 8
  %i.g = tail call i64 @llvm.bswap.i64(i64 %i.e)
  %i.h = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.i = icmp ult i64 %i.g, %i.h                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8)
  br i1 %i.j, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load i64, ptr %1, align 8
  %i.m = load i64, ptr %i.k, align 8
  %i.n = tail call i64 @llvm.bswap.i64(i64 %i.l)
  %i.o = tail call i64 @llvm.bswap.i64(i64 %i.m)
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.critedge.i, label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SectionRelocMap, i64 8), %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %1, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.q = call ptr @_ZNSt8_Rb_treeIN4llvm6object10SectionRefESt4pairIKS2_NS0_11SmallVectorIS2_Lj1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZL15SectionRelocMap, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.q, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !94   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx = shl nuw nsw i64 %i.v, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not58 = icmp eq i32 %i.u, 0
  br i1 %.not58, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.c

._crit_edge62:                                    ; preds = %._crit_edge, %_ZNSt3mapIN4llvm6object10SectionRefENS0_11SmallVectorIS2_Lj1EEESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  ret void

bb.c:                                             ; preds = %.lr.ph61, %._crit_edge
  %.060 = phi ptr [ %5, %.lr.ph61 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.02859 = phi ptr [ %i.s, %.lr.ph61 ], [ %i.cq, %._crit_edge ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02859, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !90, !noalias !447 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.02859, align 8, !tbaa !38, !noalias !447
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23, !noalias !447
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !447
  %i.ae = call { i64, ptr } %i.ad(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 %.sroa.0.0.copyload.i.i) #24, !noalias !447, !inline_history !8 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, ptr } %i.ae, 1
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !90, !noalias !447 ; 2 uses
  %.sroa.0.0.copyload.i3.i = load i64, ptr %.02859, align 8, !tbaa !38, !noalias !447
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23, !noalias !447
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !447
  %i.al = call { i64, ptr } %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 %.sroa.0.0.copyload.i3.i) #24, !noalias !447, !inline_history !9
  %i.am = extractvalue { i64, ptr } %i.al, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 %i.af, ptr %10, align 8
  store ptr %i.ag, ptr %i.x, align 8
  %.not.i.i.i.i3654 = icmp eq i64 %i.af, %i.am
  %i.an = icmp eq ptr %.060, %6
  %or.cond5055 = select i1 %.not.i.i.i.i3654, i1 true, i1 %i.an
  br i1 %or.cond5055, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %lhsv.i.i.i.i57 = phi i64 [ %lhsv.i.i.i.i, %bb.j ], [ %i.af, %bb.c ]
  %.156 = phi ptr [ %.4.ph, %bb.j ], [ %.060, %bb.c ] ; 4 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !113 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 312
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call { i64, ptr } %i.ar(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i64 %lhsv.i.i.i.i57) #24, !inline_history !10 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call { i64, ptr } %i.aw(ptr noundef nonnull align 8 dereferenceable(48) %0) #24
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %.not.i.i.i = icmp eq i64 %i.at, %i.ay
  br i1 %.not.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.az = extractvalue { i64, ptr } %i.as, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23, !noalias !448
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !448
  call void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.189") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 %i.at) #24, !inline_history !4
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.bd = load i8, ptr %i.y, align 8, !noalias !449
  %i.be = trunc i8 %i.bd to i1
  br i1 %i.be, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.d
  %i.bf = load i64, ptr %11, align 8, !tbaa !62, !noalias !449
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr null, ptr %11, align 8, !tbaa !62, !noalias !449
  br label %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit: ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %storemerge.i = phi ptr [ %i.bg, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ], [ null, %bb.d ]
  store ptr %storemerge.i, ptr %12, align 8, !tbaa !64, !alias.scope !449
  %i.bh = call { i32, ptr } @_ZN4llvm16errorToErrorCodeENS_5ErrorE(ptr nofree noundef nonnull align 8 dereferenceable(8) %12) #24 ; 2 uses
  %i.bi = extractvalue { i32, ptr } %i.bh, 0      ; 2 uses
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %_ZN4llvmL5errorESt10error_code.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit
  %i.bj = extractvalue { i32, ptr } %i.bh, 1      ; 2 uses
  %i.bk = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #24
  %i.bl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr nonnull @.str.1, i64 0, i1 noundef zeroext false) #24
  %i.bm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull @.str.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !23, !noalias !450
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !450
  call void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %i.bi) #24, !inline_history !11
  %i.bq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull @.str.66) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bs = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #24
  call void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bs)
  call void @exit(i32 noundef 1) #30
  unreachable

_ZN4llvmL5errorESt10error_code.exit:              ; preds = %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit
  %i.bt = load ptr, ptr %12, align 8, !tbaa !64   ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvmL5errorESt10error_code.exit
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #24, !inline_history !5
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvmL5errorESt10error_code.exit, %bb.f
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !113 ; 2 uses
  %.sroa.0.0.copyload.i39 = load i64, ptr %10, align 8, !tbaa !38
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 304
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(48) %i.by, i64 %.sroa.0.0.copyload.i39) #24, !inline_history !12 ; 2 uses
  %.not30 = icmp uge i64 %i.cc, %i.a
  %i.cd = icmp ult i64 %i.cc, %i.b
  %or.cond = and i1 %.not30, %i.cd
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.156, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !78
  %i.ce = getelementptr inbounds nuw i8, ptr %.156, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm5ErrorD2Ev.exit
  %.2 = phi ptr [ %i.ce, %bb.g ], [ %.156, %_ZN4llvm5ErrorD2Ev.exit ]
  %i.cf = load i8, ptr %i.y, align 8
  %i.cg = trunc i8 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %11, align 8, !tbaa !62   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #24, !inline_history !6
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.h, %bb.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, %.lr.ph
  %.4.ph = phi ptr [ %.156, %.lr.ph ], [ %.2, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit ] ; 3 uses
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !113 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 296
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %10) #24, !inline_history !13
  %lhsv.i.i.i.i = load i64, ptr %10, align 8      ; 2 uses
  %.not.i.i.i.i36 = icmp eq i64 %lhsv.i.i.i.i, %i.am
  %i.cp = icmp eq ptr %.4.ph, %6
  %or.cond50 = select i1 %.not.i.i.i.i36, i1 true, i1 %i.cp
  br i1 %or.cond50, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %.1.lcssa = phi ptr [ %.060, %bb.c ], [ %.4.ph, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.cq = getelementptr inbounds nuw i8, ptr %.02859, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.w
  br i1 %.not, label %._crit_edge62, label %bb.c
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN4llvm9StringRefEZL11dumpCXXDataPKNS0_6object10ObjectFileEE18CatchableTypeArraySt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.a, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not5.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not5.i.i.i, label %.critedge, label %.lr.ph.i.i.i
end_hunk_1
