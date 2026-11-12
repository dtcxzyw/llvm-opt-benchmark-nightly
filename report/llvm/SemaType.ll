Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaType?download=true
inline.NumInlined: 11475
inline.NumDeleted: 4955
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZL31HandleAddressSpaceTypeAttributeRN5clang8QualTypeERKNS_10ParsedAttrERN12_GLOBAL__N_119TypeProcessingStateE:bb.a
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !57
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = add i8 %i.k, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.n, align 8, !tbaa !744
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 %.sroa.0.0.copyload.i.i, i32 noundef 3160) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #23
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = or i32 %i.p, 65536
  store i32 %i.q, ptr %i.o, align 8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1341, !nonnull !742, !align !743
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = and i64 %i.u, 65535
  %i.w = icmp eq i64 %i.v, 16
  br i1 %i.w, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 65535
  %.not71 = icmp eq i32 %i.z, 1
  br i1 %.not71, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i72 = load i32, ptr %i.ab, align 8, !tbaa !744
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 %.sroa.0.0.copyload.i.i72, i32 noundef 3258) #23
  %i.ac = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 1, ptr %i.a, align 4, !tbaa !744
  %i.ad = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ae = load i32, ptr %i.x, align 8
  %i.af = or i32 %i.ae, 65536
  store i32 %i.af, ptr %i.x, align 8
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.sroa.0.0.copyload.i.i73, -3
  %i.ai = inttoptr i64 %i.ah to ptr               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i74 = load i32, ptr %i.aj, align 8, !tbaa !744
  %i.ak = call fastcc noundef zeroext i1 @_ZL22BuildAddressSpaceIndexRN5clang4SemaERNS_6LangASEPKNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i.i74)
  br i1 %i.ak, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.f
  %i.al = load i32, ptr %i.x, align 8
  %i.am = or i32 %i.al, 65536
  store i32 %i.am, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !741, !nonnull !742, !align !743 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2632 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1284 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %i.ar, 48                       ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 2640
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1285
  %i.av = icmp ult i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %bb.i, !prof !1205

bb.h:                                             ; preds = %bb.g
  %i.aw = inttoptr i64 %i.as to ptr
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !1284
  br label %_ZnwmRKN5clang10ASTContextEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit

_ZnwmRKN5clang10ASTContextEm.exit:                ; preds = %bb.h, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.aq, %bb.h ], [ %i.ax, %bb.i ] ; 5 uses
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !1456 ; 3 uses
  tail call void @_ZN5clang16AddressSpaceAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEi(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.ao, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.az = load i24, ptr %i.ai, align 8
  %i.ba = and i24 %i.az, 131072
  %.not90 = icmp eq i24 %i.ba, 0
  br i1 %.not90, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZnwmRKN5clang10ASTContextEm.exit
  %.sroa.0.0.copyload.i.i75 = load i32, ptr %i.aj, align 8, !tbaa !744
  %i.bb = tail call i64 @_ZN5clang4Sema21BuildAddressSpaceAttrERNS_8QualTypeENS_6LangASEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ay, ptr noundef nonnull %i.ai, i32 %.sroa.0.0.copyload.i.i75) ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 16
  br i1 %i.bc, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.bd = load i32, ptr %i.x, align 8
  %i.be = or i32 %i.bd, 65536
  store i32 %i.be, ptr %i.x, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %.sroa.010.0.copyload = load i64, ptr %0, align 8, !tbaa !57
  %i.bf = tail call fastcc i64 @_ZN12_GLOBAL__N_119TypeProcessingState17getAttributedTypeEPN5clang4AttrENS1_8QualTypeES4_(ptr noundef nonnull align 8 dereferenceable(266) %2, ptr noundef nonnull %.0.i.i.i.i, i64 %.sroa.010.0.copyload, i64 %i.bb)
  br label %bb.o

