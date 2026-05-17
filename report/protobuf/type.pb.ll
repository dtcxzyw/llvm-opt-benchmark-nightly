inline.NumInlined: 915
inline.NumDeleted: 268
begin_hunk_0_@_ZNK6google8protobuf4Type12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  br label %.loopexit65

.loopexit65:                                      ; preds = %.lr.ph73.split.epil.preheader, %.loopexit65.loopexit.unr-lcssa, %.lr.ph73.split.us, %bb.c, %.loopexit66
  %.3 = phi i64 [ %.1, %.loopexit66 ], [ %i.at, %bb.c ], [ %i.bu, %.lr.ph73.split.us ], [ %i.cx, %.loopexit65.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph73.split.epil.preheader ] ; 2 uses
  %i.dm = and i32 %i.m, 4
  %.not59 = icmp eq i32 %i.dm, 0
  br i1 %.not59, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit65
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !20 ; 2 uses
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = add i64 %.3, %i.dp                      ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !18
  %i.dt = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.du = and i64 %i.dt, 1
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = add i64 %i.dt, -1
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = select i1 %i.dv, ptr %i.dr, ptr %i.dy   ; 2 uses
  %.idx82 = shl nsw i64 %i.dp, 3
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %.idx82
  %.not6075 = icmp eq i32 %i.do, 0
  br i1 %.not6075, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.d, %.lr.ph78
  %.477 = phi i64 [ %i.em, %.lr.ph78 ], [ %i.dq, %bb.d ]
  %.sroa.048.076 = phi ptr [ %i.en, %.lr.ph78 ], [ %i.dz, %bb.d ] ; 2 uses
  %i.eb = load ptr, ptr %.sroa.048.076, align 8, !tbaa !46
  %i.ec = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eb) ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = or i32 %i.ed, 1
  %i.ef = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ee, i1 true)
  %i.eg = xor i32 %i.ef, 31
  %i.eh = mul nuw nsw i32 %i.eg, 9
  %i.ei = add nuw nsw i32 %i.eh, 73
  %i.ej = lshr i32 %i.ei, 6
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = add i64 %i.ec, %.477
  %i.em = add i64 %i.el, %i.ek                    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.048.076, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.en, %i.ea
  br i1 %.not60, label %.loopexit, label %.lr.ph78

