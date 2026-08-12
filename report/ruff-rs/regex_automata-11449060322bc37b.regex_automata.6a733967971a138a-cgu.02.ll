inline.NumInlined: 419
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder9configure:bb.a
  store i8 %spec.store.select3.i, ptr %i.aa, align 1
  store i8 %spec.store.select4.i, ptr %i.af, align 2
  store i8 %spec.store.select7.i, ptr %i.u, align 1
  resume { ptr, i32 } %i.az

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense6ConfigEBH_.exit: ; preds = %bb.i, %bb.h, %_RNvMNtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB2_6Config9overwrite.exit, %bb.j
  store i128 %.sroa.017.0.i, ptr %0, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.3.i, i64 32, i1 false)
  store i64 %spec.select35.i, ptr %i.aj, align 16
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.322.0.i, ptr %.sroa.7.0..sroa_idx5, align 8
  store i64 %.sroa.023.0.i, ptr %i.an, align 16
  %.sroa.9.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.324.0.i, ptr %.sroa.9.0..sroa_idx9, align 8
  store <2 x ptr> %i.p, ptr %i.ar, align 16
  %.sroa.12.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.6.1.i, ptr %.sroa.12.0..sroa_idx15, align 16
  store i8 %.sroa.7.0.i, ptr %i.as, align 8
  %.sroa.14.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.0..sroa_idx19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false)
  store i8 %spec.store.select.i, ptr %i.c, align 16
  store <4 x i8> %i.aq, ptr %i.r, align 1
  store i8 %spec.store.select3.i, ptr %i.aa, align 1
  store i8 %spec.store.select4.i, ptr %i.af, align 2
  store i8 %spec.store.select7.i, ptr %i.u, align 1
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableRSmE20from_bytes_unchecked(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(288) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0295 = alloca [255 x i8], align 1        ; 2 uses
  %i.a = alloca [272 x i8], align 8               ; 8 uses
  %.sroa.564.sroa.0 = alloca [255 x i8], align 8  ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 12)
  %i.d = load i32, ptr %i.c, align 8, !range !361, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4123.0.copyload = load i32, ptr %.sroa.4123.0..sroa_idx, align 4
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7126.0.copyload = load i64, ptr %.sroa.7126.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x i64>, ptr %.sroa.5124.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.d, ptr %i.e, align 8
  store i32 %.sroa.4123.0.copyload, ptr %.sroa.4128.0..sroa_idx, align 4
  store <2 x i64> %i.f, ptr %.sroa.5129.0..sroa_idx, align 8
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7126.0.copyload, ptr %.sroa.7131.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.e, label %bb.d, !prof !389

bb.d:                                             ; preds = %bb.c
  %i.l = sub nuw nsw i64 %2, %i.j                 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 7)
  %i.n = load i32, ptr %i.b, align 8, !range !361, !noundef !7 ; 2 uses
  %.not313 = icmp eq i32 %i.n, -1
  br i1 %.not313, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4138.0.copyload = load i32, ptr %.sroa.4138.0..sroa_idx, align 4
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7141.0.copyload = load i64, ptr %.sroa.7141.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load <2 x i64>, ptr %.sroa.5139.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.n, ptr %i.o, align 8
  store i32 %.sroa.4138.0.copyload, ptr %.sroa.4143.0..sroa_idx, align 4
  store <2 x i64> %i.p, ptr %.sroa.5144.0..sroa_idx, align 8
  %.sroa.7146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7141.0.copyload, ptr %.sroa.7146.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !7 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = icmp ugt i64 %i.t, %i.l
  br i1 %i.u, label %bb.i, label %bb.h, !prof !389