bb.l:                                             ; preds = %_ZnwmRKN5clang10ASTContextEm.exit
  %.sroa.07.0.copyload = load i64, ptr %0, align 8, !tbaa !57 ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1330, !nonnull !742, !align !743
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 232
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !741, !nonnull !742, !align !743
  %i.bj = tail call i64 @_ZNK5clang10ASTContext17getAttributedTypeEPKNS_4AttrENS_8QualTypeES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.bi, ptr noundef nonnull %.0.i.i.i.i, i64 %.sroa.07.0.copyload, i64 %.sroa.07.0.copyload) #23 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.bl = and i64 %i.bj, -16
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1178 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !1204
  %.not.i.i = icmp ult i32 %i.bp, %i.br
  br i1 %.not.i.i, label %bb.n, label %bb.m, !prof !1205

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang14AttributedTypeEPKNS2_4AttrEELb1EE15growAndPushBackES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr %i.bn, ptr nonnull %.0.i.i.i.i)
  br label %_ZN12_GLOBAL__N_119TypeProcessingState17getAttributedTypeEPN5clang4AttrENS1_8QualTypeES4_.exit

bb.n:                                             ; preds = %bb.l
  %i.bs = zext i32 %i.bp to i64
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !1177
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  store ptr %i.bn, ptr %i.bu, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.0.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !1178
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bo, align 8, !tbaa !1178
  br label %_ZN12_GLOBAL__N_119TypeProcessingState17getAttributedTypeEPN5clang4AttrENS1_8QualTypeES4_.exit

_ZN12_GLOBAL__N_119TypeProcessingState17getAttributedTypeEPN5clang4AttrENS1_8QualTypeES4_.exit: ; preds = %bb.m, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i8 0, ptr %i.bx, align 8, !tbaa !1305
  store i64 %i.bj, ptr %7, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i76 = load i32, ptr %i.aj, align 8, !tbaa !744
  %i.by = call i64 @_ZN5clang4Sema21BuildAddressSpaceAttrERNS_8QualTypeENS_6LangASEPNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.ay, ptr noundef nonnull %i.ai, i32 %.sroa.0.0.copyload.i.i76)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_ZN12_GLOBAL__N_119TypeProcessingState17getAttributedTypeEPN5clang4AttrENS1_8QualTypeES4_.exit
  %i.bz = phi i64 [ %i.bf, %bb.k ], [ %i.by, %_ZN12_GLOBAL__N_119TypeProcessingState17getAttributedTypeEPN5clang4AttrENS1_8QualTypeES4_.exit ] ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 16
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.bz, ptr %0, align 8, !tbaa !57
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cb = load i32, ptr %i.x, align 8
  %i.cc = or i32 %i.cb, 65536
  store i32 %i.cc, ptr %i.x, align 8
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aa

bb.s:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !745, !nonnull !742, !align !743 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = and i64 %i.cg, 68719476736
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = trunc i64 %i.u to i16
  %switch.tableidx = add i16 %i.ci, -303          ; 2 uses
  %i.cj = icmp ult i16 %switch.tableidx, 7
  br i1 %i.cj, label %switch.lookup97, label %_ZNK5clang10ParsedAttr12asSYCLLangASEv.exit

bb.u:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = load i32, ptr %i.ck, align 8
  %trunc.i = trunc i32 %i.cl to i16
  %switch.tableidx96 = add i16 %trunc.i, -301     ; 2 uses
  %i.cm = icmp ult i16 %switch.tableidx96, 9
  br i1 %i.cm, label %switch.lookup97, label %_ZNK5clang10ParsedAttr12asSYCLLangASEv.exit

