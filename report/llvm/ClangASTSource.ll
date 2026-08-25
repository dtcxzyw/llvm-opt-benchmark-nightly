Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangASTSource?download=true
begin_hunk_0_@_ZN12lldb_private14ClangASTSource30FindExternalVisibleDeclsByNameEPKN5clang11DeclContextENS1_15DeclarationNameES4_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_ZN5clang17ExternalASTSource32SetNoExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameE(ptr noundef %1, i64 %2) #22 ; 0 uses
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %i.e = load i64, ptr %4, align 8, !tbaa !613    ; 9 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %.not.i = icmp eq i32 %i.g, 7
  br i1 %.not.i, label %bb.d, label %_ZNK5clang15DeclarationName11getNameKindEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %i.e, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i32, ptr %i.i, align 8, !tbaa !615
  %spec.select.i.i = call noundef i32 @llvm.umin.i32(i32 %i.j, i32 3)
  %i.k = or disjoint i32 %spec.select.i.i, 8
  br label %_ZNK5clang15DeclarationName11getNameKindEv.exit

_ZNK5clang15DeclarationName11getNameKindEv.exit:  ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.g, %bb.c ]
  switch i32 %.0.i, label %bb.k [
    i32 0, label %bb.e
    i32 8, label %bb.j
    i32 5, label %bb.j
    i32 10, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 11, label %bb.h
    i32 3, label %bb.j
    i32 4, label %bb.j
  ]

bb.e:                                             ; preds = %_ZNK5clang15DeclarationName11getNameKindEv.exit
  %i.l = and i64 %i.e, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %i.e, -8                         ; 2 uses
  %.not3346 = icmp eq i64 %i.n, 0
  %.not33 = or i1 %i.m, %.not3346
  br i1 %.not33, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32
  %i.r = lshr i32 %i.q, 9
  %i.s = and i32 %i.r, 65535                      ; 2 uses
  %i.t = icmp eq i32 %i.s, 65534
  %i.u = icmp samesign ult i32 %i.s, 37
  %.not34 = or i1 %i.u, %i.t
  br i1 %.not34, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e
  %i.v = call i64 @_ZN5clang17ExternalASTSource32SetNoExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameE(ptr noundef %1, i64 %i.e) #22 ; 0 uses
  br label %bb.w

bb.g:                                             ; preds = %_ZNK5clang15DeclarationName11getNameKindEv.exit
  %i.w = call i64 @_ZN5clang17ExternalASTSource32SetNoExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameE(ptr noundef %1, i64 %i.e) #22 ; 0 uses
  br label %bb.w

bb.h:                                             ; preds = %_ZNK5clang15DeclarationName11getNameKindEv.exit, %_ZNK5clang15DeclarationName11getNameKindEv.exit, %_ZNK5clang15DeclarationName11getNameKindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !617
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !618
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.z, align 4, !tbaa !619
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53
  store ptr %i.ab, ptr %7, align 8, !tbaa !620
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.ac, align 8, !tbaa !621
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.af = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !626 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 1, ptr %i.ag, align 8, !tbaa !568, !noalias !623
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 1, ptr %i.ah, align 4, !tbaa !571, !noalias !623
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEENS3_19CompilerDeclContextEESaIS7_EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.af, align 8, !tbaa !12, !noalias !623
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !noalias !623
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !45, !alias.scope !623
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !629, !alias.scope !623
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.e, ptr %i.aj, align 8, !tbaa !631
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %1, ptr %i.ak, align 8, !tbaa !632
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.am, ptr %i.al, align 8, !tbaa !617
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 0, ptr %i.an, align 8, !tbaa !618
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 5, ptr %i.ao, align 4, !tbaa !619
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !648
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 200
  store ptr null, ptr %i.aq, align 8, !tbaa !592
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 208
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 216
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.at, i8 0, i64 11, i1 false)
  call void @_ZN12lldb_private14ClangASTSource19FindObjCMethodDeclsERNS_17NameSearchContextE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(235) %7)
  %.sroa.011.0.copyload = load i64, ptr %4, align 8, !tbaa !631
  %i.au = load ptr, ptr %6, align 8, !tbaa !617
  %i.av = load i32, ptr %i.y, align 8, !tbaa !618
  %i.aw = zext i32 %i.av to i64
  %i.ax = call i64 @_ZN5clang17ExternalASTSource30SetExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameEN4llvm8ArrayRefIPNS_9NamedDeclEEE(ptr noundef %1, i64 %.sroa.011.0.copyload, ptr %i.au, i64 %i.aw) #22 ; 0 uses
  %i.ay = load i32, ptr %i.y, align 8, !tbaa !618
  %i.az = icmp ne i32 %i.ay, 0
  call void @_ZN12lldb_private17NameSearchContextD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ba = load ptr, ptr %6, align 8, !tbaa !617   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.x
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ba) #22
  br label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj1EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj1EED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.w

