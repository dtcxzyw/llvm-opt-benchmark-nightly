inline.NumInlined: 660
inline.NumDeleted: 220
begin_hunk_0_@_ZNK6google8protobuf3Api12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ej = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 noundef %.1.i.i, ptr noundef nonnull %i.ei) ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = or i32 %i.ek, 1
  %i.em = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.el, i1 true)
  %i.en = xor i32 %i.em, 31
  %i.eo = mul nuw nsw i32 %i.en, 9
  %i.ep = add nuw nsw i32 %i.eo, 73
  %i.eq = lshr i32 %i.ep, 6
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = add i64 %i.ej, %.485
  %i.et = add i64 %i.es, %i.er                    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.049.084, i64 8 ; 2 uses
  %.not66 = icmp eq ptr %i.eu, %i.cf
  br i1 %.not66, label %.loopexit, label %.lr.ph86

.loopexit:                                        ; preds = %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit, %bb.d, %.loopexit72
  %.5 = phi i64 [ %.3, %.loopexit72 ], [ %i.bv, %bb.d ], [ %i.et, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit ] ; 3 uses
  %i.ev = and i32 %i.m, 8
  %.not67 = icmp eq i32 %i.ev, 0
  br i1 %.not67, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, -4
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !27 ; 3 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fe = trunc i64 %i.fc to i32
  %i.ff = or i32 %i.fe, 1
  %i.fg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true)
  %i.fh = xor i32 %i.fg, 31
  %i.fi = mul nuw nsw i32 %i.fh, 9
  %i.fj = add nuw nsw i32 %i.fi, 73
  %i.fk = lshr i32 %i.fj, 6
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = add i64 %.5, 1
  %i.fn = add i64 %i.fm, %i.fc
  %i.fo = add i64 %i.fn, %i.fl
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.loopexit
  %.6 = phi i64 [ %.5, %bb.k ], [ %i.fo, %bb.l ], [ %.5, %.loopexit ] ; 3 uses
  %i.fp = and i32 %i.m, 16
  %.not68 = icmp eq i32 %i.fp, 0
  br i1 %.not68, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !19
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, -4
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !27 ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = or i32 %i.fy, 1
  %i.ga = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fz, i1 true)
  %i.gb = xor i32 %i.ga, 31
  %i.gc = mul nuw nsw i32 %i.gb, 9
  %i.gd = add nuw nsw i32 %i.gc, 73
  %i.ge = lshr i32 %i.gd, 6
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = add i64 %.6, 1
  %i.gh = add i64 %i.gg, %i.fw
  %i.gi = add i64 %i.gh, %i.gf
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.7 = phi i64 [ %.6, %bb.n ], [ %i.gi, %bb.o ], [ %.6, %bb.m ] ; 3 uses
  %i.gj = and i32 %i.m, 32
  %.not69 = icmp eq i32 %i.gj, 0
  br i1 %.not69, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !19
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = and i64 %i.gm, -4
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !27 ; 3 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gs = trunc i64 %i.gq to i32
  %i.gt = or i32 %i.gs, 1
  %i.gu = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gt, i1 true)
  %i.gv = xor i32 %i.gu, 31
  %i.gw = mul nuw nsw i32 %i.gv, 9
  %i.gx = add nuw nsw i32 %i.gw, 73
  %i.gy = lshr i32 %i.gx, 6
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = add i64 %.7, 1
  %i.hb = add i64 %i.ha, %i.gq
  %i.hc = add i64 %i.hb, %i.gz
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.8 = phi i64 [ %.7, %bb.q ], [ %i.hc, %bb.r ], [ %.7, %bb.p ] ; 2 uses
  %i.hd = and i32 %i.m, 64
  %.not70 = icmp eq i32 %i.hd, 0
  br i1 %.not70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !11
  %i.hg = tail call noundef i64 @_ZNK6google8protobuf13SourceContext12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hf) ; 2 uses
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = or i32 %i.hh, 1
  %i.hj = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hi, i1 true)
  %i.hk = xor i32 %i.hj, 31
  %i.hl = mul nuw nsw i32 %i.hk, 9
  %i.hm = add nuw nsw i32 %i.hl, 73
  %i.hn = lshr i32 %i.hm, 6
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = add i64 %.8, 1
  %i.hq = add i64 %i.hp, %i.hg
  %i.hr = add i64 %i.hq, %i.ho
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9 = phi i64 [ %i.hr, %bb.t ], [ %.8, %bb.s ]  ; 3 uses
  %i.hs = and i32 %i.m, 128
  %.not71 = icmp eq i32 %i.hs, 0
  br i1 %.not71, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq i32 %i.hu, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hv = or i32 %i.hu, 1
  %i.hw = sext i32 %i.hv to i64
  %i.hx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hw, i1 true)
  %i.hy = xor i64 %i.hx, 63
  %i.hz = mul nuw nsw i64 %i.hy, 9
  %i.ia = add nuw nsw i64 %i.hz, 73
  %i.ib = lshr i64 %i.ia, 6
  %i.ic = add i64 %.9, 1
  %i.id = add i64 %i.ic, %i.ib
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.10 = phi i64 [ %i.id, %bb.w ], [ %.9, %bb.v ], [ %.9, %bb.u ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.if = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.10, ptr noundef nonnull %i.ie)
  ret i64 %i.if
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf3Api8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf3Api5ClearEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  tail call void @_ZN6google8protobuf3Api9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf3Api12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noalias noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.d, ptr %i.a, align 8, !tbaa !52
  store i64 %i.b, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %2 = load <8 x i8>, ptr %i.j, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %3 = load <8 x i8>, ptr %i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <8 x i8> %2, ptr %i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <8 x i8> %3, ptr %i.j, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <4 x i8> %5, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <4 x i8> %6, ptr %4, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %7 = load <8 x i8>, ptr %i.l, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %8 = load <8 x i8>, ptr %i.k, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <8 x i8> %7, ptr %i.k, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <8 x i8> %8, ptr %i.l, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.079.i.ptr.8.i.i.i20 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %10 = load <4 x i8>, ptr %9, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %11 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i20, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <4 x i8> %10, ptr %.079.i.ptr.8.i.i.i20, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <4 x i8> %11, ptr %9, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %12 = load <8 x i8>, ptr %i.n, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %13 = load <8 x i8>, ptr %i.m, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <8 x i8> %12, ptr %i.m, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <8 x i8> %13, ptr %i.n, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.079.i.ptr.8.i.i.i31 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %15 = load <4 x i8>, ptr %14, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %16 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i31, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <4 x i8> %15, ptr %.079.i.ptr.8.i.i.i31, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <4 x i8> %16, ptr %14, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !43
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !43
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !43
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i36 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.u = load i64, ptr %i.s, align 8, !tbaa !43
  store i64 %i.u, ptr %i.t, align 8, !tbaa !43
  store ptr %.sroa.0.0.copyload.i36, ptr %i.s, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %17 = load <8 x i8>, ptr %i.w, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  %18 = load <8 x i8>, ptr %i.v, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <8 x i8> %17, ptr %i.v, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <8 x i8> %18, ptr %i.w, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %20 = load <4 x i8>, ptr %19, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  %21 = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <4 x i8> %20, ptr %.079.i.ptr.8.i, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <4 x i8> %21, ptr %19, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf3Api11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf3Api12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Method13clear_optionsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE5ClearEv.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = and i32 %i.f, -2
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf6MethodC2EPNS0_5ArenaE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6MethodE, i64 16), ptr %0, align 8, !tbaa !15
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6MethodC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6MethodE, i64 16), ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc8, label %.noexc14