switch.lookup97:                                  ; preds = %bb.u, %bb.t
  %switch.tableidx96.sink = phi i16 [ %switch.tableidx, %bb.t ], [ %switch.tableidx96, %bb.u ]
  %switch.table._ZL31HandleAddressSpaceTypeAttributeRN5clang8QualTypeERKNS_10ParsedAttrERN12_GLOBAL__N_119TypeProcessingStateE.261.sink = phi ptr [ @switch.table._ZL31HandleAddressSpaceTypeAttributeRN5clang8QualTypeERKNS_10ParsedAttrERN12_GLOBAL__N_119TypeProcessingStateE, %bb.t ], [ @switch.table._ZL31HandleAddressSpaceTypeAttributeRN5clang8QualTypeERKNS_10ParsedAttrERN12_GLOBAL__N_119TypeProcessingStateE.261, %bb.u ]
  %i.cn = zext nneg i16 %switch.tableidx96.sink to i64
  %switch.gep98 = getelementptr inbounds nuw i8, ptr %switch.table._ZL31HandleAddressSpaceTypeAttributeRN5clang8QualTypeERKNS_10ParsedAttrERN12_GLOBAL__N_119TypeProcessingStateE.261.sink, i64 %i.cn
  %switch.load99 = load i8, ptr %switch.gep98, align 1
  %switch.ext100 = zext i8 %switch.load99 to i32
  br label %_ZNK5clang10ParsedAttr12asSYCLLangASEv.exit

_ZNK5clang10ParsedAttr12asSYCLLangASEv.exit:      ; preds = %switch.lookup97, %bb.t, %bb.u
  %8 = phi i32 [ 0, %bb.u ], [ 0, %bb.t ], [ %switch.ext100, %switch.lookup97 ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = and i64 %i.cp, 1099511627776
  %.not70 = icmp eq i64 %i.cq, 0
  br i1 %.not70, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang10ParsedAttr12asSYCLLangASEv.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = and i32 %i.cs, 65535
  %cond.i = icmp eq i32 %i.ct, 154
  %..i = select i1 %cond.i, i32 19, i32 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK5clang10ParsedAttr12asSYCLLangASEv.exit
  %.069 = phi i32 [ %..i, %bb.v ], [ %8, %_ZNK5clang10ParsedAttr12asSYCLLangASEv.exit ] ; 3 uses
  %i.cu = icmp ne i32 %.069, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8 ; 2 uses
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i.i, 8
  %.not.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread, label %_ZNK5clang8QualType15getAddressSpaceEv.exit

_ZNK5clang8QualType15getAddressSpaceEv.exit.thread: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br label %_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit.thread

_ZNK5clang8QualType15getAddressSpaceEv.exit:      ; preds = %bb.w
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.0.0.copyload.i.i.i.i80 = load i64, ptr %i.cz, align 8, !tbaa !746
  %i.da = trunc i64 %.sroa.0.0.copyload.i.i.i.i80 to i32
  %i.db = lshr i32 %i.da, 9                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i81 = load i32, ptr %i.dc, align 8, !tbaa !744 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %.not9.i.not = icmp eq i32 %i.db, %.069
  %i.dd = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  br i1 %.not9.i.not, label %_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit, label %bb.y

_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit.thread: ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit, %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.z

_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit: ; preds = %bb.x
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i32 %.sroa.0.0.copyload.i.i81, i32 noundef 6750) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.0.0.copyload.pre = load i64, ptr %0, align 8, !tbaa !57
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i32 %.sroa.0.0.copyload.i.i81, i32 noundef 3161) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = or i32 %i.df, 65536
  store i32 %i.dg, ptr %i.de, align 8
  br label %bb.aa

bb.z:                                             ; preds = %_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit, %_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit.thread
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit ], [ %.0.copyload.i.i.i.i.i, %_ZL35DiagnoseMultipleAddrSpaceAttributesRN5clang4SemaENS_6LangASES2_NS_14SourceLocationE.exit.thread ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !741, !nonnull !742, !align !743
  %i.dj = call i64 @_ZNK5clang10ASTContext20getAddrSpaceQualTypeENS_8QualTypeENS_6LangASE(ptr noundef nonnull align 8 dereferenceable(23904) %i.di, i64 %.sroa.0.0.copyload, i32 noundef %.069) #23
  store i64 %i.dj, ptr %0, align 8, !tbaa !57
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %bb.e, %bb.y, %.critedge, %bb.z, %bb.b
  ret void
}

