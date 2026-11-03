Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeclObjC?download=true
inline.NumInlined: 3704
inline.NumDeleted: 1961
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5clang14ObjCMethodDecl16findPropertyDeclEb:bb.a

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !110 ; 2 uses
  %i.bl = and i64 %i.bk, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = icmp ult i64 %i.bk, 8
  %i.bo = or i1 %i.bn, %i.bm
  br i1 %i.bo, label %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i.i.i, label %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i.i.i

_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i.i.i: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 6
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i.i.i

_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i.i.i: ; preds = %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i.i.i, %bb.l, %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph:                                           ; preds = %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i, %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i.i.i
  %.sroa.0120.0151 = phi ptr [ %.sroa.0.0.i.i, %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i.i.i ], [ %.sroa.0120.1, %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i ] ; 3 uses
  %i.bu = icmp eq ptr %.sroa.0120.0151, %.082
  br i1 %i.bu, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bv = call fastcc noundef ptr @"_ZZNK5clang14ObjCMethodDecl16findPropertyDeclEbENK3$_0clEPKNS_17ObjCContainerDeclE"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0120.0151) ; 2 uses
  %.not99 = icmp eq ptr %i.bv, null
  br i1 %.not99, label %select.unfold, label %.thread134

select.unfold:                                    ; preds = %bb.m, %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0120.0151, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !109 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.bx, null
  br i1 %.not1.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold, %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i
  %.sroa.0120.1 = phi ptr [ %i.cl, %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i ], [ %i.bx, %select.unfold ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0120.1, i64 28
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = and i32 %i.bz, 128
  %.not.i.i.i106 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i106, label %bb.n, label %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0120.1, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !110 ; 2 uses
  %i.cd = and i64 %i.cc, 7
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = icmp ult i64 %i.cc, 8
  %i.cg = or i1 %i.cf, %i.ce
  br i1 %i.cg, label %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i, label %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i

_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i: ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0120.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 6
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph, label %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i

_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i: ; preds = %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.i.i, %bb.n, %.lr.ph.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0120.1, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge:                                      ; preds = %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i.i.i, %select.unfold, %_ZN5clang17ObjCInterfaceDecl18isVisibleExtensionEPNS_16ObjCCategoryDeclE.exit.thread.i.i, %.thread, %_ZNK5clang17ObjCInterfaceDecl18getCategoryListRawEv.exit.i.i
  %i.cm = call noundef zeroext i1 @_ZNK5clang17ObjCInterfaceDecl13hasDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %.184127)
  br i1 %i.cm, label %bb.o, label %.thread134

bb.o:                                             ; preds = %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %.184127, i64 120 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i110 = load i64, ptr %i.cn, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i.i.i.i110, -8
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 72 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8             ; 2 uses
  %i.cs = and i8 %i.cr, 1
  %.not.i.i.i111 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i111, label %_ZNK5clang17ObjCInterfaceDecl16known_categoriesEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = and i8 %i.cr, -2
  store i8 %i.ct, ptr %i.cq, align 8
  %i.cu = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(128) %.184127) #27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 18624
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !86 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 168
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(128) %.184127) #26, !inline_history !18
  %.0.copyload.i.i.i.i2.pre.i.i.i112 = load i64, ptr %i.cn, align 8
  %.pre.i.i.i113 = and i64 %.0.copyload.i.i.i.i2.pre.i.i.i112, -8
  %.pre4.i.i.i114 = inttoptr i64 %.pre.i.i.i113 to ptr
  br label %_ZNK5clang17ObjCInterfaceDecl16known_categoriesEv.exit

_ZNK5clang17ObjCInterfaceDecl16known_categoriesEv.exit: ; preds = %bb.o, %bb.p
  %.pre-phi5.i.i.i115 = phi ptr [ %.pre4.i.i.i114, %bb.p ], [ %i.cp, %bb.o ]
  %i.da = getelementptr inbounds nuw i8, ptr %.pre-phi5.i.i.i115, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !92 ; 2 uses
  %.not149152 = icmp eq ptr %i.db, null
  br i1 %.not149152, label %.thread134, label %.lr.ph154

.lr.ph154:                                        ; preds = %_ZNK5clang17ObjCInterfaceDecl16known_categoriesEv.exit, %select.unfold136
  %.sroa.0.0153 = phi ptr [ %i.df, %select.unfold136 ], [ %i.db, %_ZNK5clang17ObjCInterfaceDecl16known_categoriesEv.exit ] ; 3 uses
  %i.dc = icmp eq ptr %.sroa.0.0153, %.082
  br i1 %i.dc, label %select.unfold136, label %bb.q

