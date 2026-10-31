Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineStructures?download=true
inline.NumInlined: 1043
inline.NumDeleted: 576
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4mlir6affine18FlatAffineRelation14insertRangeVarEjj:bb.a
  %i.c = add i32 %i.b, %1
  %i.d = load ptr, ptr %0, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef 3, i32 noundef %i.c, i32 noundef %2) #10, !inline_history !2 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !78
  %i.j = add i32 %i.i, %2
  store i32 %i.j, ptr %i.h, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6affine18FlatAffineRelation15appendDomainVarEj(ptr noundef nonnull align 8 dereferenceable(632) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = load ptr, ptr %0, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef 3, i32 noundef %i.b, i32 noundef %1) #10, !inline_history !2 ; 0 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !77
  %i.h = add i32 %i.g, %1
  store i32 %i.h, ptr %i.a, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6affine18FlatAffineRelation14removeVarRangeENS_10presburger7VarKindEjj(ptr noundef nonnull align 8 dereferenceable(632) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp ult i32 %2, %3
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir26FlatLinearValueConstraints14removeVarRangeENS_10presburger7VarKindEjj(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10
  %.not15 = icmp eq i32 %1, 3
  br i1 %.not15, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %.sroa.speculated25 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %3) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55
  %i.g = add i32 %i.f, %i.d
  %.sroa.speculated21 = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %3) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %2, i32 %i.b) ; 2 uses
  %i.h = icmp ugt i32 %.sroa.speculated25, %2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg = add i32 %i.b, %2
  %i.i = sub i32 %.neg, %.sroa.speculated25
  store i32 %i.i, ptr %i.a, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = icmp ugt i32 %.sroa.speculated21, %.sroa.speculated
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.neg16 = sub i32 %.sroa.speculated, %.sroa.speculated21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !78
  %i.m = add i32 %.neg16, %i.l
  store i32 %i.m, ptr %i.k, align 4, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.a
  ret void
}

declare void @_ZN4mlir26FlatLinearValueConstraints14removeVarRangeENS_10presburger7VarKindEjj(ptr noundef nonnull align 8 dereferenceable(624), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir6affine18getRelationFromMapERNS_9AffineMapERNS_10presburger15IntegerRelationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(624) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.182", align 8 ; 8 uses
  %3 = alloca %"class.llvm::ArrayRef.93", align 8 ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.mlir::affine::FlatAffineValueConstraints", align 8 ; 23 uses
  %6 = alloca %"class.llvm::SmallVector.85", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZN4mlir26FlatLinearValueConstraintsC2EjjjjjjN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(624) %5, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.93") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir6affine26FlatAffineValueConstraintsE, i64 16), ptr %5, align 8, !tbaa !48
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !40
  %i.a = call i8 @_ZN4mlir23getFlattenedAffineExprsENS_9AffineMapEPSt6vectorIN4llvm11SmallVectorIlLj8EEESaIS4_EEPNS_21FlatLinearConstraintsEb(ptr %.sroa.0.0.copyload, ptr noundef nonnull %4, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55   ; 2 uses
  %i.g = add i32 %i.f, %i.d                       ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !61
  %i.l = add i32 %i.g, 1
  %i.m = add i32 %i.l, %i.i
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10 ; 8 uses
  %i.p = call noundef i32 @_ZNK4mlir9AffineMap10getNumDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %i.q = call noundef i32 @_ZN4mlir10presburger15IntegerRelation9appendVarENS0_7VarKindEj(ptr noundef nonnull align 8 dereferenceable(624) %5, i32 noundef 3, i32 noundef %i.o) #10 ; 0 uses
  %i.r = load i32, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.s = load i32, ptr %i.e, align 4, !tbaa !55   ; 2 uses
  %i.t = add i32 %i.s, %i.r
  %i.u = load i32, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.v = add i32 %i.t, %i.u                       ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZN4mlir26FlatLinearValueConstraints8setValueEjNS_5ValueE.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !54
  %.pre64 = load i32, ptr %i.e, align 4, !tbaa !55
  %.pre65 = load i32, ptr %i.h, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ab = phi i32 [ %.pre65, %._crit_edge.loopexit ], [ %i.u, %bb.b ]
  %i.ac = phi i32 [ %.pre64, %._crit_edge.loopexit ], [ %i.s, %bb.b ]
  %i.ad = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.r, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !61
  %i.af = add i32 %i.ad, 1
  %i.ag = add i32 %i.af, %i.ac
  %i.ah = add i32 %i.ag, %i.ab
  %i.ai = add i32 %i.ah, %i.ae                    ; 5 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.al, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 8, ptr %i.am, align 4, !tbaa !28
  %i.an = icmp eq i32 %i.ai, 0
  br i1 %i.an, label %_ZN4llvm11SmallVectorIlLj8EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ao = icmp ugt i32 %i.ai, 8
  br i1 %i.ao, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.c
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull %i.ak, i64 noundef %i.aj, i64 noundef 8) #10
  %.pre.i.i.i = load i32, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ai, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !27
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.c
  %i.ap = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.ak, %bb.c ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %.pre-phi.i.i3.i
  %i.ar = sub nsw i64 %i.aj, %.pre-phi.i.i3.i
  %i.as = shl nsw i64 %i.ar, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.as, i1 false), !tbaa !24
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  store i32 %i.ai, ptr %i.al, align 8, !tbaa !29
  br label %_ZN4llvm11SmallVectorIlLj8EEC2Em.exit

