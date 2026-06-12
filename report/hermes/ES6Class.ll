inline.NumInlined: 3253
inline.NumDeleted: 1347
begin_hunk_0_@_ZN6hermes25ES6ClassesTransformations27createCallWithForwardedThisEPNS_6ESTree4NodeES3_N12_GLOBAL__N_110NodeVectorE:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %4, ptr %i.dh, align 8, !tbaa !596
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !597
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !596
  store ptr %i.dg, ptr %4, align 8, !tbaa !597, !alias.scope !1047
  %i.dj = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !408, !noalias !1047 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %4, ptr %i.dl, align 8, !tbaa !596
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !597
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !596
  store ptr %i.dk, ptr %4, align 8, !tbaa !597, !alias.scope !1047
  %i.dn = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !408, !noalias !1047 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %4, ptr %i.dp, align 8, !tbaa !596
  store ptr %i.dk, ptr %i.do, align 8, !tbaa !597
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !596
  store ptr %i.do, ptr %4, align 8, !tbaa !597, !alias.scope !1047
  %i.dr = getelementptr inbounds nuw i8, ptr %.02.i, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !408, !noalias !1047 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %4, ptr %i.dt, align 8, !tbaa !596
  store ptr %i.do, ptr %i.ds, align 8, !tbaa !597
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !596
  store ptr %i.ds, ptr %4, align 8, !tbaa !597, !alias.scope !1047
  %i.dv = getelementptr inbounds nuw i8, ptr %.02.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.dv, %i.cv
  br i1 %.not.i.3, label %_ZNK12_GLOBAL__N_110NodeVector10toNodeListEv.exit, label %.lr.ph.i

_ZNK12_GLOBAL__N_110NodeVector10toNodeListEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN6hermes25ES6ClassesTransformations21createTransformedNodeINS_6ESTree20MemberExpressionNodeEJRPNS2_4NodeERPNS2_14IdentifierNodeEbEEEPT_S5_DpOT0_.exit
  %i.dw = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !30, !align !31 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !32 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !40
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !48
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !50
  %i.eh = add i64 %i.eg, 7                        ; 2 uses
  %i.ei = add i64 %i.eh, %i.ee
  %i.ej = and i64 %i.ei, 7
  %i.ek = sub i64 %i.eh, %i.ej                    ; 3 uses
  store i64 %i.ek, ptr %i.ef, align 8, !tbaa !50
  %i.el = add i64 %i.ek, 80                       ; 2 uses
  %i.em = icmp ugt i64 %i.el, 262144
  br i1 %i.em, label %.critedge.i.i.i.i20, label %bb.h, !prof !51

