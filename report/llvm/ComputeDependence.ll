Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ComputeDependence?download=true
inline.NumInlined: 2047
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5clang17computeDependenceEPNS_11DeclRefExprERKNS_10ASTContextE:bb.a
  %spec.select109 = or i8 %i.cg, %.6              ; 3 uses
  %i.ch = call noundef zeroext i1 @_ZNK5clang7VarDecl34mightBeUsableInConstantExpressionsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100) %i.an, ptr noundef nonnull align 8 dereferenceable(23904) %1) #8
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = load i24, ptr %i.cc, align 8
  %i.cj = and i24 %i.ci, 131072
  %.not119 = icmp eq i24 %i.cj, 0
  %i.ck = or i8 %spec.select109, 10
  %spec.select110 = select i1 %.not119, i8 %spec.select109, i8 %i.ck
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.8 = phi i8 [ %.6, %bb.g ], [ %spec.select109, %bb.h ], [ %spec.select110, %bb.i ] ; 8 uses
  %i.cl = load i32, ptr %i.bv, align 4
  %i.cm = and i32 %i.cl, 127
  %.not.i58 = icmp eq i32 %i.cm, 44
  br i1 %.not.i58, label %.thread103, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cn, align 8 ; 5 uses
  %i.co = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit, label %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread

_ZNK5clang7VarDecl18isStaticDataMemberEv.exit:    ; preds = %bb.k
  %i.cq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = and i16 %i.cs, 127
  %i.cu = add nsw i16 %i.ct, -59
  %spec.select.i.i59 = icmp ult i16 %i.cu, 4
  br i1 %spec.select.i.i59, label %bb.l, label %.thread103

_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread: ; preds = %bb.k
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i16, ptr %i.cy, align 8
  %i.da = and i16 %i.cz, 127
  %i.db = add nsw i16 %i.da, -59
  %spec.select.i.i59127 = icmp ult i16 %i.db, 4
  br i1 %spec.select.i.i59127, label %.thread, label %.thread103

bb.l:                                             ; preds = %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit
  %i.dc = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

.thread:                                          ; preds = %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread
  %i.dd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !34
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

_ZNK5clang4Decl14getDeclContextEv.exit:           ; preds = %bb.l, %.thread
  %.0.i.i = phi ptr [ %i.dc, %bb.l ], [ %i.df, %.thread ]
  %i.dg = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i) #8
  br i1 %i.dg, label %bb.m, label %.thread103

bb.m:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !577
  %i.dj = call noundef zeroext i1 @_ZNK5clang7VarDecl7hasInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.di) #8
  br i1 %i.dj, label %.thread103, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !577 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dl, align 8 ; 3 uses
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i60 = icmp eq i64 %i.dm, 0
  br i1 %.not.i60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !56
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

bb.p:                                             ; preds = %bb.n
  %i.dr = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit: ; preds = %bb.o, %bb.p
  %i.ds = phi ptr [ %i.dq, %bb.o ], [ %i.dr, %bb.p ]
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.dt = and i64 %.sroa.0.0.copyload.i61, -16
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.dx = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load ptr, ptr %i.dy, align 16, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i8, ptr %i.ea, align 16
  %i.ec = icmp eq i8 %i.eb, 5
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %i.ed = or i8 %.8, 14
  br label %.thread103

bb.r:                                             ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %i.ee = call noundef zeroext i1 @_ZNK5clang7VarDecl7hasInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.dk) #8
  %i.ef = or i8 %.8, 10
  %spec.select111 = select i1 %i.ee, i8 %.8, i8 %i.ef
  br label %.thread103

bb.s:                                             ; preds = %bb.f
  %i.eg = and i32 %i.bw, 124
  %.not121 = icmp eq i32 %i.eg, 36
  br i1 %.not121, label %bb.t, label %.thread103