bb.h:                                             ; preds = %bb.g
  %i.v = sub nuw nsw i64 %i.l, %i.t               ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.564.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10from_bytes(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.v)
  %i.x = load i64, ptr %i.a, align 8, !range !445, !noundef !7
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef %i.l, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.564.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.564.sroa.0, i64 32, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.564.sroa.0)
  br label %bb.y

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(255) %.sroa.564.sroa.0, ptr noundef nonnull align 8 dereferenceable(255) %i.z, i64 255, i1 false)
  %.sroa.0147.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 263
  %.sroa.0147.sroa.4.0.copyload = load i8, ptr %.sroa.0147.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %.sroa.4148.0.copyload = load i64, ptr %.sroa.4148.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.0295, ptr noundef nonnull align 8 dereferenceable(255) %.sroa.564.sroa.0, i64 255, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.564.sroa.0)
  %i.ab = icmp ugt i64 %.sroa.4148.0.copyload, %i.v
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !389

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nuw nsw i64 %i.v, %.sroa.4148.0.copyload
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.4148.0.copyload ; 2 uses
  %i.ae = icmp ugt i64 %i.r, 9
  br i1 %i.ae, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.4148.0.copyload, i64 noundef %i.v, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #18
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.af = icmp eq i64 %i.r, 0
  br i1 %i.af, label %bb.p, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ag, align 8
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @73, ptr %.sroa.5156.0..sroa_idx, align 8
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 39, ptr %.sroa.6157.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ah, align 8
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @72, ptr %.sroa.5166.0..sroa_idx, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 41, ptr %.sroa.6167.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.n
  %i.ai = shl nuw nsw i64 1, %i.r
  %i.aj = zext i8 %.sroa.0147.sroa.4.0.copyload to i64
  %i.ak = add nuw nsw i64 %i.aj, 2
  %i.al = icmp samesign ugt i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.am, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @71, ptr %.sroa.5176.0..sroa_idx, align 8
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 59, ptr %.sroa.6177.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.r:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  %i.an = shl i64 %i.h, %i.r                      ; 3 uses
  %i.ao = shl i64 %i.an, 2                        ; 2 uses
  %i.ap = icmp ugt i64 %i.an, 4611686018427387903
  br i1 %i.ap, label %bb.t, label %bb.s, !prof !389

bb.s:                                             ; preds = %bb.r
  %i.aq = icmp ult i64 %i.ac, %i.ao
  br i1 %i.aq, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.ar, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @70 to i64), ptr %.sroa.5227.0..sroa_idx, align 8
  %.sroa.6228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 29, ptr %.sroa.6228.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.as = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.at = and i64 %i.as, 3
  %i.au = icmp eq i64 %i.at, 0
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.au, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.av, align 8
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @69, ptr %.sroa.5267.0..sroa_idx, align 8
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 16, ptr %.sroa.6268.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.aw, align 8
  store i64 4, ptr %.sroa.5114.0..sroa_idx, align 8
  %.sroa.6293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.as, ptr %.sroa.6293.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(255) %.sroa.5114.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.0295, i64 255, i1 false)
  %i.ax = add nuw nsw i64 %i.t, %i.j
  %i.ay = add nuw nsw i64 %i.ax, %i.ao
  %i.az = add nuw nsw i64 %i.ay, %.sroa.4148.0.copyload
  store ptr %i.ad, ptr %0, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.sroa.4.0..sroa.5114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 271
  store i8 %.sroa.0147.sroa.4.0.copyload, ptr %.sroa.5114.sroa.4.0..sroa.5114.0..sroa_idx.sroa_idx, align 1
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.r, ptr %.sroa.6115.0..sroa_idx, align 8
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.az, ptr %.sroa.7116.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.j, %bb.q, %bb.t, %bb.v, %bb.w, %bb.p, %bb.o, %bb.f, %bb.x
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMse_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEE6statesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableRSmE20from_bytes_unchecked(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs98D8VPWzHuM_14regex_automata3dfa5startNtB2_9StartKind10from_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.h = load i32, ptr %i.f, align 8, !range !361, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.4332.0.copyload = load i32, ptr %.sroa.4332.0..sroa_idx, align 4
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5333.0.copyload = load i8, ptr %.sroa.5333.0..sroa_idx, align 8
  %.sroa.6334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.sroa.6340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6340.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6334.0..sroa_idx, i64 7, i1 false)
  %.sroa.7335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i64>, ptr %.sroa.7335.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %i.h, ptr %i.i, align 8
  store i32 %.sroa.4332.0.copyload, ptr %.sroa.4338.0..sroa_idx, align 4
  store i8 %.sroa.5333.0.copyload, ptr %.sroa.5339.0..sroa_idx, align 8
  store <2 x i64> %i.j, ptr %.sroa.7341.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !6, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.o = icmp ugt i64 %i.n, %2
  br i1 %i.o, label %bb.e, label %bb.d, !prof !389

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i64 %2, %i.n                 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  call void @_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB4_12StartByteMap10from_bytes(ptr noalias noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.p)
  %i.r = load i8, ptr %i.a, align 8, !range !726, !noundef !7 ; 2 uses
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.g:                                             ; preds = %bb.d
  %.sroa.4344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.5345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.6346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %.sroa.6346.0.copyload = load i64, ptr %.sroa.6346.0..sroa_idx, align 8 ; 4 uses
  %i.v = icmp ugt i64 %.sroa.6346.0.copyload, %i.p
  br i1 %i.v, label %bb.i, label %bb.h, !prof !389