declare noundef ptr @_ZN5clang8SemaHLSL25buildMatrixLayoutTypeAttrENS_8QualTypeERKNS_10ParsedAttrE(ptr noundef nonnull align 8 dereferenceable(273), i64, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN12_GLOBAL__N_119TypeProcessingState17getAttributedTypeEPN5clang4AttrENS1_8QualTypeES4_(ptr noundef nonnull align 8 dereferenceable(266) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1330, !nonnull !742, !align !743
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !741, !nonnull !742, !align !743
  %i.d = tail call i64 @_ZNK5clang10ASTContext17getAttributedTypeEPKNS_4AttrENS_8QualTypeES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.c, ptr noundef %1, i64 %2, i64 %3) #23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = and i64 %i.d, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !56  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1178 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1204
  %.not.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !1205

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang14AttributedTypeEPKNS2_4AttrEELb1EE15growAndPushBackES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr %i.h, ptr %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang14AttributedTypeEPKNS2_4AttrEELb1EE9push_backES9_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1177
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.m ; 2 uses
  store ptr %i.h, ptr %i.o, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.p = load i32, ptr %i.i, align 8, !tbaa !1178
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !1178
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang14AttributedTypeEPKNS2_4AttrEELb1EE9push_backES9_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang14AttributedTypeEPKNS2_4AttrEELb1EE9push_backES9_.exit: ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.r, align 8, !tbaa !1305
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL25handleObjCPointerTypeAttrRN12_GLOBAL__N_119TypeProcessingStateERN5clang10ParsedAttrERNS2_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(266) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1341, !nonnull !742, !align !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 65535
  %i.l = icmp eq i64 %i.k, 282
  br i1 %i.l, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1330 ; 5 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !57
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16
  switch i8 %i.u, label %_ZL20handleObjCGCTypeAttrRN12_GLOBAL__N_119TypeProcessingStateERN5clang10ParsedAttrERNS2_8QualTypeE.exit [
    i8 40, label %bb.c
    i8 31, label %bb.c
    i8 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8 ; 2 uses
  %i.w = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 8
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang8QualType13getObjCGCAttrEv.exit.thread.i, label %_ZNK5clang8QualType13getObjCGCAttrEv.exit.i

_ZNK5clang8QualType13getObjCGCAttrEv.exit.i:      ; preds = %bb.c
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.0.copyload.i.i.i.i50.i = load i64, ptr %i.z, align 8, !tbaa !746
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i50.i, 48
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZNK5clang8QualType13getObjCGCAttrEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang8QualType13getObjCGCAttrEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !744
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 %.sroa.0.0.copyload.i.i.i, i32 noundef 3211) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = or i32 %i.ae, 65536
  store i32 %i.af, ptr %i.ad, align 8
  br label %_ZL20handleObjCGCTypeAttrRN12_GLOBAL__N_119TypeProcessingStateERN5clang10ParsedAttrERNS2_8QualTypeE.exit

_ZNK5clang8QualType13getObjCGCAttrEv.exit.thread.i: ; preds = %_ZNK5clang8QualType13getObjCGCAttrEv.exit.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 65535                    ; 2 uses
  %.not60.i = icmp eq i32 %i.ai, 0
  br i1 %.not60.i, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread.i, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.i

_ZNK5clang10ParsedAttr10isArgIdentEj.exit.i:      ; preds = %_ZNK5clang8QualType13getObjCGCAttrEv.exit.thread.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i.i51.i = load i64, ptr %i.aj, align 8 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i51.i, 2
  %.not61.i = icmp eq i64 %i.ak, 0
  br i1 %.not61.i, label %_ZNK5clang10ParsedAttr10isArgIdentEj.exit.thread.i, label %bb.e

end_hunk_0