_ZN4llvm11SmallVectorIlLj8EEC2Em.exit:            ; preds = %._crit_edge, %.sink.split.i.i.i
  %i.at = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10 ; 2 uses
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZN4llvm11SmallVectorIlLj8EEC2Em.exit
  %.not51 = icmp eq i32 %i.g, 0
  %i.au = icmp ult i32 %i.g, %i.n
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = zext i32 %i.g to i64                    ; 12 uses
  %wide.trip.count62 = zext i32 %i.at to i64
  %wide.trip.count57 = zext i32 %i.n to i64       ; 5 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = add nsw i64 %i.ay, %wide.trip.count57   ; 2 uses
  %i.ba = add i32 %i.o, %i.d
  %i.bb = add i32 %i.ba, %i.f                     ; 2 uses
  %7 = shl nuw nsw i64 %i.ax, 3
  %8 = zext i32 %i.bb to i64
  %i.bc = shl nuw nsw i64 %8, 3
  %min.iters.check90 = icmp ult i32 %i.g, 4
  %n.vec92 = and i64 %i.ax, 4294967292            ; 3 uses
  %cmp.n99 = icmp eq i64 %n.vec92, %i.ax
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bd = sub nsw i64 %wide.trip.count57, %i.ax   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bd, 12
  %i.be = trunc i64 %i.az to i32
  %i.bf = xor i32 %i.bb, -1
  %i.bg = icmp ult i32 %i.bf, %i.be
  %i.bh = icmp ugt i64 %i.az, 4294967295
  %i.bi = or i1 %i.bg, %i.bh
  %n.vec = and i64 %i.bd, -4                      ; 3 uses
  %i.bj = add nsw i64 %n.vec, %i.ax
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br label %bb.s

