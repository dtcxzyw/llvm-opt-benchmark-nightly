inline.NumInlined: 3272
inline.NumDeleted: 768
begin_hunk_0_@_ZN2kc16impl_phylumnames13set_subphylumEiPNS_20impl_abstract_phylumE:bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN2kc23impl_phylumdeclarations13set_subphylumEiPNS_20impl_abstract_phylumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.sink.split, label %.sink.split.sink.split

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.c, %bb.b
  %_ZTIN2kc23impl_phylumdeclarationsE.sink = phi ptr [ @_ZTIN2kc22impl_phylumdeclarationE, %bb.b ], [ @_ZTIN2kc23impl_phylumdeclarationsE, %bb.c ]
  %.sink4.ph = phi i64 [ 8, %bb.b ], [ 16, %bb.c ]
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull %_ZTIN2kc23impl_phylumdeclarationsE.sink, i64 0) #34
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.c, %bb.b
  %.sink4 = phi i64 [ 16, %bb.c ], [ 8, %bb.b ], [ %.sink4.ph, %.sink.split.sink.split ]
  %.sink = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %i.c, %.sink.split.sink.split ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4
  store ptr %.sink, ptr %i.d, align 8, !tbaa !714
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN2kc46impl_phylumdeclarationsroot_PhylumDeclarations13set_subphylumEiPNS_20impl_abstract_phylumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc23impl_phylumdeclarationsE, i64 0) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !888
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN2kc18impl_STRING_String13set_subphylumEiPNS_20impl_abstract_phylumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc20impl_casestring__StrE, i64 0) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !891
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN2kc12impl_INT_Int13set_subphylumEiPNS_20impl_abstract_phylumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc17impl_integer__IntE, i64 0) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !894
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN2kc10impl_ID_Id13set_subphylumEiPNS_20impl_abstract_phylumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc11impl_uniqIDE, i64 0) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.d, align 8, !tbaa !897
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @_ZN2kc15impl_uniqID_Str13set_subphylumEiPNS_20impl_abstract_phylumE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc20impl_casestring__StrE, i64 0) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.d, align 8, !tbaa !900
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2kc15copy_attributesENS_10enum_phylaEPKNS_20impl_abstract_phylumEPS1_(i32 noundef %0, ptr noundef %1, ptr nofree noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.am [
    i32 6, label %bb.b
    i32 7, label %bb.c
    i32 8, label %bb.d
    i32 9, label %bb.e
    i32 13, label %bb.f
    i32 15, label %bb.g
    i32 18, label %bb.h
    i32 19, label %bb.i
    i32 25, label %bb.j
    i32 32, label %bb.k
    i32 35, label %bb.l
    i32 37, label %bb.m
    i32 42, label %bb.n
    i32 43, label %bb.o
    i32 45, label %bb.p
    i32 46, label %bb.q
    i32 49, label %bb.r
    i32 52, label %bb.s
    i32 54, label %bb.t
    i32 56, label %bb.u
    i32 57, label %bb.v
    i32 58, label %bb.w
    i32 60, label %bb.x
    i32 61, label %bb.y
    i32 62, label %bb.z
    i32 63, label %bb.aa
    i32 65, label %bb.ab
    i32 68, label %bb.ac
    i32 70, label %bb.ad
    i32 76, label %bb.ae
    i32 87, label %bb.af
    i32 88, label %bb.ag
    i32 115, label %bb.ah
    i32 138, label %bb.ai
    i32 140, label %bb.aj
    i32 141, label %bb.ak
    i32 143, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc11impl_uniqIDE, i64 0) #34 ; 3 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc11impl_uniqIDE, i64 0) #34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !903
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !903
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !904
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.g, ptr %i.h, align 8, !tbaa !904
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !714
  store <2 x ptr> %i.k, ptr %i.j, align 8, !tbaa !714
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc7impl_IDE, i64 0) #34 ; 3 uses
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc7impl_IDE, i64 0) #34 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !714
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !714
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !905
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !905
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !906
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !906
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.w = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc8impl_INTE, i64 0) #34 ; 2 uses
  %i.x = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc8impl_INTE, i64 0) #34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !907
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !907
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !908
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !908
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ae = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc11impl_STRINGE, i64 0) #34 ; 2 uses
  %i.af = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc11impl_STRINGE, i64 0) #34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !909
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !909
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !910
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !910
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.am = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc22impl_phylumdeclarationE, i64 0) #34 ; 2 uses
  %i.an = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc22impl_phylumdeclarationE, i64 0) #34 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !911
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !911
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !714
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !714
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.au = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc19impl_storageclassesE, i64 0) #34
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !912
  %i.ax = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc19impl_storageclassesE, i64 0) #34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !912
  br label %bb.am

