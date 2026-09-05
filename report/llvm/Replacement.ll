Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Replacement?download=true
inline.NumInlined: 2037
inline.NumDeleted: 938
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5clang7tooling12Replacements3addERKNS0_11ReplacementE:bb.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN4llvmplERKNS_5TwineES2_.exit97, label %_ZN4llvm5ErrorD2Ev.exit112

_ZN4llvmplERKNS_5TwineES2_.exit97:                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 80 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20
  store ptr %i.ao, ptr %6, align 8, !alias.scope !292
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !21, !alias.scope !292
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.as, ptr %i.av, align 8, !alias.scope !292
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !21, !alias.scope !292
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.aw, align 8, !tbaa !184, !alias.scope !292
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 5, ptr %i.ax, align 1, !tbaa !185, !alias.scope !292
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(34) %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.az = load i64, ptr %i.at, align 8, !tbaa !20
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !20
  store ptr %i.ay, ptr %8, align 8, !alias.scope !293
  %.sroa.23.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.az, ptr %.sroa.23.0..sroa_idx.i.i.i95, align 8, !tbaa !21, !alias.scope !293
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !alias.scope !293
  %.sroa.2.0..sroa_idx.i.i.i96 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.bb, ptr %.sroa.2.0..sroa_idx.i.i.i96, align 8, !tbaa !21, !alias.scope !293
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.bd, align 8, !tbaa !184, !alias.scope !293
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.be, align 1, !tbaa !185, !alias.scope !293
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !20 ; 2 uses
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZN4llvmplERKNS_5TwineES2_.exit97._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_ZN4llvmplERKNS_5TwineES2_.exit97._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit97
  %.pre = load ptr, ptr %7, align 8, !tbaa !26
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.g:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit97
  %i.bk = icmp eq i64 %i.bg, 0
  %.pre154 = load ptr, ptr %7, align 8, !tbaa !26 ; 3 uses
  br i1 %i.bk, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %5, align 8, !tbaa !26
  %bcmp.i.i98 = call i32 @bcmp(ptr %i.bl, ptr %.pre154, i64 %i.bg)
  %i.bm = icmp ne i32 %bcmp.i.i98, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit97._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.g, %bb.h
  %i.bn = phi ptr [ %.pre, %_ZN4llvmplERKNS_5TwineES2_.exit97._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre154, %bb.h ], [ %.pre154, %bb.g ] ; 2 uses
  %i.bo = phi i1 [ true, %_ZN4llvmplERKNS_5TwineES2_.exit97._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.bm, %bb.h ], [ false, %bb.g ]
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bn, %i.bp
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.br = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bu = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !21
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 3, ptr %i.b, align 4, !tbaa !191
  call void @_ZSt11make_uniqueIN5clang7tooling16ReplacementErrorEJNS1_17replacement_errorERKNS1_11ReplacementES6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.335") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.s

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bz = load ptr, ptr %2, align 8, !tbaa !26
  %i.ca = load i64, ptr %i.u, align 8, !tbaa !20
  %i.cb = load i32, ptr %i.p, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.cd = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 5, ptr %i.ce, align 8, !tbaa !184
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.cf, align 1, !tbaa !185
  store ptr %i.cc, ptr %13, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cd, ptr %i.cg, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ch = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.ci = load i64, ptr %i.at, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 5, ptr %i.cj, align 8, !tbaa !184
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.ck, align 1, !tbaa !185
  store ptr %i.ch, ptr %14, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ci, ptr %i.cl, align 8, !tbaa !21
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %12, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull align 8 dereferenceable(34) %14)
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(34) %12) #24
  %i.cm = load ptr, ptr %11, align 8, !tbaa !26
  store ptr %i.cm, ptr %10, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !20
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !29
  call void @_ZN5clang7tooling11ReplacementC1EN4llvm9StringRefEjjS3_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.bz, i64 %i.ca, i32 noundef %i.cb, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %10) #24
  %i.cq = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN4llvm5ErrorD2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.j
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !21
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #25
  br label %_ZN4llvm5ErrorD2Ev.exit111