bb.d:                                             ; preds = %.lr.ph, %_ZN4mlir26FlatLinearValueConstraints8setValueEjNS_5ValueE.exit
  %.03441 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %_ZN4mlir26FlatLinearValueConstraints8setValueEjNS_5ValueE.exit ] ; 3 uses
  %i.bk = call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace12getVarKindAtEj(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef %.03441) #10 ; 2 uses
  %i.bl = call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace16getVarKindOffsetENS0_7VarKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef %i.bk) #10
  %i.bm = load i8, ptr %i.w, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN4mlir26FlatLinearValueConstraints8setValueEjNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.y, align 8, !tbaa !29
  %i.bo = load i32, ptr %i.c, align 8, !tbaa !54
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !55
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = load i32, ptr %i.h, align 8, !tbaa !56
  %i.bs = add i32 %i.bq, %i.br                    ; 5 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %_ZN4mlir10presburger15PresburgerSpace8resetIdsEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = load i32, ptr %i.z, align 4, !tbaa !28
  %i.bw = icmp ugt i32 %i.bs, %i.bv
  br i1 %i.bw, label %_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE7reserveEm.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %i.aa, i64 noundef %i.bt, i64 noundef 8) #10
  %.pre.i.i.i.i.i = load i32, ptr %i.y, align 8, !tbaa !29 ; 2 uses
  %.pre13.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.not11.i.i.i.i.i = icmp eq i32 %i.bs, %.pre.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE7reserveEm.exit.i.i.i.i.i, %bb.f
  %.pre-phi.i.i3.i.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE7reserveEm.exit.i.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.pre-phi.i.i3.i.i.i
  %i.bz = sub nsw i64 %i.bt, %.pre-phi.i.i3.i.i.i
  %i.ca = shl nsw i64 %i.bz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %i.ca, i1 false), !tbaa !80
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir10presburger10IdentifierEE7reserveEm.exit.i.i.i.i.i
  store i32 %i.bs, ptr %i.y, align 8, !tbaa !29
  br label %_ZN4mlir10presburger15PresburgerSpace8resetIdsEv.exit.i.i

_ZN4mlir10presburger15PresburgerSpace8resetIdsEv.exit.i.i: ; preds = %.sink.split.i.i.i.i.i, %bb.e
  store i8 1, ptr %i.w, align 8, !tbaa !57
  br label %_ZN4mlir26FlatLinearValueConstraints8setValueEjNS_5ValueE.exit

_ZN4mlir26FlatLinearValueConstraints8setValueEjNS_5ValueE.exit: ; preds = %bb.d, %_ZN4mlir10presburger15PresburgerSpace8resetIdsEv.exit.i.i
  %i.cb = sub i32 %.03441, %i.bl
  %i.cc = call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace16getVarKindOffsetENS0_7VarKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef %i.bk) #10
  %i.cd = add i32 %i.cb, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  store ptr null, ptr %i.cg, align 8, !tbaa !60
  %i.ch = add nuw i32 %.03441, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.v
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !143

._crit_edge49:                                    ; preds = %_ZN4mlir10presburger15IntegerRelation11addEqualityEN4llvm8ArrayRefIlEE.exit, %_ZN4llvm11SmallVectorIlLj8EEC2Em.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 17, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !29 ; 6 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !29 ; 4 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %i.cp, %i.cm
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %._crit_edge49
  %.not29.i.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not29.i.i.i.i, label %_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !27 ; 2 uses
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !27 ; 2 uses
  %.not31.i.i.i.i = icmp eq i32 %i.cm, 1
  br i1 %.not31.i.i.i.i, label %bb.j, label %bb.i, !prof !35

bb.i:                                             ; preds = %bb.h
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cn, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cs, ptr align 8 %i.cr, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !60
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !60
  br label %_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit

bb.k:                                             ; preds = %._crit_edge49
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !28
  %i.cw = icmp ult i32 %i.cv, %i.cm
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.co, align 8, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull %i.cx, i64 noundef %i.cn, i64 noundef 8) #10
  br label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %.not28.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not28.i.i.i.i, label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = load ptr, ptr %i.ck, align 8, !tbaa !27 ; 2 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !27 ; 2 uses
  %.not33.i.i.i.i = icmp eq i32 %i.cp, 1
  br i1 %.not33.i.i.i.i, label %bb.p, label %bb.o, !prof !35

bb.o:                                             ; preds = %bb.n
  %.idx32.i.i.i.i = shl nuw nsw i64 %i.cq, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %i.cy, i64 %.idx32.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !60
  store i64 %i.da, ptr %i.cz, align 8, !tbaa !60
  br label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i