bb.q:                                             ; preds = %.lr.ph154
  %i.dd = call fastcc noundef ptr @"_ZZNK5clang14ObjCMethodDecl16findPropertyDeclEbENK3$_0clEPKNS_17ObjCContainerDeclE"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0.0153) ; 2 uses
  %.not100 = icmp eq ptr %i.dd, null
  br i1 %.not100, label %select.unfold136, label %.thread134

select.unfold136:                                 ; preds = %bb.q, %.lr.ph154
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0153, i64 128
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !109 ; 2 uses
  %.not149 = icmp eq ptr %i.df, null
  br i1 %.not149, label %.thread134, label %.lr.ph154

.thread134:                                       ; preds = %bb.m, %bb.q, %select.unfold136, %_ZNK5clang17ObjCInterfaceDecl16known_categoriesEv.exit, %._crit_edge, %bb.i, %bb.g
  %.13 = phi ptr [ %i.ai, %bb.g ], [ null, %select.unfold136 ], [ %i.ap, %bb.i ], [ null, %_ZNK5clang17ObjCInterfaceDecl16known_categoriesEv.exit ], [ null, %._crit_edge ], [ %i.dd, %bb.q ], [ %i.bv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.u

bb.r:                                             ; preds = %bb.b
  br i1 %1, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.dg, ptr %4, align 8, !tbaa !560
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.dh, align 8, !tbaa !554
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.di, align 4, !tbaa !559
  call void @_ZNK5clang14ObjCMethodDecl20getOverriddenMethodsERN4llvm15SmallVectorImplIPKS0_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.dj = load ptr, ptr %4, align 8, !tbaa !560   ; 3 uses
  %i.dk = load i32, ptr %i.dh, align 8, !tbaa !554 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %.idx = shl nuw nsw i64 %i.dl, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx
  %.not160 = icmp eq i32 %i.dk, 0
  br i1 %.not160, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.s, %.lr.ph163
  %.0161 = phi ptr [ %i.dp, %.lr.ph163 ], [ %i.dj, %bb.s ] ; 2 uses
  %i.dn = load ptr, ptr %.0161, align 8, !tbaa !577
  %i.do = call noundef ptr @_ZNK5clang14ObjCMethodDecl16findPropertyDeclEb(ptr noundef nonnull align 8 dereferenceable(136) %i.dn, i1 noundef zeroext false) ; 2 uses
  %.not94 = icmp ne ptr %i.do, null
  %i.dp = getelementptr inbounds nuw i8, ptr %.0161, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dp, %i.dm
  %or.cond192 = select i1 %.not94, i1 true, i1 %.not
  br i1 %or.cond192, label %._crit_edge164.loopexit, label %.lr.ph163

._crit_edge164.loopexit:                          ; preds = %.lr.ph163
  %.pre168 = load ptr, ptr %4, align 8, !tbaa !560
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %._crit_edge164.loopexit, %bb.s
  %i.dq = phi ptr [ %i.dj, %bb.s ], [ %.pre168, %._crit_edge164.loopexit ] ; 2 uses
  %spec.select = phi ptr [ null, %bb.s ], [ %i.do, %._crit_edge164.loopexit ]
  %i.dr = icmp eq ptr %i.dq, %i.dg
  br i1 %i.dr, label %_ZN4llvm11SmallVectorIPKN5clang14ObjCMethodDeclELj8EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge164
  call void @free(ptr noundef %i.dq) #26
  br label %_ZN4llvm11SmallVectorIPKN5clang14ObjCMethodDeclELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang14ObjCMethodDeclELj8EED2Ev.exit: ; preds = %._crit_edge164, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.a, %_ZN4llvm11SmallVectorIPKN5clang14ObjCMethodDeclELj8EED2Ev.exit, %.thread134
  %.18 = phi ptr [ null, %bb.a ], [ %.13, %.thread134 ], [ %spec.select, %_ZN4llvm11SmallVectorIPKN5clang14ObjCMethodDeclELj8EED2Ev.exit ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %.18
}

declare noundef i32 @_ZNK5clang8Selector10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZZNK5clang14ObjCMethodDecl16findPropertyDeclEbENK3$_0clEPKNS_17ObjCContainerDeclE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !743, !nonnull !517
  %i.b = load i8, ptr %i.a, align 1, !tbaa !580, !range !583, !noundef !517
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = tail call ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #26 ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.e, null         ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not3.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.critedge2.i.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.o, %.critedge2.i.i.i.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 127
  %i.i = icmp eq i32 %i.h, 76
  br i1 %i.i, label %bb.c, label %.critedge2.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 16384
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph81, label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i, !llvm.loop !740

.lr.ph81:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !744, !nonnull !517
  %i.r = load i8, ptr %i.q, align 1, !tbaa !580, !range !583, !noundef !517
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !745, !nonnull !517, !align !518
  %.sroa.09.0.copyload = load i64, ptr %i.u, align 8, !tbaa !83
  %storemerge28.in.v = select i1 %i.s, i64 80, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph81, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit
  %.sroa.061.079 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph81 ], [ %.sroa.061.2, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit ] ; 3 uses
  %storemerge28.in = getelementptr inbounds nuw i8, ptr %.sroa.061.079, i64 %storemerge28.in.v
  %storemerge28 = load i64, ptr %storemerge28.in, align 8, !tbaa !83
  %i.v = icmp eq i64 %storemerge28, %.sroa.09.0.copyload
  br i1 %i.v, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.061.079, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.x, 0
  br i1 %.not3.i.i, label %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.critedge2.i.i
  %.sroa.061.1 = phi ptr [ %i.ai, %.critedge2.i.i ], [ %i.y, %bb.e ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.061.1, i64 28
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 127
  %i.ac = icmp eq i32 %i.ab, 76
  br i1 %i.ac, label %bb.f, label %.critedge2.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.061.1, i64 72
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 16384
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.061.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit, label %.lr.ph.i.i, !llvm.loop !740

_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit: ; preds = %bb.f, %.critedge2.i.i, %bb.e
  %.sroa.061.2 = phi ptr [ %i.y, %bb.e ], [ %i.ai, %.critedge2.i.i ], [ %.sroa.061.1, %bb.f ] ; 2 uses
  %.not70 = icmp eq ptr %.sroa.061.2, null
  br i1 %.not70, label %.thread, label %bb.d

bb.g:                                             ; preds = %bb.a
  br i1 %.not3.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %bb.g, %.critedge2.i.i.i.i35
  %.sroa.0.0.i.i34 = phi ptr [ %i.as, %.critedge2.i.i.i.i35 ], [ %i.e, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i34, i64 28
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 127
  %i.am = icmp eq i32 %i.al, 76
  br i1 %i.am, label %bb.h, label %.critedge2.i.i.i.i35

bb.h:                                             ; preds = %.lr.ph.i.i.i.i33
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i34, i64 72
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 16384
  %.not3.i.i.i.i41 = icmp eq i64 %i.ap, 0
  br i1 %.not3.i.i.i.i41, label %.critedge2.i.i.i.i35, label %.lr.ph

.critedge2.i.i.i.i35:                             ; preds = %bb.h, %.lr.ph.i.i.i.i33
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i34, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i36 = load i64, ptr %i.aq, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i36, -8 ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %.not.i.i.i.i37 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i37, label %.thread, label %.lr.ph.i.i.i.i33, !llvm.loop !741

.lr.ph:                                           ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !744, !nonnull !517
  %i.av = load i8, ptr %i.au, align 1, !tbaa !580, !range !583, !noundef !517
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !745, !nonnull !517, !align !518
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !83
  %storemerge.in.v = select i1 %i.aw, i64 80, i64 88
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit
  %.sroa.056.074 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph ], [ %.sroa.056.2, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit ] ; 3 uses
  %storemerge.in = getelementptr inbounds nuw i8, ptr %.sroa.056.074, i64 %storemerge.in.v
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !83
  %i.az = icmp eq i64 %storemerge, %.sroa.0.0.copyload
  br i1 %i.az, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.056.074, i64 8
  %.0.copyload.i.i.i.i.i.i49 = load i64, ptr %i.ba, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i.i.i49, -8  ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %.not4.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not4.i.i, label %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.j, %.critedge2.i.i51
  %.sroa.056.1 = phi ptr [ %i.bm, %.critedge2.i.i51 ], [ %i.bc, %bb.j ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.056.1, i64 28
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 127
  %i.bg = icmp eq i32 %i.bf, 76
  br i1 %i.bg, label %bb.k, label %.critedge2.i.i51

bb.k:                                             ; preds = %.lr.ph.i.i50
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.056.1, i64 72
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = and i64 %i.bi, 16384
  %.not3.i.i54 = icmp eq i64 %i.bj, 0
  br i1 %.not3.i.i54, label %.critedge2.i.i51, label %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit

.critedge2.i.i51:                                 ; preds = %bb.k, %.lr.ph.i.i50
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.056.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i52 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i.i.i52, -8 ; 2 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %.not.i.i53 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i53, label %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit, label %.lr.ph.i.i50, !llvm.loop !741

_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit: ; preds = %bb.k, %.critedge2.i.i51, %bb.j
  %.sroa.056.2 = phi ptr [ %i.bc, %bb.j ], [ %.sroa.056.1, %bb.k ], [ %i.bm, %.critedge2.i.i51 ] ; 2 uses
  %.not = icmp eq ptr %.sroa.056.2, null
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %.critedge2.i.i.i.i35, %bb.i, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit, %.critedge2.i.i.i.i, %bb.d, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit, %bb.g, %bb.b
  %.6 = phi ptr [ %.sroa.056.074, %bb.i ], [ null, %bb.b ], [ null, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_18isInstancePropertyEvEEEppEv.exit ], [ null, %bb.g ], [ null, %.critedge2.i.i.i.i ], [ %.sroa.061.079, %bb.d ], [ null, %_ZN5clang11DeclContext22filtered_decl_iteratorINS_16ObjCPropertyDeclEXadL_ZNKS2_15isClassPropertyEvEEEppEv.exit ], [ null, %.critedge2.i.i.i.i35 ]
  ret ptr %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5clang17ObjCTypeParamDecl6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang17ObjCTypeParamDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_21ObjCTypeParamVarianceENS_14SourceLocationEjS6_PNS_14IdentifierInfoES6_PNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i8 noundef zeroext %2, i32 %3, i32 noundef %4, i32 %5, ptr noundef %6, i32 %7, ptr noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4DeclnwEmRKNS_10ASTContextEPNS_11DeclContextEm(i64 noundef 104, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i64 noundef 0) #26 ; 4 uses
  tail call void @_ZN5clang17ObjCTypeParamDeclC2ERNS_10ASTContextEPNS_11DeclContextENS_21ObjCTypeParamVarianceENS_14SourceLocationEjS6_PNS_14IdentifierInfoES6_PNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(100) %i.a, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i8 noundef zeroext %2, i32 %3, i32 noundef %4, i32 %5, ptr noundef %6, i32 %7, ptr noundef %8)
  %i.b = tail call i64 @_ZNK5clang10ASTContext20getObjCTypeParamTypeEPKNS_17ObjCTypeParamDeclEN4llvm8ArrayRefIPNS_16ObjCProtocolDeclEEE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull %i.a, ptr null, i64 0) #26
  %i.c = and i64 %i.b, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.f, align 8, !tbaa !617
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17ObjCTypeParamDeclC2ERNS_10ASTContextEPNS_11DeclContextENS_21ObjCTypeParamVarianceENS_14SourceLocationEjS6_PNS_14IdentifierInfoES6_PNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %2, i8 noundef zeroext %3, i32 %4, i32 noundef %5, i32 %6, ptr noundef %7, i32 %8, ptr noundef %9) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5clang4DeclE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN5clang4Decl32getModuleOwnershipKindForChildOfEPNS_11DeclContextE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %2) #26 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i, 7      ; 2 uses
  %.not10.i.i = icmp eq i64 %i.d, 0
  br i1 %.not10.i.i, label %_ZN5clang4Decl32getModuleOwnershipKindForChildOfEPNS_11DeclContextE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 32768
  %.not12.i.i = icmp eq i32 %i.g, 0
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Decl27hasLocalOwningModuleStorageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.b) #26
  br i1 %i.h, label %.thread.i.i, label %_ZN5clang4Decl32getModuleOwnershipKindForChildOfEPNS_11DeclContextE.exit.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  br label %_ZN5clang4Decl32getModuleOwnershipKindForChildOfEPNS_11DeclContextE.exit.i