bb.j:                                             ; preds = %_ZNK5clang15DeclarationName11getNameKindEv.exit, %_ZNK5clang15DeclarationName11getNameKindEv.exit, %_ZNK5clang15DeclarationName11getNameKindEv.exit, %_ZNK5clang15DeclarationName11getNameKindEv.exit
  %i.bc = call i64 @_ZN5clang17ExternalASTSource32SetNoExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameE(ptr noundef %1, i64 %i.e) #22 ; 0 uses
  br label %bb.w

bb.k:                                             ; preds = %bb.f, %_ZNK5clang15DeclarationName11getNameKindEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !14, !range !649, !noundef !454
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %5, align 8, !tbaa !650
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre53 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !651
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !651 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %5, align 8, !tbaa !650   ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !47
  %i.bl = icmp eq i8 %i.bk, 36
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.bd, align 8, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bm = call i64 @_ZN5clang17ExternalASTSource32SetNoExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameE(ptr noundef %1, i64 %i.e) #22 ; 0 uses
  br label %bb.w

bb.p:                                             ; preds = %._crit_edge, %bb.n
  %i.bn = phi i64 [ %.pre53, %._crit_edge ], [ %i.bh, %bb.n ]
  %i.bo = phi ptr [ %.pre, %._crit_edge ], [ %i.bj, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN12lldb_private11ConstStringC1EN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr %i.bo, i64 %i.bn) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bp = load ptr, ptr %8, align 8, !tbaa !652   ; 7 uses
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !654
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !592 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bs, %bb.p ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bt, %bb.p ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !654
  %i.bw = icmp ult ptr %i.bv, %i.bp               ; 2 uses
  %.19.i.i.i = select i1 %i.bw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.bw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !655 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !656

_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.bx = icmp eq ptr %.19.i.i.i, %i.bt
  br i1 %i.bx, label %.lr.ph.i.i.i37.preheader, label %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE4findERKS1_.exit

_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !654
  %i.ca = icmp ult ptr %i.bp, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i.i37.preheader, label %bb.q

.lr.ph.i.i.i37.preheader:                         ; preds = %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE4findERKS1_.exit
  br label %.lr.ph.i.i.i37

