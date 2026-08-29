Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExprCXX?download=true
inline.NumInlined: 10145
inline.NumDeleted: 4656
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5clang4Sema23FindAllocationFunctionsENS_14SourceLocationENS_11SourceRangeENS_23AllocationFunctionScopeES3_NS_8QualTypeEbRNS_28ImplicitAllocationParametersEN4llvm15MutableArrayRefIPNS_4ExprEEERPNS_12FunctionDeclESE_b:bb.a
bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ob = load ptr, ptr %i.mb, align 8, !tbaa !813 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.ob, null
  br i1 %.not3.i.i, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ob) #22
  store ptr null, ptr %i.mb, align 8, !tbaa !813
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.ca:                                            ; preds = %bb.bv
  %i.oc = load i32, ptr %i.lw, align 4
  store i32 2, ptr %24, align 8, !tbaa !793
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %24) #22
  %i.od = load i32, ptr %24, align 8, !tbaa !793
  %i.oe = icmp eq i32 %i.od, 5
  br i1 %i.oe, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.of = icmp eq i32 %i.oa, 5
  %.sroa.04.0.i.i = select i1 %i.of, i32 %i.oc, i32 undef
  store i32 %.sroa.04.0.i.i, ptr %i.lw, align 4, !tbaa !808
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

bb.cc:                                            ; preds = %bb.ca
  %i.og = load ptr, ptr %i.mb, align 8, !tbaa !813 ; 2 uses
  %.not.i.i267 = icmp eq ptr %i.og, null
  br i1 %.not.i.i267, label %_ZN5clang12LookupResult6Filter4doneEv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.og) #22
  store ptr null, ptr %i.mb, align 8, !tbaa !813
  br label %_ZN5clang12LookupResult6Filter4doneEv.exit

_ZN5clang12LookupResult6Filter4doneEv.exit:       ; preds = %bb.bq, %._crit_edge, %bb.by, %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.oh = load ptr, ptr %9, align 8, !tbaa !1887
  %i.oi = getelementptr i8, ptr %i.oh, i64 16
  %.val230 = load i64, ptr %i.oi, align 8         ; 3 uses
  %i.oj = and i64 %.val230, 4
  %i.ok = icmp eq i64 %i.oj, 0
  br i1 %i.ok, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZN5clang12LookupResult6Filter4doneEv.exit
  %i.ol = inttoptr i64 %.val230 to ptr
  br label %"_ZZN5clang4Sema23FindAllocationFunctionsENS_14SourceLocationENS_11SourceRangeENS_23AllocationFunctionScopeES3_NS_8QualTypeEbRNS_28ImplicitAllocationParametersEN4llvm15MutableArrayRefIPNS_4ExprEEERPNS_12FunctionDeclESE_bENK3$_0clEPNS_4DeclE.exit"

bb.cf:                                            ; preds = %_ZN5clang12LookupResult6Filter4doneEv.exit
  %i.om = and i64 %.val230, -5
  %i.on = inttoptr i64 %i.om to ptr
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !1642
  br label %"_ZZN5clang4Sema23FindAllocationFunctionsENS_14SourceLocationENS_11SourceRangeENS_23AllocationFunctionScopeES3_NS_8QualTypeEbRNS_28ImplicitAllocationParametersEN4llvm15MutableArrayRefIPNS_4ExprEEERPNS_12FunctionDeclESE_bENK3$_0clEPNS_4DeclE.exit"