bb.h:                                             ; preds = %bb.g
  %i.w = sub nuw nsw i64 %i.p, %.sroa.6346.0.copyload ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.6346.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  %i.y = load i32, ptr %i.e, align 8, !range !361, !noundef !7 ; 2 uses
  %.not696 = icmp eq i32 %i.y, -1
  br i1 %.not696, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.6346.0.copyload, i64 noundef %i.p, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %.sroa.4353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4353.0.copyload = load i32, ptr %.sroa.4353.0..sroa_idx, align 4
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7356.0.copyload = load i64, ptr %.sroa.7356.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load <2 x i64>, ptr %.sroa.5354.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.y, ptr %i.z, align 8
  store i32 %.sroa.4353.0.copyload, ptr %.sroa.4358.0..sroa_idx, align 4
  store <2 x i64> %i.aa, ptr %.sroa.5359.0..sroa_idx, align 8
  %.sroa.7361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7356.0.copyload, ptr %.sroa.7361.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = icmp ugt i64 %i.ae, %i.w
  br i1 %i.af, label %bb.m, label %bb.l, !prof !389
end_hunk_0
begin_hunk_1_@_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_10StartTableRSmE20from_bytes_unchecked:bb.a

bb.p:                                             ; preds = %bb.n
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4378.0.copyload = load i32, ptr %.sroa.4378.0..sroa_idx, align 4
  %.sroa.5379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7381.0.copyload = load i64, ptr %.sroa.7381.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load <2 x i64>, ptr %.sroa.5379.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.aj, ptr %i.al, align 8
  store i32 %.sroa.4378.0.copyload, ptr %.sroa.4383.0..sroa_idx, align 4
  store <2 x i64> %i.am, ptr %.sroa.5384.0..sroa_idx, align 8
  %.sroa.7386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7381.0.copyload, ptr %.sroa.7386.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.q:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !7 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ar = icmp ugt i64 %i.aq, %i.ag
  br i1 %i.ar, label %bb.s, label %bb.r, !prof !389

bb.r:                                             ; preds = %bb.q
  %i.as = sub nuw nsw i64 %i.ag, %i.aq            ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq ; 2 uses
  %i.au = and i64 %i.ao, 4294967295
  %i.av = icmp eq i64 %i.au, 4294967295
  br i1 %i.av, label %.split669.thread, label %.split669

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.aq, i64 noundef %i.ag, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #18
  unreachable

.split669:                                        ; preds = %bb.r
  %i.aw = icmp ugt i64 %i.ao, 2147483647
  br i1 %i.aw, label %bb.t, label %.split669.thread

.split669.thread:                                 ; preds = %bb.r, %.split669
  %.sroa.0111.0703 = phi i64 [ 1, %.split669 ], [ 0, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.as, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 26)
  %i.ax = load i32, ptr %i.c, align 8, !range !361, !noundef !7 ; 2 uses
  %.not698 = icmp eq i32 %i.ax, -1
  br i1 %.not698, label %bb.v, label %bb.u

