Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NestedNameSpecifier?download=true
begin_hunk_0_@_ZNK5clang19NestedNameSpecifier16isFullyQualifiedEv:bb.a
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = icmp eq i32 %i.e, 3
  br i1 %i.p, label %bb.d, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit

bb.d:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread
  %.sroa.08.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !37
  %.sroa.3.0..sroa.56.8.7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa.56.8.7.sroa_idx.i, align 8, !tbaa !33
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread, %bb.d
  %.sroa.08.0.i = phi ptr [ %.sroa.08.0.copyload.i, %bb.d ], [ %i.o, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread ], [ %i.l, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread ]
  %.sroa.3.0.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.d ], [ 2, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread ], [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread ]
  store ptr %.sroa.08.0.i, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i, ptr %i.q, align 8
  %i.r = call noundef zeroext i1 @_ZNK5clang19NestedNameSpecifier16isFullyQualifiedEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.e

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread5: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.s = and i64 %i.a, -8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call i64 @_ZNK5clang4Type9getPrefixEv(ptr noundef nonnull align 16 dereferenceable(24) %i.t) #16
  store i64 %i.u, ptr %2, align 8
  %i.v = call noundef zeroext i1 @_ZNK5clang19NestedNameSpecifier16isFullyQualifiedEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread5, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread3
  %.0 = phi i1 [ %i.v, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread5 ], [ false, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread3 ], [ %i.r, %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit ], [ true, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit ]
  ret i1 %.0
}

declare i64 @_ZNK5clang4Type9getPrefixEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 16) i8 @_ZNK5clang19NestedNameSpecifier13getDependenceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.b = icmp ugt i64 %i.a, 7
  br i1 %i.b, label %bb.b, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32
  %i.d = lshr i32 %i.c, 1
  %i.e = and i32 %i.d, 3
  switch i32 %i.e, label %default.unreachable [
    i32 1, label %bb.c
    i32 2, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread
    i32 3, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread5
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.a, -8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 126
  %switch.i = icmp eq i32 %i.j, 78
  br i1 %switch.i, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread3

default.unreachable:                              ; preds = %bb.b
  unreachable

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread3: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.l = tail call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #16
  %i.m = select i1 %i.l, i8 6, i8 0
  br label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread5: ; preds = %bb.b
  %i.n = and i64 %i.a, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  %i.q = load i16, ptr %i.p, align 1
  %i.r = trunc i16 %i.q to i8                     ; 2 uses
  %i.s = lshr i8 %i.r, 1
  %i.t = and i8 %i.s, 8
  %i.u = and i8 %i.r, 7
  %i.v = or disjoint i8 %i.t, %i.u
  br label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread: ; preds = %bb.a, %bb.c, %bb.b, %bb.b, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread5, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread3
  %.0 = phi i8 [ %i.v, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread5 ], [ %i.m, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread3 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

declare noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang19NestedNameSpecifier5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.clang::NamespaceAndPrefix", align 8 ; 5 uses
  %6 = alloca %"struct.clang::PrintingPolicy", align 8 ; 6 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !36     ; 7 uses
  %i.b = icmp ugt i64 %i.a, 7
  br i1 %i.b, label %bb.b, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32
  %i.d = lshr i32 %i.c, 1
  %i.e = and i32 %i.d, 3                          ; 2 uses
  switch i32 %i.e, label %default.unreachable [
    i32 1, label %bb.c
    i32 2, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread
    i32 3, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread
    i32 0, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread37
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.a, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 126
  %switch.i = icmp eq i32 %i.j, 78
  br i1 %switch.i, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread, label %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread35

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.k = and i64 %i.a, -8
  %i.l = inttoptr i64 %i.k to ptr
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

_ZNK5clang19NestedNameSpecifier7getKindEv.exit:   ; preds = %bb.a
  %i.m = icmp samesign ult i64 %i.a, 2
  br i1 %i.m, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.m

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread: ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.n = and i64 %i.a, -8
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = icmp eq i32 %i.e, 3
  br i1 %i.p, label %bb.d, label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit

bb.d:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread
  %.sroa.08.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !37
  %.sroa.3.0..sroa.56.8.7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa.56.8.7.sroa_idx.i, align 8, !tbaa !33
  br label %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit

_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit: ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread, %bb.d
  %.sroa.08.0.i = phi ptr [ %.sroa.08.0.copyload.i, %bb.d ], [ %i.o, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread ], [ %i.l, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread ] ; 4 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.d ], [ 2, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread ], [ 0, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread.thread ]
  store ptr %.sroa.08.0.i, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i, ptr %i.q, align 8
  call void @_ZNK5clang19NestedNameSpecifier5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEbb(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 zeroext poison, i1 noundef zeroext true)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 127
  %i.u = icmp ne i32 %i.t, 78
  %.not58 = icmp eq ptr %.sroa.08.0.i, null
  %.not = select i1 %i.u, i1 true, i1 %.not58
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  %i.x = and i64 %i.w, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i64 %i.w, -8                         ; 3 uses
  %.not2.i18 = icmp eq i64 %i.z, 0
  %.not.i19 = or i1 %i.y, %.not2.i18              ; 2 uses
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit
  br i1 %.not.i19, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit

_ZNK5clang9NamedDecl7getNameEv.exit:              ; preds = %bb.e
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.af = and i64 %i.ae, 4294967295               ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %i.ao = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ad, i64 noundef %i.af) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %.not.i17 = icmp eq i64 %i.af, 0
  br i1 %.not.i17, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.af
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !50
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.i:                                             ; preds = %_ZNK5clang19NestedNameSpecifier23getAsNamespaceAndPrefixEv.exit
  br i1 %.not.i19, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit24

_ZNK5clang9NamedDecl7getNameEv.exit24:            ; preds = %bb.i
  %i.ar = inttoptr i64 %i.z to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !tbaa !43
  %i.aw = and i64 %i.av, 4294967295               ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50 ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %i.aw, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit24
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.au, i64 noundef %i.aw) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit24
  %.not.i25 = icmp eq i64 %i.aw, 0
  br i1 %.not.i25, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 1 %i.au, i64 %i.aw, i1 false)
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aw
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !50
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.i, %bb.e, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.m:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50 ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 2
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 2) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.o:                                             ; preds = %bb.m
  store i16 14906, ptr %i.bl, align 1
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store ptr %i.bs, ptr %i.bk, align 8, !tbaa !50
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread35: ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !50 ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, 7
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread35
  %i.cb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.1, i64 noundef 7) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.q:                                             ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bw, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 7
  store ptr %i.cd, ptr %i.bv, align 8, !tbaa !50
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread37: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !51
  %i.ce = load i64, ptr %6, align 8
  %i.cf = or i64 %i.ce, 512
  store i64 %i.cf, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.cg = and i64 %i.a, -8
  store i64 %i.cg, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.ch, align 8, !tbaa !55
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ci, align 1, !tbaa !58
  call void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(34) %8, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %bb.q, %bb.p, %_ZNK5clang19NestedNameSpecifier7getKindEv.exit.thread37, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  br i1 %4, label %bb.r, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50 ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult i64 %i.cp, 2
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 2) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.t:                                             ; preds = %bb.r
  store i16 14906, ptr %i.cm, align 1
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !50
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %_ZNK5clang19NestedNameSpecifier7getKindEv.exit, %bb.t, %bb.s, %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEPKc.exit30
  ret void
}