bb.h:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.az = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_alternativeE, i64 0) #34 ; 2 uses
  %i.ba = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_alternativeE, i64 0) #34 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !714
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !714
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bg = load <2 x ptr>, ptr %i.be, align 8, !tbaa !714
  store <2 x ptr> %i.bg, ptr %i.bf, align 8, !tbaa !714
  br label %bb.am

bb.i:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.bh = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc14impl_argumentsE, i64 0) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !913
  %i.bk = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc14impl_argumentsE, i64 0) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !913
  br label %bb.am

bb.j:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.bm = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_CexpressionE, i64 0) #34 ; 2 uses
  %i.bn = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_CexpressionE, i64 0) #34 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !914
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !914
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !915
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !915
  br label %bb.am

bb.k:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.bu = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_idCexpressionE, i64 0) #34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !916
  %i.bx = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_idCexpressionE, i64 0) #34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !916
  br label %bb.am

bb.l:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.bz = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_includefileE, i64 0) #34 ; 2 uses
  %i.ca = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_includefileE, i64 0) #34 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !917
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !917
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !918
  br label %bb.am

bb.m:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.cg = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc23impl_includedeclarationE, i64 0) #34 ; 2 uses
  %i.ch = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc23impl_includedeclarationE, i64 0) #34 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !920
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !920
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !921
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !921
  br label %bb.am

bb.n:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.co = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_patternchainsE, i64 0) #34 ; 2 uses
  %i.cp = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_patternchainsE, i64 0) #34 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !922
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !922
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !923
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !923
  br label %bb.am

bb.o:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.cw = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc17impl_patternchainE, i64 0) #34 ; 2 uses
  %i.cx = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc17impl_patternchainE, i64 0) #34 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !924
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !924
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !925
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !925
  br label %bb.am

bb.p:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.de = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc21impl_patternchainitemE, i64 0) #34 ; 2 uses
  %i.df = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc21impl_patternchainitemE, i64 0) #34 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !926
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !926
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dl = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !714
  store <2 x ptr> %i.dl, ptr %i.dk, align 8, !tbaa !714
  br label %bb.am

bb.q:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.dm = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc19impl_outmostpatternE, i64 0) #34 ; 2 uses
  %i.dn = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc19impl_outmostpatternE, i64 0) #34 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !927
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !927
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !714
  store <2 x ptr> %i.dt, ptr %i.ds, align 8, !tbaa !714
  br label %bb.am

bb.r:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.du = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc9impl_termE, i64 0) #34 ; 2 uses
  %i.dv = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc9impl_termE, i64 0) #34 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !928
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !928
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !929
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !929
  br label %bb.am

bb.s:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ec = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc11impl_fnfileE, i64 0) #34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !930
  %i.ef = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc11impl_fnfileE, i64 0) #34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !930
  br label %bb.am

bb.t:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.eh = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_fndeclarationE, i64 0) #34 ; 4 uses
  %i.ei = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_fndeclarationE, i64 0) #34 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !931
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !931
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.en = load i32, ptr %i.em, align 8, !tbaa !932
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !932
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !933
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !933
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.et = load i8, ptr %i.es, align 8, !tbaa !934, !range !35, !noundef !36
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store i8 %i.et, ptr %i.eu, align 8, !tbaa !934
  br label %bb.am

bb.u:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ev = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc10impl_CtextE, i64 0) #34 ; 2 uses
  %i.ew = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc10impl_CtextE, i64 0) #34 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !935
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !935
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !936
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !936
  br label %bb.am

bb.v:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.fd = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc15impl_Ctext_elemE, i64 0) #34 ; 2 uses
  %i.fe = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc15impl_Ctext_elemE, i64 0) #34 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !937
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !937
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !938
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !938
  br label %bb.am

bb.w:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.fl = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_foreach_afterE, i64 0) #34 ; 2 uses
  %i.fm = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_foreach_afterE, i64 0) #34 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !939
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !939
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !940
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !940
  br label %bb.am