bb.q:                                             ; preds = %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE4findERKS1_.exit
  %.sroa.05.0.copyload = load i64, ptr %4, align 8, !tbaa !631
  %i.cb = call i64 @_ZN5clang17ExternalASTSource32SetNoExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameE(ptr noundef %1, i64 %.sroa.05.0.copyload) #22 ; 0 uses
  br label %bb.v

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i37 ], [ %i.bs, %.lr.ph.i.i.i37.preheader ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !654 ; 2 uses
  %i.ce = icmp ult ptr %i.bp, %i.cd               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ce, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !655 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i38, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37, !llvm.loop !658

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37
  br i1 %i.ce, label %._crit_edge.thread.i.i.i, label %bb.s

._crit_edge.thread.i.i.i:                         ; preds = %bb.p, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.bt, %bb.p ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !50
  %i.ch = icmp eq ptr %.019.lcssa29.i.i.i, %i.cg
  br i1 %i.ch, label %select.unfold.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ci = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !654
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i
  %i.cj = phi ptr [ %.pre.i.i, %bb.r ], [ %i.cd, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.r ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ck = icmp ult ptr %i.cj, %i.bp
  br i1 %i.ck, label %select.unfold.i.i, label %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

select.unfold.i.i:                                ; preds = %bb.s, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.s ] ; 3 uses
  %i.cl = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.bt
  br i1 %i.cl, label %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %select.unfold.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !654
  %i.co = icmp ult ptr %i.bp, %i.cn
  br label %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.t, %select.unfold.i.i
  %i.cp = phi i1 [ %i.co, %bb.t ], [ true, %select.unfold.i.i ]
  %i.cq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.bp, ptr %i.cr, align 8, !tbaa !654
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bt) #22
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !52
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !52
  br label %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %bb.s, %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.cv, ptr %9, align 8, !tbaa !617
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.cw, align 8, !tbaa !618
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 4, ptr %i.cx, align 4, !tbaa !619
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !53
  %.sroa.02.0.copyload = load i64, ptr %4, align 8, !tbaa !631
  store ptr %i.cz, ptr %10, align 8, !tbaa !620
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.da, align 8, !tbaa !621
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dd = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !662 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 1, ptr %i.de, align 8, !tbaa !568, !noalias !659
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 1, ptr %i.df, align 4, !tbaa !571, !noalias !659
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEENS3_19CompilerDeclContextEESaIS7_EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dd, align 8, !tbaa !12, !noalias !659
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i8 0, i64 24, i1 false), !noalias !659
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !45, !alias.scope !659
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !629, !alias.scope !659
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %.sroa.02.0.copyload, ptr %i.dh, align 8, !tbaa !631
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.di, align 8, !tbaa !632
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !617
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 0, ptr %i.dl, align 8, !tbaa !618
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 60
  store i32 5, ptr %i.dm, align 4, !tbaa !619
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 3 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !648
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 200
  store ptr null, ptr %i.do, align 8, !tbaa !592
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dr, i8 0, i64 11, i1 false)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 248
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(235) %10) #22
  %.sroa.01.0.copyload = load i64, ptr %4, align 8, !tbaa !631
  %i.dv = load ptr, ptr %9, align 8, !tbaa !617
  %i.dw = load i32, ptr %i.cw, align 8, !tbaa !618
  %i.dx = zext i32 %i.dw to i64
  %i.dy = call i64 @_ZN5clang17ExternalASTSource30SetExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameEN4llvm8ArrayRefIPNS_9NamedDeclEEE(ptr noundef %1, i64 %.sroa.01.0.copyload, ptr %i.dv, i64 %i.dx) #22 ; 0 uses
  %i.dz = call noundef i64 @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ea = load i32, ptr %i.cw, align 8, !tbaa !618
  %i.eb = icmp ne i32 %i.ea, 0
  call void @_ZN12lldb_private17NameSearchContextD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ec = load ptr, ptr %9, align 8, !tbaa !617   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cv
  br i1 %i.ed, label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj4EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  call void @free(ptr noundef %i.ec) #22
  br label %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj4EED2Ev.exit: ; preds = %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EE6insertERKS1_.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj4EED2Ev.exit, %bb.q
  %.1 = phi i1 [ false, %bb.q ], [ %i.eb, %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj4EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %bb.v, %bb.o, %bb.j, %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj1EED2Ev.exit, %bb.g
  %.2 = phi i1 [ %.1, %bb.v ], [ false, %bb.o ], [ false, %.critedge ], [ false, %bb.g ], [ %i.az, %_ZN4llvm11SmallVectorIPN5clang9NamedDeclELj1EED2Ev.exit ], [ false, %bb.j ]
  %i.ee = load ptr, ptr %5, align 8, !tbaa !650   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !47
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.3 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ]
  ret i1 %.3
}

declare i64 @_ZN5clang17ExternalASTSource32SetNoExternalVisibleDeclsForNameEPKNS_11DeclContextENS_15DeclarationNameE(ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private14ClangASTSource19FindObjCMethodDeclsERNS_17NameSearchContextE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(235) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::formatv_object.1628", align 8 ; 14 uses
  %3 = alloca %"class.llvm::formatv_object.1628", align 8 ; 14 uses
  %4 = alloca %"class.llvm::formatv_object.1621", align 8 ; 22 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.lldb_private::ClangASTImporter::DeclOrigin", align 8 ; 6 uses
  %6 = alloca %"class.lldb_private::StreamString", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.clang::Selector", align 8   ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.lldb_private::ConstString", align 8 ; 6 uses
  %13 = alloca %"class.lldb_private::SymbolContextList", align 8 ; 14 uses
  %14 = alloca %"struct.lldb_private::ModuleFunctionSearchOptions", align 2 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.lldb_private::StreamString", align 8 ; 11 uses
  %17 = alloca %"class.lldb_private::ConstString", align 8 ; 4 uses
  %18 = alloca %"class.lldb_private::ConstString", align 8 ; 4 uses
  %19 = alloca %"class.lldb_private::SymbolContextList", align 8 ; 7 uses
  %20 = alloca %"class.lldb_private::CompilerDeclContext", align 8 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %22 = alloca %"class.std::shared_ptr.1304", align 8 ; 6 uses
  %23 = alloca %"class.lldb_private::ConstString", align 8 ; 4 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN12lldb_private14ClangASTSource16FindCompleteTypeEPKN5clang7TagDeclE:bb.a

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i.i116:     ; preds = %bb.au, %bb.at
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef 72) #24
  br label %_ZNSt14_Optional_baseIN12lldb_private11LanguageSetELb0ELb0EED2Ev.exit.i114