bb.t:                                             ; preds = %bb.s
  %i.eh = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl8isStaticEv(ptr noundef nonnull align 8 dereferenceable(168) %i.an) #8
  br i1 %i.eh, label %bb.u, label %.thread103

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.0.copyload.i.i.i.i.i.i.i64 = load i64, ptr %i.ei, align 8 ; 3 uses
  %i.ej = and i64 %.0.copyload.i.i.i.i.i.i.i64, 4
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.el = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i64 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.w:                                             ; preds = %bb.u
  %i.em = and i64 %.0.copyload.i.i.i.i.i.i.i64, -5
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !34
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.v, %bb.w
  %.0.i65 = phi ptr [ %i.el, %bb.v ], [ %i.eo, %bb.w ]
  %i.ep = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i65) #8
  %i.eq = or i8 %.6, 10
  %spec.select112 = select i1 %i.ep, i8 %i.eq, i8 %.6
  br label %.thread103

.thread103:                                       ; preds = %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread, %_ZN5clang4Decl14getDeclContextEv.exit, %bb.r, %bb.j, %bb.q, %bb.m, %_ZNK5clang4Decl14getDeclContextEv.exit, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit, %bb.s, %bb.t, %bb.d, %bb.e
  %.3 = phi i8 [ %i.bz, %bb.e ], [ %i.bu, %bb.d ], [ %.6, %bb.t ], [ %.6, %bb.s ], [ %i.ed, %bb.q ], [ %spec.select112, %_ZN5clang4Decl14getDeclContextEv.exit ], [ %.8, %bb.m ], [ %.8, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit ], [ %.8, %_ZNK5clang4Decl14getDeclContextEv.exit ], [ %.8, %bb.j ], [ %spec.select111, %bb.r ], [ %.8, %_ZNK5clang7VarDecl18isStaticDataMemberEv.exit.thread ]
  ret i8 %.3
}