bb.x:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ft = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc20impl_withexpressionsE, i64 0) #34 ; 3 uses
  %i.fu = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc20impl_withexpressionsE, i64 0) #34 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !941
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !941
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !942
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !942
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !943
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !943
  br label %bb.am

bb.y:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ge = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc19impl_withexpressionE, i64 0) #34 ; 3 uses
  %i.gf = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc19impl_withexpressionE, i64 0) #34 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !944
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !944
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !945
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i32 %i.gk, ptr %i.gl, align 8, !tbaa !945
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !946
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !946
  br label %bb.am

bb.z:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.gp = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc14impl_withcasesE, i64 0) #34
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !947
  %i.gs = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc14impl_withcasesE, i64 0) #34
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store ptr %i.gr, ptr %i.gt, align 8, !tbaa !947
  br label %bb.am

bb.aa:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.gu = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc13impl_withcaseE, i64 0) #34
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !948
  %i.gx = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc13impl_withcaseE, i64 0) #34
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.gw, ptr %i.gy, align 8, !tbaa !948
  br label %bb.am

bb.ab:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.gz = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc23impl_unparsedeclarationE, i64 0) #34
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !949
  %i.hc = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc23impl_unparsedeclarationE, i64 0) #34
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !949
  br label %bb.am

bb.ac:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.he = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc14impl_viewnamesE, i64 0) #34
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !950, !range !35, !noundef !36
  %i.hh = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc14impl_viewnamesE, i64 0) #34
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i8 %i.hg, ptr %i.hi, align 8, !tbaa !950
  br label %bb.am

bb.ad:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.hj = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_unparseitemE, i64 0) #34
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !951
  %i.hm = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc16impl_unparseitemE, i64 0) #34
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i32 %i.hl, ptr %i.hn, align 8, !tbaa !951
  br label %bb.am

bb.ae:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ho = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc13impl_filelineE, i64 0) #34 ; 2 uses
  %i.hp = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc13impl_filelineE, i64 0) #34 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !952
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !952
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !954
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i32 %i.hu, ptr %i.hv, align 8, !tbaa !954
  br label %bb.am

bb.af:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.hw = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc31impl_elem_patternrepresentationE, i64 0) #34 ; 2 uses
  %i.hx = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc31impl_elem_patternrepresentationE, i64 0) #34 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !955
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 %i.hz, ptr %i.ia, align 8, !tbaa !955
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.id = load <2 x ptr>, ptr %i.ib, align 8, !tbaa !714
  store <2 x ptr> %i.id, ptr %i.ic, align 8, !tbaa !714
  br label %bb.am

bb.ag:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ie = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc9impl_pathE, i64 0) #34
  %i.if = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc9impl_pathE, i64 0) #34
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ii = load <2 x ptr>, ptr %i.ig, align 8, !tbaa !756
  store <2 x ptr> %i.ii, ptr %i.ih, align 8, !tbaa !756
  br label %bb.am

bb.ah:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ij = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc21impl_ac_operator_nameE, i64 0) #34 ; 2 uses
  %i.ik = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc21impl_ac_operator_nameE, i64 0) #34 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load i32, ptr %i.il, align 8, !tbaa !956
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i32 %i.im, ptr %i.in, align 8, !tbaa !956
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !957
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !957
  br label %bb.am

bb.ai:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.ir = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc27impl_addedphylumdeclarationE, i64 0) #34
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i8, ptr %i.is, align 8, !tbaa !958, !range !35, !noundef !36
  %i.iu = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc27impl_addedphylumdeclarationE, i64 0) #34
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i8 %i.it, ptr %i.iv, align 8, !tbaa !958
  br label %bb.am

bb.aj:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.iw = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc29impl_countedphylumdeclarationE, i64 0) #34
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !959
  %i.iz = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc29impl_countedphylumdeclarationE, i64 0) #34
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 %i.iy, ptr %i.ja, align 8, !tbaa !959
  br label %bb.am

bb.ak:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.jb = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc13impl_charrunsE, i64 0) #34
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !960
  %i.je = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc13impl_charrunsE, i64 0) #34
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 %i.jd, ptr %i.jf, align 8, !tbaa !960
  br label %bb.am