_ZN4llvm5ErrorD2Ev.exit111:                       ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.cv = call ptr @_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull %.19.i.i.i) ; 0 uses
  %i.cw = call { ptr, i8 } @_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %9) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !291
  call void @_ZN5clang7tooling11ReplacementD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.s

_ZN4llvm5ErrorD2Ev.exit112:                       ; preds = %bb.f
  %i.cx = call { ptr, i8 } @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !291
  br label %bb.s

.critedge2:                                       ; preds = %bb.d, %_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EE11lower_boundERKS2_.exit, %bb.e
  %.08.lcssa.i.i.i150 = phi ptr [ %.19.i.i.i, %bb.e ], [ %.19.i.i.i, %_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EE11lower_boundERKS2_.exit ], [ %i.ac, %bb.d ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !161 ; 2 uses
  %i.da = icmp eq ptr %.08.lcssa.i.i.i150, %i.cz
  br i1 %i.da, label %_ZN4llvm5ErrorD2Ev.exit113, label %bb.k

_ZN4llvm5ErrorD2Ev.exit113:                       ; preds = %.critedge2
  %i.db = call { ptr, i8 } @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !291
  br label %bb.s

bb.k:                                             ; preds = %.critedge2
  %i.dc = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i150) #26 ; 4 uses
  %.val66 = load i32, ptr %i.p, align 8, !tbaa !23 ; 3 uses
  %.val67 = load i32, ptr %i.w, align 4, !tbaa !24
  %i.dd = getelementptr i8, ptr %i.dc, i64 64
  %.val68 = load i32, ptr %i.dd, align 4, !tbaa !23 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 68
  %.val69 = load i32, ptr %i.de, align 4, !tbaa !24
  %i.df = add i32 %.val67, %.val66                ; 2 uses
  %i.dg = icmp ugt i32 %i.df, %.val68
  %i.dh = add i32 %.val69, %.val68
  %i.di = icmp ult i32 %.val66, %i.dh
  %i.dj = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %i.dj, label %bb.l, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k
  %17 = call { ptr, i8 } @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit116

bb.l:                                             ; preds = %bb.k
  %18 = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.dc) #26 ; 2 uses
  br label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN5clang7tooling11ReplacementEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceISt23_Rb_tree_const_iteratorIN5clang7tooling11ReplacementEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.l, %bb.m
  %.sroa.0128.0 = phi ptr [ %i.dk, %bb.m ], [ %i.dc, %bb.l ] ; 4 uses
  %.not153 = icmp eq ptr %.sroa.0128.0, %i.cz
  br i1 %.not153, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN5clang7tooling11ReplacementEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0128.0) #26 ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 64
  %.val64 = load i32, ptr %i.dl, align 4, !tbaa !23 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 68
  %.val65 = load i32, ptr %i.dm, align 4, !tbaa !24
  %i.dn = icmp ugt i32 %i.df, %.val64
  %i.do = add i32 %.val65, %.val64
  %i.dp = icmp ult i32 %.val66, %i.do
  %i.dq = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %i.dq, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN5clang7tooling11ReplacementEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %bb.n, !llvm.loop !285

bb.n:                                             ; preds = %bb.m, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN5clang7tooling11ReplacementEElEvRT_T0_St26bidirectional_iterator_tag.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i64 24, i1 false)
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !161
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !174
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.du, align 8, !tbaa !175
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE22_M_insert_range_uniqueISt23_Rb_tree_const_iteratorIS2_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nonnull %.sroa.0128.0, ptr %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZNK5clang7tooling12Replacements23mergeIfOrderIndependentERKNS0_11ReplacementE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 8             ; 2 uses
  %i.dx = trunc i8 %i.dw to i1                    ; 2 uses
  br i1 %i.dx, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.o

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.dy = load i64, ptr %16, align 8, !tbaa !295, !noalias !294
  %i.dz = inttoptr i64 %i.dy to ptr
  store ptr null, ptr %16, align 8, !tbaa !295, !noalias !294
  store ptr %i.dz, ptr %0, align 8, !tbaa !291, !alias.scope !294
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_ESA_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull %.sroa.0128.0, ptr %18)
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !161
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE22_M_insert_range_uniqueISt23_Rb_tree_const_iteratorIS2_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %i.eb, ptr nonnull %i.ec)
  %.pre155 = load i8, ptr %i.dv, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ed = phi i8 [ %.pre155, %bb.o ], [ %i.dw, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !176
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %16, ptr noundef %i.eg)
  br label %_ZN4llvm8ExpectedIN5clang7tooling12ReplacementsEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.eh = load ptr, ptr %16, align 8, !tbaa !295  ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i115, label %_ZN4llvm8ExpectedIN5clang7tooling12ReplacementsEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.r
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !156
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.eh) #24, !inline_history !288
  br label %_ZN4llvm8ExpectedIN5clang7tooling12ReplacementsEED2Ev.exit