.loopexit:                                        ; preds = %.lr.ph78, %bb.d, %.loopexit65
  %.5 = phi i64 [ %.3, %.loopexit65 ], [ %i.dq, %bb.d ], [ %i.em, %.lr.ph78 ] ; 3 uses
  %i.eo = and i32 %i.m, 8
  %.not61 = icmp eq i32 %i.eo, 0
  br i1 %.not61, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, -4
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !30 ; 3 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ex = trunc i64 %i.ev to i32
  %i.ey = or i32 %i.ex, 1
  %i.ez = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ey, i1 true)
  %i.fa = xor i32 %i.ez, 31
  %i.fb = mul nuw nsw i32 %i.fa, 9
  %i.fc = add nuw nsw i32 %i.fb, 73
  %i.fd = lshr i32 %i.fc, 6
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = add i64 %.5, 1
  %i.fg = add i64 %i.ff, %i.ev
  %i.fh = add i64 %i.fg, %i.fe
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.loopexit
  %.6 = phi i64 [ %.5, %bb.e ], [ %i.fh, %bb.f ], [ %.5, %.loopexit ] ; 3 uses
  %i.fi = and i32 %i.m, 16
  %.not62 = icmp eq i32 %i.fi, 0
  br i1 %.not62, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !21
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = and i64 %i.fl, -4
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !30 ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fr = trunc i64 %i.fp to i32
  %i.fs = or i32 %i.fr, 1
  %i.ft = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fs, i1 true)
  %i.fu = xor i32 %i.ft, 31
  %i.fv = mul nuw nsw i32 %i.fu, 9
  %i.fw = add nuw nsw i32 %i.fv, 73
  %i.fx = lshr i32 %i.fw, 6
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = add i64 %.6, 1
  %i.ga = add i64 %i.fz, %i.fp
  %i.gb = add i64 %i.ga, %i.fy
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.7 = phi i64 [ %.6, %bb.h ], [ %i.gb, %bb.i ], [ %.6, %bb.g ] ; 2 uses
  %i.gc = and i32 %i.m, 32
  %.not63 = icmp eq i32 %i.gc, 0
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !10
  %i.gf = tail call noundef i64 @_ZNK6google8protobuf13SourceContext12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ge) ; 2 uses
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = or i32 %i.gg, 1
  %i.gi = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gh, i1 true)
  %i.gj = xor i32 %i.gi, 31
  %i.gk = mul nuw nsw i32 %i.gj, 9
  %i.gl = add nuw nsw i32 %i.gk, 73
  %i.gm = lshr i32 %i.gl, 6
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = add i64 %.7, 1
  %i.gp = add i64 %i.go, %i.gf
  %i.gq = add i64 %i.gp, %i.gn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.8 = phi i64 [ %i.gq, %bb.k ], [ %.7, %bb.j ]  ; 3 uses
  %i.gr = and i32 %i.m, 64
  %.not64 = icmp eq i32 %i.gr, 0
  br i1 %.not64, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.gt, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gu = or i32 %i.gt, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gv, i1 true)
  %i.gx = xor i64 %i.gw, 63
  %i.gy = mul nuw nsw i64 %i.gx, 9
  %i.gz = add nuw nsw i64 %i.gy, 73
  %i.ha = lshr i64 %i.gz, 6
  %i.hb = add i64 %.8, 1
  %i.hc = add i64 %i.hb, %i.ha
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.9 = phi i64 [ %i.hc, %bb.n ], [ %.8, %bb.m ], [ %.8, %bb.l ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.he = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.9, ptr noundef nonnull %i.hd)
  ret i64 %i.he
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4Type8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf4Type5ClearEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  tail call void @_ZN6google8protobuf4Type9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf4Type12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noalias noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %2 = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %3 = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <8 x i8> %2, ptr %i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <8 x i8> %3, ptr %i.j, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <4 x i8> %5, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <4 x i8> %6, ptr %4, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %7 = load <8 x i8>, ptr %i.l, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %8 = load <8 x i8>, ptr %i.k, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <8 x i8> %7, ptr %i.k, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <8 x i8> %8, ptr %i.l, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.079.i.ptr.8.i.i.i18 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %10 = load <4 x i8>, ptr %9, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %11 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i18, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <4 x i8> %10, ptr %.079.i.ptr.8.i.i.i18, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <4 x i8> %11, ptr %9, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %12 = load <8 x i8>, ptr %i.n, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %13 = load <8 x i8>, ptr %i.m, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <8 x i8> %12, ptr %i.m, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <8 x i8> %13, ptr %i.n, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.079.i.ptr.8.i.i.i29 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %15 = load <4 x i8>, ptr %14, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %16 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i29, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <4 x i8> %15, ptr %.079.i.ptr.8.i.i.i29, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <4 x i8> %16, ptr %14, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !46
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !46
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !46
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %17 = load <8 x i8>, ptr %i.t, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  %18 = load <8 x i8>, ptr %i.s, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <8 x i8> %17, ptr %i.s, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <8 x i8> %18, ptr %i.t, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %20 = load <4 x i8>, ptr %19, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  %21 = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <4 x i8> %20, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <4 x i8> %21, ptr %19, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf4Type11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf4Type12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf5FieldC2EPNS0_5ArenaE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 89)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5FieldE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5FieldC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5FieldE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
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
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc12, label %bb.a

bb.a:                                             ; preds = %.noexc14
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_6OptionEEEPvPS1_PKv), !inline_history !27
  br label %.noexc12