declare noundef zeroext i8 @_ZNK5clang19NestedNameSpecifier13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK5clang16TemplateArgument13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang7VarDecl34mightBeUsableInConstantExpressionsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang7VarDecl7hasInitEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang13CXXMethodDecl8isStaticEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 26, 32) i8 @_ZN5clang17computeDependenceEPNS_12RecoveryExprE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i16, ptr %i.e, align 1
  %i.g = trunc i16 %i.f to i8
  %i.h = and i8 %i.g, 5
  %i.i = or disjoint i8 %i.h, 26                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !580  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.idx = shl nuw nsw i64 %i.l, 3                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = add nsw i64 %.idx, -8                    ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.015.prol = phi ptr [ %i.x, %.lr.ph.prol ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.01214.prol = phi i8 [ %i.w, %.lr.ph.prol ], [ %i.i, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.r = load ptr, ptr %.015.prol, align 8, !tbaa !43
  %i.s = load i24, ptr %i.r, align 8
  %i.t = lshr i24 %i.s, 14
  %i.u = trunc i24 %i.t to i8
  %i.v = and i8 %i.u, 5
  %i.w = or i8 %i.v, %.01214.prol                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !578

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.015.unr = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.01214.unr = phi i8 [ %i.i, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %i.y = icmp ult i64 %i.o, 24
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.012.lcssa = phi i8 [ %i.i, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.aq, %.lr.ph ]
  ret i8 %.012.lcssa

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi ptr [ %i.ar, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01214 = phi i8 [ %i.aq, %.lr.ph ], [ %.01214.unr, %.lr.ph.prol.loopexit ]
  %i.z = load ptr, ptr %.015, align 8, !tbaa !43
  %i.aa = load i24, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load i24, ptr %i.ac, align 8
  %i.ae = or i24 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = load i24, ptr %i.ag, align 8
  %i.ai = or i24 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.015, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.al = load i24, ptr %i.ak, align 8
  %i.am = or i24 %i.ai, %i.al
  %i.an = lshr i24 %i.am, 14
  %i.ao = trunc i24 %i.an to i8
  %i.ap = and i8 %i.ao, 5
  %i.aq = or i8 %i.ap, %.01214                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.015, i64 32 ; 2 uses
  %.not.3 = icmp eq ptr %i.ar, %i.n
  br i1 %.not.3, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_24SYCLUniqueStableNameExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !582
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !16
  %i.c = and i64 %.sroa.0.0.copyload.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.g = load i16, ptr %i.f, align 1
  %i.h = trunc i16 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 4
  %.not.i6.i.i = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.k = and i8 %i.h, 19
  %i.l = or disjoint i8 %i.j, %i.k
  ret i8 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 31) i8 @_ZN5clang17computeDependenceEPNS_14PredefinedExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i16, ptr %i.e, align 1
  %i.g = trunc i16 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 4
  %.not.i6.i.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.j = and i8 %i.g, 18
  %i.k = or disjoint i8 %i.i, %i.j
  ret i8 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_8CallExprEN4llvm8ArrayRefIPNS_4ExprEEE(ptr nofree noundef readonly captures(address) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load i24, ptr %i.b, align 8
  %i.d = lshr i24 %i.c, 14
  %i.e = trunc i24 %i.d to i8
  %i.f = and i8 %i.e, 31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.h = and i64 %.sroa.0.0.copyload.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.l = load i16, ptr %i.k, align 1
  %i.m = trunc i16 %i.l to i8
  %i.n = and i8 %i.m, 4
  %spec.select = or i8 %i.n, %i.f                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %0, align 8
  %i.q = lshr i32 %i.p, 19
  %i.r = and i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !585  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx = shl nuw nsw i64 %i.w, 3                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.y = add nsw i64 %.idx, -8                    ; 2 uses
  %i.z = and i64 %i.y, 8
  %lcmp.mod.not.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  %.not22.prol = icmp eq ptr %i.aa, null
  br i1 %.not22.prol, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph.prol
  %i.ab = load i24, ptr %i.aa, align 8
  %i.ac = lshr i24 %i.ab, 14
  %i.ad = trunc i24 %i.ac to i8
  %i.ae = and i8 %i.ad, 31
  %i.af = or i8 %i.ae, %spec.select
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.b, %.lr.ph.prol
  %.2.prol = phi i8 [ %spec.select, %.lr.ph.prol ], [ %i.af, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.2.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.01934.unr = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.ag, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.133.unr = phi i8 [ %spec.select, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.ah = icmp eq i64 %i.y, 0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.e, %bb.a
  %.1.lcssa = phi i8 [ %spec.select, %bb.a ], [ %.2.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2.1, %bb.e ] ; 3 uses
  %.idx42 = shl i64 %2, 3                         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.idx42
  %.not2135 = icmp eq i64 %2, 0
  br i1 %.not2135, label %._crit_edge40, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %._crit_edge
  %i.aj = add i64 %.idx42, -8                     ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1
  %xtraiter44 = and i64 %i.al, 3                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph39.prol.loopexit, label %.lr.ph39.prol

.lr.ph39.prol:                                    ; preds = %.lr.ph39.preheader, %.lr.ph39.prol
  %.037.prol = phi ptr [ %i.as, %.lr.ph39.prol ], [ %1, %.lr.ph39.preheader ] ; 2 uses
  %.336.prol = phi i8 [ %i.ar, %.lr.ph39.prol ], [ %.1.lcssa, %.lr.ph39.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph39.prol ], [ 0, %.lr.ph39.preheader ]
  %i.am = load ptr, ptr %.037.prol, align 8, !tbaa !43
  %i.an = load i24, ptr %i.am, align 8
  %i.ao = lshr i24 %i.an, 14
  %i.ap = trunc i24 %i.ao to i8
  %i.aq = and i8 %i.ap, 31
  %i.ar = or i8 %i.aq, %.336.prol                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.037.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter44
  br i1 %prol.iter.cmp.not, label %.lr.ph39.prol.loopexit, label %.lr.ph39.prol, !llvm.loop !583

.lr.ph39.prol.loopexit:                           ; preds = %.lr.ph39.prol, %.lr.ph39.preheader
  %.lcssa.unr = phi i8 [ poison, %.lr.ph39.preheader ], [ %i.ar, %.lr.ph39.prol ]
  %.037.unr = phi ptr [ %1, %.lr.ph39.preheader ], [ %i.as, %.lr.ph39.prol ]
  %.336.unr = phi i8 [ %.1.lcssa, %.lr.ph39.preheader ], [ %i.ar, %.lr.ph39.prol ]
  %i.at = icmp ult i64 %i.aj, 24
  br i1 %i.at, label %._crit_edge40, label %.lr.ph39

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.e
  %.01934 = phi ptr [ %i.bh, %bb.e ], [ %.01934.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.133 = phi i8 [ %.2.1, %bb.e ], [ %.133.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.au = load ptr, ptr %.01934, align 8, !tbaa !43 ; 2 uses
  %.not22 = icmp eq ptr %i.au, null
  br i1 %.not22, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.av = load i24, ptr %i.au, align 8
  %i.aw = lshr i24 %i.av, 14
  %i.ax = trunc i24 %i.aw to i8
  %i.ay = and i8 %i.ax, 31
  %i.az = or i8 %i.ay, %.133
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c, %.lr.ph
  %.2 = phi i8 [ %.133, %.lr.ph ], [ %i.az, %bb.c ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01934, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %.not22.1 = icmp eq ptr %i.bb, null
  br i1 %.not22.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.bc = load i24, ptr %i.bb, align 8
  %i.bd = lshr i24 %i.bc, 14
  %i.be = trunc i24 %i.bd to i8
  %i.bf = and i8 %i.be, 31
  %i.bg = or i8 %i.bf, %.2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.2.1 = phi i8 [ %.2, %.lr.ph.1 ], [ %i.bg, %bb.d ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01934, i64 16 ; 2 uses
  %.not.1 = icmp eq ptr %i.bh, %i.x
  br i1 %.not.1, label %._crit_edge, label %.lr.ph

._crit_edge40:                                    ; preds = %.lr.ph39.prol.loopexit, %.lr.ph39, %._crit_edge
  %.3.lcssa = phi i8 [ %.1.lcssa, %._crit_edge ], [ %.lcssa.unr, %.lr.ph39.prol.loopexit ], [ %i.bz, %.lr.ph39 ]
  ret i8 %.3.lcssa

.lr.ph39:                                         ; preds = %.lr.ph39.prol.loopexit, %.lr.ph39
  %.037 = phi ptr [ %i.ca, %.lr.ph39 ], [ %.037.unr, %.lr.ph39.prol.loopexit ] ; 5 uses
  %.336 = phi i8 [ %i.bz, %.lr.ph39 ], [ %.336.unr, %.lr.ph39.prol.loopexit ]
  %i.bi = load ptr, ptr %.037, align 8, !tbaa !43
  %i.bj = load i24, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = load i24, ptr %i.bl, align 8
  %i.bn = or i24 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.037, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bq = load i24, ptr %i.bp, align 8
  %i.br = or i24 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.037, i64 24
end_hunk_0
begin_hunk_1_@_ZN5clang17computeDependenceEPNS_11CXXFoldExprE:bb.a
  %i.k = lshr i24 %i.j, 14
  %i.l = trunc i24 %i.k to i8
  %i.m = and i8 %i.l, 16
  %i.n = or i8 %i.m, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i8 [ %.1, %bb.c ], [ %i.n, %bb.d ]
  ret i8 %.1.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_20CXXParenListInitExprE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !656  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = add nuw nsw i64 %i.d, 2305843009213693951
  %i.f = and i64 %i.e, 2305843009213693951        ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 3
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 4611686018427387900
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.01012.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.013.epil = phi ptr [ %i.o, %.lr.ph.epil ], [ %.013.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01012.epil = phi i8 [ %i.n, %.lr.ph.epil ], [ %.01012.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.i = load ptr, ptr %.013.epil, align 8, !tbaa !43
  %i.j = load i24, ptr %i.i, align 8
  %i.k = lshr i24 %i.j, 14
  %i.l = trunc i24 %i.k to i8
  %i.m = and i8 %i.l, 31
  %i.n = or i8 %i.m, %.01012.epil                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !650

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.010.lcssa = phi i8 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil ]
  ret i8 %.010.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi ptr [ %i.c, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 5 uses
  %.01012 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.p = load ptr, ptr %.013, align 8, !tbaa !43
  %i.q = load i24, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = load i24, ptr %i.s, align 8
  %i.u = or i24 %i.q, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = load i24, ptr %i.w, align 8
  %i.y = or i24 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ab = load i24, ptr %i.aa, align 8
  %i.ac = or i24 %i.y, %i.ab
  %i.ad = lshr i24 %i.ac, 14
  %i.ae = trunc i24 %i.ad to i8
  %i.af = and i8 %i.ae, 31
  %i.ag = or i8 %i.af, %.01012                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_13TypeTraitExprE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %0, align 8
  %i.e = lshr i32 %i.d, 27
  %.lobit.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = xor i32 %.lobit.i.i.i.i.i.i, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext i32 %i.b to i64
  %i.j = add nuw nsw i64 %i.i, 2305843009213693951 ; 2 uses
  %i.k = and i64 %i.j, 2305843009213693951        ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.l, 4611686018427387902
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.n = and i64 %i.j, 1
  %lcmp.mod.not.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.014.epil.init = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.01113.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.o = load ptr, ptr %.014.epil.init, align 8, !tbaa !63
  %.sroa.0.0.copyload.i.epil = load i64, ptr %i.o, align 8, !tbaa !16
  %i.p = and i64 %.sroa.0.0.copyload.i.epil, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %i.t = load i16, ptr %i.s, align 1
  %i.u = trunc i16 %i.t to i8                     ; 2 uses
  %i.v = shl i8 %i.u, 1
  %i.w = and i8 %i.v, 8
  %i.x = and i8 %i.u, 19
  %i.y = or i8 %i.x, %.01113.epil.init
  %i.z = or i8 %i.y, %i.w
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.011.lcssa = phi i8 [ 0, %bb.a ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.epil.preheader ]
  ret i8 %.011.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.014 = phi ptr [ %i.h, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 3 uses
  %.01113 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aa = load ptr, ptr %.014, align 8, !tbaa !63
  %.sroa.0.0.copyload.i = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ab = and i64 %.sroa.0.0.copyload.i, -16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 17
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = trunc i16 %i.af to i8                   ; 2 uses
  %i.ah = shl i8 %i.ag, 1
  %i.ai = and i8 %i.ah, 8
  %i.aj = and i8 %i.ag, 19
  %i.ak = or i8 %i.aj, %.01113
  %i.al = or i8 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ao = and i64 %.sroa.0.0.copyload.i.1, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 17
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = trunc i16 %i.as to i8                   ; 2 uses
  %i.au = shl i8 %i.at, 1
  %i.av = and i8 %i.au, 8
  %i.aw = and i8 %i.at, 19
  %i.ax = or i8 %i.aw, %i.al
  %i.ay = or i8 %i.ax, %i.av                      ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_25ConceptSpecializationExprEb(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !661
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !666  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !668  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01223 = phi ptr [ %2, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.02022 = phi i8 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %i.j = tail call noundef zeroext i8 @_ZNK5clang16TemplateArgument13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(24) %.01223) #8
  %i.k = and i8 %i.j, 3
  %i.l = or i8 %i.k, %.02022                      ; 3 uses
  %.not13 = icmp eq i8 %i.l, 3
  %2 = getelementptr inbounds nuw i8, ptr %.01223, i64 32 ; 2 uses
  %.not13.a = icmp eq ptr %2, %i.i
  %or.cond = select i1 %.not13, i1 true, i1 %.not13.a
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %i.l, %.lr.ph ]
  %i.m = select i1 %1, i8 8, i8 0
  %i.n = or disjoint i8 %.1, %i.m                 ; 2 uses
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !669
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8
  %i.s = shl i8 %i.r, 3
  %i.t = and i8 %i.s, 16
  %spec.select = or i8 %i.t, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0 = phi i8 [ %i.n, %._crit_edge ], [ %spec.select, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_16ObjCArrayLiteralE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !673  ; 3 uses
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.c, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.079.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.079.epil = phi i8 [ %.079.epil.init, %.lr.ph.epil.preheader ], [ %i.l, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = load i24, ptr %i.g, align 8
  %i.i = lshr i24 %i.h, 14
  %i.j = trunc i24 %i.i to i8
  %i.k = and i8 %i.j, 27
  %i.l = or i8 %i.k, %.079.epil                   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !670

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.07.lcssa = phi i8 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil ]
  ret i8 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.079 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = load i24, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = load i24, ptr %i.r, align 8
  %i.t = or i24 %i.o, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = load i24, ptr %i.w, align 8
  %i.y = or i24 %i.t, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = load i24, ptr %i.ab, align 8
  %i.ad = or i24 %i.y, %i.ac
  %i.ae = lshr i24 %i.ad, 14
  %i.af = trunc i24 %i.ae to i8
  %i.ag = and i8 %i.af, 27
  %i.ah = or i8 %i.ag, %.079                      ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !671
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_21ObjCDictionaryLiteralE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = and i32 %i.b, 2147483647                 ; 4 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.not.i = icmp sgt i32 %i.b, -1
  %i.e = zext nneg i32 %i.c to i64                ; 5 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 3 uses
  br i1 %.not.i, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader

_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.e, 1
  %i.g = icmp eq i32 %i.c, 1
  br i1 %i.g, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.epil.preheader, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader.new

_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader.new: ; preds = %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader
  %unroll_iter = and i64 %i.e, 2147483646
  br label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit

_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter26 = and i64 %i.e, 1
  %i.h = icmp eq i32 %i.c, 1
  br i1 %i.h, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.epil.preheader, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader.new

_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader.new: ; preds = %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader
  %unroll_iter30 = and i64 %i.e, 2147483646
  br label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us

_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us: ; preds = %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader.new
  %indvars.iv14 = phi i64 [ 0, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader.new ], [ %indvars.iv.next15.1, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us ] ; 3 uses
  %.0910.us = phi i8 [ 0, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader.new ], [ %i.z, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us ]
  %niter31 = phi i64 [ 0, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader.new ], [ %niter31.next.1, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv14 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !678, !noalias !679
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !680, !noalias !679
  %i.m = load i24, ptr %i.j, align 8
  %i.n = load i24, ptr %i.l, align 8
  %i.o = or i24 %i.n, %i.m
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !678, !noalias !679
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !680, !noalias !679
  %i.u = load i24, ptr %i.r, align 8
  %i.v = load i24, ptr %i.t, align 8
  %i.w = or i24 %i.v, %i.u
  %i.x = or i24 %i.o, %i.w
  %spec.select.us3233 = lshr i24 %i.x, 14
  %spec.select.us32 = trunc i24 %spec.select.us3233 to i8
  %i.y = and i8 %spec.select.us32, 27
  %i.z = or i8 %i.y, %.0910.us                    ; 3 uses
  %indvars.iv.next15.1 = add nuw nsw i64 %indvars.iv14, 2 ; 2 uses
  %niter31.next.1 = add i64 %niter31, 2           ; 2 uses
  %niter31.ncmp.1 = icmp eq i64 %niter31.next.1, %unroll_iter30
  br i1 %niter31.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us, !llvm.loop !676

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %._crit_edge, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.epil.preheader

_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader
  %indvars.iv14.epil.init = phi i64 [ 0, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader ], [ %indvars.iv.next15.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0910.us.epil.init = phi i8 [ 0, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.us.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv14.epil.init ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !678, !noalias !679
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !680, !noalias !679
  %i.ae = load i24, ptr %i.ab, align 8
  %i.af = load i24, ptr %i.ad, align 8
  %i.ag = or i24 %i.af, %i.ae
  %i.ah = lshr i24 %i.ag, 14
  %i.ai = trunc i24 %i.ah to i8
  %spec.select.us.epil = and i8 %i.ai, 27
  %i.aj = or i8 %spec.select.us.epil, %.0910.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit22.unr-lcssa:                 ; preds = %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.epil.preheader

_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.epil.preheader: ; preds = %._crit_edge.loopexit22.unr-lcssa, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit22.unr-lcssa ] ; 2 uses
  %.0910.epil.init = phi i8 [ 0, %_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj.exit.preheader ], [ %i.bz, %._crit_edge.loopexit22.unr-lcssa ]
  %lcmp.mod25 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil.init ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !678, !noalias !679
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !680, !noalias !679
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
end_hunk_1