_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.022.i.i.i.i = phi i64 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.cq, %bb.o ], [ 1, %bb.p ] ; 4 uses
  %i.db = load i32, ptr %i.cl, align 8, !tbaa !29
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %.not.i.i.i.i.i = icmp samesign eq i64 %.022.i.i.i.i, %i.dc
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !27
  %.idx35.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx35.i.i.i.i
  %i.df = load ptr, ptr %i.cj, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.022.i.i.i.i
  %i.dh = sub nsw i64 %i.dc, %.022.i.i.i.i
  %gepdiff.i.i.i.i = shl nsw i64 %i.dh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 8 %i.de, i64 %gepdiff.i.i.i.i, i1 false)
  br label %_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit

_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit: ; preds = %bb.g, %bb.i, %bb.j, %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i, %bb.q
  store i32 %i.cm, ptr %i.co, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.di, ptr noundef nonnull align 8 dereferenceable(288) %i.dj, i64 12, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.dk, ptr noundef nonnull align 8 dereferenceable(272) %i.dl) ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.dn, ptr noundef nonnull align 8 dereferenceable(288) %i.do, i64 12, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.dr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_12DynamicAPIntEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.dp, ptr noundef nonnull align 8 dereferenceable(272) %i.dq) ; 0 uses
  %i.ds = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ak
  br i1 %i.dt, label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit
  call void @free(ptr noundef %i.ds) #10
  br label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit

_ZN4llvm11SmallVectorIlLj8EED2Ev.exit:            ; preds = %_ZN4mlir10presburger15IntegerRelationaSERKS1_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.x

bb.s:                                             ; preds = %.lr.ph48, %_ZN4mlir10presburger15IntegerRelation11addEqualityEN4llvm8ArrayRefIlEE.exit
  %indvars.iv59 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next60, %_ZN4mlir10presburger15IntegerRelation11addEqualityEN4llvm8ArrayRefIlEE.exit ] ; 4 uses
  %i.du = load ptr, ptr %6, align 8, !tbaa !27    ; 16 uses
  %i.dv = ptrtoaddr ptr %i.du to i64              ; 2 uses
  %i.dw = load i32, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %.not5.i.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not5.i.i.i.i, label %_ZN4llvm4fillIRNS_11SmallVectorIlLj8EEEiEEvOT_OT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.s
  %.idx.i = shl nuw nsw i64 %i.dx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.du, i8 0, i64 %.idx.i, i1 false), !tbaa !24
  br label %_ZN4llvm4fillIRNS_11SmallVectorIlLj8EEEiEEvOT_OT0_.exit

_ZN4llvm4fillIRNS_11SmallVectorIlLj8EEEiEEvOT_OT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.s
  br i1 %.not51, label %.preheader, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZN4llvm4fillIRNS_11SmallVectorIlLj8EEEiEEvOT_OT0_.exit
  %i.dy = load ptr, ptr %4, align 8, !tbaa !154
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.dy, i64 %indvars.iv59
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !27 ; 7 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.dv
  %diff.check88 = icmp ugt i64 %i.ec, -32
  %or.cond = select i1 %min.iters.check90, i1 true, i1 %diff.check88
  br i1 %or.cond, label %scalar.ph89.preheader, label %vector.body93