.noexc12:                                         ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i, %.noexc14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
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
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
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
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21
  resume { ptr, i32 } %i.az

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i25 = phi ptr [ %i.au, %bb.i ], [ %i.ay, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0.0.i.i25, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bb, ptr noundef nonnull align 8 dereferenceable(17) %i.bc, i64 17, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf5FieldD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %.noexc1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc3 unwind label %bb.e

.noexc3:                                          ; preds = %.noexc2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %.noexc3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6google8protobuf5Field10SharedDtorERNS0_11MessageLiteE.exit, label %bb.c

end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf5Field12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
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
  %.not62 = icmp eq i32 %i.cx, 0
  br i1 %.not62, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -4
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !30 ; 3 uses
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
  %.5 = phi i64 [ %.4, %bb.l ], [ %i.dq, %bb.m ], [ %.4, %bb.k ] ; 3 uses
  %i.dr = and i32 %i.m, 32
  %.not63 = icmp eq i32 %i.dr, 0
  br i1 %.not63, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = or i32 %i.dt, 1
  %i.dv = sext i32 %i.du to i64
  %i.dw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = xor i64 %i.dw, 63
  %i.dy = mul nuw nsw i64 %i.dx, 9
  %i.dz = add nuw nsw i64 %i.dy, 73
  %i.ea = lshr i64 %i.dz, 6
  %i.eb = add i64 %.5, 1
  %i.ec = add i64 %i.eb, %i.ea
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.6 = phi i64 [ %i.ec, %bb.p ], [ %.5, %bb.o ], [ %.5, %bb.n ] ; 3 uses
  %i.ed = and i32 %i.m, 64
  %.not64 = icmp eq i32 %i.ed, 0
  br i1 %.not64, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !10 ; 2 uses
  %.not50 = icmp eq i32 %i.ef, 0
  br i1 %.not50, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = or i32 %i.ef, 1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = xor i64 %i.ei, 63
  %i.ek = mul nuw nsw i64 %i.ej, 9
  %i.el = add nuw nsw i64 %i.ek, 73
  %i.em = lshr i64 %i.el, 6
  %i.en = add i64 %.6, 1
  %i.eo = add i64 %i.en, %i.em
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.7 = phi i64 [ %i.eo, %bb.s ], [ %.6, %bb.r ], [ %.6, %bb.q ] ; 3 uses
  %i.ep = and i32 %i.m, 128
  %.not65 = icmp eq i32 %i.ep, 0
  br i1 %.not65, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !10 ; 2 uses
  %.not51 = icmp eq i32 %i.er, 0
  br i1 %.not51, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = or i32 %i.er, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.et, i1 true)
  %i.ev = xor i64 %i.eu, 63
  %i.ew = mul nuw nsw i64 %i.ev, 9
  %i.ex = add nuw nsw i64 %i.ew, 137
  %i.ey = lshr i64 %i.ex, 6
  %i.ez = add i64 %i.ey, %.7
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.8 = phi i64 [ %i.ez, %bb.v ], [ %.7, %bb.u ], [ %.7, %bb.t ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ] ; 4 uses
  %i.fa = and i32 %i.m, 768
  %.not66 = icmp eq i32 %i.fa, 0
  br i1 %.not66, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = and i32 %i.m, 256
  %.not67 = icmp eq i32 %i.fb, 0
  br i1 %.not67, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !10 ; 2 uses
  %.not52 = icmp eq i32 %i.fd, 0
  br i1 %.not52, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = or i32 %i.fd, 1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ff, i1 true)
  %i.fh = xor i64 %i.fg, 63
  %i.fi = mul nuw nsw i64 %i.fh, 9
  %i.fj = add nuw nsw i64 %i.fi, 137
  %i.fk = lshr i64 %i.fj, 6
  %i.fl = add i64 %i.fk, %.8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.9 = phi i64 [ %i.fl, %bb.z ], [ %.8, %bb.y ], [ %.8, %bb.x ] ; 2 uses
  %i.fm = and i32 %i.m, 512
  %.not68 = icmp eq i32 %i.fm, 0
  br i1 %.not68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !10, !range !98, !noundef !99
  %i.fp = shl nuw nsw i8 %i.fo, 1
  %i.fq = zext nneg i8 %i.fp to i64
  %spec.select = add i64 %.9, %i.fq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.w
  %.10 = phi i64 [ %.8, %bb.w ], [ %spec.select, %bb.ab ], [ %.9, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fs = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.10, ptr noundef nonnull %i.fr)
  ret i64 %i.fs
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5Field8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf5Field5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN6google8protobuf5Field9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf5Field12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %2 = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %3 = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <8 x i8> %2, ptr %i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <8 x i8> %3, ptr %i.j, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <4 x i8> %5, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <4 x i8> %6, ptr %4, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !46
  %i.n = load <2 x i64>, ptr %i.k, align 8, !tbaa !46
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !46
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !46
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !46
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !46
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.u = load <16 x i8>, ptr %i.t, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  %i.v = load <16 x i8>, ptr %i.s, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  store <16 x i8> %i.u, ptr %i.s, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  store <16 x i8> %i.v, ptr %i.t, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.079.i.ptr.16.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = load i8, ptr %.079.i.ptr.16.i, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  %i.y = load i8, ptr %i.w, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  store i8 %i.y, ptr %.079.i.ptr.16.i, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  store i8 %i.x, ptr %i.w, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf5Field11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf5Field12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4Enum20clear_source_contextEv(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf13SourceContext5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3
  %i.e = and i32 %i.d, -17
  store i32 %i.e, ptr %i.c, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf4EnumC2EPNS0_5ArenaE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 84)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf4EnumE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 -32, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, i8 0, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4EnumC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf4EnumE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc13, label %.noexc24