bb.t:                                             ; preds = %.split669
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ay, align 8
  %.sroa.5394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @107, ptr %.sroa.5394.0..sroa_idx, align 8
  %.sroa.6395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 26, ptr %.sroa.6395.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.u:                                             ; preds = %.split669.thread
  %.sroa.4404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.6406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.6406.0.copyload = load i32, ptr %.sroa.6406.0..sroa_idx, align 4
  %.sroa.7407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load <2 x i32>, ptr %.sroa.4404.0..sroa_idx, align 4
  %.sroa.6412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.7413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load <2 x i64>, ptr %.sroa.7407.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.ax, ptr %i.az, align 8
  store <2 x i32> %i.ba, ptr %.sroa.4410.0..sroa_idx, align 4
  store i32 %.sroa.6406.0.copyload, ptr %.sroa.6412.0..sroa_idx, align 4
  store <2 x i64> %i.bb, ptr %.sroa.7413.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.v:                                             ; preds = %.split669.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !noundef !7 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bg = icmp ugt i64 %i.bf, %i.as
  br i1 %i.bg, label %bb.x, label %bb.w, !prof !389

bb.w:                                             ; preds = %bb.v
  %i.bh = sub nuw nsw i64 %i.as, %i.bf            ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bf ; 2 uses
  %i.bj = icmp eq i32 %i.bd, -1
  br i1 %i.bj, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %i.as, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #18
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bk = icmp ugt i32 %i.bd, 2147483646
  br i1 %i.bk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sroa.0140.0 = phi i32 [ 0, %bb.w ], [ 1, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire12try_read_u32(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 24)
  %i.bl = load i32, ptr %i.b, align 8, !range !361, !noundef !7 ; 2 uses
  %.not699 = icmp eq i32 %i.bl, -1
  br i1 %.not699, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bm = zext i32 %i.bd to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.bn, align 8
  %.sroa.5441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bm, ptr %.sroa.5441.0..sroa_idx, align 8
  %.sroa.6442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @99, ptr %.sroa.6442.0..sroa_idx, align 8
  %.sroa.7443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 26, ptr %.sroa.7443.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.ab:                                            ; preds = %bb.z
  %.sroa.4451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.6453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6453.0.copyload = load i32, ptr %.sroa.6453.0..sroa_idx, align 4
  %.sroa.7454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bp = load <2 x i32>, ptr %.sroa.4451.0..sroa_idx, align 4
  %.sroa.6459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.7460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load <2 x i64>, ptr %.sroa.7454.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.bl, ptr %i.bo, align 8
  store <2 x i32> %i.bp, ptr %.sroa.4457.0..sroa_idx, align 4
  store i32 %.sroa.6453.0.copyload, ptr %.sroa.6459.0..sroa_idx, align 4
  store <2 x i64> %i.bq, ptr %.sroa.7460.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.ac:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !noundef !7 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bv = icmp ugt i64 %i.bu, %i.bh
  br i1 %i.bv, label %bb.ae, label %bb.ad, !prof !389

bb.ad:                                            ; preds = %bb.ac
  %i.bw = sub nuw nsw i64 %i.bh, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bu ; 3 uses
  %i.by = icmp eq i32 %i.bs, -1
  br i1 %i.by, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bu, i64 noundef %i.bh, i64 noundef %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #18
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bz = icmp ugt i32 %i.bs, 2147483646
  br i1 %i.bz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.sroa.0184.0 = phi i32 [ 0, %bb.ad ], [ 1, %bb.af ]
  %i.ca = trunc nuw i64 %.sroa.0111.0703 to i1    ; 2 uses
  %i.cb = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ao, i64 6) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  %i.cd = and i1 %i.cc, %i.ca
  br i1 %i.cd, label %bb.ai, label %bb.aj, !prof !389