"_ZZN5clang4Sema23FindAllocationFunctionsENS_14SourceLocationENS_11SourceRangeENS_23AllocationFunctionScopeES3_NS_8QualTypeEbRNS_28ImplicitAllocationParametersEN4llvm15MutableArrayRefIPNS_4ExprEEERPNS_12FunctionDeclESE_bENK3$_0clEPNS_4DeclE.exit": ; preds = %bb.ce, %bb.cf
  %.0.i.i = phi ptr [ %i.ol, %bb.ce ], [ %i.oo, %bb.cf ]
  %i.op = call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i) #22 ; 2 uses
  store ptr %i.op, ptr %i.b, align 8, !tbaa !2027
  %i.oq = load i32, ptr %i.lz, align 8, !tbaa !752
  %.not.i.i.i268 = icmp eq i32 %i.oq, 0           ; 4 uses
  %i.or = load i32, ptr %i.m, align 8, !tbaa !1964 ; 2 uses
  %i.os = icmp eq i32 %i.or, 1
  br i1 %i.os, label %bb.cg, label %.thread

.thread:                                          ; preds = %"_ZZN5clang4Sema23FindAllocationFunctionsENS_14SourceLocationENS_11SourceRangeENS_23AllocationFunctionScopeES3_NS_8QualTypeEbRNS_28ImplicitAllocationParametersEN4llvm15MutableArrayRefIPNS_4ExprEEERPNS_12FunctionDeclESE_bENK3$_0clEPNS_4DeclE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.a, ptr %25, align 8, !tbaa !772
  %i.ot = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %0, ptr %i.ot, align 8, !tbaa !2028
  %i.ou = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %13, ptr %i.ou, align 8, !tbaa !771
  %i.ov = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %9, ptr %i.ov, align 8, !tbaa !2033
  %i.ow = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %23, ptr %i.ow, align 8, !tbaa !2034
  %i.ox = getelementptr inbounds nuw i8, ptr %25, i64 40
  store ptr %i.b, ptr %i.ox, align 8, !tbaa !2035
  br label %bb.cj

bb.cg:                                            ; preds = %"_ZZN5clang4Sema23FindAllocationFunctionsENS_14SourceLocationENS_11SourceRangeENS_23AllocationFunctionScopeES3_NS_8QualTypeEbRNS_28ImplicitAllocationParametersEN4llvm15MutableArrayRefIPNS_4ExprEEERPNS_12FunctionDeclESE_bENK3$_0clEPNS_4DeclE.exit"
  %i.oy = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.oz = load i16, ptr %i.oy, align 8
  %i.pa = and i16 %i.oz, 127
  %i.pb = add nsw i16 %i.pa, -59
  %spec.select.i269 = icmp ult i16 %i.pb, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.a, ptr %25, align 8, !tbaa !772
  %i.pc = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %0, ptr %i.pc, align 8, !tbaa !2028
  %i.pd = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %13, ptr %i.pd, align 8, !tbaa !771
  %i.pe = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %9, ptr %i.pe, align 8, !tbaa !2033
  %i.pf = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %23, ptr %i.pf, align 8, !tbaa !2034
  %i.pg = getelementptr inbounds nuw i8, ptr %25, i64 40
  store ptr %i.b, ptr %i.pg, align 8, !tbaa !2035
  br i1 %spec.select.i269, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not.i.i.i268, label %bb.ci, label %.thread357

bb.ci:                                            ; preds = %bb.ch
  call fastcc void @"_ZZN5clang4Sema23FindAllocationFunctionsENS_14SourceLocationENS_11SourceRangeENS_23AllocationFunctionScopeES3_NS_8QualTypeEbRNS_28ImplicitAllocationParametersEN4llvm15MutableArrayRefIPNS_4ExprEEERPNS_12FunctionDeclESE_bENK3$_1clEb"(ptr noundef nonnull align 8 dereferenceable(48) %25, i1 noundef zeroext false)
  br label %bb.ez