_ZNSt14_Optional_baseIN12lldb_private11LanguageSetELb0ELb0EED2Ev.exit.i114: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i.i.i.i116, %bb.as, %bb.ar, %_ZN12lldb_private11TypeResultsD2Ev.exit113
  %i.hi = load ptr, ptr %9, align 8, !tbaa !785   ; 3 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i115, label %_ZN12lldb_private9TypeQueryD2Ev.exit117, label %bb.av

bb.av:                                            ; preds = %_ZNSt14_Optional_baseIN12lldb_private11LanguageSetELb0ELb0EED2Ev.exit.i114
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !788
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #24
  br label %_ZN12lldb_private9TypeQueryD2Ev.exit117

_ZN12lldb_private9TypeQueryD2Ev.exit117:          ; preds = %_ZNSt14_Optional_baseIN12lldb_private11LanguageSetELb0ELb0EED2Ev.exit.i114, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  switch i32 %.972, label %.thread161 [
    i32 10, label %bb.aw
    i32 0, label %bb.aw
  ]

.thread161:                                       ; preds = %_ZNSt12__shared_ptrISt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEENS3_19CompilerDeclContextEESaIS7_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN12lldb_private9TypeQueryD2Ev.exit117
  %.14.ph = phi ptr [ %.12, %_ZN12lldb_private9TypeQueryD2Ev.exit117 ], [ %.7, %_ZNSt12__shared_ptrISt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEENS3_19CompilerDeclContextEESaIS7_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrISt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEENS3_19CompilerDeclContextEESaIS7_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN12lldb_private9TypeQueryD2Ev.exit117, %_ZN12lldb_private9TypeQueryD2Ev.exit117, %.thread161
  %i.ho = phi ptr [ %.14.ph, %.thread161 ], [ null, %_ZN12lldb_private9TypeQueryD2Ev.exit117 ], [ null, %_ZN12lldb_private9TypeQueryD2Ev.exit117 ], [ null, %_ZNSt12__shared_ptrISt6vectorISt4pairISt10shared_ptrIN12lldb_private6ModuleEENS3_19CompilerDeclContextEESaIS7_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret ptr %i.ho
}

declare void @_ZN12lldb_private16ClangASTImporter15GetNamespaceMapEPKN5clang13NamespaceDeclE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.854") align 8, ptr noundef nonnull align 8 dereferenceable(768), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK12lldb_private3Log10GetVerboseEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare ptr @_ZNK12lldb_private19CompilerDeclContext7GetNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN12lldb_private9TypeQueryC1ERKNS_19CompilerDeclContextENS_11ConstStringENS_16TypeQueryOptionsE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), ptr, i32 noundef) unnamed_addr #3

declare void @_ZN12lldb_private6Module9FindTypesERKNS_9TypeQueryERNS_11TypeResultsE(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN12lldb_private4Type19GetFullCompilerTypeEv(ptr dead_on_unwind writable sret(%"class.lldb_private::CompilerType") align 8, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN12lldb_private9ClangUtil11IsClangTypeERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare i64 @_ZN12lldb_private9ClangUtil11GetQualTypeERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN12lldb_private15TypeSystemClang15GetCompleteDeclEPN5clang10ASTContextEPNS1_4DeclE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #9

declare void @_ZN12lldb_private9TypeQueryC1ERKNS_12CompilerDeclENS_16TypeQueryOptionsE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #3

declare void @_ZNK12lldb_private10ModuleList9FindTypesEPNS_6ModuleERKNS_9TypeQueryERNS_11TypeResultsE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private14ClangASTSource12CompleteTypeEPN5clang7TagDeclE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::formatv_object.1498", align 8 ; 19 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.(anonymous namespace)::ScopedLexicalDeclEraser", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !793
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #22
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #22
  %i.e = and i64 %i.d, 1024
  %.not6.i.i = icmp eq i64 %i.e, 0
  br i1 %.not6.i.i, label %.critedge, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !650
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.k = load i64, ptr %i.j, align 8, !tbaa !651
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !613  ; 2 uses
  %i.n = and i64 %i.m, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = and i64 %i.m, -8                         ; 2 uses
  %.not2.i = icmp eq i64 %i.p, 0
  %.not.i = or i1 %i.o, %.not2.i
  br i1 %.not.i, label %_ZNK5clang9NamedDecl7getNameEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !672  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.s, align 8, !tbaa !675
  %i.v = and i64 %i.u, 4294967295
  br label %_ZNK5clang9NamedDecl7getNameEv.exit

_ZNK5clang9NamedDecl7getNameEv.exit:              ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.v, %bb.c ], [ 0, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ]
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.c ], [ @.str.57, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.w = ptrtoint ptr %i.a to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr @.str.3, ptr %2, align 8, !tbaa !654, !alias.scope !794
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 76, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !631, !alias.scope !794
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !682, !alias.scope !794
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !631, !alias.scope !794
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.z, align 8, !tbaa !684, !alias.scope !794
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store i64 %i.w, ptr %i.ab, align 8, !tbaa !799, !alias.scope !794
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store ptr %i.i, ptr %i.ac, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.k, ptr %.sroa.435.0..sroa_idx, align 8
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.aa to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %i.x, align 8, !alias.scope !794
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !794
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRPN5clang7TagDeclEEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !794
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !794
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i.i, align 8, !alias.scope !794
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %i.af, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !47, !alias.scope !794
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr nonnull @.str, i64 95, ptr nonnull @__func__._ZN12lldb_private14ClangASTSource12CompleteTypeEPN5clang7TagDeclE, i64 12, ptr noundef nonnull align 8 dereferenceable(33) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !793
  call void @_ZN12lldb_private9ClangUtil8DumpDeclB5cxx11EPKN5clang4DeclE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.ag) #22
  call void @_ZN12lldb_private3Log6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN4llvm9StringRefES9_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr nonnull @.str, i64 95, ptr nonnull @__func__._ZN12lldb_private14ClangASTSource12CompleteTypeEPN5clang7TagDeclE, i64 12, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ah = load ptr, ptr %3, align 8, !tbaa !650   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !793
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ], [ %1, %bb.b ] ; 7 uses
  %.not43 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.a ], [ true, %bb.b ]
  %.0.i.i42 = phi ptr [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.a ], [ null, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !592 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ap, %.critedge ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.aq, %.critedge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !801
  %i.at = icmp ult ptr %i.as, %i.am               ; 2 uses
  %.19.i.i.i = select i1 %i.at, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !655 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !802

_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i, %i.aq
  br i1 %i.au, label %.lr.ph.i.i.i18.preheader, label %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE4findERKS3_.exit

_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !801
  %i.ax = icmp ult ptr %i.am, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i18.preheader, label %bb.l

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader, %.lr.ph.i.i.i18
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i18 ], [ %i.ap, %.lr.ph.i.i.i18.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !801 ; 2 uses
  %i.ba = icmp ult ptr %i.am, %i.az               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ba, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !655 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i19, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i18, !llvm.loop !803

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i18
  br i1 %i.ba, label %._crit_edge.thread.i.i.i, label %bb.e

._crit_edge.thread.i.i.i:                         ; preds = %.critedge, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.aq, %.critedge ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !50
  %i.bd = icmp eq ptr %.019.lcssa29.i.i.i, %i.bc
  br i1 %i.bd, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.be = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !801
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.bf = phi ptr [ %.pre.i.i, %bb.d ], [ %i.az, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.d ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bg = icmp ult ptr %i.bf, %i.am
  br i1 %i.bg, label %select.unfold.i.i, label %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertEOS3_.exit

select.unfold.i.i:                                ; preds = %bb.e, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.e ] ; 3 uses
  %i.bh = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.aq
  br i1 %i.bh, label %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !801
  %i.bk = icmp ult ptr %i.am, %i.bj
  br label %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold.i.i
  %i.bl = phi i1 [ %i.bk, %bb.f ], [ true, %select.unfold.i.i ]
  %i.bm = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.am, ptr %i.bn, align 8, !tbaa !801
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bl, ptr noundef nonnull %i.bm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aq) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !52
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !52
  %.pre47 = load ptr, ptr %i.a, align 8, !tbaa !793
  br label %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertEOS3_.exit