bb.ah:                                            ; preds = %bb.af
  %i.ce = zext i32 %i.bs to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.cf, align 8
  %.sroa.5488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ce, ptr %.sroa.5488.0..sroa_idx, align 8
  %.sroa.6489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @100, ptr %.sroa.6489.0..sroa_idx, align 8
  %.sroa.7490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 24, ptr %.sroa.7490.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.ai:                                            ; preds = %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.cg, align 8
  %.sroa.5521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @104 to i64), ptr %.sroa.5521.0..sroa_idx, align 8
  %.sroa.6522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 22, ptr %.sroa.6522.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.aj:                                            ; preds = %bb.ag
  %i.ch = extractvalue { i64, i1 } %i.cb, 0
  %i.ci = select i1 %i.ca, i64 %i.ch, i64 0       ; 2 uses
  %i.cj = add i64 %i.ci, 12                       ; 3 uses
  %i.ck = icmp ugt i64 %i.ci, -13
  br i1 %i.ck, label %bb.al, label %bb.ak, !prof !389

bb.ak:                                            ; preds = %bb.aj
  %i.cl = shl i64 %i.cj, 2                        ; 2 uses
  %i.cm = icmp ugt i64 %i.cj, 4611686018427387903
  br i1 %i.cm, label %bb.an, label %bb.am, !prof !389

bb.al:                                            ; preds = %bb.aj
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.cn, align 8
  %.sroa.5568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @103 to i64), ptr %.sroa.5568.0..sroa_idx, align 8
  %.sroa.6569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 33, ptr %.sroa.6569.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.am:                                            ; preds = %bb.ak
  %i.co = icmp ult i64 %i.bw, %i.cl
  br i1 %i.co, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.cp, align 8
  %.sroa.5598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @102 to i64), ptr %.sroa.5598.0..sroa_idx, align 8
  %.sroa.6599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 26, ptr %.sroa.6599.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.cq = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.cr = and i64 %i.cq, 3
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ct, align 8
  %.sroa.5638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @101, ptr %.sroa.5638.0..sroa_idx, align 8
  %.sroa.6639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.6639.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.cu, align 8
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.5663.0..sroa_idx, align 8
  %.sroa.6664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cq, ptr %.sroa.6664.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cl
  %.sroa.9319.sroa.4.0..sroa.9319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9319.sroa.4.0..sroa.9319.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4344.0..sroa_idx, i64 39, i1 false)
  %.sroa.9319.sroa.5.0..sroa.9319.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9319.sroa.5.0..sroa.9319.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5345.0..sroa_idx, i64 216, i1 false)
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.g
  store i64 %.sroa.0111.0703, ptr %0, align 8
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %.sroa.4314.0..sroa_idx, align 8
  %.sroa.5315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0140.0, ptr %.sroa.5315.0..sroa_idx, align 8
  %.sroa.6316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bd, ptr %.sroa.6316.0..sroa_idx, align 4
  %.sroa.7317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0184.0, ptr %.sroa.7317.0..sroa_idx, align 8
  %.sroa.8318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bs, ptr %.sroa.8318.0..sroa_idx, align 4
  %.sroa.9319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.r, ptr %.sroa.9319.0..sroa_idx, align 8
  %.sroa.10320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.bx, ptr %.sroa.10320.0..sroa_idx, align 8
  %.sroa.11321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.cj, ptr %.sroa.11321.0..sroa_idx, align 8
  %.sroa.12322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 6, ptr %.sroa.12322.0..sroa_idx, align 8
  %.sroa.13323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %i.l, ptr %.sroa.13323.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.cx, ptr %.sroa.15.0..sroa_idx, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.b, %bb.j, %bb.t, %bb.u, %bb.ah, %bb.al, %bb.aq, %bb.ap, %bb.an, %bb.ai, %bb.ab, %bb.aa, %bb.p, %bb.o, %bb.f, %bb.ar
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesRSmE20from_bytes_unchecked(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 18)
  %i.e = load i32, ptr %i.c, align 8, !range !361, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4182.0.copyload = load i32, ptr %.sroa.4182.0..sroa_idx, align 4
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7185.0.copyload = load i64, ptr %.sroa.7185.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x i64>, ptr %.sroa.5183.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.e, ptr %i.f, align 8
  store i32 %.sroa.4182.0.copyload, ptr %.sroa.4187.0..sroa_idx, align 4
  store <2 x i64> %i.g, ptr %.sroa.5188.0..sroa_idx, align 8
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7185.0.copyload, ptr %.sroa.7190.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.e, label %bb.d, !prof !389