.noexc13:                                         ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc13, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc20, label %bb.a

bb.a:                                             ; preds = %.noexc24
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_9EnumValueEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_9EnumValueEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_9EnumValueEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_9EnumValueEEEPvPS1_PKv)
  br label %.noexc20

.noexc20:                                         ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_9EnumValueEE8GetArenaEv.exit.i, %.noexc24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 -32, ptr %i.ab, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !20
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEEC2ENS0_8internal18InternalVisibilityENS4_22InternalMetadataOffsetERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc20
  %i.af = load i64, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ak = inttoptr i64 %i.af to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i28 = phi ptr [ %i.ak, %bb.f ], [ %i.aj, %bb.e ]
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %.0.i.i.i.i.i28, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_6OptionEEEPvPS1_PKv)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEEC2ENS0_8internal18InternalVisibilityENS4_22InternalMetadataOffsetERKS3_.exit unwind label %bb.g, !inline_history !27

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body21

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEEC2ENS0_8internal18InternalVisibilityENS4_22InternalMetadataOffsetERKS3_.exit: ; preds = %.noexc20, %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 3
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEEC2ENS0_8internal18InternalVisibilityENS4_22InternalMetadataOffsetERKS3_.exit
  %i.as = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEEC2ENS0_8internal18InternalVisibilityENS4_22InternalMetadataOffsetERKS3_.exit, %bb.h
  %.sroa.0.0.i.i = phi ptr [ %i.ao, %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEEC2ENS0_8internal18InternalVisibilityENS4_22InternalMetadataOffsetERKS3_.exit ], [ %i.as, %bb.h ]
  store ptr %.sroa.0.0.i.i, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 3
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %bb.j

end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf4Enum12ByteSizeLongEv:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.041.056, i64 8 ; 2 uses
  %.not46 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not46, label %.loopexit53, label %.lr.ph

.loopexit53:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.ap = and i32 %i.m, 2
  %.not47 = icmp eq i32 %i.ap, 0
  br i1 %.not47, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.loopexit53
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = add i64 %.1, %i.as                      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = add i64 %i.aw, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = select i1 %i.ay, ptr %i.au, ptr %i.bb   ; 2 uses
  %.idx63 = shl nsw i64 %i.as, 3
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.idx63
  %.not4858 = icmp eq i32 %i.ar, 0
  br i1 %.not4858, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.c, %.lr.ph61
  %.260 = phi i64 [ %i.bp, %.lr.ph61 ], [ %i.at, %bb.c ]
  %.sroa.037.059 = phi ptr [ %i.bq, %.lr.ph61 ], [ %i.bc, %bb.c ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.037.059, align 8, !tbaa !46
  %i.bf = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be) ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = or i32 %i.bg, 1
  %i.bi = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bj = xor i32 %i.bi, 31
  %i.bk = mul nuw nsw i32 %i.bj, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %i.bf, %.260
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.037.059, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %i.bq, %i.bd
  br i1 %.not48, label %.loopexit, label %.lr.ph61