bb.cj:                                            ; preds = %.thread, %bb.cg
  br i1 %.not.i.i.i268, label %bb.ck, label %.thread357

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN5clang12LookupResult5clearENS_4Sema14LookupNameKindE(ptr noundef nonnull align 8 dereferenceable(168) %24, i32 noundef 0)
  %i.ph = icmp eq i32 %4, 1
  br i1 %i.ph, label %bb.ez, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN5clang4Sema22DeclareGlobalNewDeleteEv(ptr noundef nonnull align 8 dereferenceable(18640) %0)
  %i.pi = icmp eq i32 %i.am, 1
  %i.pj = zext i1 %i.pi to i32
  call fastcc void @_ZL33LookupGlobalDeallocationFunctionsRN5clang4SemaENS_14SourceLocationERNS_12LookupResultE17DeallocLookupModeNS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %24, i32 noundef %i.pj)
  %.pre416 = load i32, ptr %i.m, align 8, !tbaa !1964
  br label %.thread357

.thread357:                                       ; preds = %bb.ch, %bb.cl, %bb.cj
  %i.pk = phi i32 [ 1, %bb.ch ], [ %.pre416, %bb.cl ], [ %i.or, %bb.cj ]
  store i8 0, ptr %i.mi, align 1, !tbaa !810
  store i8 0, ptr %i.mj, align 4, !tbaa !812
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.pl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr %i.pl, ptr %26, align 8, !tbaa !755
  %i.pm = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 10 uses
  store i32 0, ptr %i.pm, align 8, !tbaa !752
  %i.pn = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 3 uses
  store i32 2, ptr %i.pn, align 4, !tbaa !753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.po = load i64, ptr %i.t, align 8, !tbaa !1971 ; 2 uses
  %i.pp = icmp eq i64 %i.po, 0                    ; 2 uses
  br i1 %i.pp, label %bb.cm, label %.critedge223

bb.cm:                                            ; preds = %.thread357
  %i.pq = icmp eq i32 %i.pk, 1
  %spec.select221 = select i1 %i.pq, i64 3, i64 1
  %i.pr = load ptr, ptr %9, align 8, !tbaa !1887
  %i.ps = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.pr) #22
  %i.pt = zext i32 %i.ps to i64
  %.not210 = icmp eq i64 %spec.select221, %i.pt
  br i1 %.not210, label %bb.cn, label %.critedge223

bb.cn:                                            ; preds = %bb.cm
  %i.pu = load ptr, ptr %9, align 8, !tbaa !1887
  %i.pv = call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isVariadicEv(ptr noundef nonnull align 8 dereferenceable(168) %i.pu) #22 ; 2 uses
  %i.pw = zext i1 %i.pv to i8
  store i8 %i.pw, ptr %i.c, align 1, !tbaa !757
  br i1 %i.pv, label %bb.co, label %bb.dp

.critedge223:                                     ; preds = %.thread357, %bb.cm
  store i8 1, ptr %i.c, align 1, !tbaa !757
  br label %bb.co

bb.co:                                            ; preds = %.critedge223, %bb.cn
  %i.px = load ptr, ptr %9, align 8, !tbaa !1887
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  %.sroa.0.0.copyload.i272 = load i64, ptr %i.py, align 8, !tbaa !730
  %i.pz = and i64 %.sroa.0.0.copyload.i272, -16
  %i.qa = inttoptr i64 %i.pz to ptr
  %i.qb = load ptr, ptr %i.qa, align 16, !tbaa !790 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load i8, ptr %i.qc, align 16
  %.not.i274 = icmp eq i8 %i.qd, 24
  br i1 %.not.i274, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qe = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.qb) #22
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.co, %bb.cp
  %.1.i275 = phi ptr [ %i.qe, %bb.cp ], [ %i.qb, %bb.co ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.qf = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.qf, ptr %27, align 8, !tbaa !755
  %i.qg = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  store i32 0, ptr %i.qg, align 8, !tbaa !752
  %i.qh = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  store i32 6, ptr %i.qh, align 4, !tbaa !753
  %i.qi = load i32, ptr %i.m, align 8, !tbaa !1964
  %i.qj = icmp eq i32 %i.qi, 1
  br i1 %i.qj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 %.sroa.0138.2)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.0204.neg = phi i32 [ -1, %bb.cq ], [ 0, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ]
  %i.qk = load ptr, ptr %i.x, align 8, !tbaa !10, !nonnull !697, !align !698
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 19320
  %.sroa.0.0.copyload.i276 = load i64, ptr %i.ql, align 8, !tbaa !730
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 %.sroa.0.0.copyload.i276)
  %i.qm = load i32, ptr %i.qg, align 8, !tbaa !752 ; 2 uses
  %i.qn = add i32 %i.qm, %.0204.neg               ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.1.i275, i64 16 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 16
  %i.qq = lshr i64 %i.qp, 48
  %i.qr = trunc nuw nsw i64 %i.qq to i32          ; 2 uses
  %i.qs = icmp ult i32 %i.qn, %i.qr
  br i1 %i.qs, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %bb.cr
  %i.qt = getelementptr inbounds nuw i8, ptr %.1.i275, i64 48
  %i.qu = zext nneg i32 %i.qn to i64
  br label %bb.ct