vector.body93:                                    ; preds = %.lr.ph43, %vector.body93
  %index94 = phi i64 [ %index.next97, %vector.body93 ], [ 0, %.lr.ph43 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index94 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load95 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !24
  %wide.load96 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index94 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x i64> %wide.load95, ptr %i.ef, align 8, !tbaa !24
  store <2 x i64> %wide.load96, ptr %i.eg, align 8, !tbaa !24
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.eh = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.eh, label %middle.block98, label %vector.body93, !llvm.loop !144

middle.block98:                                   ; preds = %vector.body93
  br i1 %cmp.n99, label %.preheader, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %.lr.ph43, %middle.block98
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph43 ], [ %n.vec92, %middle.block98 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph89.prol.loopexit, label %scalar.ph89.prol

scalar.ph89.prol:                                 ; preds = %scalar.ph89.preheader, %scalar.ph89.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph89.prol ], [ %indvars.iv.ph, %scalar.ph89.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph89.prol ], [ 0, %scalar.ph89.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.prol
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.prol
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !24
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph89.prol.loopexit, label %scalar.ph89.prol, !llvm.loop !145

scalar.ph89.prol.loopexit:                        ; preds = %scalar.ph89.prol, %scalar.ph89.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph89.preheader ], [ %indvars.iv.next.prol, %scalar.ph89.prol ]
  %i.el = sub nsw i64 %indvars.iv.ph, %i.ax
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.preheader, label %scalar.ph89

.preheader:                                       ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89, %middle.block98, %_ZN4llvm4fillIRNS_11SmallVectorIlLj8EEEiEEvOT_OT0_.exit
  br i1 %i.au, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %.preheader
  %i.en = load ptr, ptr %4, align 8, !tbaa !154
  %i.eo = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %indvars.iv59
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !27 ; 7 uses
  %i.eq = ptrtoaddr ptr %i.ep to i64
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bi
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph45
  %i.er = add i64 %i.bc, %i.dv
  %9 = add i64 %7, %i.eq
  %i.es = sub i64 %9, %i.er
  %diff.check = icmp ugt i64 %i.es, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.et = add nuw i64 %index, %i.ax               ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x i64>, ptr %i.eu, align 8, !tbaa !24
  %wide.load86 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !24
  %i.ew = trunc nuw i64 %i.et to i32
  %i.ex = add i32 %i.o, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <2 x i64> %wide.load, ptr %i.ez, align 8, !tbaa !24
  store <2 x i64> %wide.load86, ptr %i.fa, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge46, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45, %vector.memcheck, %middle.block
  %indvars.iv54.ph = phi i64 [ %i.ax, %vector.memcheck ], [ %i.bj, %middle.block ], [ %i.ax, %.lr.ph45 ] ; 4 uses
  %i.fc = sub nsw i64 %wide.trip.count57, %indvars.iv54.ph
  %xtraiter104 = and i64 %i.fc, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv54.prol = phi i64 [ %indvars.iv.next55.prol, %scalar.ph.prol ], [ %indvars.iv54.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv54.prol
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !24
  %i.ff = trunc nuw i64 %indvars.iv54.prol to i32
  %i.fg = add i32 %i.o, %i.ff
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fh
  store i64 %i.fe, ptr %i.fi, align 8, !tbaa !24
  %indvars.iv.next55.prol = add nuw nsw i64 %indvars.iv54.prol, 1 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !147

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv54.unr = phi i64 [ %indvars.iv54.ph, %scalar.ph.preheader ], [ %indvars.iv.next55.prol, %scalar.ph.prol ]
  %i.fj = sub nsw i64 %indvars.iv54.ph, %wide.trip.count57
  %i.fk = icmp ugt i64 %i.fj, -4
  br i1 %i.fk, label %._crit_edge46, label %scalar.ph

scalar.ph89:                                      ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph89 ], [ %indvars.iv.unr, %scalar.ph89.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !24
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !24
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.1
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next.1
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !24
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next.2
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !24
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next.2
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond53.not.3 = icmp eq i64 %indvars.iv.next.3, %i.ax
  br i1 %exitcond53.not.3, label %.preheader, label %scalar.ph89, !llvm.loop !148

._crit_edge46:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.fx = trunc nuw i64 %indvars.iv59 to i32
  %i.fy = add i32 %i.p, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fz
  store i64 -1, ptr %i.ga, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN4mlir10presburger18getDynamicAPIntVecEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.182") align 8 %2, ptr %i.du, i64 %i.dx) #10
  %i.gb = load ptr, ptr %2, align 8, !tbaa !27
  %i.gc = load i32, ptr %i.av, align 8, !tbaa !29
  %i.gd = zext i32 %i.gc to i64
  call void @_ZN4mlir10presburger15IntegerRelation11addEqualityEN4llvm8ArrayRefINS2_12DynamicAPIntEEE(ptr noundef nonnull align 8 dereferenceable(624) %5, ptr %i.gb, i64 %i.gd) #10
  %i.ge = load ptr, ptr %2, align 8, !tbaa !27    ; 3 uses
  %i.gf = load i32, ptr %i.av, align 8, !tbaa !29 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not5.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %._crit_edge46
  %i.gg = zext i32 %i.gf to i64
  %.idx.i.i = shl nuw nsw i64 %i.gg, 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.gi, %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i ], [ %i.gh, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -16 ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.t, !prof !30

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.gl = icmp ugt i32 %i.gk, 64
  br i1 %i.gl, label %bb.u, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.gm = load ptr, ptr %i.gi, align 8, !tbaa !22 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #11
  br label %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i

_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i:            ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.ge, %i.gi
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm12DynamicAPIntD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %._crit_edge46
  %i.go = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.ge, %._crit_edge46 ] ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.aw
  br i1 %i.gp, label %_ZN4mlir10presburger15IntegerRelation11addEqualityEN4llvm8ArrayRefIlEE.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.go) #10
  br label %_ZN4mlir10presburger15IntegerRelation11addEqualityEN4llvm8ArrayRefIlEE.exit