.loopexit:                                        ; preds = %.lr.ph61, %bb.c, %.loopexit53
  %.3 = phi i64 [ %.1, %.loopexit53 ], [ %i.at, %bb.c ], [ %i.bp, %.lr.ph61 ] ; 3 uses
  %i.br = and i32 %i.m, 4
  %.not49 = icmp eq i32 %i.br, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, -4
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !30 ; 3 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = trunc i64 %i.by to i32
  %i.cb = or i32 %i.ca, 1
  %i.cc = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cb, i1 true)
  %i.cd = xor i32 %i.cc, 31
  %i.ce = mul nuw nsw i32 %i.cd, 9
  %i.cf = add nuw nsw i32 %i.ce, 73
  %i.cg = lshr i32 %i.cf, 6
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = add i64 %.3, 1
  %i.cj = add i64 %i.ci, %i.by
  %i.ck = add i64 %i.cj, %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.loopexit
  %.4 = phi i64 [ %.3, %bb.d ], [ %i.ck, %bb.e ], [ %.3, %.loopexit ] ; 3 uses
  %i.cl = and i32 %i.m, 8
  %.not50 = icmp eq i32 %i.cl, 0
  br i1 %.not50, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = and i64 %i.co, -4
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !30 ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = or i32 %i.cu, 1
  %i.cw = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cv, i1 true)
  %i.cx = xor i32 %i.cw, 31
  %i.cy = mul nuw nsw i32 %i.cx, 9
  %i.cz = add nuw nsw i32 %i.cy, 73
  %i.da = lshr i32 %i.cz, 6
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = add i64 %.4, 1
  %i.dd = add i64 %i.dc, %i.cs
  %i.de = add i64 %i.dd, %i.db
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.5 = phi i64 [ %.4, %bb.g ], [ %i.de, %bb.h ], [ %.4, %bb.f ] ; 2 uses
  %i.df = and i32 %i.m, 16
  %.not51 = icmp eq i32 %i.df, 0
  br i1 %.not51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !10
  %i.di = tail call noundef i64 @_ZNK6google8protobuf13SourceContext12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dh) ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = or i32 %i.dj, 1
  %i.dl = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dk, i1 true)
  %i.dm = xor i32 %i.dl, 31
  %i.dn = mul nuw nsw i32 %i.dm, 9
  %i.do = add nuw nsw i32 %i.dn, 73
  %i.dp = lshr i32 %i.do, 6
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = add i64 %.5, 1
  %i.ds = add i64 %i.dr, %i.di
  %i.dt = add i64 %i.ds, %i.dq
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.6 = phi i64 [ %i.dt, %bb.j ], [ %.5, %bb.i ]  ; 3 uses
  %i.du = and i32 %i.m, 32
  %.not52 = icmp eq i32 %i.du, 0
  br i1 %.not52, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.dw, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dx = or i32 %i.dw, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = xor i64 %i.dz, 63
  %i.eb = mul nuw nsw i64 %i.ea, 9
  %i.ec = add nuw nsw i64 %i.eb, 73
  %i.ed = lshr i64 %i.ec, 6
  %i.ee = add i64 %.6, 1
  %i.ef = add i64 %i.ee, %i.ed
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.7 = phi i64 [ %i.ef, %bb.m ], [ %.6, %bb.l ], [ %.6, %bb.k ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eh = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.7, ptr noundef nonnull %i.eg)
  ret i64 %i.eh
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4Enum8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf4Enum5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  tail call void @_ZN6google8protobuf4Enum9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf4Enum12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %2 = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %3 = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <8 x i8> %2, ptr %i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <8 x i8> %3, ptr %i.j, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <4 x i8> %5, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <4 x i8> %6, ptr %4, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %7 = load <8 x i8>, ptr %i.l, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %8 = load <8 x i8>, ptr %i.k, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <8 x i8> %7, ptr %i.k, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <8 x i8> %8, ptr %i.l, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.079.i.ptr.8.i.i.i17 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %10 = load <4 x i8>, ptr %9, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %11 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i17, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <4 x i8> %10, ptr %.079.i.ptr.8.i.i.i17, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <4 x i8> %11, ptr %9, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !46
  %i.p = load <2 x i64>, ptr %i.m, align 8, !tbaa !46
  store <2 x i64> %i.p, ptr %i.n, align 8, !tbaa !46
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %12 = load <8 x i8>, ptr %i.r, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  %13 = load <8 x i8>, ptr %i.q, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <8 x i8> %12, ptr %i.q, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <8 x i8> %13, ptr %i.r, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %15 = load <4 x i8>, ptr %14, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  %16 = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <4 x i8> %15, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <4 x i8> %16, ptr %14, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf4Enum11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf4Enum12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf9EnumValueC2EPNS0_5ArenaE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 52)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9EnumValueE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9EnumValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9EnumValueE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
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
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc12, label %bb.a

bb.a:                                             ; preds = %.noexc14
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_6OptionEEEPvPS1_PKv), !inline_history !27
  br label %.noexc12

.noexc12:                                         ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i, %.noexc14
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 3
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc12
  %i.ad = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %1)
          to label %bb.e unwind label %.body

.body:                                            ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21
  resume { ptr, i32 } %i.ae