._crit_edge393.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit
  %.pre417 = load i32, ptr %i.qg, align 8, !tbaa !752
  br label %._crit_edge393

._crit_edge393:                                   ; preds = %._crit_edge393.loopexit, %bb.cr
  %i.qv = phi i32 [ %.pre417, %._crit_edge393.loopexit ], [ %i.qm, %bb.cr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store i16 0, ptr %28, align 8, !tbaa !2036
  %i.qw = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 0, ptr %i.qw, align 8, !tbaa !1094
  %i.qx = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 0, ptr %i.qx, align 8, !tbaa !2038
  %i.qy = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 0, ptr %i.qy, align 8, !tbaa !2051
  %i.qz = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %28, i64 88
  %i.rb = getelementptr inbounds nuw i8, ptr %28, i64 136 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.qz, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ra, i8 0, i64 48, i1 false)
  %i.rc = load i16, ptr %i.rb, align 8
  %i.rd = and i16 %i.rc, -4096                    ; 2 uses
  store i16 %i.rd, ptr %i.rb, align 8
  %i.re = load i64, ptr %i.qo, align 16
  %i.rf = lshr i64 %i.re, 31
  %i.rg = trunc i64 %i.rf to i16
  %i.rh = and i16 %i.rg, 1
  %i.ri = or disjoint i16 %i.rh, %i.rd
  store i16 %i.ri, ptr %i.rb, align 8
  %i.rj = load ptr, ptr %i.x, align 8, !tbaa !10, !nonnull !697, !align !698 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 18896
  %.sroa.0.0.copyload.i277 = load i64, ptr %i.rk, align 8, !tbaa !730
  %i.rl = load ptr, ptr %27, align 8, !tbaa !755
  %i.rm = zext i32 %i.qv to i64
  %i.rn = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.rj, i64 %.sroa.0.0.copyload.i277, ptr %i.rl, i64 %i.rm, ptr noundef nonnull align 8 dereferenceable(138) %28, i1 noundef zeroext false) #22 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.ro = load ptr, ptr %27, align 8, !tbaa !755  ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.qf
  br i1 %i.rp, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj6EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge393
  call void @free(ptr noundef %i.ro) #22
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang8QualTypeELj6EED2Ev.exit: ; preds = %._crit_edge393, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.rq = load ptr, ptr %i.lx, align 8, !tbaa !755 ; 2 uses
  %i.rr = load i32, ptr %i.lz, align 8, !tbaa !752 ; 2 uses
  %i.rs = zext i32 %i.rr to i64
  %.idx402 = shl nuw nsw i64 %i.rs, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.idx402
  %.not378394 = icmp eq i32 %i.rr, 0
  br i1 %.not378394, label %._crit_edge397, label %.lr.ph396

