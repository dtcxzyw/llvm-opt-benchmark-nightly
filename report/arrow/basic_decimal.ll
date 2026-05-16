inline.NumInlined: 502
inline.NumDeleted: 136
begin_hunk_0_@_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_:bb.a
  store i64 %i.pb, ptr %2, align 8
  store i64 %.sroa.6.0.i.i153.i, ptr %.sroa.4.0..sroa_idx.i130.i, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %i.ov, label %bb.av, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

bb.av:                                            ; preds = %bb.au
  %i.pc = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.pd = load i64, ptr %.sroa.4.0..sroa_idx.i144.i, align 8, !tbaa !9 ; 2 uses
  %i.pe = xor i64 %i.pd, -1
  %i.pf = icmp eq i64 %i.pc, 0
  %i.pg = sub i64 0, %i.pd
  %i.ph = sub i64 0, %i.pc
  %.sroa.6.0.i4.i.i = select i1 %i.pf, i64 %i.pg, i64 %i.pe
  store i64 %i.ph, ptr %3, align 8
  store i64 %.sroa.6.0.i4.i.i, ptr %.sroa.4.0..sroa_idx.i144.i, align 8
  br label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i: ; preds = %bb.av, %bb.au, %.lr.ph.preheader.i.i148.i, %.lr.ph.preheader.i.i.i
  %.0.i = phi i32 [ 0, %bb.av ], [ 2, %.lr.ph.preheader.i.i148.i ], [ 0, %bb.au ], [ 2, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit: ; preds = %bb.p, %bb.q, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i
  %.1.i = phi i32 [ 0, %bb.p ], [ %.0.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i ], [ %.0.i113.i, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128oRERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = or i64 %i.b, %i.a
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = or i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128aNERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = and i64 %i.b, %i.a
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = and i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128lSEj(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 64
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = shl i64 %i.c, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = sub nuw nsw i32 64, %1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 %i.f, %i.h
  %i.j = or i64 %i.i, %i.e
  %i.k = shl i64 %i.f, %i.d
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, 128
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %0, align 8, !tbaa !9
  %i.n = add nsw i32 %1, -64
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.010 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.j, %bb.c ], [ %i.p, %bb.e ], [ 0, %bb.d ]
  store i64 %.010, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128rSEj(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 64
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = lshr i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = sub nuw nsw i32 64, %1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  %i.j = or i64 %i.i, %i.d
  %i.k = ashr i64 %i.f, %i.c
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 3 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %1, -64
  %i.p = zext nneg i32 %i.o to i64
  %i.q = ashr i64 %i.n, %i.p
  %i.r = ashr i64 %i.n, 63
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = ashr i64 %i.n, 63                        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.011 = phi i64 [ %i.j, %bb.c ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %.0 = phi i64 [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  store i64 %.011, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mLERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 5 uses
  %i.e = xor i64 %i.d, %i.b
  %isneg = icmp sgt i64 %i.e, -1
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %i.f = icmp slt i64 %i.b, 0
  br i1 %i.f, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i:  ; preds = %bb.a
  %i.g = xor i64 %i.b, -1
  %i.h = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  %i.i = sub i64 0, %i.b
  %i.j = sub i64 0, %.sroa.0.0.copyload1.i
  %.sroa.6.0.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit:        ; preds = %bb.a, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i ], [ %i.b, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %i.j, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i ], [ %.sroa.0.0.copyload1.i, %bb.a ]
  %.sroa.0.0.copyload1.i9 = load i64, ptr %1, align 8 ; 3 uses
  %i.k = icmp slt i64 %i.d, 0
  br i1 %i.k, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16: ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit
  %i.l = xor i64 %i.d, -1
  %i.m = icmp eq i64 %.sroa.0.0.copyload1.i9, 0
  %i.n = sub i64 0, %i.d
  %i.o = sub i64 0, %.sroa.0.0.copyload1.i9
  %.sroa.6.0.i.i.i17 = select i1 %i.m, i64 %i.n, i64 %i.l
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18:      ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16
  %.sroa.6.0.i12 = phi i64 [ %.sroa.6.0.i.i.i17, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16 ], [ %i.d, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit ]
  %.sroa.0.0.i13 = phi i64 [ %i.o, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16 ], [ %.sroa.0.0.copyload1.i9, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit ]
  %i.p = sext i64 %.sroa.6.0.i12 to i128
  %i.q = shl nsw i128 %i.p, 64
  %i.r = zext i64 %.sroa.0.0.i13 to i128
  %i.s = or disjoint i128 %i.q, %i.r
  %.sroa.6.0.insert.ext26 = zext i64 %.sroa.6.0.i to i128
  %i.t = shl nuw i128 %.sroa.6.0.insert.ext26, 64
  %i.u = zext i64 %.sroa.0.0.i to i128
  %i.v = or disjoint i128 %i.t, %i.u
  %i.w = mul i128 %i.s, %i.v                      ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = trunc nuw i128 %i.x to i64               ; 3 uses
  %i.z = trunc i128 %i.w to i64                   ; 3 uses
  store i64 %i.z, ptr %0, align 8
  store i64 %i.y, ptr %i.a, align 8
  br i1 %isneg, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18
  %i.aa = xor i64 %i.y, -1
  %i.ab = icmp eq i64 %i.z, 0
  %i.ac = sub i64 0, %i.y
  %i.ad = sub i64 0, %i.z
  %.sroa.6.0.i19 = select i1 %i.ab, i64 %i.ac, i64 %i.aa
  store i64 %i.ad, ptr %0, align 8
  store i64 %.sroa.6.0.i19, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowleERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = load i64, ptr %0, align 8, !tbaa !9
  %i.i = icmp uge i64 %i.g, %i.h
  br label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = load i64, ptr %0, align 8, !tbaa !9
  %i.i = icmp ult i64 %i.g, %i.h
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgeERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !9
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = icmp uge i64 %i.g, %i.h
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowngERKNS_15BasicDecimal128E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = xor i64 %i.b, -1
  %i.e = icmp eq i64 %i.c, 0
  %i.f = sub i64 0, %i.b
  %i.g = sub i64 0, %i.c
  %.sroa.6.0.i = select i1 %i.e, i64 %i.f, i64 %i.d
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.g, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0.i, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowcoERKNS_15BasicDecimal128E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = xor i64 %i.b, -1
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = xor i64 %i.d, -1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.e, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.c, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowplERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = add i64 %i.e, %i.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.f, %i.j
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.k, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowmiERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = sub i64 %i.b, %i.e
  %i.g = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.h = sub i64 %i.c, %i.g
  %i.i = icmp ugt i64 %i.g, %i.c
  %.neg.i = sext i1 %i.i to i64
  %i.j = add i64 %i.f, %.neg.i
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.j, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowmlERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9    ; 5 uses
  %i.f = xor i64 %i.e, %i.b
  %isneg.i = icmp sgt i64 %i.f, -1
  %i.g = icmp slt i64 %i.b, 0
  br i1 %i.g, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i: ; preds = %bb.a
  %i.h = xor i64 %i.b, -1
  %i.i = icmp eq i64 %i.c, 0
  %i.j = sub i64 0, %i.b
  %i.k = sub i64 0, %i.c
  %.sroa.6.0.i.i.i.i = select i1 %i.i, i64 %i.j, i64 %i.h
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i:      ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i, %bb.a
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.i.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i ], [ %i.b, %bb.a ]
  %.sroa.0.0.i.i = phi i64 [ %i.k, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i ], [ %i.c, %bb.a ]
  %.sroa.0.0.copyload1.i9.i = load i64, ptr %1, align 8 ; 3 uses
  %i.l = icmp slt i64 %i.e, 0
  br i1 %i.l, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i: ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i
  %i.m = xor i64 %i.e, -1
  %i.n = icmp eq i64 %.sroa.0.0.copyload1.i9.i, 0
  %i.o = sub i64 0, %i.e
  %i.p = sub i64 0, %.sroa.0.0.copyload1.i9.i
  %.sroa.6.0.i.i.i17.i = select i1 %i.n, i64 %i.o, i64 %i.m
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i:    ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i
  %.sroa.6.0.i12.i = phi i64 [ %.sroa.6.0.i.i.i17.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i ], [ %i.e, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i ]
  %.sroa.0.0.i13.i = phi i64 [ %i.p, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i ], [ %.sroa.0.0.copyload1.i9.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i ]
  %i.q = sext i64 %.sroa.6.0.i12.i to i128
  %i.r = shl nsw i128 %i.q, 64
  %i.s = zext i64 %.sroa.0.0.i13.i to i128
  %i.t = or disjoint i128 %i.r, %i.s
  %.sroa.6.0.insert.ext26.i = zext i64 %.sroa.6.0.i.i to i128
  %i.u = shl nuw i128 %.sroa.6.0.insert.ext26.i, 64
  %i.v = zext i64 %.sroa.0.0.i.i to i128
  %i.w = or disjoint i128 %i.u, %i.v
  %i.x = mul i128 %i.t, %i.w                      ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = trunc nuw i128 %i.y to i64               ; 3 uses
  %i.aa = trunc i128 %i.x to i64                  ; 3 uses
  br i1 %isneg.i, label %_ZN5arrow15BasicDecimal128mLERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i
  %i.ab = xor i64 %i.z, -1
  %i.ac = icmp eq i64 %i.aa, 0
  %i.ad = sub i64 0, %i.z
  %i.ae = sub i64 0, %i.aa
  %.sroa.6.0.i19.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  br label %_ZN5arrow15BasicDecimal128mLERKS0_.exit

_ZN5arrow15BasicDecimal128mLERKS0_.exit:          ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i, %bb.b
  %.sroa.5.0 = phi i64 [ %i.z, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i ], [ %.sroa.6.0.i19.i, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.aa, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i ], [ %i.ae, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZN5arrowdvERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZN5arrowrmERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 4) i32 @_ZNK5arrow14BasicDecimal327RescaleEiiPS0_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  store i32 %i.b, ptr %3, align 4
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %2, %1                       ; 2 uses
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrowL21kDecimal32PowersOfTenE, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp slt i32 %i.c, 0
  %i.i = load i32, ptr %0, align 4                ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = sdiv i32 %i.i, %i.g
  store i32 %i.j, ptr %3, align 4
  %i.k = load i32, ptr %0, align 4, !tbaa !12
  %i.l = srem i32 %i.k, %i.g
  %.fr.i = freeze i32 %i.l
  %.not.i = icmp eq i32 %.fr.i, 0
  br i1 %.not.i, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, label %bb.g, !prof !24

bb.e:                                             ; preds = %bb.c
  %i.m = mul i32 %i.i, %i.g                       ; 3 uses
  store i32 %i.m, ptr %3, align 4
  %i.n = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %i.m, %i.n
  %cond.fr16.i = freeze i1 %i.p
  br i1 %cond.fr16.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i: ; preds = %bb.e
  %i.q = icmp sgt i32 %i.m, %i.n
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

bb.g:                                             ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, %bb.f, %bb.d
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit

_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, %bb.g
  %.1.i = phi i32 [ 0, %bb.b ], [ 3, %bb.g ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 4) i32 @_ZNK5arrow14BasicDecimal647RescaleEiiPS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8
  store i64 %i.b, ptr %3, align 8
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %2, %1                       ; 2 uses
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp slt i32 %i.c, 0
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = sdiv i64 %i.i, %i.g
  store i64 %i.j, ptr %3, align 8
  %i.k = load i64, ptr %0, align 8, !tbaa !14
  %i.l = srem i64 %i.k, %i.g
  %.fr.i = freeze i64 %i.l
  %.not.i = icmp eq i64 %.fr.i, 0
  br i1 %.not.i, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, label %bb.g, !prof !24

bb.e:                                             ; preds = %bb.c
  %i.m = mul i64 %i.i, %i.g                       ; 3 uses
  store i64 %i.m, ptr %3, align 8
  %i.n = load i64, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i64 %i.m, %i.n
  %cond.fr16.i = freeze i1 %i.p
  br i1 %cond.fr16.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i: ; preds = %bb.e
  %i.q = icmp sgt i64 %i.m, %i.n
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

bb.g:                                             ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, %bb.f, %bb.d
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit

_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, %bb.g
  %.1.i = phi i32 [ 0, %bb.b ], [ 3, %bb.g ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5arrow15BasicDecimal1287RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal128EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal128EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 5 uses
  %5 = alloca %"class.arrow::GenericBasicDecimal", align 8 ; 4 uses
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.c:                                             ; preds = %bb.a
  %i.b = sub nsw i32 %2, %1                       ; 2 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.d ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.f = icmp slt i32 %i.b, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.g = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.h = load i128, ptr %4, align 8
  %i.i = load i128, ptr %5, align 8
  %i.j = icmp ne i128 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  %bcmp.i.i.i.i.i.i.i.fr = freeze i32 %i.k
  %.not9.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not9.i.i.i.i.i.i.i.not, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, !prof !26

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9    ; 5 uses
  %i.n = load i64, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.o = xor i64 %.sroa.4.0.copyload, %i.m
  %isneg.i.i.i = icmp sgt i64 %i.o, -1
  %i.p = icmp slt i64 %i.m, 0
  br i1 %i.p, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i: ; preds = %bb.e
  %i.q = xor i64 %i.m, -1
  %i.r = icmp eq i64 %i.n, 0
  %i.s = sub i64 0, %i.m
  %i.t = sub i64 0, %i.n
  %.sroa.6.0.i.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i: ; preds = %bb.e, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i
  %.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i ], [ %i.m, %bb.e ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.t, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i ], [ %i.n, %bb.e ]
  %i.u = sext i64 %.sroa.4.0.copyload to i128
  %i.v = shl nsw i128 %i.u, 64
  %i.w = zext i64 %.sroa.0.0.copyload to i128
  %i.x = or disjoint i128 %i.v, %i.w
  %.sroa.6.0.insert.ext26.i.i.i = zext i64 %.sroa.6.0.i.i.i.i to i128
  %i.y = shl nuw i128 %.sroa.6.0.insert.ext26.i.i.i, 64
  %i.z = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.aa = or disjoint i128 %i.y, %i.z
  %i.ab = mul i128 %i.x, %i.aa                    ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64             ; 3 uses
  %i.ae = trunc i128 %i.ab to i64                 ; 3 uses
  br i1 %isneg.i.i.i, label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i
  %i.af = xor i64 %i.ad, -1
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = sub i64 0, %i.ad
  %i.ai = sub i64 0, %i.ae
  %.sroa.6.0.i19.i.i.i = select i1 %i.ag, i64 %i.ah, i64 %i.af
  br label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i

_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.f, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i
  %.sroa.5.0.i.i = phi i64 [ %i.ad, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i ], [ %.sroa.6.0.i19.i.i.i, %bb.f ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ae, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i ], [ %i.ai, %bb.f ] ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !9   ; 5 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i
  %i.al = icmp slt i64 %.sroa.5.0.i.i, %i.aj
  br i1 %i.al, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i
  %i.am = icmp slt i64 %i.aj, %.sroa.5.0.i.i
  br i1 %i.am, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %i.an = icmp eq i64 %i.aj, %.sroa.5.0.i.i
  br i1 %i.an, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.i:                                             ; preds = %bb.g
  %i.ao = icmp eq i64 %.sroa.5.0.i.i, %i.aj
  br i1 %i.ao, label %bb.j, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.j:                                             ; preds = %bb.i
  %i.ap = load i64, ptr %0, align 8, !tbaa !9
  %i.aq = icmp ult i64 %.sroa.0.0.i.i, %i.ap
  %cond.fr21 = freeze i1 %i.aq
  br i1 %cond.fr21, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit: ; preds = %bb.h
  %i.ar = load i64, ptr %0, align 8, !tbaa !9
  %i.as = icmp ult i64 %i.ar, %.sroa.0.0.i.i
  %cond.fr = freeze i1 %i.as
  br i1 %cond.fr, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread: ; preds = %bb.g, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, %bb.j, %bb.d, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17: ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, %bb.d, %bb.j, %bb.i, %bb.h, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 3, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit ], [ 0, %bb.j ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a
  %i.c = tail call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %2, ptr noundef %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12818GetScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12822GetHalfScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL26kDecimal128HalfPowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12811GetMaxValueEv() local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZN5arrowL19kMaxDecimal128ValueE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN5arrow15BasicDecimal12811GetMaxValueEi(i32 noundef %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = load i64, ptr %i.b, align 16, !tbaa !9
  %i.f = add i64 %i.e, -1
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.f, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.d, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 5 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = xor i64 %i.g, %i.d
  %isneg.i.i = icmp sgt i64 %i.h, -1
  %i.i = icmp slt i64 %i.d, 0
  br i1 %i.i, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i: ; preds = %bb.a
  %i.j = xor i64 %i.d, -1
  %i.k = icmp eq i64 %i.e, 0
  %i.l = sub i64 0, %i.d
  %i.m = sub i64 0, %i.e
  %.sroa.6.0.i.i.i.i.i = select i1 %i.k, i64 %i.l, i64 %i.j
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i:    ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i, %bb.a
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.m, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.sroa.0.0.copyload1.i9.i.i = load i64, ptr %i.b, align 16
  %i.n = sext i64 %i.g to i128
  %i.o = shl nsw i128 %i.n, 64
  %i.p = zext i64 %.sroa.0.0.copyload1.i9.i.i to i128
  %i.q = or disjoint i128 %i.o, %i.p
  %.sroa.6.0.insert.ext26.i.i = zext i64 %.sroa.6.0.i.i.i to i128
  %i.r = shl nuw i128 %.sroa.6.0.insert.ext26.i.i, 64
  %i.s = zext i64 %.sroa.0.0.i.i.i to i128
  %i.t = or disjoint i128 %i.r, %i.s
  %i.u = mul i128 %i.q, %i.t                      ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64               ; 3 uses
  %i.x = trunc i128 %i.u to i64                   ; 3 uses
  br i1 %isneg.i.i, label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i
  %i.y = xor i64 %i.w, -1
  %i.z = icmp eq i64 %i.x, 0
  %i.aa = sub i64 0, %i.w
  %i.ab = sub i64 0, %i.x
  %.sroa.6.0.i19.i.i = select i1 %i.z, i64 %i.aa, i64 %i.y
  br label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit:      ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i, %bb.b
  %.sroa.5.0.i = phi i64 [ %i.w, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i ], [ %.sroa.6.0.i19.i.i, %bb.b ]
  %.sroa.0.0.i = phi i64 [ %i.x, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i ], [ %i.ab, %bb.b ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZNK5arrow15BasicDecimal12813ReduceScaleByEib(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 8 uses
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.d = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br i1 %2, label %bb.d, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL26kDecimal128HalfPowersOfTenE, i64 %i.b ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.e, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.d
  %i.i = load i64, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.j = xor i64 %i.g, -1
  %i.k = icmp eq i64 %i.i, 0
  %i.l = sub i64 0, %i.g
  %i.m = sub i64 0, %i.i
  %.sroa.6.0.i.i = select i1 %i.k, i64 %i.l, i64 %i.j
  store i64 %i.m, ptr %4, align 8
  br label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrow15BasicDecimal1283AbsEv.exit:            ; preds = %bb.d, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %i.n = phi i64 [ %i.g, %bb.d ], [ %.sroa.6.0.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i ] ; 2 uses
  %i.o = icmp slt i64 %i.n, %.sroa.46.0.copyload
  br i1 %i.o, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsEv.exit
  %i.p = icmp ne i64 %i.n, %.sroa.46.0.copyload
  %i.q = load i64, ptr %4, align 8
  %i.r = icmp uge i64 %i.q, %.sroa.05.0.copyload
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = ashr i64 %i.t, 63                        ; 2 uses
  %i.v = or i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9
  %i.y = add i64 %i.u, %i.x
  %i.z = load i64, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.aa = add i64 %i.v, %i.z                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac
  store i64 %i.aa, ptr %3, align 8
  store i64 %i.ad, ptr %i.w, align 8
  br label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7: ; preds = %bb.e, %_ZN5arrow15BasicDecimal1283AbsEv.exit, %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7, %bb.b
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 129) i32 @_ZNK5arrow15BasicDecimal12823CountLeadingBinaryZerosEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = sub i64 0, %i.a
  store i64 %i.b, ptr %0, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.a, 0
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = xor i64 %i.f, -1
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !tbaa !9
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 %i.d, i64 0          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9
  %i.m = xor i64 %i.l, -1
  %i.n = add i64 %i.j, %i.m                       ; 2 uses
  store i64 %i.n, ptr %i.k, align 8, !tbaa !9
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 %i.j, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = xor i64 %i.r, -1
  %i.t = add i64 %i.p, %i.s
  store i64 %i.t, ptr %i.q, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2563AbsEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.e = sub i64 0, %i.d
  store i64 %i.e, ptr %0, align 8, !tbaa !9
  %i.f = icmp eq i64 %i.d, 0
  %i.g = zext i1 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = xor i64 %i.i, -1
  %i.k = add i64 %i.g, %i.j                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !9
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 %i.g, i64 0          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9
  %i.p = xor i64 %i.o, -1
  %i.q = add i64 %i.m, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !tbaa !9
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 %i.m, i64 0
  %i.t = xor i64 %i.b, -1
  %i.u = add nuw i64 %i.s, %i.t
  store i64 %i.u, ptr %i.a, align 8, !tbaa !9
  br label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN5arrow15BasicDecimal256rSEj:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 %i.d, ptr %2, align 8
  %.06.i.i.i.i.ptr.1.i24 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.1.i24, align 8
  %.06.i.i.i.i.ptr.2.i25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.2.i25, align 8
  %.06.i.i.i.i.ptr.3.i26 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.3.i26, align 8
  %i.g = and i32 %1, 63                           ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  %i.i = sub nuw nsw i32 64, %i.g
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = lshr i32 %1, 6                           ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 5 uses
  %i.m = zext nneg i32 %i.e to i64                ; 4 uses
  %i.n = or disjoint i32 %i.k, 4
  %i.o = sub nuw nsw i32 %i.n, %i.e
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = lshr i64 %i.q, %i.h
  %i.s = sub nuw nsw i64 %i.l, %i.m
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %.not23 = icmp eq i32 %i.k, 3
  br i1 %.not23, label %bb.e, label %bb.d

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.u = lshr exact i32 %1, 3
  %i.v = zext nneg i32 %i.u to i64
  %scevgep = getelementptr i8, ptr %3, i64 %i.v
  %i.w = shl nuw nsw i32 %i.e, 3
  %narrow = sub nuw nsw i32 32, %i.w
  %i.x = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %scevgep, i64 %i.x, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %.lr.ph.split.us.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph.split.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.in.sroa.speculate.load. = load i64, ptr %i.y, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.preheader, %bb.d
  %.in.sroa.speculated = phi i64 [ %.in.sroa.speculate.load., %bb.d ], [ %i.d, %.lr.ph.split.preheader ]
  %i.z = shl i64 %.in.sroa.speculated, %i.j
  %i.aa = or i64 %i.z, %i.r
  store i64 %i.aa, ptr %i.t, align 8
  %indvars.iv.next = add nuw nsw i64 %i.l, 1      ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9
  %i.ad = lshr i64 %i.ac, %i.h
  %i.ae = sub nuw nsw i64 %indvars.iv.next, %i.m
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %.not23.1 = icmp eq i64 %indvars.iv.next, 3
  br i1 %.not23.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.in.sroa.speculate.load..1 = load i64, ptr %i.ag, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.1
  %.in.sroa.speculated.1 = phi i64 [ %.in.sroa.speculate.load..1, %bb.f ], [ %i.d, %.lr.ph.split.1 ]
  %i.ah = shl i64 %.in.sroa.speculated.1, %i.j
  %i.ai = or i64 %i.ah, %i.ad
  store i64 %i.ai, ptr %i.af, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %i.l, 2    ; 4 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9
  %i.al = lshr i64 %i.ak, %i.h
  %i.am = sub nuw nsw i64 %indvars.iv.next.1, %i.m
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %.not23.2 = icmp eq i64 %indvars.iv.next.1, 3
  br i1 %.not23.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.in.sroa.speculate.load..2 = load i64, ptr %i.ao, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.2
  %.in.sroa.speculated.2 = phi i64 [ %.in.sroa.speculate.load..2, %bb.h ], [ %i.d, %.lr.ph.split.2 ]
  %i.ap = shl i64 %.in.sroa.speculated.2, %i.j
  %i.aq = or i64 %i.ap, %i.al
  store i64 %i.aq, ptr %i.an, align 8
  %indvars.iv.next.2 = add nuw nsw i64 %i.l, 3    ; 3 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.at = lshr i64 %i.as, %i.h
  %i.au = sub nuw nsw i64 %indvars.iv.next.2, %i.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %.not23.3 = icmp eq i32 %i.k, 0
  br i1 %.not23.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.in.sroa.speculate.load..3 = load i64, ptr %i.aw, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.3
  %.in.sroa.speculated.3 = phi i64 [ %.in.sroa.speculate.load..3, %bb.j ], [ %i.d, %.lr.ph.split.3 ]
  %i.ax = shl i64 %.in.sroa.speculated.3, %i.j
  %i.ay = or i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.av, align 8
  br label %._crit_edge

bb.l:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 4 uses
  %i.e = xor i64 %i.d, %i.b
  %isneg = icmp sgt i64 %i.e, -1
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !noalias !31 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !31 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !31 ; 2 uses
  %i.f = icmp slt i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %.sroa.0.0.copyload.i
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %i.j = xor i64 %.sroa.6.0.copyload.i, -1
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 %i.i, i64 0          ; 2 uses
  %i.n = xor i64 %.sroa.8.0.copyload.i, -1
  %i.o = add i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 %i.m, i64 0
  %i.r = xor i64 %i.b, -1
  %i.s = add nuw i64 %i.q, %i.r
  br label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

_ZN5arrow15BasicDecimal2563AbsERKS0_.exit:        ; preds = %bb.a, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.s, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.8.0.i = phi i64 [ %i.o, %bb.b ], [ %.sroa.8.0.copyload.i, %bb.a ]
  %.sroa.6.0.i = phi i64 [ %i.k, %bb.b ], [ %.sroa.6.0.copyload.i, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i3 = load i64, ptr %1, align 8, !noalias !34 ; 3 uses
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i5 = load i64, ptr %.sroa.6.0..sroa_idx.i4, align 8, !noalias !34 ; 2 uses
  %.sroa.8.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload.i7 = load i64, ptr %.sroa.8.0..sroa_idx.i6, align 8, !noalias !34 ; 2 uses
  %i.t = icmp slt i64 %i.d, 0
  br i1 %i.t, label %bb.c, label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17

bb.c:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit
  %i.u = sub i64 0, %.sroa.0.0.copyload.i3
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i3, 0
  %i.w = zext i1 %i.v to i64                      ; 2 uses
  %i.x = xor i64 %.sroa.6.0.copyload.i5, -1
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 %i.w, i64 0         ; 2 uses
  %i.ab = xor i64 %.sroa.8.0.copyload.i7, -1
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 %i.aa, i64 0
  %i.af = xor i64 %i.d, -1
  %i.ag = add nuw i64 %i.ae, %i.af
  br label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17

_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17:      ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit, %bb.c
  %.sroa.10.0.i10 = phi i64 [ %i.ag, %bb.c ], [ %i.d, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.8.0.i11 = phi i64 [ %i.ac, %bb.c ], [ %.sroa.8.0.copyload.i7, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.6.0.i12 = phi i64 [ %i.y, %bb.c ], [ %.sroa.6.0.copyload.i5, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.0.0.i13 = phi i64 [ %i.u, %bb.c ], [ %.sroa.0.0.copyload.i3, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %i.ah = zext i64 %.sroa.0.0.i to i128           ; 3 uses
  %i.ai = zext i64 %.sroa.0.0.i13 to i128         ; 4 uses
  %i.aj = mul nuw i128 %i.ai, %i.ah               ; 2 uses
  %.sroa.10.0.extract.shift55.i = lshr i128 %i.aj, 64
  %2 = trunc i128 %i.aj to i64                    ; 3 uses
  %i.ak = zext i64 %.sroa.6.0.i to i128           ; 3 uses
  %i.al = mul nuw i128 %i.ai, %i.ak
  %i.am = add nuw i128 %.sroa.10.0.extract.shift55.i, %i.al ; 2 uses
  %i.an = lshr i128 %i.am, 64
  %i.ao = zext i64 %.sroa.8.0.i to i128           ; 2 uses
  %i.ap = mul nuw i128 %i.ai, %i.ao
  %i.aq = add nuw i128 %i.an, %i.ap               ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = zext i64 %.sroa.10.0.i to i128
  %i.at = mul nuw nsw i128 %i.ai, %i.as
  %i.au = zext i64 %.sroa.6.0.i12 to i128         ; 3 uses
  %i.av = mul nuw i128 %i.au, %i.ah
  %i.aw = and i128 %i.am, 18446744073709551615
  %i.ax = add nuw i128 %i.aw, %i.av               ; 2 uses
  %.sroa.10.0.extract.shift55.1.i = lshr i128 %i.ax, 64
  %3 = trunc i128 %i.ax to i64                    ; 2 uses
  %i.ay = mul nuw i128 %i.au, %i.ak
  %i.az = and i128 %i.aq, 18446744073709551615
  %i.ba = add nuw i128 %i.az, %i.ay
  %i.bb = add nuw i128 %i.ba, %.sroa.10.0.extract.shift55.1.i ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = mul nuw i128 %i.au, %i.ao
  %i.be = zext i64 %.sroa.8.0.i11 to i128         ; 2 uses
  %i.bf = mul nuw i128 %i.be, %i.ah
  %i.bg = and i128 %i.bb, 18446744073709551615
  %i.bh = add nuw i128 %i.bg, %i.bf               ; 2 uses
  %.sroa.10.0.extract.shift55.2.i = lshr i128 %i.bh, 64
  %4 = trunc i128 %i.bh to i64                    ; 2 uses
  %i.bi = mul nuw i128 %i.be, %i.ak
  %i.bj = add i128 %i.bd, %i.bi
  %i.bk = add i128 %i.bj, %i.at
  %i.bl = add i128 %i.bk, %i.ar
  %i.bm = add i128 %i.bl, %i.bc
  %i.bn = add i128 %i.bm, %.sroa.10.0.extract.shift55.2.i
  %i.bo = trunc i128 %i.bn to i64
  %i.bp = mul i64 %.sroa.10.0.i10, %.sroa.0.0.i
  %i.bq = add i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %2, ptr %0, align 8
  store i64 %3, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %4, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !8
  br i1 %isneg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  %i.br = sub i64 0, %2
  store i64 %i.br, ptr %0, align 8, !tbaa !9
  %i.bs = icmp eq i64 %2, 0
  %i.bt = zext i1 %i.bs to i64                    ; 2 uses
  %i.bu = xor i64 %3, -1
  %i.bv = add i64 %i.bu, %i.bt                    ; 2 uses
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = select i1 %i.bw, i64 %i.bt, i64 0       ; 2 uses
  %i.by = xor i64 %4, -1
  %i.bz = add i64 %i.bx, %i.by                    ; 2 uses
  store i64 %i.bz, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !9
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 %i.bx, i64 0
  %i.cc = xor i64 %i.bq, -1
  %i.cd = add i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %5 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %6 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %i.a = alloca [65 x i32], align 16              ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal256", align 8 ; 14 uses
  %8 = alloca %"class.arrow::BasicDecimal256", align 8 ; 14 uses
  %i.b = alloca [65 x i32], align 16              ; 23 uses
  %i.c = alloca [64 x i32], align 16              ; 23 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 16, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp slt i64 %i.g, 0                     ; 5 uses
  %.01939.i.i106.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.02234.i.i.i.i.lcssa.sroa.gep190 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.02234.i.i.i.i.lcssa.sroa.gep191 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.02234.i.i.i.i.lcssa.sroa.gep192 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.02234.i.i.i.lcssa.sroa.gep193 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.02234.i.i.i.lcssa.sroa.gep194 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.02234.i.i.i.lcssa.sroa.gep195 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.02234.i.i145.i.lcssa.sroa.gep196 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.02234.i.i145.i.lcssa.sroa.gep197 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.02234.i.i145.i.lcssa.sroa.gep198 = getelementptr inbounds nuw i8, ptr %4, i64 24
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %8, align 8, !tbaa !9      ; 2 uses
  %i.j = sub i64 0, %i.i
  store i64 %i.j, ptr %8, align 8, !tbaa !9
  %i.k = icmp eq i64 %i.i, 0
  %i.l = zext i1 %i.k to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = xor i64 %i.n, -1
  %i.p = add i64 %i.l, %i.o                       ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !tbaa !9
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 %i.l, i64 0          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = xor i64 %i.t, -1
  %i.v = add i64 %i.r, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !tbaa !9
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 %i.r, i64 0
  %i.y = xor i64 %i.g, -1
  %i.z = add nuw i64 %i.x, %i.y                   ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi i64 [ %i.z, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.01827.lcssa.i.i.i = phi i64 [ 3, %bb.c ], [ 2, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.lcssa30.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.not21.i.i.i = icmp ugt i64 %.lcssa30.i.i.i, 4294967295
  br i1 %.not21.i.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.thread.i.i:                                      ; preds = %bb.g
  %.not21.i6.i.i = icmp ugt i64 %i.ag, 4294967295
  br i1 %.not21.i6.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.thread.i.i
  %i.ab = trunc nuw i64 %i.ag to i32
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.1.i.i.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.2.i.i.i, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.3.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.thread.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d
  %i.ah = trunc nuw i64 %.lcssa30.i.i.i to i32
  store i32 %i.ah, ptr %i.e, align 4, !tbaa !3
  %i.ai = add nsw i64 %.01827.lcssa.i.i.i, -1
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i.i.i, %.thread.i.i, %bb.d
  %.140.i.i.i = phi i64 [ %i.ai, %.loopexit.i.i.i ], [ %.01827.lcssa.i.i.i, %bb.d ], [ 0, %.thread.i.i ] ; 4 uses
  %.01939.i.i.i = phi i64 [ 1, %.loopexit.i.i.i ], [ 0, %bb.d ], [ 0, %.thread.i.i ] ; 3 uses
  %i.aj = add nsw i64 %.140.i.i.i, 1              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.aj, -2                      ; 4 uses
  %i.ak = sub nsw i64 %.140.i.i.i, %n.vec
  %i.al = shl nsw i64 %n.vec, 1
  %i.am = or disjoint i64 %.01939.i.i.i, %i.al    ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01939.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = sub i64 %.140.i.i.i, %index             ; 2 uses
  %10 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.an ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %8, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.aq = getelementptr i8, ptr %i.ao, i64 -4
  %11 = load i32, ptr %i.ap, align 4, !tbaa !9
  %12 = load i32, ptr %i.aq, align 4, !tbaa !9
  %13 = insertelement <2 x i32> poison, i32 %11, i64 0
  %14 = insertelement <2 x i32> %13, i32 %12, i64 1
  %.idx = shl i64 %index, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  %15 = getelementptr inbounds i8, ptr %10, i64 -8
  %wide.load = load <2 x i64>, ptr %15, align 8, !tbaa !9
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %16 = trunc <2 x i64> %reverse to <2 x i32>
  %interleaved.vec = shufflevector <2 x i32> %14, <2 x i32> %16, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ar, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.029.i.i.i.ph = phi i64 [ %.140.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ak, %middle.block ]
  %.12028.i.i.i.ph = phi i64 [ %.01939.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.029.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ %.029.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.12028.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i ], [ %.12028.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.029.i.i.i ; 2 uses
  %.shift.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %17 = load i32, ptr %.shift.i.i.i, align 4, !tbaa !9
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.12028.i.i.i ; 2 uses
  store i32 %17, ptr %18, align 4, !tbaa !3
  %19 = load i64, ptr %i.at, align 8, !tbaa !9
  %i.au = trunc i64 %19 to i32
  %i.av = add nuw nsw i64 %.12028.i.i.i, 2        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !3
  %i.ax = add nsw i64 %.029.i.i.i, -1
  %.not44.i.i.i = icmp eq i64 %.029.i.i.i, 0
  br i1 %.not44.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !38

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.g, %.loopexit.i.thread.i.i
  %.120.lcssa.i.i.i = phi i64 [ 1, %.loopexit.i.thread.i.i ], [ 0, %bb.g ], [ %i.am, %middle.block ], [ %i.av, %.lr.ph.i.i.i ] ; 27 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.ay = add i64 %.120.lcssa.i.i.i, 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9  ; 3 uses
  %i.bb = icmp slt i64 %i.ba, 0                   ; 3 uses
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.bc = load i64, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.bd = sub i64 0, %i.bc
  store i64 %i.bd, ptr %7, align 8, !tbaa !9
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = zext i1 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !9
  %i.bi = xor i64 %i.bh, -1
  %i.bj = add i64 %i.bf, %i.bi                    ; 2 uses
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !9
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 %i.bf, i64 0       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !9
  %i.bo = xor i64 %i.bn, -1
  %i.bp = add i64 %i.bl, %i.bo                    ; 2 uses
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !9
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = select i1 %i.bq, i64 %i.bl, i64 0
  %i.bs = xor i64 %i.ba, -1
  %i.bt = add nuw i64 %i.br, %i.bs                ; 2 uses
  store i64 %i.bt, ptr %i.az, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.bu = phi i64 [ %i.bt, %bb.h ], [ %i.ba, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i ] ; 2 uses
  %.not.i.i99.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i99.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.01827.lcssa.i.i100.i = phi i64 [ 3, %bb.i ], [ 2, %bb.k ], [ 1, %bb.l ] ; 2 uses
  %.lcssa30.i.i101.i = phi i64 [ %i.bu, %bb.i ], [ %i.bx, %bb.k ], [ %i.bz, %bb.l ] ; 2 uses
  %.not21.i.i102.i = icmp ugt i64 %.lcssa30.i.i101.i, 4294967295
  br i1 %.not21.i.i102.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.i103.i

.thread.i115.i:                                   ; preds = %bb.m
  %.not21.i6.i116.i = icmp ugt i64 %i.ca, 4294967295
  br i1 %.not21.i6.i116.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.thread.i117.i

.loopexit.i.thread.i117.i:                        ; preds = %.thread.i115.i
  %i.bv = trunc nuw i64 %i.ca to i32
  store i32 %i.bv, ptr %i.c, align 16, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i

bb.k:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i112.i = icmp eq i64 %i.bx, 0
  br i1 %.not.1.i.i112.i, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i113.i = icmp eq i64 %i.bz, 0
  br i1 %.not.2.i.i113.i, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ca = load i64, ptr %7, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i114.i = icmp eq i64 %i.ca, 0
  br i1 %.not.3.i.i114.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.thread.i115.i

.loopexit.i.i103.i:                               ; preds = %bb.j
  %i.cb = trunc nuw i64 %.lcssa30.i.i101.i to i32
  store i32 %i.cb, ptr %i.c, align 16, !tbaa !3
  %i.cc = add nsw i64 %.01827.lcssa.i.i100.i, -1
  br label %.lr.ph.preheader.i.i104.i

.lr.ph.preheader.i.i104.i:                        ; preds = %.loopexit.i.i103.i, %.thread.i115.i, %bb.j
  %.140.i.i105.i = phi i64 [ %i.cc, %.loopexit.i.i103.i ], [ %.01827.lcssa.i.i100.i, %bb.j ], [ 0, %.thread.i115.i ] ; 4 uses
  %.01939.i.i106.i.sroa.phi = phi ptr [ %.01939.i.i106.i.sroa.gep, %.loopexit.i.i103.i ], [ %i.c, %bb.j ], [ %i.c, %.thread.i115.i ]
  %.01939.i.i106.i = phi i64 [ 1, %.loopexit.i.i103.i ], [ 0, %bb.j ], [ 0, %.thread.i115.i ] ; 2 uses
  %i.cd = add nsw i64 %.140.i.i105.i, 1           ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.cd, 2
  br i1 %min.iters.check89, label %.lr.ph.i.i107.i.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.preheader.i.i104.i
  %n.vec92 = and i64 %i.cd, -2                    ; 4 uses
  %i.ce = sub nsw i64 %.140.i.i105.i, %n.vec92
  %i.cf = shl nsw i64 %n.vec92, 1
  %i.cg = or disjoint i64 %.01939.i.i106.i, %i.cf ; 2 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph90
  %index94 = phi i64 [ 0, %vector.ph90 ], [ %index.next101, %vector.body93 ] ; 3 uses
  %i.ch = sub i64 %.140.i.i105.i, %index94        ; 2 uses
  %20 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ch ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %7, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.ck = getelementptr i8, ptr %i.ci, i64 -4
  %21 = load i32, ptr %i.cj, align 4, !tbaa !9
  %22 = load i32, ptr %i.ck, align 4, !tbaa !9
  %23 = insertelement <2 x i32> poison, i32 %21, i64 0
  %24 = insertelement <2 x i32> %23, i32 %22, i64 1
  %.idx160 = shl i64 %index94, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %.01939.i.i106.i.sroa.phi, i64 %.idx160
  %25 = getelementptr inbounds i8, ptr %20, i64 -8
  %wide.load92 = load <2 x i64>, ptr %25, align 8, !tbaa !9
  %reverse93 = shufflevector <2 x i64> %wide.load92, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %26 = trunc <2 x i64> %reverse93 to <2 x i32>
  %interleaved.vec94 = shufflevector <2 x i32> %24, <2 x i32> %26, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec94, ptr %i.cl, align 4, !tbaa !3
  %index.next101 = add nuw i64 %index94, 2        ; 2 uses
  %i.cm = icmp eq i64 %index.next101, %n.vec92
  br i1 %i.cm, label %middle.block102, label %vector.body93, !llvm.loop !39

middle.block102:                                  ; preds = %vector.body93
  %cmp.n103 = icmp eq i64 %i.cd, %n.vec92
  br i1 %cmp.n103, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i.preheader

.lr.ph.i.i107.i.preheader:                        ; preds = %.lr.ph.preheader.i.i104.i, %middle.block102
  %.029.i.i108.i.ph = phi i64 [ %.140.i.i105.i, %.lr.ph.preheader.i.i104.i ], [ %i.ce, %middle.block102 ]
  %.12028.i.i109.i.ph = phi i64 [ %.01939.i.i106.i, %.lr.ph.preheader.i.i104.i ], [ %i.cg, %middle.block102 ]
  br label %.lr.ph.i.i107.i

.lr.ph.i.i107.i:                                  ; preds = %.lr.ph.i.i107.i.preheader, %.lr.ph.i.i107.i
  %.029.i.i108.i = phi i64 [ %i.cr, %.lr.ph.i.i107.i ], [ %.029.i.i108.i.ph, %.lr.ph.i.i107.i.preheader ] ; 3 uses
  %.12028.i.i109.i = phi i64 [ %i.cp, %.lr.ph.i.i107.i ], [ %.12028.i.i109.i.ph, %.lr.ph.i.i107.i.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.029.i.i108.i ; 2 uses
  %.shift.i.i110.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %27 = load i32, ptr %.shift.i.i110.i, align 4, !tbaa !9
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.12028.i.i109.i ; 2 uses
  store i32 %27, ptr %28, align 4, !tbaa !3
  %29 = load i64, ptr %i.cn, align 8, !tbaa !9
  %i.co = trunc i64 %29 to i32
  %i.cp = add nuw nsw i64 %.12028.i.i109.i, 2     ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !3
  %i.cr = add nsw i64 %.029.i.i108.i, -1
  %.not44.i.i110.i = icmp eq i64 %.029.i.i108.i, 0
  br i1 %.not44.i.i110.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i, !llvm.loop !40

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i: ; preds = %.lr.ph.i.i107.i, %middle.block102, %bb.m, %.loopexit.i.thread.i117.i
  %.120.lcssa.i.i111.i = phi i64 [ 1, %.loopexit.i.thread.i117.i ], [ 0, %bb.m ], [ %i.cg, %middle.block102 ], [ %i.cp, %.lr.ph.i.i107.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %.not.not.i = icmp slt i64 %.120.lcssa.i.i.i, %.120.lcssa.i.i111.i
  br i1 %.not.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.o:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  switch i64 %.120.lcssa.i.i111.i, label %bb.z [
    i64 0, label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit
    i64 1, label %.lr.ph.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.cs = load i32, ptr %i.c, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  br label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cu = add i64 %.120.lcssa.i.i.i, -8           ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %.lr.ph.i.i.i.i, label %.lr.ph36.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cw = add nsw i64 %.02732.i.i.i.i, -1
  %i.cx = icmp sgt i64 %.02732.i.i.i.i, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i, label %.lr.ph36.i.i.i.i, !llvm.loop !41

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %bb.p
  %.02732.i.i.i.i = phi i64 [ %i.cw, %bb.p ], [ %i.cu, %._crit_edge.i.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02732.i.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %.not.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %.thread.i.i.i.i
  %.022.lcssa.i.i.i.i = phi i64 [ %.02234.i.i.i.i.lcssa, %.thread.i.i.i.i ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ] ; 2 uses
  %i.da = icmp samesign ult i64 %.022.lcssa.i.i.i.i, 4
  br i1 %i.da, label %.lr.ph38.preheader.i.i.i.i, label %bb.v

.lr.ph38.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.db = shl nuw nsw i64 %.022.lcssa.i.i.i.i, 3  ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %6, i64 %i.db
  %i.dc = sub nuw nsw i64 32, %i.db
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.dc, i1 false)
  br label %bb.v

.lr.ph36.i.i.i.i:                                 ; preds = %._crit_edge.i.i, %bb.p
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %i.dg, label %.thread.i.i.i.i, label %bb.q

.thread.i.i.i.i:                                  ; preds = %.lr.ph36.i.i.i.i.3, %.lr.ph36.i.i.i.i.2, %.lr.ph36.i.i.i.i.1, %.lr.ph36.i.i.i.i
  %.02234.i.i.i.i.lcssa.sroa.phi = phi ptr [ %6, %.lr.ph36.i.i.i.i ], [ %.02234.i.i.i.i.lcssa.sroa.gep190, %.lr.ph36.i.i.i.i.1 ], [ %.02234.i.i.i.i.lcssa.sroa.gep191, %.lr.ph36.i.i.i.i.2 ], [ %.02234.i.i.i.i.lcssa.sroa.gep192, %.lr.ph36.i.i.i.i.3 ]
  %.02234.i.i.i.i.lcssa = phi i64 [ 1, %.lr.ph36.i.i.i.i ], [ 2, %.lr.ph36.i.i.i.i.1 ], [ 3, %.lr.ph36.i.i.i.i.2 ], [ 4, %.lr.ph36.i.i.i.i.3 ]
  %.lcssa175 = phi i64 [ %i.df, %.lr.ph36.i.i.i.i ], [ %i.dp, %.lr.ph36.i.i.i.i.1 ], [ %i.ea, %.lr.ph36.i.i.i.i.2 ], [ %i.el, %.lr.ph36.i.i.i.i.3 ]
  store i64 %.lcssa175, ptr %.02234.i.i.i.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i.i.i

bb.q:                                             ; preds = %.lr.ph36.i.i.i.i
  %i.dh = add nsw i64 %.120.lcssa.i.i.i, -2       ; 3 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64
  %i.dl = shl nuw i64 %i.dk, 32
  %i.dm = or disjoint i64 %i.dl, %i.df
  store i64 %i.dm, ptr %6, align 8
  %.not = icmp eq i64 %.120.lcssa.i.i.i, 1
  br i1 %.not, label %.preheader.i.i.i.i, label %.lr.ph36.i.i.i.i.1

.lr.ph36.i.i.i.i.1:                               ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dh ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = icmp eq i64 %i.dh, 0
  br i1 %i.dq, label %.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph36.i.i.i.i.1
  %i.dr = add nsw i64 %.120.lcssa.i.i.i, -4       ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dn, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64
  %i.dv = shl nuw i64 %i.du, 32
  %i.dw = or disjoint i64 %i.dv, %i.dp
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dw, ptr %i.dx, align 8
  %.not199.a = icmp eq i64 %i.dh, 1
  br i1 %.not199.a, label %.preheader.i.i.i.i, label %.lr.ph36.i.i.i.i.2

.lr.ph36.i.i.i.i.2:                               ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dr ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = icmp eq i64 %i.dr, 0
  br i1 %i.eb, label %.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph36.i.i.i.i.2
  %i.ec = getelementptr i8, ptr %i.dy, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = zext i32 %i.ed to i64
  %i.ef = shl nuw i64 %i.ee, 32
  %i.eg = or disjoint i64 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.eg, ptr %i.eh, align 8
  %.not200.a = icmp eq i64 %i.dr, 1
  br i1 %.not200.a, label %.preheader.i.i.i.i, label %.lr.ph36.i.i.i.i.3

.lr.ph36.i.i.i.i.3:                               ; preds = %bb.s
  %i.ei = add nsw i64 %.120.lcssa.i.i.i, -6       ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = icmp eq i64 %i.ei, 0
  br i1 %i.em, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph36.i.i.i.i.3
  %i.en = getelementptr i8, ptr %i.ej, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64
  %i.eq = shl nuw i64 %i.ep, 32
  %i.er = or disjoint i64 %i.eq, %i.el
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.er, ptr %i.es, align 8
  br label %.preheader.i.i.i.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i
  %.02232.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fc, %bb.u ] ; 4 uses
  %.02331.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fb, %bb.u ]
  %i.et = shl nuw i64 %.02331.i.i, 32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02232.i.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = zext i32 %i.ev to i64
  %i.ex = or disjoint i64 %i.et, %i.ew            ; 2 uses
  %i.ey = udiv i64 %i.ex, %i.ct
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02232.i.i
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !3
  %i.fb = urem i64 %i.ex, %i.ct                   ; 2 uses
  %i.fc = add nuw nsw i64 %.02232.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.02232.i.i, %.120.lcssa.i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.u, !llvm.loop !42

bb.v:                                             ; preds = %.lr.ph38.preheader.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %i.fb, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 24, i1 false)
  %i.fd = xor i1 %i.h, %i.bb
  br i1 %i.fd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fe = load i64, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.ff = sub i64 0, %i.fe
  store i64 %i.ff, ptr %2, align 8, !tbaa !9
  %i.fg = icmp eq i64 %i.fe, 0
  %i.fh = zext i1 %i.fg to i64                    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !9
  %i.fk = xor i64 %i.fj, -1
  %i.fl = add i64 %i.fh, %i.fk                    ; 2 uses
  store i64 %i.fl, ptr %i.fi, align 8, !tbaa !9
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = select i1 %i.fm, i64 %i.fh, i64 0       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !9
  %i.fq = xor i64 %i.fp, -1
  %i.fr = add i64 %i.fn, %i.fq                    ; 2 uses
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !9
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = select i1 %i.fs, i64 %i.fn, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !9
  %i.fw = xor i64 %i.fv, -1
  %i.fx = add i64 %i.ft, %i.fw
  store i64 %i.fx, ptr %i.fu, align 8, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.h, label %bb.y, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fy = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
end_hunk_1