_ZN5clang4Decl32getModuleOwnershipKindForChildOfEPNS_11DeclContextE.exit.i: ; preds = %.thread.i.i, %bb.d, %bb.b, %bb.a
  %.1.i.i = phi i64 [ %i.d, %.thread.i.i ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %.1.i.i, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = ptrtoint ptr %2 to i64
  store i64 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %6, ptr %i.k, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, -65536
  %i.o = or disjoint i32 %i.n, 24643
  store i32 %i.o, ptr %i.l, align 4
  %i.p = tail call noundef i32 @_ZN5clang4Decl29getIdentifierNamespaceForKindENS0_4KindE(i32 noundef 67) #26
  %i.q = load i32, ptr %i.l, align 4
  %i.r = shl i32 %i.p, 16
  %i.s = and i32 %i.r, 1073676288
  %i.t = and i32 %i.q, -1073676289
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %i.l, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, -8
  store i8 %i.x, ptr %i.v, align 8
  %i.y = load i8, ptr @_ZN5clang4Decl17StatisticsEnabledE, align 1, !tbaa !580, !range !583, !noundef !517
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZN5clang4DeclC2ENS0_4KindEPNS_11DeclContextENS_14SourceLocationE.exit

bb.e:                                             ; preds = %_ZN5clang4Decl32getModuleOwnershipKindForChildOfEPNS_11DeclContextE.exit.i
  tail call void @_ZN5clang4Decl3addENS0_4KindE(i32 noundef 67) #26
  br label %_ZN5clang4DeclC2ENS0_4KindEPNS_11DeclContextENS_14SourceLocationE.exit

_ZN5clang4DeclC2ENS0_4KindEPNS_11DeclContextENS_14SourceLocationE.exit: ; preds = %_ZN5clang4Decl32getModuleOwnershipKindForChildOfEPNS_11DeclContextE.exit.i, %bb.e
  %i.aa = ptrtoint ptr %7 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.ac, align 8, !tbaa !617
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %6, ptr %i.ad, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = or disjoint i64 %i.af, 2
  store i64 %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %0, ptr %i.ah, align 8, !tbaa !621
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = ptrtoint ptr %9 to i64
  %i.ak = and i64 %i.aj, -4
  store i64 %i.ak, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5clang17ObjCTypeParamDeclE, i64 16), ptr %0, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = trunc i32 %5 to i16
  %i.an = and i16 %i.am, 16383
  %i.ao = and i8 %3, 3
  %i.ap = zext nneg i8 %i.ao to i16
  %i.aq = shl nuw i16 %i.ap, 14
  %i.ar = or disjoint i16 %i.an, %i.aq
  store i16 %i.ar, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %4, ptr %i.as, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %8, ptr %i.at, align 8, !tbaa !70
  ret void
}