bb.d:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %2, %i.k                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 3 uses
  %i.o = shl i64 %i.i, 1                          ; 2 uses
  %i.p = icmp slt i64 %i.i, 0
  br i1 %i.p, label %bb.g, label %bb.f, !prof !389

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = shl i64 %i.i, 3                          ; 3 uses
  %i.r = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.r, label %bb.i, label %bb.h, !prof !389

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.s, align 8
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @136 to i64), ptr %.sroa.5220.0..sroa_idx, align 8
  %.sroa.6221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 24, ptr %.sroa.6221.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.t = icmp ult i64 %i.m, %i.q
  br i1 %i.t, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.u, align 8
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @135 to i64), ptr %.sroa.5250.0..sroa_idx, align 8
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 36, ptr %.sroa.6251.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = and i64 %i.v, 3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.y, align 8
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @134, ptr %.sroa.5290.0..sroa_idx, align 8
  %.sroa.6291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 18, ptr %.sroa.6291.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.z, align 8
  %.sroa.5315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.5315.0..sroa_idx, align 8
  %.sroa.6316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %.sroa.6316.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.m:                                             ; preds = %bb.j
  %i.aa = sub nuw nsw i64 %i.m, %i.q              ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 14)
  %i.ac = load i32, ptr %i.b, align 8, !range !361, !noundef !7 ; 2 uses
  %.not467 = icmp eq i32 %i.ac, -1
  br i1 %.not467, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4324.0.copyload = load i32, ptr %.sroa.4324.0..sroa_idx, align 4
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7327.0.copyload = load i64, ptr %.sroa.7327.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %.sroa.5325.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.ac, ptr %i.ad, align 8
  store i32 %.sroa.4324.0.copyload, ptr %.sroa.4329.0..sroa_idx, align 4
  store <2 x i64> %i.ae, ptr %.sroa.5330.0..sroa_idx, align 8
  %.sroa.7332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7327.0.copyload, ptr %.sroa.7332.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = icmp ugt i64 %i.ai, %i.aa
  br i1 %i.aj, label %bb.q, label %bb.p, !prof !389

bb.p:                                             ; preds = %bb.o
  %i.ak = sub nuw nsw i64 %i.aa, %i.ai            ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire21try_read_u32_as_usize(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 17)
  %i.am = load i32, ptr %i.a, align 8, !range !361, !noundef !7 ; 2 uses
  %.not468 = icmp eq i32 %i.am, -1
  br i1 %.not468, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.aa, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #18
  unreachable