bb.e:                                             ; preds = %bb.d, %.noexc12
  %.sroa.0.0.i.i = phi ptr [ %i.z, %.noexc12 ], [ %i.ad, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.i.i, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf9EnumValueD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN6google8protobuf9EnumValue10SharedDtorERNS0_11MessageLiteE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc1
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN6google8protobuf9EnumValue10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZN6google8protobuf9EnumValue10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.c, %.noexc1
  ret void

bb.e:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf9EnumValueD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf9EnumValueD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9EnumValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3    ; 5 uses
  %i.j = and i32 %i.i, 7
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %bb.r, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.k = and i32 %i.i, 1
  %.not36 = icmp eq i32 %i.k, 0
  br i1 %.not36, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi2EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 16, ptr %.0.i, align 1, !tbaa !10
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !52

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !10
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !53, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !10
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf9EnumValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 4 uses
  %i.n = and i32 %i.m, 7
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %bb.h, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not26 = icmp eq i32 %i.o, 0
  br i1 %.not26, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  %i.x = add i64 %i.u, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = select i1 %i.w, ptr %i.s, ptr %i.z      ; 2 uses
  %.idx = shl nsw i64 %i.r, 3
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %.not2731 = icmp eq i32 %i.q, 0
  br i1 %.not2731, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.033 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.022.032 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.022.032, align 8, !tbaa !46
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.ad, %.033
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.022.032, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not27, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ap = and i32 %i.m, 2
  %.not28 = icmp eq i32 %i.ap, 0
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -4
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !30 ; 3 uses
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
  %.not29 = icmp eq i32 %i.bj, 0
  br i1 %.not29, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = or i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = xor i64 %i.bo, 63
  %i.bq = mul nuw nsw i64 %i.bp, 9
  %i.br = add nuw nsw i64 %i.bq, 137
  %i.bs = lshr i64 %i.br, 6
  %i.bt = add i64 %i.bs, %.2
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.3 = phi i64 [ %i.bt, %bb.g ], [ %.2, %bb.f ], [ %.2, %bb.e ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bv = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.3, ptr noundef nonnull %i.bu)
  ret i64 %i.bv
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9EnumValue8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf9EnumValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  tail call void @_ZN6google8protobuf9EnumValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf9EnumValue12InternalSwapEPS1_(ptr noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef captures(none) %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %2 = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %3 = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <8 x i8> %2, ptr %i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <8 x i8> %3, ptr %i.j, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <4 x i8> %5, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <4 x i8> %6, ptr %4, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.m = load i64, ptr %i.k, align 8, !tbaa !46
  store i64 %i.m, ptr %i.l, align 8, !tbaa !46
  store ptr %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !3
  %i.q = load i32, ptr %i.o, align 8, !tbaa !3
  store i32 %i.q, ptr %i.n, align 8, !tbaa !3
  store i32 %i.p, ptr %i.o, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf9EnumValue11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf9EnumValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Option11clear_valueEv(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf3Any5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3
  %i.e = and i32 %i.d, -3
  store i32 %i.e, ptr %i.c, align 8, !tbaa !3
  ret void
}

declare void @_ZN6google8protobuf3Any5ClearEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf6OptionC2EPNS0_5ArenaE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6OptionC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc12, label %bb.a

.noexc12:                                         ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.a

bb.a:                                             ; preds = %.noexc12, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %1)
  %.pre = load i32, ptr %i.i, align 8, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i32 [ %i.k, %bb.a ], [ %.pre, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.a ], [ %i.s, %bb.b ]
  store ptr %.sroa.0.0.i.i, ptr %i.m, align 8
  %i.u = and i32 %i.t, 2
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZN6google8protobuf11MessageLite13CopyConstructINS0_3AnyEEEPT_PNS0_5ArenaERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = tail call noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_3AnyEEEPvPS1_PKv(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %i.w)
  br label %_ZN6google8protobuf11MessageLite13CopyConstructINS0_3AnyEEEPT_PNS0_5ArenaERKS4_.exit

_ZN6google8protobuf11MessageLite13CopyConstructINS0_3AnyEEEPT_PNS0_5ArenaERKS4_.exit: ; preds = %bb.d, %bb.c
  %i.y = phi ptr [ null, %bb.c ], [ %i.x, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf6OptionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.d

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN6google8protobuf6Option10SharedDtorERNS0_11MessageLiteE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc1
  tail call void @_ZN6google8protobuf3AnyD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 40) #23
  br label %_ZN6google8protobuf6Option10SharedDtorERNS0_11MessageLiteE.exit

_ZN6google8protobuf6Option10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.c, %.noexc1
  ret void

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf6OptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf6OptionD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Option9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.c = trunc i64 %i.b to i1                     ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3    ; 4 uses
  %i.j = and i32 %i.i, 3
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.k = and i32 %i.i, 1
  %.not35 = icmp eq i32 %i.k, 0
end_hunk_3