.lr.ph396:                                        ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj6EED2Ev.exit
  %i.ru = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.rw = getelementptr inbounds nuw i8, ptr %29, i64 21
  %i.rx = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.ry = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.rz = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %29, i64 44
  %i.sd = getelementptr inbounds nuw i8, ptr %29, i64 176
  %i.se = getelementptr inbounds nuw i8, ptr %29, i64 184 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %29, i64 192
  %i.sg = getelementptr inbounds nuw i8, ptr %29, i64 208 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %29, i64 216
  %i.si = getelementptr inbounds nuw i8, ptr %29, i64 232
  %i.sj = getelementptr inbounds nuw i8, ptr %29, i64 236
  %i.sk = getelementptr inbounds nuw i8, ptr %29, i64 240 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %29, i64 256 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %29, i64 248
  %i.sn = getelementptr inbounds nuw i8, ptr %29, i64 252
  %i.so = getelementptr inbounds nuw i8, ptr %29, i64 320
  %i.sp = getelementptr inbounds nuw i8, ptr %29, i64 336 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %29, i64 352 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %29, i64 344
  %i.ss = getelementptr inbounds nuw i8, ptr %29, i64 348
  %i.st = getelementptr inbounds nuw i8, ptr %29, i64 448
  %i.su = getelementptr inbounds nuw i8, ptr %29, i64 449
  %i.sv = getelementptr inbounds nuw i8, ptr %29, i64 456 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %29, i64 472 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %29, i64 464
  %i.sy = getelementptr inbounds nuw i8, ptr %29, i64 468
  %i.sz = and i64 %i.rn, -16
  %i.ta = inttoptr i64 %i.sz to ptr
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = and i64 %i.rn, 7
  br label %bb.cw

bb.ct:                                            ; preds = %.lr.ph392, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit
  %indvars.iv = phi i64 [ %i.qu, %.lr.ph392 ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit ] ; 2 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %indvars.iv
  %.sroa.0.0.copyload.i278 = load i64, ptr %i.td, align 8, !tbaa !730 ; 2 uses
  %i.te = load i32, ptr %i.qg, align 8, !tbaa !752 ; 2 uses
  %i.tf = load i32, ptr %i.qh, align 4, !tbaa !753
  %.not.i279 = icmp ult i32 %i.te, %i.tf
  br i1 %.not.i279, label %bb.cv, label %bb.cu, !prof !754

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 %.sroa.0.0.copyload.i278)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit

bb.cv:                                            ; preds = %bb.ct
  %i.tg = zext i32 %i.te to i64
  %i.th = load ptr, ptr %27, align 8, !tbaa !755
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tg
  store i64 %.sroa.0.0.copyload.i278, ptr %i.ti, align 1
  %i.tj = load i32, ptr %i.qg, align 8, !tbaa !752
  %i.tk = add i32 %i.tj, 1
  store i32 %i.tk, ptr %i.qg, align 8, !tbaa !752
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit: ; preds = %bb.cu, %bb.cv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.qr
  br i1 %exitcond.not, label %._crit_edge393.loopexit, label %bb.ct, !llvm.loop !2052

._crit_edge397:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEELb1EE9push_backES6_.exit, %_ZN4llvm11SmallVectorIN5clang8QualTypeELj6EED2Ev.exit
  %i.tl = load ptr, ptr %i.ia, align 8, !tbaa !811, !nonnull !697, !align !698
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 56
  %i.tn = load i64, ptr %i.tm, align 8
  %i.to = and i64 %i.tn, 137438953472
  %.not212 = icmp eq i64 %i.to, 0
  br i1 %.not212, label %bb.dn, label %bb.dm