bb.r:                                             ; preds = %bb.p
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4339.0.copyload = load i32, ptr %.sroa.4339.0..sroa_idx, align 4
  %.sroa.5340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7342.0.copyload = load i64, ptr %.sroa.7342.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load <2 x i64>, ptr %.sroa.5340.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.am, ptr %i.an, align 8
  store i32 %.sroa.4339.0.copyload, ptr %.sroa.4344.0..sroa_idx, align 4
  store <2 x i64> %i.ao, ptr %.sroa.5345.0..sroa_idx, align 8
  %.sroa.7347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7342.0.copyload, ptr %.sroa.7347.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !7 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = icmp ugt i64 %i.as, %i.ak
  br i1 %i.at, label %bb.u, label %bb.t, !prof !389

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.as ; 3 uses
  %i.av = shl i64 %i.aq, 2                        ; 2 uses
  %i.aw = icmp ugt i64 %i.aq, 4611686018427387903
  br i1 %i.aw, label %bb.w, label %bb.v, !prof !389

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.as, i64 noundef %i.ak, i64 noundef %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #18
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ax = sub nuw nsw i64 %i.ak, %i.as
  %i.ay = icmp ult i64 %i.ax, %i.av
  br i1 %i.ay, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.az, align 8
  %.sroa.5384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @131 to i64), ptr %.sroa.5384.0..sroa_idx, align 8
  %.sroa.6385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 22, ptr %.sroa.6385.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.ba = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.bb = and i64 %i.ba, 3
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bd, align 8
  %.sroa.5424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @130, ptr %.sroa.5424.0..sroa_idx, align 8
  %.sroa.6425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 17, ptr %.sroa.6425.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.be, align 8
  %.sroa.5449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.5449.0..sroa_idx, align 8
  %.sroa.6450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ba, ptr %.sroa.6450.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.d
  store ptr %i.n, ptr %0, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.4171.0..sroa_idx, align 8
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %.sroa.5172.0..sroa_idx, align 8
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aq, ptr %.sroa.6173.0..sroa_idx, align 8
  %.sroa.7174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ag, ptr %.sroa.7174.0..sroa_idx, align 8
  %.sroa.8175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %.sroa.8175.0..sroa_idx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.i, %bb.k, %bb.l, %bb.r, %bb.z, %bb.y, %bb.w, %bb.n, %bb.g, %bb.aa
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 1, 2147483647) i32 @_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE14match_state_idB9_(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(800) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !389

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @141, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  %i.h = shl nuw i64 %i.f, 32
  %i.i = or disjoint i64 %i.h, 512
  %.sroa.09.0.insert.insert = select i1 %i.g, i64 513, i64 %i.i ; 3 uses
  %i.j = trunc i64 %.sroa.09.0.insert.insert to i1
  br i1 %i.j, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit, !prof !389

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !727
  store i8 2, ptr %i.a, align 1, !noalias !727
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #18
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.c
  %i.k = icmp ult i64 %.sroa.09.0.insert.insert, 274877906944
  br i1 %i.k, label %bb.f, label %bb.e, !prof !15

bb.e:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #18
  unreachable

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.09.0.insert.insert, 32
  %i.l = shl i64 %1, %.sroa.6.0.extract.shift.i
  %i.m = zext i32 %i.d to i64                     ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.h, label %bb.g, !prof !389

bb.g:                                             ; preds = %bb.f
  %i.p = icmp ugt i64 %i.n, 2147483646
  br i1 %i.p, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6unwrapBN_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #18
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !730
  store i64 %i.n, ptr %i.b, align 8, !noalias !730
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #18, !noalias !730
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6unwrapBN_.exit: ; preds = %bb.g
  %i.q = trunc nuw nsw i64 %i.n to i32            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %.not17 = icmp ult i32 %i.s, %i.q
  br i1 %.not17, label %bb.j, label %bb.k, !prof !733

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6unwrapBN_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #18
  unreachable

bb.k:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6unwrapBN_.exit
  ret i32 %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE6to_mapB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef readonly align 16 captures(none) dereferenceable(800) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.noexc17:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !734
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val21 = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val22 = load i64, ptr %i.h, align 8, !noundef !7 ; 5 uses
  %i.i = and i64 %.val22, 1                       ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !noalias !734
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit, label %bb.a, !prof !15

bb.a:                                             ; preds = %.noexc17
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @151, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #18
          to label %.noexc19 unwind label %bb.b

.noexc19:                                         ; preds = %bb.a
  unreachable

_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit: ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !734
  %i.k = lshr exact i64 %.val22, 1
  %.not = icmp eq i64 %.val22, 0
  br i1 %.not, label %._crit_edge78, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val24 = load i64, ptr %i.n, align 8           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val23 = load ptr, ptr %i.o, align 8, !nonnull !7
  br label %bb.c

.body.thread:                                     ; preds = %bb.n, %bb.h, %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.p, %bb.b ], [ %lpad.phi, %bb.n ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtB8_3vec3VecNtB15_9PatternIDEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBK_3vec3VecNtB1B_9PatternIDEEEB1F_.exit unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge78:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEEB1z_.exit, %_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE3lenB9_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
end_hunk_1