declare i64 @_ZNK5clang10ASTContext20getObjCTypeParamTypeEPKNS_17ObjCTypeParamDeclEN4llvm8ArrayRefIPNS_16ObjCProtocolDeclEEE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang17ObjCTypeParamDecl18CreateDeserializedERNS_10ASTContextENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4DeclnwEmRKNS_10ASTContextENS_12GlobalDeclIDEm(i64 noundef 104, ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1, i64 noundef 0) #26 ; 14 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5clang4DeclE, i64 16), ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, -65536
  %i.f = or disjoint i32 %i.e, 24643
  store i32 %i.f, ptr %i.c, align 4
  %i.g = tail call noundef i32 @_ZN5clang4Decl29getIdentifierNamespaceForKindENS0_4KindE(i32 noundef 67) #26
  %i.h = load i32, ptr %i.c, align 4
  %i.i = shl i32 %i.g, 16
  %i.j = and i32 %i.i, 1073676288
  %i.k = and i32 %i.h, -1073676289
  %i.l = or disjoint i32 %i.k, %i.j
  store i32 %i.l, ptr %i.c, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, -8
  store i8 %i.o, ptr %i.m, align 8
  %i.p = load i8, ptr @_ZN5clang4Decl17StatisticsEnabledE, align 1, !tbaa !580, !range !583, !noundef !517
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %_ZN5clang17ObjCTypeParamDeclC2ERNS_10ASTContextEPNS_11DeclContextENS_21ObjCTypeParamVarianceENS_14SourceLocationEjS6_PNS_14IdentifierInfoES6_PNS_14TypeSourceInfoE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Decl3addENS0_4KindE(i32 noundef 67) #26
  br label %_ZN5clang17ObjCTypeParamDeclC2ERNS_10ASTContextEPNS_11DeclContextENS_21ObjCTypeParamVarianceENS_14SourceLocationEjS6_PNS_14IdentifierInfoES6_PNS_14TypeSourceInfoE.exit

_ZN5clang17ObjCTypeParamDeclC2ERNS_10ASTContextEPNS_11DeclContextENS_21ObjCTypeParamVarianceENS_14SourceLocationEjS6_PNS_14IdentifierInfoES6_PNS_14TypeSourceInfoE.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = ptrtoint ptr %0 to i64
  %i.u = or disjoint i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.a, ptr %i.v, align 8, !tbaa !621
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.w, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5clang17ObjCTypeParamDeclE, i64 16), ptr %i.a, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 0, ptr %i.y, align 4, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 0, ptr %i.z, align 8, !tbaa !70
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @_ZNK5clang17ObjCTypeParamDecl14getSourceRangeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0) unnamed_addr #9 align 2 {
bb.a:
  %1 = alloca %"class.clang::TypeLoc", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 8
  %.sroa.0.0 = select i1 %i.c, i32 %.sroa.0.0.copyload.i, i32 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 2 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i, label %_ZNK5clang15TypedefNameDecl17getTypeSourceInfoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !747
end_hunk_0
