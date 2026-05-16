inline.NumInlined: 652
inline.NumDeleted: 319
begin_hunk_0_@_ZN6hermes3hbc18BytecodeSerializer16visitStringKindsEv:bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.p = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.t = phi i64 [ %i.o, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.v = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.w = phi i64 [ %i.n, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !175 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !176
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_10StringKind5EntryEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aj, ptr %i.aa, i64 %i.af) #12
  %i.ak = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.al = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, ptr noundef %i.aa, i64 noundef %i.af) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_10StringKind5EntryEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS_10StringKind5EntryEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.am = phi i64 [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.an = add i64 %i.am, %i.af
  store i64 %i.an, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21visitIdentifierHashesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %i.l = xor i64 %i.d, 3
  %i.m = add i64 %i.c, %i.l
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.o = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.v, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.p = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.t = phi i64 [ %i.o, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.v = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.w = phi i64 [ %i.n, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !178
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aj, ptr %i.aa, i64 %i.af) #12
  %i.ak = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.al = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, ptr noundef %i.aa, i64 noundef %i.af) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIjEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.am = phi i64 [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.an = add i64 %i.am, %i.af
  store i64 %i.an, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer21visitSmallStringTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"struct.hermes::hbc::SmallStringTableEntry", align 4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %i.l = xor i64 %i.d, 3
  %i.m = add i64 %i.c, %i.l
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.o = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.v, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.p = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.t = phi i64 [ %i.o, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.v = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.w = phi i64 [ %i.n, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %.not13 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.shift.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %.0.lcssa = phi i32 [ 0, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %i.bb, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0.lcssa, ptr %i.af, align 4, !tbaa !77
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit
  %i.ag = phi i64 [ %i.w, %.lr.ph ], [ %i.az, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ]
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.bb, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ] ; 2 uses
  %.01014 = phi ptr [ %i.aa, %.lr.ph ], [ %i.bc, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %.01014, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !179 ; 3 uses
  %.lobit.i = lshr i32 %i.ai, 31                  ; 2 uses
  %i.aj = load i32, ptr %.01014, align 4, !tbaa !181 ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 8388608
  %i.al = and i32 %i.ai, 2147483647
  %i.am = icmp samesign ult i32 %i.al, 255
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = shl nuw nsw i32 %i.aj, 1
  %i.ao = shl i32 %i.ai, 24
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = or disjoint i32 %i.ap, %.lobit.i
  br label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = shl i32 %.015, 1
  %i.as = or disjoint i32 %.lobit.i, %i.ar
  %i.at = or i32 %i.as, -16777216
  br label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit

_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit: ; preds = %bb.e, %bb.f
  %storemerge.i = phi i32 [ %i.at, %bb.f ], [ %i.aq, %bb.e ] ; 2 uses
  store i32 %storemerge.i, ptr %1, align 4
  %i.au = load i8, ptr %i.ad, align 8, !tbaa !105, !range !106, !noundef !107
  %i.av = trunc nuw i8 %i.au to i1
  %2 = lshr i32 %storemerge.i, 24
  %3 = trunc nuw i32 %2 to i8
  br i1 %i.av, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.ae, ptr nonnull align 1 dereferenceable(4) %1, i64 4) #12
  %i.aw = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ax = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aw, ptr noundef nonnull align 1 dereferenceable(4) %1, i64 noundef 4) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  %.pre18 = load i8, ptr %.shift.i, align 1
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_21SmallStringTableEntryEEEvRKT_.exit: ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit, %bb.g
  %4 = phi i8 [ %3, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit ], [ %.pre18, %bb.g ]
  %i.ay = phi i64 [ %i.ag, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit ], [ %.pre, %bb.g ]
  %i.az = add i64 %i.ay, 4                        ; 2 uses
  store i64 %i.az, ptr %i.b, align 8, !tbaa !110
  %5 = icmp eq i8 %4, -1
  %i.ba = zext i1 %5 to i32
  %i.bb = add i32 %.015, %i.ba                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %.01014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.ac
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer24visitOverflowStringTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.llvh::SmallVector.66", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %i.l = xor i64 %i.d, 3
  %i.m = add i64 %i.c, %i.l
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.o = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.v, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.p = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.t = phi i64 [ %i.o, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.v = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !165
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.x, align 8, !tbaa !160
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 64, ptr %i.y, align 4, !tbaa !182
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75 ; 2 uses
  %.not21 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.af = zext i32 %i.bh to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.ah = phi ptr [ %i.bg, %._crit_edge.loopexit ], [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %i.ai = phi i64 [ %i.ag, %._crit_edge.loopexit ], [ 0, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !105, !range !106, !noundef !107
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.am, ptr %i.ah, i64 %i.ai) #12
  %i.an = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.ao = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.an, ptr noundef %i.ah, i64 noundef %i.ai) #12 ; 0 uses
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !165
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %._crit_edge, %bb.d
  %i.ap = phi ptr [ %i.ah, %._crit_edge ], [ %.pre24, %bb.d ] ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !110
  %i.ar = add i64 %i.aq, %i.ai
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !110
  %i.as = icmp eq ptr %i.ap, %i.w
  br i1 %i.as, label %_ZN4llvh11SmallVectorIN6hermes3hbc24OverflowStringTableEntryELj64EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit
  call void @free(ptr noundef %i.ap) #12
  br label %_ZN4llvh11SmallVectorIN6hermes3hbc24OverflowStringTableEntryELj64EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes3hbc24OverflowStringTableEntryELj64EED2Ev.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayINS0_24OverflowStringTableEntryEEEvN4llvh8ArrayRefIT_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void

.lr.ph:                                           ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.g
  %i.at = phi ptr [ %i.bg, %bb.g ], [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 2 uses
  %i.au = phi i32 [ %i.bh, %bb.g ], [ 0, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %.022 = phi ptr [ %i.bi, %bb.g ], [ %i.ac, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.022, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !179 ; 2 uses
  %i.ax = load i32, ptr %.022, align 4, !tbaa !181 ; 2 uses
  %2 = icmp ugt i32 %i.ax, 8388607
  %3 = and i32 %i.aw, 2147483647                  ; 2 uses
  %4 = icmp samesign ugt i32 %3, 254
  %i.ay = and i32 %i.aw, 255
  %5 = icmp eq i32 %i.ay, 255
  %6 = or i1 %4, %5
  %or.cond = select i1 %2, i1 true, i1 %6
  br i1 %or.cond, label %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread, label %bb.g

_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread: ; preds = %.lr.ph
  %i.az = load i32, ptr %i.y, align 4, !tbaa !182
  %.not.i = icmp ult i32 %i.au, %i.az
  br i1 %.not.i, label %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit, label %bb.f, !prof !183

bb.f:                                             ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.w, i64 noundef 0, i64 noundef 8) #12
  %.pre.i12 = load i32, ptr %i.x, align 8, !tbaa !160
  %.pre = load ptr, ptr %1, align 8, !tbaa !165
  br label %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit

_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit: ; preds = %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread, %bb.f
  %i.ba = phi ptr [ %.pre, %bb.f ], [ %i.at, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread ] ; 2 uses
  %i.bb = phi i32 [ %.pre.i12, %bb.f ], [ %i.au, %_ZN6hermes3hbc21SmallStringTableEntryC2ERKNS_16StringTableEntryEj.exit.thread ] ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc ; 2 uses
  store i32 %i.ax, ptr %i.bd, align 1, !tbaa !184
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %3, ptr %i.be, align 1, !tbaa !186
  %i.bf = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.x, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit, %.lr.ph
  %i.bg = phi ptr [ %i.ba, %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit ], [ %i.at, %.lr.ph ] ; 2 uses
  %i.bh = phi i32 [ %i.bf, %_ZN4llvh15SmallVectorImplIN6hermes3hbc24OverflowStringTableEntryEE12emplace_backIJjjEEEvDpOT_.exit ], [ %i.au, %.lr.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.ae
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer18visitStringStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %i.l = xor i64 %i.d, 3
  %i.m = add i64 %i.c, %i.l
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.o = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.v, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.p = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.t = phi i64 [ %i.o, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.v = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.w = phi i64 [ %i.n, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aj, ptr %i.aa, i64 %i.af) #12
  %i.ak = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.al = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, ptr noundef %i.aa, i64 noundef %i.af) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit

_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.am = phi i64 [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.an = add i64 %i.am, %i.af
  store i64 %i.an, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer16visitArrayBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %i.l = xor i64 %i.d, 3
  %i.m = add i64 %i.c, %i.l
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.o = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.v, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.p = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.i, ptr nonnull align 1 dereferenceable(1) %i.a, i64 1) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 1) #12 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.t = phi i64 [ %i.o, %.lr.ph.split.i ], [ %.pre.i, %bb.c ]
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.v = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.g
  br i1 %exitcond.not, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %.lr.ph.split.i, !llvm.loop !114

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit:    ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i, %bb.a, %..loopexit_crit_edge.split.us.i
  %i.w = phi i64 [ %i.n, %..loopexit_crit_edge.split.us.i ], [ %i.c, %bb.a ], [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 360
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 368
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !105, !range !106, !noundef !107
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN6hermes3hbc18BytecodeSerializer20serializeArrayBufferERNS0_14BytecodeModuleE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112) %i.aj, ptr %i.aa, i64 %i.af) #12
  %i.ak = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !107, !align !109
  %i.al = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, ptr noundef %i.aa, i64 noundef %i.af) #12 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer20serializeArrayBufferERNS0_14BytecodeModuleE.exit

_ZN6hermes3hbc18BytecodeSerializer20serializeArrayBufferERNS0_14BytecodeModuleE.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, %bb.d
  %i.am = phi i64 [ %i.w, %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit ], [ %.pre, %bb.d ]
  %i.an = add i64 %i.am, %i.af
  store i64 %i.an, ptr %i.b, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18BytecodeSerializer20visitObjectKeyBufferEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32
  %i.g = sub nuw nsw i32 4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.h, align 8, !tbaa !105, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %i.l = xor i64 %i.d, 3
  %i.m = add i64 %i.c, %i.l
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
  %i.o = phi i64 [ %i.u, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ %i.c, %bb.b ]
  %.07.i = phi i32 [ %i.v, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !18
end_hunk_0