.critedge.i.i.i.i20:                              ; preds = %_ZNK12_GLOBAL__N_110NodeVector10toNodeListEv.exit
  %i.en = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.dw, i64 noundef 80, i64 noundef 8) #12
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i14

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_110NodeVector10toNodeListEv.exit
  %i.eo = add i64 %i.ek, %i.ee
  %i.ep = inttoptr i64 %i.eo to ptr
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !50
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i14

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i14: ; preds = %bb.h, %.critedge.i.i.i.i20
  %.0.i.i.i.i15 = phi ptr [ %i.en, %.critedge.i.i.i.i20 ], [ %i.ep, %bb.h ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i.i15, i8 0, i64 16, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 16
  store i32 51, ptr %i.eq, align 8, !tbaa !132
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.er, i8 0, i64 28, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 48
  store ptr %.0.i.i.i.i8, ptr %i.es, align 8, !tbaa !673
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 56
  store ptr null, ptr %i.et, align 8, !tbaa !676
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 64 ; 7 uses
  store ptr %i.eu, ptr %i.eu, align 8, !tbaa !597
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 72 ; 2 uses
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !596
  %i.ew = load ptr, ptr %i.ct, align 8, !tbaa !596 ; 4 uses
  %i.ex = icmp eq ptr %i.eu, %4
  %i.ey = icmp eq ptr %i.ew, %4
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ex, %i.ey
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i14
  %i.ez = load ptr, ptr %4, align 8, !tbaa !597   ; 2 uses
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !597
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %4, ptr %i.fb, align 8, !tbaa !596
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.eu, ptr %i.fc, align 8, !tbaa !596
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !597
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !596
  store ptr %i.ez, ptr %i.eu, align 8, !tbaa !597
  br label %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit.i

_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit.i: ; preds = %bb.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit.i14
  br i1 %.not.i.i.i, label %_ZN6hermes25ES6ClassesTransformations21createTransformedNodeINS_6ESTree18CallExpressionNodeEJRPNS2_20MemberExpressionNodeEDnN4llvh12simple_ilistINS2_4NodeEJEEEEEEPT_PS9_DpOT0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i17 = load ptr, ptr %i.fd, align 8, !tbaa !52
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i17, ptr %i.fe, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i9.i.i.i18 = load ptr, ptr %i.ff, align 8, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 32
  store ptr %.sroa.0.0.copyload.i9.i.i.i18, ptr %i.fg, align 8, !tbaa !52
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i10.i.i.i19 = load ptr, ptr %i.fh, align 8, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 40
  store ptr %.sroa.0.0.copyload.i10.i.i.i19, ptr %i.fi, align 8, !tbaa !52
  br label %_ZN6hermes25ES6ClassesTransformations21createTransformedNodeINS_6ESTree18CallExpressionNodeEJRPNS2_20MemberExpressionNodeEDnN4llvh12simple_ilistINS2_4NodeEJEEEEEEPT_PS9_DpOT0_.exit

_ZN6hermes25ES6ClassesTransformations21createTransformedNodeINS_6ESTree18CallExpressionNodeEJRPNS2_20MemberExpressionNodeEDnN4llvh12simple_ilistINS2_4NodeEJEEEEEEPT_PS9_DpOT0_.exit: ; preds = %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret ptr %.0.i.i.i.i15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIPN6hermes6ESTree4NodeEE6insertEPS4_RKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1035   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1036 ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.f = icmp eq ptr %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1037
  %.not.i = icmp ult i32 %i.c, %i.h               ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6ESTree4NodeELb1EE9push_backERKS4_.exit, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 8) #12
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !1036
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !1035
  %.pre21 = zext i32 %.pre.i to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6ESTree4NodeELb1EE9push_backERKS4_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6ESTree4NodeELb1EE9push_backERKS4_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre21, %bb.c ]
  %i.j = phi ptr [ %i.a, %bb.b ], [ %.pre20, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.pre-phi
  %i.l = load i64, ptr %2, align 8
  store i64 %i.l, ptr %i.k, align 1
  %i.m = load i32, ptr %i.b, align 8, !tbaa !1036
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %i.b, align 8, !tbaa !1036
  %i.o = load ptr, ptr %0, align 8, !tbaa !1035
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %1 to i64
  %i.t = ptrtoint ptr %i.a to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 8) #12
  %i.w = load ptr, ptr %0, align 8, !tbaa !1035   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %.pre = load i32, ptr %i.b, align 8, !tbaa !1036 ; 2 uses
  %.pre22 = zext i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi23 = phi i64 [ %.pre22, %bb.e ], [ %i.d, %bb.d ]
  %i.y = phi i32 [ %.pre, %bb.e ], [ %i.c, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %i.w, %bb.e ], [ %i.a, %bb.d ]
  %.015 = phi ptr [ %i.x, %bb.e ], [ %1, %bb.d ]  ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.pre-phi23 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !408
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %.015 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !54

bb.g:                                             ; preds = %bb.f
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %.015, i64 %i.af, i1 false)
  %.pre19 = load i32, ptr %i.b, align 8, !tbaa !1036
  br label %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp eq i64 %i.af, 8
  br i1 %i.ak, label %bb.i, label %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %.015, align 8, !tbaa !408
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !408
  br label %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %3 = phi i32 [ %.pre19, %bb.g ], [ %i.y, %bb.h ], [ %i.y, %bb.i ]
  %4 = add i32 %3, 1                              ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !1036
  %.not18 = icmp ugt ptr %.015, %2
  br i1 %.not18, label %6, label %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit.a

_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit.a: ; preds = %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !1035
  %i.an = zext i32 %4 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %5 = icmp ult ptr %2, %i.ao
  %.0.idx = select i1 %5, i64 8, i64 0
  %.0.a = getelementptr inbounds nuw i8, ptr %2, i64 %.0.idx
  br label %6

6:                                                ; preds = %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit.a, %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit
  %.0 = phi ptr [ %2, %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit ], [ %.0.a, %_ZSt13move_backwardIPPN6hermes6ESTree4NodeES4_ET0_T_S6_S5_.exit.a ]
  %7 = load ptr, ptr %.0, align 8, !tbaa !408
  store ptr %7, ptr %.015, align 8, !tbaa !408
  br label %bb.j

bb.j:                                             ; preds = %6, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6ESTree4NodeELb1EE9push_backERKS4_.exit
  %.014 = phi ptr [ %i.r, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes6ESTree4NodeELb1EE9push_backERKS4_.exit ], [ %.015, %6 ]
  ret ptr %.014
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes25ES6ClassesTransformations17cloneNodeInternalEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %i.d = icmp eq i32 %i.c, 66
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !443
  %i.h = tail call noundef ptr @_ZN6hermes25ES6ClassesTransformations17cloneNodeInternalEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.g), !inline_history !1038
  %i.i = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !30, !align !31 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !50
  %i.t = add i64 %i.s, 7                          ; 2 uses
  %i.u = add i64 %i.t, %i.q
  %i.v = and i64 %i.u, 7
  %i.w = sub i64 %i.t, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !50
  %i.x = add i64 %i.w, 72                         ; 2 uses
  %i.y = icmp ugt i64 %i.x, 262144
  br i1 %i.y, label %.critedge.i.i.i.i, label %bb.d, !prof !51