declare void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(34), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZNK5clang19NestedNameSpecifier4dumpEPN4llvm11raw_ostreamEPKNS_11LangOptionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %4 = alloca %"class.clang::LangOptions", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ %1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5clang11LangOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1136) %4, ptr noundef nonnull align 8 dereferenceable(1136) %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN5clang11LangOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(1136) %4) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.c = load i64, ptr %4, align 8                ; 11 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = and i64 %i.d, 512
  %i.f = lshr i64 %i.c, 5
  %i.g = and i64 %i.f, 8388608
  %i.h = and i64 %i.c, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = shl i64 %i.c, 21
  %i.j = and i64 %i.i, 16777216
  %i.k = select i1 %.not.i, i64 %i.j, i64 16777216
  %i.l = shl i64 %i.c, 13
  %i.m = and i64 %i.l, 33554432
  %i.n = shl i64 %i.c, 26
  %i.o = and i64 %i.n, 67108864
  %i.p = shl i64 %i.c, 14
  %i.q = and i64 %i.p, 134217728
  %i.r = shl i64 %i.c, 27
  %i.s = and i64 %i.r, 268435456
  %i.t = shl i64 %i.c, 17
  %i.u = and i64 %i.t, 1610612736
  %i.v = shl i64 %i.c, 4                          ; 2 uses
  %i.w = and i64 %i.v, 8589934592
  %i.x = and i64 %i.c, 128
  %.not17.i = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.v, 17179869184
  %i.z = xor i64 %i.y, 112201725640704
  %i.aa = select i1 %.not17.i, i64 112184545771520, i64 %i.z
  %i.ab = or disjoint i64 %i.g, %i.e
  %i.ac = or disjoint i64 %i.ab, %i.m
  %i.ad = or disjoint i64 %i.ac, %i.o
  %i.ae = or disjoint i64 %i.ad, %i.q
  %i.af = or disjoint i64 %i.ae, %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 140737488355328
  %.masked.masked.masked.masked.masked.masked = or i64 %i.af, %i.u
  %.masked8.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked, %i.w
  %.masked.masked.masked = or i64 %.masked8.masked.masked.masked.masked, %i.k
  %i.ak = or i64 %.masked.masked.masked, %i.aa
  %i.al = or i64 %i.ak, %i.aj
  %i.am = xor i64 %i.al, 1615085570
  store i64 %i.am, ptr %3, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !59
  call void @_ZNK5clang19NestedNameSpecifier5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 zeroext poison, i1 noundef zeroext true)
  call void @_ZN5clang11LangOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1136) dereferenceable(1136) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang11LangOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::greater<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
end_hunk_0