bb.cw:                                            ; preds = %.lr.ph396, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEELb1EE9push_backES6_.exit
  %.sroa.0334.0395 = phi ptr [ %i.rq, %.lr.ph396 ], [ %i.vx, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEELb1EE9push_backES6_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr null, ptr %i.d, align 8, !tbaa !1887
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.0334.0395, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0334.0395, align 8
  %i.tp = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.tq = inttoptr i64 %i.tp to ptr               ; 5 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 28
  %i.ts = load i32, ptr %i.tr, align 4            ; 2 uses
  %i.tt = and i32 %i.ts, 127                      ; 2 uses
  switch i32 %i.tt, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit281 [
    i32 54, label %bb.cx
    i32 55, label %bb.cx
    i32 77, label %bb.cx
    i32 79, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.tu = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.tq) #25 ; 2 uses
  %.phi.trans.insert418 = getelementptr inbounds nuw i8, ptr %i.tu, i64 28
  %.pre419 = load i32, ptr %.phi.trans.insert418, align 4
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit281

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit281: ; preds = %bb.cw, %bb.cx
  %i.tv = phi i32 [ %.pre419, %bb.cx ], [ %i.ts, %bb.cw ]
  %.0.i280 = phi ptr [ %i.tu, %bb.cx ], [ %i.tq, %bb.cw ]
  %i.tw = and i32 %i.tv, 127
  %.not477 = icmp eq i32 %i.tw, 72
  br i1 %.not477, label %bb.cy, label %bb.dh

bb.cy:                                            ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit281
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %.sroa.081.0.copyload = load i32, ptr %13, align 4, !tbaa !748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %29, i8 0, i64 16, i1 false)
  store i32 %.sroa.081.0.copyload, ptr %i.ru, align 8, !tbaa !748
  store i8 0, ptr %i.rv, align 4, !tbaa !1840
  store i8 0, ptr %i.rw, align 1, !tbaa !1869
  store i32 0, ptr %i.rx, align 8, !tbaa !1870
  store i32 0, ptr %i.ry, align 4, !tbaa !1871
  store ptr %i.sa, ptr %i.rz, align 8, !tbaa !755
  store i32 0, ptr %i.sb, align 8, !tbaa !752
  store i32 4, ptr %i.sc, align 4, !tbaa !753
  store i64 0, ptr %i.sd, align 8
  %i.tx = load i64, ptr %i.se, align 8
  %i.ty = and i64 %i.tx, -8589934592
  store i64 %i.ty, ptr %i.se, align 8
  store i64 0, ptr %i.sf, align 8, !tbaa !1872
  %i.tz = load i64, ptr %i.sg, align 8
  %i.ua = and i64 %i.tz, -8589934592
  store i64 %i.ua, ptr %i.sg, align 8
  store i64 0, ptr %i.sh, align 8, !tbaa !1872
  store i32 0, ptr %i.si, align 8, !tbaa !1874
  store i8 0, ptr %i.sj, align 4, !tbaa !1875
  store ptr %i.sl, ptr %i.sk, align 8, !tbaa !755
  store i32 0, ptr %i.sm, align 8, !tbaa !752
  store i32 8, ptr %i.sn, align 4, !tbaa !753
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.so, i8 0, i64 16, i1 false)
  store ptr %i.sq, ptr %i.sp, align 8, !tbaa !755
  store i32 0, ptr %i.sr, align 8, !tbaa !752
  store i32 4, ptr %i.ss, align 4, !tbaa !753
  store i8 0, ptr %i.st, align 8, !tbaa !1876
  store i8 0, ptr %i.su, align 1, !tbaa !1877
  store ptr %i.sw, ptr %i.sv, align 8, !tbaa !755
  store i32 0, ptr %i.sx, align 8, !tbaa !752
  store i32 4, ptr %i.sy, align 4, !tbaa !753
  %i.ub = call noundef i32 @_ZN5clang4Sema23DeduceTemplateArgumentsEPNS_20FunctionTemplateDeclEPNS_24TemplateArgumentListInfoENS_8QualTypeERPNS_12FunctionDeclERNS_4sema21TemplateDeductionInfoEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.0.i280, ptr noundef null, i64 %i.rn, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(504) %29, i1 noundef zeroext false) #22
  %.not215 = icmp eq i32 %i.ub, 0
  %i.uc = load ptr, ptr %i.sv, align 8, !tbaa !755 ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.sw
  br i1 %i.ud, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef %i.uc) #22
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i: ; preds = %bb.cz, %bb.cy
  %i.ue = load ptr, ptr %i.sp, align 8, !tbaa !755 ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.sq
  br i1 %i.uf, label %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i, label %bb.da