.critedge.i.i.i.i:                                ; preds = %bb.c
  %i.z = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.i, i64 noundef 72, i64 noundef 8) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.w, %i.q
  %i.ab = inttoptr i64 %i.aa to ptr
  store i64 %i.x, ptr %i.r, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.i.i.i, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.z, %.critedge.i.i.i.i ], [ %i.ab, %bb.d ]
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !62
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.ad = icmp eq i32 %i.c, 58
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !683
  %i.ag = tail call noundef ptr @_ZN6hermes25ES6ClassesTransformations17cloneNodeInternalEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.af), !inline_history !1038 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !686
  %i.aj = tail call noundef ptr @_ZN6hermes25ES6ClassesTransformations17cloneNodeInternalEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.ai), !inline_history !1038 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !30, !align !31 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !40
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50
  %i.av = add i64 %i.au, 7                        ; 2 uses
  %i.aw = add i64 %i.av, %i.as
  %i.ax = and i64 %i.aw, 7
  %i.ay = sub i64 %i.av, %i.ax                    ; 3 uses
  store i64 %i.ay, ptr %i.at, align 8, !tbaa !50
  %i.az = add i64 %i.ay, 72                       ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 262144
  br i1 %i.ba, label %.critedge.i.i.i.i28, label %bb.g, !prof !51

.critedge.i.i.i.i28:                              ; preds = %bb.f
  %i.bb = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ak, i64 noundef 72, i64 noundef 8) #12
  br label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.bc = add i64 %i.ay, %i.as
  %i.bd = inttoptr i64 %i.bc to ptr
  store i64 %i.az, ptr %i.at, align 8, !tbaa !50
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge.i.i.i.i28, %bb.g, %bb.e
  %.0.i.i.i.i.sink52 = phi ptr [ %.0.i.i.i.i, %bb.e ], [ %i.bb, %.critedge.i.i.i.i28 ], [ %i.bd, %bb.g ] ; 10 uses
  %.sink49 = phi i32 [ 66, %bb.e ], [ 58, %.critedge.i.i.i.i28 ], [ 58, %bb.g ]
  %.sink44 = phi ptr [ %i.ac, %bb.e ], [ %i.ag, %.critedge.i.i.i.i28 ], [ %i.ag, %bb.g ]
  %.sink41 = phi ptr [ %i.h, %bb.e ], [ %i.aj, %.critedge.i.i.i.i28 ], [ %i.aj, %bb.g ]
  %.sink.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sink = load i8, ptr %.sink.in, align 8, !tbaa !1051, !range !1043, !noundef !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i.i.sink52, i8 0, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 16
  store i32 %.sink49, ptr %i.be, align 8, !tbaa !132
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bf, i8 0, i64 28, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 48
  store ptr %.sink44, ptr %i.bg, align 8, !tbaa !1052
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 56
  store ptr %.sink41, ptr %i.bh, align 8, !tbaa !408
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 64
  store i8 %.sink, ptr %i.bi, align 8, !tbaa !1051
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.bk, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i9.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 32
  store ptr %.sroa.0.0.copyload.i9.i.i.i, ptr %i.bm, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i10.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sink52, i64 40
  store ptr %.sroa.0.0.copyload.i10.i.i.i, ptr %i.bo, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i.sink52, %.sink.split ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN6hermes25ES6ClassesTransformations5visitEPNS_6ESTree20MemberExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !683
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !132
  %.not = icmp eq i32 %i.d, 41
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_25ES6ClassesTransformationsELb0EE13visitChildrenERS2_PNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1), !inline_history !1033
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1030 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1031 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_25ES6ClassesTransformationsELb0EE13visitChildrenERS2_PNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1), !inline_history !1033
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !686
  %i.m = tail call noundef ptr @_ZN6hermes25ES6ClassesTransformations22createGetSuperPropertyEPNS_6ESTree4NodeES3_S3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.i, ptr noundef %i.l)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sroa.0.0 = phi ptr [ undef, %bb.e ], [ %i.m, %bb.f ], [ undef, %bb.b ]
  %.sroa.4.0 = phi i8 [ 0, %bb.e ], [ 2, %bb.f ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes25ES6ClassesTransformations22createGetSuperPropertyEPNS_6ESTree4NodeES3_S3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 16 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !30, !align !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr nonnull @.str.7, i64 7)
  %i.d = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !30, !align !31 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  %i.o = add i64 %i.n, 7                          ; 2 uses
  %i.p = add i64 %i.o, %i.l
end_hunk_0