bb.al:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  %i.jg = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_bindingidmarkE, i64 0) #34
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load i8, ptr %i.jh, align 8, !tbaa !962, !range !35, !noundef !36
  %i.jj = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN2kc20impl_abstract_phylumE, ptr nonnull @_ZTIN2kc18impl_bindingidmarkE, i64 0) #34
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i8 %i.ji, ptr %i.jk, align 8, !tbaa !962
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.jl = load ptr, ptr %1, align 8, !tbaa !8
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = tail call noundef i32 %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [56 x i8], ptr @_ZN2kc13operator_infoE, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !963
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  ret void

bb.ao:                                            ; preds = %bb.am
  %i.jt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2kc11attributeOfEPNS_20impl_abstract_phylumEi(ptr nonnull poison, i32 poison) ; 0 uses
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local noalias noundef nonnull align 8 dereferenceable(8) ptr @_ZN2kc11attributeOfEPNS_20impl_abstract_phylumEi(ptr nofree readnone captures(none) %0, i32 %1) local_unnamed_addr #9 {
bb.a:
  tail call void @_ZN2kc24kc_assertionReasonFailedEPKciS1_(ptr noundef nonnull @.str.496, i32 noundef 10651, ptr noundef nonnull @.str.499) #35
  unreachable
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !964
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !964
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.484, ptr noundef %0, ptr noundef %2, i32 noundef %1) #36 ; 0 uses
  tail call void @abort() #37
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local void @_ZN2kc22kc_returnless_functionEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !964
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !964
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.485, ptr noundef %0, ptr noundef %2, i32 noundef %1) #36 ; 0 uses
  tail call void @abort() #37
  unreachable
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local void @_ZN2kc18kc_assertionFailedEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !964
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !964
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.486, ptr noundef %0, i32 noundef %1) #36 ; 0 uses
  tail call void @abort() #37
  unreachable
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local void @_ZN2kc24kc_assertionReasonFailedEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !964
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !964
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.487, ptr noundef %0, i32 noundef %1, ptr noundef %2) #36 ; 0 uses
  tail call void @abort() #37
  unreachable
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local void @_ZN2kc25kc_assertionNonNullFailedEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !964
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !964
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.488, ptr noundef %0, i32 noundef %1, ptr noundef %2) #36 ; 0 uses
  tail call void @abort() #37
  unreachable
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local void @_ZN2kc34kc_assertionOperatorInPhylumFailedEiPKcS1_S1_S1_i(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !964
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = add i32 %0, -339
  %or.cond = icmp ult i32 %i.c, -338
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !964 ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.489, ptr noundef %4, i32 noundef %5, ptr noundef %3, ptr noundef %1, ptr noundef %2, i32 noundef %0) #36 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw [56 x i8], ptr @_ZN2kc13operator_infoE, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !966
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @_ZN2kc11phylum_infoE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !967
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.490, ptr noundef %4, i32 noundef %5, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %i.h, i32 noundef %0, ptr noundef %i.m) #36 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @abort() #37
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN2kc19kc_invalid_operatorEPKcNS_10enum_phylaEiS1_NS_14enum_operatorsE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !964
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !964
  %i.d = tail call noundef ptr @_ZN2kc19phylumname_or_errorENS_10enum_phylaE(i32 noundef %1)
  %i.e = tail call noundef ptr @_ZN2kc24kc_operatorname_or_errorENS_14enum_operatorsE(i32 noundef %4)
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.491, ptr noundef %0, ptr noundef %i.d, ptr noundef %3, i32 noundef %2, ptr noundef %i.e) #36 ; 0 uses
  tail call void @abort() #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2kc19phylumname_or_errorENS_10enum_phylaE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -144
  %or.cond = icmp ult i32 %i.a, -143
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(69) ptr @_Znam(i64 noundef 69) #33 ; 2 uses
  %i.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.511, i32 noundef %0) #34 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr inbounds nuw [24 x i8], ptr @_ZN2kc11phylum_infoE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !967
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2kc24kc_operatorname_or_errorENS_14enum_operatorsE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -339
  %or.cond = icmp ult i32 %i.a, -338
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(71) ptr @_Znam(i64 noundef 71) #33 ; 2 uses
  %i.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.512, i32 noundef %0) #34 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr inbounds nuw [56 x i8], ptr @_ZN2kc13operator_infoE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !966
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN2kc15impl_real__RealC2Ed(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, double noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2kc15impl_real__RealE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN2kc17impl_integer__IntC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
end_hunk_0