_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertEOS3_.exit: ; preds = %bb.e, %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.br = phi ptr [ %i.am, %bb.e ], [ %.pre47, %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.an, ptr %4, align 8, !tbaa !804
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !806
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !543
  %i.bv = call noundef zeroext i1 @_ZN12lldb_private16ClangASTImporter15CompleteTagDeclEPN5clang7TagDeclE(ptr noundef nonnull align 8 dereferenceable(768) %i.bu, ptr noundef %i.br) #22
  br i1 %i.bv, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertEOS3_.exit
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !793
  %i.bx = call noundef ptr @_ZN12lldb_private14ClangASTSource16FindCompleteTypeEPKN5clang7TagDeclE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.bw) ; 2 uses
  %.not13 = icmp eq ptr %i.bx, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !543
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !793
  %i.ca = call noundef zeroext i1 @_ZN12lldb_private16ClangASTImporter25CompleteTagDeclWithOriginEPN5clang7TagDeclES3_(ptr noundef nonnull align 8 dereferenceable(768) %i.by, ptr noundef %i.bz, ptr noundef nonnull %i.bx) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertEOS3_.exit
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !793
  call void @_ZN12lldb_private9ClangUtil8DumpDeclB5cxx11EPKN5clang4DeclE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.cb) #22
  call void @_ZN12lldb_private3Log6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN4llvm9StringRefES9_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i42, ptr nonnull @.str, i64 95, ptr nonnull @__func__._ZN12lldb_private14ClangASTSource12CompleteTypeEPN5clang7TagDeclE, i64 12, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.cc = load ptr, ptr %5, align 8, !tbaa !650   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.j
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !47
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.i
  %i.ch = load ptr, ptr %4, align 8, !tbaa !808, !nonnull !454, !align !455
  %i.ci = call noundef i64 @_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE4findERKS3_.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private3Log6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN4llvm9StringRefES9_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::tuple.1510", align 8   ; 8 uses
  %8 = alloca %"class.llvm::support::detail::FormatFunctor.1513", align 8 ; 6 uses
  %9 = alloca %"class.llvm::formatv_object.1509", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !815
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !670, !noalias !815
  %i.b = load ptr, ptr %6, align 8, !tbaa !650, !noalias !815 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i.i

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !651, !noalias !815 ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false), !noalias !815
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %6, align 8, !tbaa !650, !noalias !815
  store i64 0, ptr %i.e, align 8, !tbaa !651, !noalias !815
  store i8 0, ptr %i.c, align 8, !tbaa !47, !noalias !815
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !670, !alias.scope !816, !noalias !815
  br label %bb.b

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !47, !noalias !815 ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !tbaa !47, !noalias !815
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !651, !noalias !815 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !650, !noalias !815
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !651, !noalias !815
  store i8 0, ptr %i.c, align 8, !tbaa !47, !noalias !815
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !670, !alias.scope !819, !noalias !815
  %i.n = icmp eq ptr %i.b, %i.a
  br i1 %i.n, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i._crit_edge.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i._crit_edge.i: ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i.i
  %.pre.i = add nuw nsw i64 %.pre.i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i._crit_edge.i, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i._crit_edge.i ], [ %i.h, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i ]
  %i.o = phi ptr [ %i.m, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i._crit_edge.i ], [ %i.j, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i ] ; 3 uses
  %i.p = phi ptr [ %i.l, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i._crit_edge.i ], [ %i.i, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i ]
  %i.q = phi i64 [ %.pre.i.i, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i._crit_edge.i ], [ %i.f, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i.i ] ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %.pre-phi.i, i1 false), !noalias !815
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i.i
  store ptr %i.b, ptr %7, align 8, !tbaa !650, !alias.scope !819, !noalias !815
  store i64 %i.k, ptr %i.m, align 8, !tbaa !47, !alias.scope !819, !noalias !815
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.s = phi ptr [ %i.o, %bb.b ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.t = phi ptr [ %i.p, %bb.b ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.u = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.v = phi ptr [ %i.o, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !651, !alias.scope !819, !noalias !815
  store i64 0, ptr %i.t, align 8, !tbaa !651, !noalias !821
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !815
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_ZN4llvm9StringRefC2EPKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !noalias !815
  br label %_ZN4llvm9StringRefC2EPKc.exit.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i:                ; preds = %bb.c, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i ]
end_hunk_1
begin_hunk_2_@_ZN12lldb_private14ClangASTSource24GetCompleteObjCInterfaceEPKN5clang17ObjCInterfaceDeclE:bb.a

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bn, align 8, !tbaa !568
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !571
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22, !inline_history !837
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22, !inline_history !837
  br label %_ZNSt12__shared_ptrIN12lldb_private4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i20 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i20, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bq, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cb, label %bb.y, label %_ZNSt12__shared_ptrIN12lldb_private4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !585

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #22
  br label %_ZNSt12__shared_ptrIN12lldb_private4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN12lldb_private13TaggedASTTypeILj1EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e, %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit
  %.4 = phi ptr [ null, %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit ], [ %.2, %_ZNSt12__shared_ptrIN12lldb_private4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %bb.e ]
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cc, align 8, !tbaa !568
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !571
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !741
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !741
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i22 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i22, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.ae:                                            ; preds = %bb.ac
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i24 = phi i32 [ %i.cf, %bb.ad ], [ %i.cp, %bb.ae ]
  %i.cq = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.cq, label %bb.af, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !585

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.af
  ret ptr %.4
}

declare void @_ZN12lldb_private16ClangASTImporter13SetDeclOriginEPKN5clang4DeclEPS2_(ptr noundef nonnull align 8 dereferenceable(768), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN12lldb_private16ClangASTImporter25CompleteObjCInterfaceDeclEPN5clang17ObjCInterfaceDeclE(ptr noundef nonnull align 8 dereferenceable(768), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang17ObjCInterfaceDecl13getSuperClassEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private3Log6FormatIJEEEvN4llvm9StringRefES3_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::formatv_object.1525", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_ZN4llvm7formatvIJEEEDaPKcDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !noalias !844
  br label %_ZN4llvm7formatvIJEEEDaPKcDpOT_.exit

_ZN4llvm7formatvIJEEEDaPKcDpOT_.exit:             ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store ptr %5, ptr %6, align 8, !tbaa !654, !alias.scope !844
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !631, !alias.scope !844
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !844
  store i8 1, ptr %i.c, align 8, !tbaa !684, !alias.scope !844
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(33) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12lldb_private6Target12GetProcessSPEv(ptr noundef nonnull align 8 dereferenceable(2200)) local_unnamed_addr #3

declare void @_ZN12lldb_private19ObjCLanguageRuntime26LookupInCompleteClassCacheERNS_11ConstStringE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.1005") align 8, ptr noundef nonnull align 8 dereferenceable(352), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang17ObjCInterfaceType7getDeclEv(ptr noundef nonnull align 16 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private14ClangASTSource24FindExternalLexicalDeclsEPKN5clang11DeclContextEN4llvm12function_refIFbNS1_4Decl4KindEEEERNS5_15SmallVectorImplIPS7_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::formatv_object.1573", align 8 ; 14 uses
  %6 = alloca %"class.llvm::formatv_object.1564", align 8 ; 21 uses
  %7 = alloca %"class.llvm::formatv_object.1543", align 8 ; 21 uses
  %8 = alloca %"class.llvm::formatv_object.1529", align 8 ; 24 uses
  %9 = alloca %"class.(anonymous namespace)::ScopedLexicalDeclEraser", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.lldb_private::ClangASTImporter::DeclOrigin", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #22
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) #22
  %i.f = and i64 %i.e, 1024
  %.not6.i.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i.i, label %bb.c, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %i.g = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef %1) #22 ; 19 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !592  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !801
  %i.n = icmp ult ptr %i.m, %i.g                  ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !655 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !802

_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.o, label %.lr.ph.i.i.i85.preheader, label %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE4findERKS3_.exit

_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !801
  %i.r = icmp ult ptr %i.g, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i85.preheader, label %bb.ag

.lr.ph.i.i.i85.preheader:                         ; preds = %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  br label %.lr.ph.i.i.i85

.lr.ph.i.i.i85:                                   ; preds = %.lr.ph.i.i.i85.preheader, %.lr.ph.i.i.i85
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i85 ], [ %i.j, %.lr.ph.i.i.i85.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !801  ; 2 uses
  %i.u = icmp ult ptr %i.g, %i.t                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.u, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !655 ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i86, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i85, !llvm.loop !803

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i85
  br i1 %i.u, label %._crit_edge.thread.i.i.i, label %bb.f

._crit_edge.thread.i.i.i:                         ; preds = %bb.d, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.k, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = icmp eq ptr %.019.lcssa29.i.i.i, %i.w
  br i1 %i.x, label %select.unfold.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !801
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %i.z = phi ptr [ %.pre.i.i, %bb.e ], [ %i.t, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.e ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.aa = icmp ult ptr %i.z, %i.g
  br i1 %i.aa, label %select.unfold.i.i, label %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

select.unfold.i.i:                                ; preds = %bb.f, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.f ] ; 3 uses
  %i.ab = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.k
  br i1 %i.ab, label %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !801
  %i.ae = icmp ult ptr %i.g, %i.ad
  br label %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold.i.i
  %i.af = phi i1 [ %i.ae, %bb.g ], [ true, %select.unfold.i.i ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.g, ptr %i.ah, align 8, !tbaa !801
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !52
  br label %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIPKN5clang4DeclES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.h, ptr %9, align 8, !tbaa !804
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.al, align 8, !tbaa !806
  %.not73 = icmp eq ptr %.0.i.i, null             ; 3 uses
  br i1 %.not73, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt3setIPKN5clang4DeclESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 124
  %i.ap = add nsw i32 %i.ao, -84
  %i.aq = icmp ult i32 %i.ap, -64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !650 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 248
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !651 ; 2 uses
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #22
  %i.az = load ptr, ptr %10, align 8, !tbaa !650
  %i.ba = call noundef ptr @_ZNK5clang4Decl15getDeclKindNameEv(ptr noundef nonnull align 8 dereferenceable(33) %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.g to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store ptr @.str.10, ptr %8, align 8, !tbaa !654, !alias.scope !845
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 75, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !631, !alias.scope !845
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !682, !alias.scope !845
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !631, !alias.scope !845
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.bh, align 8, !tbaa !684, !alias.scope !845
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 %i.be, ptr %i.bi, align 8, !tbaa !46, !alias.scope !845
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i64 %i.bd, ptr %i.bj, align 8, !tbaa !654, !alias.scope !845
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i64 %i.bc, ptr %i.bk, align 8, !tbaa !654, !alias.scope !845
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store ptr %i.av, ptr %i.bl, align 8
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 %i.ax, ptr %.sroa.4175.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  store i64 %i.bb, ptr %i.bm, align 8, !tbaa !690, !alias.scope !845
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  %.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 120
  %.ptr.3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 136
  %.ptr.4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = ptrtoint ptr %i.bi to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRPN5clang10ASTContextEEEEEvlS2_S3_, ptr %i.bf, align 8, !alias.scope !845
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 %i.bn, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !845
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !845
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i64 %i.bo, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !845
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i.i, align 8, !alias.scope !845
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %i.bp, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !845
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %.ptr.3.i.i.i.i.i, align 8, !alias.scope !845
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i64 %i.bq, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !845
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKvEEEEvlS2_S3_, ptr %.ptr.4.i.i.i.i.i, align 8, !alias.scope !845
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i64 %i.br, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !tbaa !47, !alias.scope !845
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str, i64 95, ptr nonnull @__func__._ZN12lldb_private14ClangASTSource24FindExternalLexicalDeclsEPKN5clang11DeclContextEN4llvm12function_refIFbNS1_4Decl4KindEEEERNS5_15SmallVectorImplIPS7_EE, i64 24, ptr noundef nonnull align 8 dereferenceable(33) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bs = load ptr, ptr %10, align 8, !tbaa !650  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !47
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bx = tail call noundef ptr @_ZNK5clang4Decl15getDeclKindNameEv(ptr noundef nonnull align 8 dereferenceable(33) %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.by = ptrtoint ptr %i.ar to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.g to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  store ptr @.str.11, ptr %7, align 8, !tbaa !654, !alias.scope !850
  %.sroa.22.0..sroa_idx.i.i.i.i.i90 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 69, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i90, align 8, !tbaa !631, !alias.scope !850
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !682, !alias.scope !850
  %.sroa.2.0..sroa_idx.i.i.i.i.i91 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i91, align 8, !tbaa !631, !alias.scope !850
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.cd, align 8, !tbaa !684, !alias.scope !850
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store i64 %i.ca, ptr %i.ce, align 8, !tbaa !46, !alias.scope !850
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i64 %i.bz, ptr %i.cf, align 8, !tbaa !654, !alias.scope !850
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.av, ptr %i.cg, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.ax, ptr %.sroa.4166.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  store i64 %i.by, ptr %i.ch, align 8, !tbaa !690, !alias.scope !850
  %.ptr.1.i.i.i.i.i92 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.ptr.2.i.i.i.i.i93 = getelementptr inbounds nuw i8, ptr %7, i64 112
  %.ptr.3.i.i.i.i.i94 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = ptrtoint ptr %i.ce to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRPN5clang10ASTContextEEEEEvlS2_S3_, ptr %i.cb, align 8, !alias.scope !850
  %.sroa.4.0..sroa_idx.i.i.i.i95 = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i95, align 8, !alias.scope !850
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i92, align 8, !alias.scope !850
  %.sroa.6.0..sroa_idx.i.i.i.i96 = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i64 %i.cj, ptr %.sroa.6.0..sroa_idx.i.i.i.i96, align 8, !alias.scope !850
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i.i93, align 8, !alias.scope !850
  %.sroa.8.0..sroa_idx.i.i.i.i97 = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i64 %i.ck, ptr %.sroa.8.0..sroa_idx.i.i.i.i97, align 8, !alias.scope !850
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKvEEEEvlS2_S3_, ptr %.ptr.3.i.i.i.i.i94, align 8, !alias.scope !850
  %.sroa.10.0..sroa_idx.i.i.i.i98 = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i64 %i.cl, ptr %.sroa.10.0..sroa_idx.i.i.i.i98, align 8, !tbaa !47, !alias.scope !850
end_hunk_2