bb.da:                                            ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i
  call void @free(ptr noundef %i.ue) #22
  br label %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i

_ZN5clang22ConstraintSatisfactionD2Ev.exit.i:     ; preds = %bb.da, %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i
  %i.ug = load ptr, ptr %i.sk, align 8, !tbaa !755 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.sl
  br i1 %i.uh, label %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i, label %bb.db

bb.db:                                            ; preds = %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i
  call void @free(ptr noundef %i.ug) #22
  br label %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i: ; preds = %bb.db, %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i
  %i.ui = load ptr, ptr %i.rz, align 8, !tbaa !755 ; 3 uses
  %i.uj = load i32, ptr %i.sb, align 8, !tbaa !752 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.uj, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i
  %i.uk = zext i32 %i.uj to i64
  %.idx.i.i = shl nuw nsw i64 %i.uk, 5
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.um, %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i ], [ %i.ul, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.um = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.un = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !713 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i
  %i.up = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !717 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ur = icmp uge ptr %i.uo, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 14848 ; 2 uses
  %i.ut = icmp ule ptr %i.uo, %i.us
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.ur, i1 %i.ut, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 14976 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !1698 ; 2 uses
  %i.uw = add i32 %i.uv, 1
  store i32 %i.uw, ptr %i.uu, align 8, !tbaa !1698
  %i.ux = zext i32 %i.uv to i64
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.ux
  store ptr %i.uo, ptr %i.uy, align 8, !tbaa !1699
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i

bb.df:                                            ; preds = %bb.dd
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.uo) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef 928) #23
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i: ; preds = %bb.df, %bb.de, %bb.dc, %.lr.ph.i.i.i
  %.not.i.i.i283 = icmp eq ptr %i.ui, %i.um
  br i1 %.not.i.i.i283, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1884

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i
  %.pre.i.i284 = load ptr, ptr %i.rz, align 8, !tbaa !755
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i
  %i.uz = phi ptr [ %.pre.i.i284, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i ], [ %i.ui, %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i ] ; 2 uses
  %i.va = icmp eq ptr %i.uz, %i.sa
  br i1 %i.va, label %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i
  call void @free(ptr noundef %i.uz) #22
  br label %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit

_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit:   ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br i1 %.not215, label %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit..thread358_crit_edge, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14DeclAccessPairEPNS2_12FunctionDeclEELb1EE9push_backES6_.exit

_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit..thread358_crit_edge: ; preds = %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit
  %.pre420 = load ptr, ptr %i.d, align 8, !tbaa !1887
  br label %.thread358

bb.dh:                                            ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit281
  switch i32 %i.tt, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit287 [
    i32 54, label %bb.di
    i32 55, label %bb.di
    i32 77, label %bb.di
    i32 79, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh, %bb.dh, %bb.dh, %bb.dh
  %i.vb = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.tq) #25
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit287

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit287: ; preds = %bb.dh, %bb.di
  %.0.i286 = phi ptr [ %i.vb, %bb.di ], [ %i.tq, %bb.dh ] ; 2 uses
  store ptr %.0.i286, ptr %i.d, align 8, !tbaa !1887
  br label %.thread358

.thread358:                                       ; preds = %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit..thread358_crit_edge, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit287
  %i.vc = phi ptr [ %.pre420, %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit..thread358_crit_edge ], [ %.0.i286, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit287 ]
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 48
  %.sroa.0.0.copyload.i288 = load i64, ptr %i.vd, align 8, !tbaa !730
  %i.ve = call i64 @_ZN5clang4Sema19adjustCCAndNoReturnENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i288, i64 %i.rn, i1 noundef zeroext true) #22 ; 2 uses
  %i.vf = and i64 %i.ve, -16
  %i.vg = inttoptr i64 %i.vf to ptr
end_hunk_0