_ZN4llvm8ExpectedIN5clang7tooling12ReplacementsEED2Ev.exit: ; preds = %bb.q, %bb.r, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !176
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br i1 %i.dx, label %bb.s, label %_ZN4llvm5ErrorD2Ev.exit116

_ZN4llvm5ErrorD2Ev.exit116:                       ; preds = %.preheader.preheader, %_ZN4llvm8ExpectedIN5clang7tooling12ReplacementsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !291
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit116, %_ZN4llvm8ExpectedIN5clang7tooling12ReplacementsEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit113, %_ZN4llvm5ErrorD2Ev.exit112, %_ZN4llvm5ErrorD2Ev.exit111, %bb.i
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !26 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.et = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZN5clang7tooling11ReplacementD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !21
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #25
  br label %_ZN5clang7tooling11ReplacementD2Ev.exit

_ZN5clang7tooling11ReplacementD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang7tooling11ReplacementD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3setIN5clang7tooling11ReplacementESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %1) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !21
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !21
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E.exit

_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 104) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !175
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !175
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7tooling32calculateRangesAfterReplacementsERKNS0_12ReplacementsERKSt6vectorINS0_5RangeESaIS5_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.177") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.std::vector.177", align 16  ; 8 uses
  %4 = alloca %"class.std::vector.177", align 8   ; 4 uses
  %5 = alloca %"class.clang::tooling::Replacements", align 8 ; 10 uses
  %6 = alloca %"class.llvm::Error", align 8
  %7 = alloca %"class.clang::tooling::Replacement", align 8 ; 8 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.clang::tooling::Replacements", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !197    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorIN5clang7tooling5RangeEE8allocateEmPKv.exit.i.i.i.i, !prof !198

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN5clang7tooling5RangeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  %.pre = load ptr, ptr %2, align 8, !tbaa !199
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !199
  br label %_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorIN5clang7tooling5RangeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre18, %_ZNSt15__new_allocatorIN5clang7tooling5RangeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN5clang7tooling5RangeEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIN5clang7tooling5RangeEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !197
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !200
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.o, ptr %.09.i.i.i.i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN5clang7tooling5RangeESaIS2_EEC2EmRKS3_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !196
  call fastcc void @_ZL20combineAndSortRangesSt6vectorIN5clang7tooling5RangeESaIS2_EE(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr nofree noundef align 8 dereferenceable(24) %4)
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EEC2ERKS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #25
  br label %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EEC2ERKS4_.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !175
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EED2Ev.exit
  %i.u = load <2 x ptr>, ptr %3, align 16, !tbaa !199
  store <2 x ptr> %i.u, ptr %0, align 8, !tbaa !199
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !200
  store ptr %i.x, ptr %i.v, align 8, !tbaa !200
  br label %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EED2Ev.exit10

bb.e:                                             ; preds = %_ZNSt6vectorIN5clang7tooling5RangeESaIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !187
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !176
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !175
  %i.ad = load ptr, ptr %3, align 16, !tbaa !199  ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199 ; 2 uses
  %.not16 = icmp eq ptr %i.ad, %i.af
  br i1 %.not16, label %.loopexit, label %_ZN4llvm5ErrorD2Ev.exit.lr.ph

_ZN4llvm5ErrorD2Ev.exit.lr.ph:                    ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm5ErrorD2Ev.exit.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.013.017 = phi ptr [ %i.ad, %_ZN4llvm5ErrorD2Ev.exit.lr.ph ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !161 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.as = load i32, ptr %.sroa.013.017, align 4, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.av = zext i32 %i.au to i64
end_hunk_0