_ZN4mlir10presburger15IntegerRelation11addEqualityEN4llvm8ArrayRefIlEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12DynamicAPIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge49, label %bb.s, !llvm.loop !149

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv54 = phi i64 [ %indvars.iv.next55.3, %scalar.ph ], [ %indvars.iv54.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv54
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !24
  %i.gs = trunc nuw i64 %indvars.iv54 to i32
  %i.gt = add i32 %i.o, %i.gs
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.gu
  store i64 %i.gr, ptr %i.gv, align 8, !tbaa !24
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next55
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !24
  %i.gy = trunc nuw i64 %indvars.iv.next55 to i32
  %i.gz = add i32 %i.o, %i.gy
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ha
  store i64 %i.gx, ptr %i.hb, align 8, !tbaa !24
  %indvars.iv.next55.1 = add nuw nsw i64 %indvars.iv54, 2 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next55.1
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !24
  %i.he = trunc nuw i64 %indvars.iv.next55.1 to i32
  %i.hf = add i32 %i.o, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.hg
  store i64 %i.hd, ptr %i.hh, align 8, !tbaa !24
  %indvars.iv.next55.2 = add nuw nsw i64 %indvars.iv54, 3 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next55.2
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !24
  %i.hk = trunc nuw i64 %indvars.iv.next55.2 to i32
  %i.hl = add i32 %i.o, %i.hk
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.hm
  store i64 %i.hj, ptr %i.hn, align 8, !tbaa !24
  %indvars.iv.next55.3 = add nuw nsw i64 %indvars.iv54, 4 ; 2 uses
  %exitcond58.not.3 = icmp eq i64 %indvars.iv.next55.3, %wide.trip.count57
  br i1 %exitcond58.not.3, label %._crit_edge46, label %scalar.ph, !llvm.loop !150

bb.x:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit
  %.sroa.031.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit ], [ 0, %bb.a ]
  call void @_ZN4mlir10presburger15IntegerRelationD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ho = load ptr, ptr %4, align 8, !tbaa !154   ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !155 ; 2 uses
  %.not4.i.i.i37 = icmp eq ptr %i.ho, %i.hq
  br i1 %.not4.i.i.i37, label %_ZSt8_DestroyIPN4llvm11SmallVectorIlLj8EEEEvT_S4_.exit.i, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %bb.x, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hu, %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i ], [ %i.ho, %bb.x ] ; 3 uses
  %i.hr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZSt8_DestroyIN4llvm11SmallVectorIlLj8EEEEvPT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i38
  call void @free(ptr noundef %i.hr) #10
end_hunk_0