.noexc8:                                          ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc8, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  store i32 %i.k, ptr %i.i, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc12, label %bb.a

bb.a:                                             ; preds = %.noexc14
  %i.s = load i64, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_6OptionEEEPvPS1_PKv)
  br label %.noexc12

.noexc12:                                         ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i, %.noexc14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc12
  %i.ae = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %1)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %.noexc12, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %.noexc12 ], [ %i.ae, %bb.d ]
  store ptr %.sroa.0.0.i.i, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, 3
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %1)
          to label %bb.g unwind label %.body

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i19 = phi ptr [ %i.ah, %bb.e ], [ %i.al, %bb.f ]
  store ptr %.sroa.0.0.i.i19, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 3
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %1)
          to label %bb.i unwind label %.body

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i22 = phi ptr [ %i.ao, %bb.g ], [ %i.as, %bb.h ]
  store ptr %.sroa.0.0.i.i22, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 3
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %1)
          to label %bb.k unwind label %.body

.body:                                            ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #20
  resume { ptr, i32 } %i.az

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i25 = phi ptr [ %i.au, %bb.i ], [ %i.ay, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0.0.i.i25, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.bb, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf6MethodD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.e
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf6Method12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -4
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !27 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = trunc i64 %i.aw to i32
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = xor i32 %i.ba, 31
  %i.bc = mul nuw nsw i32 %i.bb, 9
  %i.bd = add nuw nsw i32 %i.bc, 73
  %i.be = lshr i32 %i.bd, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add i64 %.1, 1
  %i.bh = add i64 %i.bg, %i.aw
  %i.bi = add i64 %i.bh, %i.bf
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.loopexit
  %.2 = phi i64 [ %.1, %bb.c ], [ %i.bi, %bb.d ], [ %.1, %.loopexit ] ; 3 uses
  %i.bj = and i32 %i.m, 4
  %.not48 = icmp eq i32 %i.bj, 0
  br i1 %.not48, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, -4
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !27 ; 3 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = trunc i64 %i.bq to i32
  %i.bt = or i32 %i.bs, 1
  %i.bu = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bv = xor i32 %i.bu, 31
  %i.bw = mul nuw nsw i32 %i.bv, 9
  %i.bx = add nuw nsw i32 %i.bw, 73
  %i.by = lshr i32 %i.bx, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = add i64 %.2, 1
  %i.cb = add i64 %i.ca, %i.bq
  %i.cc = add i64 %i.cb, %i.bz
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.3 = phi i64 [ %.2, %bb.f ], [ %i.cc, %bb.g ], [ %.2, %bb.e ] ; 3 uses
  %i.cd = and i32 %i.m, 8
  %.not49 = icmp eq i32 %i.cd, 0
  br i1 %.not49, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, -4
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !27 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = trunc i64 %i.ck to i32
  %i.cn = or i32 %i.cm, 1
  %i.co = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = xor i32 %i.co, 31
  %i.cq = mul nuw nsw i32 %i.cp, 9
  %i.cr = add nuw nsw i32 %i.cq, 73
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = add i64 %.3, 1
  %i.cv = add i64 %i.cu, %i.ck
  %i.cw = add i64 %i.cv, %i.ct
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.4 = phi i64 [ %.3, %bb.i ], [ %i.cw, %bb.j ], [ %.3, %bb.h ] ; 3 uses
  %i.cx = and i32 %i.m, 16
  %.not50 = icmp eq i32 %i.cx, 0
  br i1 %.not50, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -4
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !27 ; 3 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = trunc i64 %i.de to i32
  %i.dh = or i32 %i.dg, 1
  %i.di = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dh, i1 true)
  %i.dj = xor i32 %i.di, 31
  %i.dk = mul nuw nsw i32 %i.dj, 9
  %i.dl = add nuw nsw i32 %i.dk, 73
  %i.dm = lshr i32 %i.dl, 6
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = add i64 %.4, 1
  %i.dp = add i64 %i.do, %i.de
  %i.dq = add i64 %i.dp, %i.dn
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.5 = phi i64 [ %.4, %bb.l ], [ %i.dq, %bb.m ], [ %.4, %bb.k ]
  %i.dr = and i32 %i.m, 32
  %.not51 = icmp eq i32 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load i8, ptr %i.ds, align 8, !range !94
  %i.du = shl nuw nsw i8 %i.dt, 1
  %i.dv = zext nneg i8 %i.du to i64
  %spec.select = select i1 %.not51, i64 0, i64 %i.dv
  %.6 = add i64 %spec.select, %.5
  %i.dw = and i32 %i.m, 64
  %.not52 = icmp eq i32 %i.dw, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.dy = load i8, ptr %i.dx, align 1, !range !94
  %i.dz = shl nuw nsw i8 %i.dy, 1
  %i.ea = zext nneg i8 %i.dz to i64
  %spec.select40 = select i1 %.not52, i64 0, i64 %i.ea
  %.7 = add i64 %.6, %spec.select40               ; 3 uses
  %i.eb = and i32 %i.m, 128
  %.not53 = icmp eq i32 %i.eb, 0
  br i1 %.not53, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !11 ; 2 uses
  %.not = icmp eq i32 %i.ed, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = or i32 %i.ed, 1
  %i.ef = sext i32 %i.ee to i64
  %i.eg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = xor i64 %i.eg, 63
  %i.ei = mul nuw nsw i64 %i.eh, 9
  %i.ej = add nuw nsw i64 %i.ei, 73
  %i.ek = lshr i64 %i.ej, 6
  %i.el = add i64 %.7, 1
  %i.em = add i64 %i.el, %i.ek
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.8 = phi i64 [ %i.em, %bb.p ], [ %.7, %bb.o ], [ %.7, %bb.n ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eo = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.8, ptr noundef nonnull %i.en)
  ret i64 %i.eo
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Method8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf6Method5ClearEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  tail call void @_ZN6google8protobuf6Method9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf6Method12InternalSwapEPS1_(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef captures(none) %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.d, ptr %i.a, align 8, !tbaa !52
  store i64 %i.b, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %2 = load <8 x i8>, ptr %i.j, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %3 = load <8 x i8>, ptr %i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <8 x i8> %2, ptr %i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <8 x i8> %3, ptr %i.j, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <4 x i8> %5, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <4 x i8> %6, ptr %4, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !43
  %i.n = load <2 x i64>, ptr %i.k, align 8, !tbaa !43
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !43
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !43
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !43
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !43
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.u = load <8 x i8>, ptr %i.t, align 8, !tbaa !11, !alias.scope !112, !noalias !109
  %i.v = load <8 x i8>, ptr %i.s, align 8, !tbaa !11, !alias.scope !109, !noalias !112
  store <8 x i8> %i.u, ptr %i.s, align 8, !tbaa !11, !alias.scope !109, !noalias !112
  store <8 x i8> %i.v, ptr %i.t, align 8, !tbaa !11, !alias.scope !112, !noalias !109
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf6Method11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf6Method12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf5MixinC2EPNS0_5ArenaE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5MixinE, i64 16), ptr %0, align 8, !tbaa !15
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5MixinC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5MixinE, i64 16), ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc7, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc7:                                          ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc7, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  store i32 %i.k, ptr %i.i, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.noexc10, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit
  %i.s = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %1)
  br label %.noexc10

.noexc10:                                         ; preds = %bb.a, %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit
  %.sroa.0.0.i.i = phi ptr [ %i.o, %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit ], [ %i.s, %bb.a ]
  store ptr %.sroa.0.0.i.i, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc10
  %i.y = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc10
  %.sroa.0.0.i.i13 = phi ptr [ %i.u, %.noexc10 ], [ %i.y, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i.i13, ptr %i.z, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf5MixinD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.c

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN6google8protobuf5Mixin10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf5Mixin10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %.noexc1
  ret void

bb.c:                                             ; preds = %.noexc1, %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf5MixinD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf5MixinD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5Mixin9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 4 uses
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not52 = icmp eq i32 %i.d, 0
  br i1 %.not52, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = icmp eq i64 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.s, %bb.e ], [ %i.t, %bb.f ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %.0.i.i)
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !19
end_hunk_1
