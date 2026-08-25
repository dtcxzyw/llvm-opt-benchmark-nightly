Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MCObjectFileInfo?download=true
begin_hunk_0_@_ZNK4llvm16MCObjectFileInfo19getBBAddrMapSectionERKNS_9MCSectionE:bb.a

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 4
  %.not.i30 = icmp eq i32 %i.ah, 0
  br i1 %.not.i30, label %_ZNK4llvm8MCSymbol7getNameEv.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !415 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !417
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit35

_ZNK4llvm8MCSymbol7getNameEv.exit35:              ; preds = %bb.i, %bb.h, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ %i.ak, %bb.i ], [ null, %bb.h ]
  %.sroa.5.0 = phi i64 [ 0, %bb.e ], [ %i.al, %bb.i ], [ 0, %bb.h ]
  %.026 = phi i32 [ 1107296320, %bb.e ], [ 1107300416, %bb.i ], [ 1107300416, %bb.h ]
  %.025 = phi i32 [ 0, %bb.e ], [ 5, %bb.i ], [ 5, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.an = load i32, ptr %i.am, align 4, !tbaa !426
  %i.ao = tail call noundef ptr @_ZN4llvm9MCContext14getCOFFSectionENS_9StringRefEjS1_ij(ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr nonnull @.str.212, i64 17, i32 noundef %.026, ptr %.sroa.0.0, i64 %.sroa.5.0, i32 noundef %.025, i32 noundef %i.an) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNK4llvm8MCSymbol7getNameEv.exit35, %_ZNK4llvm8MCSymbol7getNameEv.exit
  %.0 = phi ptr [ %i.x, %_ZNK4llvm8MCSymbol7getNameEv.exit ], [ %i.ao, %_ZNK4llvm8MCSymbol7getNameEv.exit35 ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm9MCContext14getCOFFSectionENS_9StringRefEjS1_ij(ptr noundef nonnull align 8 dereferenceable(2208), ptr, i64, i32 noundef, ptr, i64, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16MCObjectFileInfo18getKCFITrapSectionERKNS_9MCSectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !402
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i, -8         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %_ZNK4llvm8MCSymbol7getNameEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK4llvm8MCSymbol7getNameEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !415  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.k, align 8, !tbaa !417
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit

_ZNK4llvm8MCSymbol7getNameEv.exit:                ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.l, %bb.d ], [ null, %bb.c ]
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.c ]
  %.010 = phi i32 [ 130, %bb.b ], [ 642, %bb.d ], [ 642, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !291
  store ptr @.str.214, ptr %2, align 8, !tbaa !294
  store i8 3, ptr %i.n, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.p, align 8, !tbaa !295
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !291
  store ptr %.sroa.0.0, ptr %3, align 8, !tbaa !294
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.5.0, ptr %i.r, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.t = load i32, ptr %i.s, align 8, !tbaa !419
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !331
  %i.w = call noundef ptr @_ZN4llvm9MCContext13getELFSectionERKNS_5TwineEjjjS3_bjPKNS_11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef 1, i32 noundef %.010, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %3, i1 noundef zeroext true, i32 noundef %i.t, ptr noundef %i.v) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK4llvm8MCSymbol7getNameEv.exit
  %.0 = phi ptr [ %i.w, %_ZNK4llvm8MCSymbol7getNameEv.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16MCObjectFileInfo21getPseudoProbeSectionERKNS_9MCSectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !402
  switch i32 %i.c, label %bb.i [
    i32 1, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i, -8         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %.not34 = icmp eq i64 %i.e, 0
  br i1 %.not34, label %_ZNK4llvm8MCSymbol7getNameEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK4llvm8MCSymbol7getNameEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !415  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.k, align 8, !tbaa !417
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit

_ZNK4llvm8MCSymbol7getNameEv.exit:                ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.049.0 = phi ptr [ null, %bb.b ], [ %i.l, %bb.d ], [ null, %bb.c ]
  %.sroa.550.0 = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.c ]
  %.028 = phi i32 [ 128, %bb.b ], [ 640, %bb.d ], [ 640, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %.sroa.0.0.copyload.i = load ptr, ptr %i.p, align 8, !tbaa !385
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !386
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.q, align 8, !tbaa !295
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !291
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.s, align 8, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.t, align 8, !tbaa !295
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !291
  store ptr %.sroa.049.0, ptr %3, align 8, !tbaa !294
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.550.0, ptr %i.v, align 8, !tbaa !294
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.x = load i32, ptr %i.w, align 8, !tbaa !419
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !331
  %i.aa = call noundef ptr @_ZN4llvm9MCContext13getELFSectionERKNS_5TwineEjjjS3_bjPKNS_11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef 1, i32 noundef %.028, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %3, i1 noundef zeroext true, i32 noundef %i.x, ptr noundef %i.z) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !427 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !423 ; 3 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 4
  %.not.i38 = icmp eq i32 %i.aj, 0
  br i1 %.not.i38, label %_ZNK4llvm8MCSymbol7getNameEv.exit43, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !415 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.al, align 8, !tbaa !417
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit43

_ZNK4llvm8MCSymbol7getNameEv.exit43:              ; preds = %bb.f, %bb.g
  %.sroa.0.0.i39 = phi ptr [ %i.am, %bb.g ], [ null, %bb.f ]
  %.sroa.4.0.i40 = phi i64 [ %i.an, %bb.g ], [ 0, %bb.f ]
  %i.ao = or i32 %i.ae, 4096
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit43, %bb.e
  %.sroa.5.0 = phi i64 [ 0, %bb.e ], [ %.sroa.4.0.i40, %_ZNK4llvm8MCSymbol7getNameEv.exit43 ]
  %.sroa.0.0 = phi ptr [ @.str.194, %bb.e ], [ %.sroa.0.0.i39, %_ZNK4llvm8MCSymbol7getNameEv.exit43 ]
  %.030 = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %_ZNK4llvm8MCSymbol7getNameEv.exit43 ]
  %.029 = phi i32 [ 0, %bb.e ], [ 5, %_ZNK4llvm8MCSymbol7getNameEv.exit43 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %.sroa.0.0.copyload.i44 = load ptr, ptr %i.ap, align 8, !tbaa !385
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %.sroa.2.0.copyload.i46 = load i64, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !386
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !426
  %i.as = tail call noundef ptr @_ZN4llvm9MCContext14getCOFFSectionENS_9StringRefEjS1_ij(ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr %.sroa.0.0.copyload.i44, i64 %.sroa.2.0.copyload.i46, i32 noundef %.030, ptr %.sroa.0.0, i64 %.sroa.5.0, i32 noundef %.029, i32 noundef %i.ar) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !99
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZNK4llvm8MCSymbol7getNameEv.exit
  %.0 = phi ptr [ %i.aa, %_ZNK4llvm8MCSymbol7getNameEv.exit ], [ %i.as, %bb.h ], [ %i.au, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16MCObjectFileInfo25getPseudoProbeDescSectionENS_9StringRefEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0, ptr %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !403
  switch i32 %i.d, label %bb.b [
    i32 5, label %_ZNK4llvm6Triple14supportsCOMDATEv.exit
    i32 8, label %_ZNK4llvm6Triple14supportsCOMDATEv.exit
    i32 2, label %_ZNK4llvm6Triple14supportsCOMDATEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_ZNK4llvm6Triple14supportsCOMDATEv.exit, label %bb.c

_ZNK4llvm6Triple14supportsCOMDATEv.exit:          ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 8, !tbaa !402
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 9 uses
  switch i32 %i.h, label %bb.d [
    i32 1, label %_ZN4llvmplERKNS_5TwineES2_.exit60
    i32 3, label %_ZN4llvmplERKNS_5TwineES2_.exit110
  ]

_ZN4llvmplERKNS_5TwineES2_.exit60:                ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.l = load i32, ptr %i.k, align 4, !tbaa !428
  %i.m = or i32 %i.l, 512
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !385 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !386 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.o, align 8, !tbaa !295
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !291
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8, !tbaa !294
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.q, align 8, !tbaa !294
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.s = load i32, ptr %i.r, align 8, !tbaa !429
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 244
  %i.u = load i32, ptr %i.t, align 4, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.v, align 8, !tbaa !295, !alias.scope !431
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.w, align 1, !tbaa !291, !alias.scope !431
  store ptr %.sroa.0.0.copyload.i, ptr %8, align 8, !tbaa !294, !alias.scope !431
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.x, align 8, !tbaa !294, !alias.scope !431
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.215, ptr %i.y, align 8, !tbaa !294, !alias.scope !431
  store ptr %8, ptr %7, align 8, !alias.scope !434
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %i.z, align 8, !alias.scope !434
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !294, !alias.scope !434
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.aa, align 8, !tbaa !295, !alias.scope !434
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.ab, align 1, !tbaa !291, !alias.scope !434
  store ptr %7, ptr %6, align 8, !alias.scope !439
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.216, ptr %i.ac, align 8, !alias.scope !439
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.ad, align 8, !tbaa !295, !alias.scope !439
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ae, align 1, !tbaa !291, !alias.scope !439
  %i.af = inttoptr i64 %3 to ptr
  store ptr %6, ptr %5, align 8, !alias.scope !444
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !444
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ah, align 8, !tbaa !295, !alias.scope !444
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 15, ptr %i.ai, align 1, !tbaa !291, !alias.scope !444
  %i.aj = call noundef ptr @_ZN4llvm9MCContext13getELFSectionERKNS_5TwineEjjjS3_bjPKNS_11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef %i.s, i32 noundef %i.m, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(34) %5, i1 noundef zeroext true, i32 noundef -1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.d

_ZN4llvmplERKNS_5TwineES2_.exit110:               ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !427
  %i.am = or i32 %i.al, 4096
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 216 ; 2 uses
  %.sroa.0.0.copyload.i61 = load ptr, ptr %i.an, align 8, !tbaa !385
  %.sroa.2.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.j, i64 224 ; 2 uses
  %.sroa.2.0.copyload.i63 = load i64, ptr %.sroa.2.0..sroa_idx.i62, align 8, !tbaa !386
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 5, ptr %i.ao, align 8, !tbaa !295, !alias.scope !449
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.ap, align 1, !tbaa !291, !alias.scope !449
  store ptr %.sroa.0.0.copyload.i61, ptr %13, align 8, !tbaa !294, !alias.scope !449
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.2.0.copyload.i63, ptr %i.aq, align 8, !tbaa !294, !alias.scope !449
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.215, ptr %i.ar, align 8, !tbaa !294, !alias.scope !449
  store ptr %13, ptr %12, align 8, !alias.scope !452
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %1, ptr %i.as, align 8, !alias.scope !452
  %.sroa.2.0..sroa_idx.i.i.i79 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i.i.i79, align 8, !tbaa !294, !alias.scope !452
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 2, ptr %i.at, align 8, !tbaa !295, !alias.scope !452
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 5, ptr %i.au, align 1, !tbaa !291, !alias.scope !452
  store ptr %12, ptr %11, align 8, !alias.scope !457
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.216, ptr %i.av, align 8, !alias.scope !457
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.aw, align 8, !tbaa !295, !alias.scope !457
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.ax, align 1, !tbaa !291, !alias.scope !457
  %i.ay = inttoptr i64 %3 to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !462
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !462
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.ba, align 8, !tbaa !295, !alias.scope !462
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 15, ptr %i.bb, align 1, !tbaa !291, !alias.scope !462
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !8
  %.sroa.0.0.copyload.i111 = load ptr, ptr %i.an, align 8, !tbaa !385
  %.sroa.2.0.copyload.i113 = load i64, ptr %.sroa.2.0..sroa_idx.i62, align 8, !tbaa !386
  %i.bd = load ptr, ptr %9, align 8, !tbaa !411
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !410
  %i.bg = call noundef ptr @_ZN4llvm9MCContext14getCOFFSectionENS_9StringRefEjS1_ij(ptr noundef nonnull align 8 dereferenceable(2208) %i.bc, ptr %.sroa.0.0.copyload.i111, i64 %.sroa.2.0.copyload.i113, i32 noundef %i.am, ptr %i.bd, i64 %i.bf, i32 noundef 4, i32 noundef -1) #10
  %i.bh = load ptr, ptr %9, align 8, !tbaa !411   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit110
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !294
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvmplERKNS_5TwineES2_.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK4llvm6Triple14supportsCOMDATEv.exit
  %.1 = phi ptr [ %i.g, %_ZNK4llvm6Triple14supportsCOMDATEv.exit ], [ %i.aj, %_ZN4llvmplERKNS_5TwineES2_.exit60 ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %bb.c ]
  ret ptr %.1
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm16MCObjectFileInfo19getLLVMStatsSectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %0) local_unnamed_addr #6 align 2 {
end_hunk_0
