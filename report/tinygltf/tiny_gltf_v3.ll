Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3_num_components:bb.a
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 64
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tg3_num_components, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @tg3_accessor_byte_stride(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !111
  switch i32 %i.d, label %bb.g [
    i32 5120, label %tg3_component_size.exit
    i32 5121, label %tg3_component_size.exit
    i32 5122, label %bb.d
    i32 5123, label %bb.d
    i32 5124, label %bb.e
    i32 5125, label %bb.e
    i32 5126, label %bb.e
    i32 5130, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %tg3_component_size.exit

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %tg3_component_size.exit

bb.f:                                             ; preds = %bb.c
  br label %tg3_component_size.exit

bb.g:                                             ; preds = %bb.c
  br label %tg3_component_size.exit

tg3_component_size.exit:                          ; preds = %bb.c, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.e = phi i1 [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.c ]
  %.0.i = phi i32 [ -1, %bb.g ], [ 8, %bb.f ], [ 2, %bb.d ], [ 4, %bb.e ], [ 1, %bb.c ], [ 1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117
  %i.h = tail call i32 @tg3_num_components(i32 noundef %i.g) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.i
  %i.j = mul nuw nsw i32 %i.h, %.0.i
  %spec.select = select i1 %or.cond, i32 -1, i32 %i.j
  br label %bb.h

bb.h:                                             ; preds = %tg3_component_size.exit, %bb.b
  %.0 = phi i32 [ %spec.select, %tg3_component_size.exit ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @tg3_str_equals(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %i.b)
  %i.c = icmp eq i32 %bcmp, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @tg3_str_equals_cstr(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31
  %i.c = trunc i64 %i.b to i32
  %.not9 = icmp eq i32 %1, %i.c
  br i1 %.not9, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = zext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr nonnull %2, i64 %i.e)
  %i.f = icmp eq i32 %bcmp, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  %.0.shrunk = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @tg3_is_data_uri(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %1, 4
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 1
  %i.d = xor i32 %i.c, 1635017060
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = xor i32 %i.g, 58
  %i.i = or i32 %i.d, %i.h
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 71) i32 @tg3_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #12 {
bb.a:
  %7 = alloca %struct.tg3_parse_options, align 8  ; 11 uses
  %8 = alloca %struct.tg3__parse_ctx, align 8     ; 13 uses
  %9 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %10 = alloca %struct.tg3json_parse_options, align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %.not = icmp eq ptr %0, null
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.0.sroa.gep26 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.0.sroa.gep50.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.0.sroa.gep51 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.0.sroa.gep53.a = getelementptr inbounds nuw i8, ptr %6, i64 212
  %.0.sroa.gep54 = getelementptr inbounds nuw i8, ptr %7, i64 212
  br i1 %.not, label %tg3__error_push.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(472) %0, i8 0, i64 472, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.b, align 4, !tbaa !118
  %.not31.a = icmp eq ptr %2, null
  br i1 %.not31.a, label %tg3__error_push.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not32 = icmp eq ptr %6, null
  br i1 %.not32, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.0.sroa.gep51, i8 0, i64 208, i1 false)
  store i32 1, ptr %7, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !96
  store i64 1073741824, ptr %.0.sroa.gep26, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 262144, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i64 0, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 1, ptr %i.f, align 8, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.c ], [ %.0.sroa.gep26, %bb.d ] ; 6 uses
  %.0.sroa.phi49 = phi ptr [ %.0.sroa.gep50.a, %bb.c ], [ %.0.sroa.gep51, %bb.d ]
  %.0.sroa.phi52 = phi ptr [ %.0.sroa.gep53.a, %bb.c ], [ %.0.sroa.gep54, %bb.d ]
  %.0 = phi ptr [ %6, %bb.c ], [ %7, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139  ; 2 uses
  %.not33.i = icmp eq ptr %i.h, null
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 32
  %11 = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !55
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 48
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.f ], [ @tg3__default_alloc, %bb.e ] ; 2 uses
  %12 = phi <2 x ptr> [ %11, %bb.f ], [ <ptr @tg3__default_realloc, ptr @tg3__default_free>, %bb.e ]
  %i.i = tail call ptr %.sroa.0.0.i(i64 noundef 80, ptr noundef %.sroa.8.0.i) #28, !inline_history !140 ; 10 uses
  %.not34.i = icmp eq ptr %i.i, null
  br i1 %.not34.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %tg3__error_push.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !86   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !141  ; 3 uses
  %.not27.i.a = icmp ult i32 %i.k, %i.m
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !87  ; 2 uses
  br i1 %.not27.i.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not28.i.a = icmp eq i32 %i.m, 0
  %i.n = shl i32 %i.m, 1
  %spec.select.i36 = select i1 %.not28.i.a, i32 16, i32 %i.n ; 2 uses
  %i.o = zext i32 %spec.select.i36 to i64
  %i.p = shl nuw nsw i64 %i.o, 5
  %i.q = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.p) #29 ; 3 uses
  %.not29.i = icmp eq ptr %i.q, null
  br i1 %.not29.i, label %tg3__error_push.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.q, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i36, ptr %i.l, align 4, !tbaa !141
  %.pre30.i = load i32, ptr %i.j, align 8, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.r = phi i32 [ %.pre30.i, %bb.k ], [ %i.k, %bb.i ] ; 2 uses
  %i.s = phi ptr [ %i.q, %bb.k ], [ %.pre.i, %bb.i ]
  %i.t = add i32 %i.r, 1
  store i32 %i.t, ptr %i.j, align 8, !tbaa !86
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u ; 5 uses
  store i32 2, ptr %i.v, align 8, !tbaa !142
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 50, ptr %i.w, align 4, !tbaa !144
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @.str.2, ptr %i.x, align 8, !tbaa !145
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !146
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 -1, ptr %i.z, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.aa, align 8, !tbaa !83
  br label %tg3__error_push.exit

bb.m:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.i, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.sroa.0.0.i, ptr %i.ab, align 8, !tbaa !55
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store <2 x ptr> %12, ptr %.sroa.6.0..sroa_idx8.i, align 8, !tbaa !55
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx12.i, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !148 ; 2 uses
  %.not35.i = icmp eq i32 %i.ad, 0
  %narrow.i = select i1 %.not35.i, i32 262144, i32 %i.ad
  %spec.select.i = zext i32 %narrow.i to i64
  %i.ae = load i64, ptr %.0.sroa.phi, align 8, !tbaa !149 ; 3 uses
  %.not36.i = icmp eq i64 %i.ae, 0
  %spec.select38.i = select i1 %.not36.i, i64 1073741824, i64 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !150
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %spec.select.i, ptr %i.ah, align 8, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %spec.select38.i, ptr %i.ai, align 8, !tbaa !154
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !155
  store ptr %i.i, ptr %0, align 8, !tbaa !156
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.al, align 8
  store i64 512, ptr %10, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.ak, align 8, !tbaa !157
  %i.am = load i64, ptr %.0.sroa.phi49, align 8, !tbaa !158
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.am, ptr %i.an, align 8, !tbaa !159
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 67108864, ptr %i.ao, align 8, !tbaa !20
  %i.ap = load i32, ptr %.0.sroa.phi52, align 4, !tbaa !160
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !21
  %i.ar = call i32 @tg3json_parse_n_opts(ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %i.a)
  %i.as = icmp eq i32 %i.ar, 0                    ; 2 uses
  %i.at = load i32, ptr %9, align 8
  %i.au = icmp ne i32 %i.at, 6
  %or.cond = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %.not34 = icmp eq ptr %i.av, null
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %2 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = select i1 %.not34, i64 -1, i64 %i.ay
  %.not.i37 = icmp eq ptr %1, null
  br i1 %.not.i37, label %tg3__error_push.exit44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !86 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !141 ; 3 uses
  %.not27.i38 = icmp ult i32 %i.bb, %i.bd
  %.pre.i39 = load ptr, ptr %1, align 8, !tbaa !87 ; 2 uses
  br i1 %.not27.i38, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not28.i40 = icmp eq i32 %i.bd, 0
  %i.be = shl i32 %i.bd, 1
  %spec.select.i41 = select i1 %.not28.i40, i32 16, i32 %i.be ; 2 uses
  %i.bf = zext i32 %spec.select.i41 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 5
  %i.bh = call ptr @realloc(ptr noundef %.pre.i39, i64 noundef %i.bg) #29 ; 3 uses
  %.not29.i42 = icmp eq ptr %i.bh, null
  br i1 %.not29.i42, label %tg3__error_push.exit44, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bh, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i41, ptr %i.bc, align 4, !tbaa !141
  %.pre30.i43 = load i32, ptr %i.ba, align 8, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.bi = phi i32 [ %.pre30.i43, %bb.q ], [ %i.bb, %bb.o ] ; 2 uses
  %i.bj = phi ptr [ %i.bh, %bb.q ], [ %.pre.i39, %bb.o ]
  %i.bk = add i32 %i.bi, 1
  store i32 %i.bk, ptr %i.ba, align 8, !tbaa !86
  %i.bl = zext i32 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bl ; 5 uses
  store i32 2, ptr %i.bm, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 10, ptr %i.bn, align 4, !tbaa !144
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @.str.3, ptr %i.bo, align 8, !tbaa !145
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.bp, align 8, !tbaa !146
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.az, ptr %i.bq, align 8, !tbaa !147
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.br, align 8, !tbaa !83
  br label %tg3__error_push.exit44

tg3__error_push.exit44:                           ; preds = %bb.n, %bb.p, %bb.r
  br i1 %i.as, label %tg3__error_push.exit, label %bb.s

bb.s:                                             ; preds = %tg3__error_push.exit44
  call void @tg3json_value_free(ptr noundef nonnull %9)
  br label %tg3__error_push.exit

bb.t:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i8 0, i64 32, i1 false)
  store ptr %i.i, ptr %8, align 8, !tbaa !161
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.bt, align 8, !tbaa !164
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.bu, ptr noundef nonnull align 8 dereferenceable(232) %.0, i64 232, i1 false), !tbaa.struct !165
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 248
  store ptr %4, ptr %i.bv, align 8, !tbaa !167
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i32 %5, ptr %i.bw, align 8, !tbaa !168
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !169
  %.not.i45 = icmp eq ptr %i.bz, null
  br i1 %.not.i45, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr @tg3__fs_read_file, ptr %i.by, align 8, !tbaa !169
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !170
  %.not8.i = icmp eq ptr %i.cb, null
  br i1 %.not8.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr @tg3__fs_free_file, ptr %i.ca, align 8, !tbaa !170
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !171
  %.not9.i = icmp eq ptr %i.cc, null
  br i1 %.not9.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr @tg3__fs_file_exists, ptr %i.bx, align 8, !tbaa !171
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !172
  %.not10.i = icmp eq ptr %i.ce, null
  br i1 %.not10.i, label %bb.aa, label %tg3__set_default_fs.exit

bb.aa:                                            ; preds = %bb.z
  store ptr @tg3__fs_write_file, ptr %i.cd, align 8, !tbaa !172
  br label %tg3__set_default_fs.exit

tg3__set_default_fs.exit:                         ; preds = %bb.z, %bb.aa
  %i.cf = call fastcc i32 @tg3__parse_from_json(ptr noundef %8, ptr noundef %9, ptr noundef %0)
  call void @tg3json_value_free(ptr noundef nonnull %9)
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.l, %bb.j, %bb.h, %tg3__error_push.exit44, %bb.s, %bb.b, %bb.a, %tg3__set_default_fs.exit
  %.025 = phi i32 [ 10, %bb.b ], [ %i.cf, %tg3__set_default_fs.exit ], [ 10, %tg3__error_push.exit44 ], [ 10, %bb.a ], [ 10, %bb.s ], [ 50, %bb.h ], [ 50, %bb.j ], [ 50, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i32 %.025
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @tg3__error_push(ptr nofree noundef captures(address_is_null) %0, i32 noundef range(i32 1, 62) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !141  ; 3 uses
  %.not27.a = icmp ult i32 %i.b, %i.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !87    ; 2 uses
  br i1 %.not27.a, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28.a = icmp eq i32 %i.d, 0
  %i.e = shl i32 %i.d, 1
  %spec.select = select i1 %.not28.a, i32 16, i32 %i.e ; 2 uses
  %i.f = zext i32 %spec.select to i64
  %i.g = shl nuw nsw i64 %i.f, 5
  %i.h = tail call ptr @realloc(ptr noundef %.pre, i64 noundef %i.g) #29 ; 3 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !87
  store i32 %spec.select, ptr %i.c, align 4, !tbaa !141
  %.pre30 = load i32, ptr %i.a, align 8, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = phi i32 [ %.pre30, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
end_hunk_0
begin_hunk_1_@tg3__parse_from_json:bb.a
  %i.apb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  br label %bb.hf

bb.hf:                                            ; preds = %tg3__parse_primitive.exit.i, %.preheader.i
  %.053.i = phi i64 [ 0, %.preheader.i ], [ %i.bco, %tg3__parse_primitive.exit.i ] ; 4 uses
  %i.apc = load i32, ptr %.0.i.i.i, align 8, !tbaa !28
  %.not8.i.i = icmp eq i32 %i.apc, 5
  br i1 %.not8.i.i, label %bb.hg, label %tg3json_array_get.exit.i

bb.hg:                                            ; preds = %bb.hf
  %i.apd = load i64, ptr %i.anm, align 8, !tbaa !26
  %.not9.i.i = icmp ult i64 %.053.i, %i.apd
  br i1 %.not9.i.i, label %bb.hh, label %tg3json_array_get.exit.i

bb.hh:                                            ; preds = %bb.hg
  %i.ape = load ptr, ptr %i.apb, align 8, !tbaa !26
  %i.apf = getelementptr inbounds nuw [24 x i8], ptr %i.ape, i64 %.053.i
  br label %tg3json_array_get.exit.i

tg3json_array_get.exit.i:                         ; preds = %bb.hh, %bb.hg, %bb.hf
  %.0.i37.i = phi ptr [ %i.apf, %bb.hh ], [ null, %bb.hg ], [ null, %bb.hf ] ; 10 uses
  %i.apg = getelementptr inbounds nuw [104 x i8], ptr %i.apa, i64 %.053.i ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(104) %i.apg, i8 0, i64 104, i1 false)
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 12 ; 2 uses
  store i32 -1, ptr %i.aph, align 4, !tbaa !242
  %i.api = getelementptr inbounds nuw i8, ptr %i.apg, i64 16 ; 2 uses
  store i32 -1, ptr %i.api, align 8, !tbaa !248
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 20 ; 2 uses
  store i32 4, ptr %i.apj, align 4, !tbaa !249
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef readonly %.0.i37.i, ptr noundef nonnull @.str.114, ptr noundef %i.aph, i32 noundef 0, ptr noundef nonnull @.str.115)
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef readonly %.0.i37.i, ptr noundef nonnull @.str.107, ptr noundef %i.api, i32 noundef 0, ptr noundef nonnull @.str.115)
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef readonly %.0.i37.i, ptr noundef nonnull @.str.116, ptr noundef %i.apj, i32 noundef 0, ptr noundef nonnull @.str.115)
  %.not.i.i.i.i.i1065 = icmp eq ptr %.0.i37.i, null
  br i1 %.not.i.i.i.i.i1065, label %tg3__parse_primitive.exit.i, label %bb.hi

bb.hi:                                            ; preds = %tg3json_array_get.exit.i
  %i.apk = load i32, ptr %.0.i37.i, align 8, !tbaa !28
  %.not18.i.i.i.i.i1066 = icmp eq i32 %i.apk, 6
  br i1 %.not18.i.i.i.i.i1066, label %.preheader.i.i.i.i.i1067, label %tg3__parse_primitive.exit.i

.preheader.i.i.i.i.i1067:                         ; preds = %bb.hi
  %i.apl = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 16 ; 2 uses
  %i.apm = load i64, ptr %i.apl, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i.i1068 = icmp eq i64 %i.apm, 0
  br i1 %.not23.i.i.i.i.i1068, label %tg3__json_is_object.exit.thread.thread.i.i, label %.lr.ph.i.i.i.i.i1069

.lr.ph.i.i.i.i.i1069:                             ; preds = %.preheader.i.i.i.i.i1067
  %i.apn = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 8
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !26
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hl, %.lr.ph.i.i.i.i.i1069
  %.01422.i.i.i.i.i1070 = phi i64 [ 0, %.lr.ph.i.i.i.i.i1069 ], [ %i.aqe, %bb.hl ] ; 2 uses
  %i.app = getelementptr inbounds nuw [24 x i8], ptr %i.apo, i64 %.01422.i.i.i.i.i1070 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !43
  %i.aps = icmp eq i64 %i.apr, 10
  br i1 %i.aps, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.apt = load ptr, ptr %i.app, align 8, !tbaa !40 ; 2 uses
  %i.apu = load i64, ptr %i.apt, align 1
  %i.apv = xor i64 %i.apu, 8391721685706110049
  %i.apw = getelementptr i8, ptr %i.apt, i64 8
  %i.apx = load i16, ptr %i.apw, align 1
  %i.apy = zext i16 %i.apx to i64
  %i.apz = xor i64 %i.apy, 29541
  %i.aqa = or i64 %i.apv, %i.apz
  %i.aqb = icmp ne i64 %i.aqa, 0
  %i.aqc = zext i1 %i.aqb to i32
  %i.aqd = icmp eq i32 %i.aqc, 0
  br i1 %i.aqd, label %tg3__json_get.exit.i.i1076, label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.aqe = add nuw i64 %.01422.i.i.i.i.i1070, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i1071 = icmp eq i64 %i.aqe, %i.apm
  br i1 %exitcond.not.i.i.i.i.i1071, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.hj, !llvm.loop !59

tg3__json_get.exit.i.i1076:                       ; preds = %bb.hk
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !44 ; 4 uses
  %.not.i.i.i1077 = icmp eq ptr %i.aqg, null
  br i1 %.not.i.i.i1077, label %tg3__json_is_object.exit.thread.thread.i.i, label %tg3__json_is_object.exit.i.i1078

tg3__json_is_object.exit.i.i1078:                 ; preds = %tg3__json_get.exit.i.i1076
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !28
  %.not.i40.i = icmp eq i32 %i.aqh, 6
  br i1 %.not.i40.i, label %tg3json_object_size.exit.i.i, label %tg3__json_is_object.exit.thread.thread.i.i

tg3json_object_size.exit.i.i:                     ; preds = %tg3__json_is_object.exit.i.i1078
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16 ; 2 uses
  %i.aqj = load i64, ptr %i.aqi, align 8, !tbaa !26 ; 4 uses
  %.not115.i.i = icmp eq i64 %i.aqj, 0
  br i1 %.not115.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.hm

bb.hm:                                            ; preds = %tg3json_object_size.exit.i.i
  %i.aqk = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.aql = mul i64 %i.aqj, 24                     ; 5 uses
  %i.aqm = icmp eq ptr %i.aqk, null
  %i.aqn = icmp eq i64 %i.aql, 0
  %or.cond.i.i41.i = or i1 %i.aqn, %i.aqm
  br i1 %or.cond.i.i41.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  %i.aqp = load i64, ptr %i.aqo, align 8, !tbaa !155 ; 3 uses
  %.not.i127.i.i = icmp ne i64 %i.aqp, 0          ; 2 uses
  %i.aqq = icmp ugt i64 %i.aql, %i.aqp
  %or.cond28.i.i.i = and i1 %.not.i127.i.i, %i.aqq
  br i1 %or.cond28.i.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8 ; 3 uses
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !178 ; 4 uses
  %.not26.i.i.i = icmp eq ptr %i.aqs, null
  br i1 %.not26.i.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16 ; 2 uses
  %i.aqu = load i64, ptr %i.aqt, align 8, !tbaa !179 ; 2 uses
  %i.aqv = add i64 %i.aqu, %i.aql                 ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 24
  %i.aqx = load i64, ptr %i.aqw, align 8, !tbaa !181
  %i.aqy = icmp ugt i64 %i.aqv, %i.aqx
  br i1 %i.aqy, label %bb.hq, label %tg3__arena_alloc.exit.i.i

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqk, i64 40
  %i.ara = load i64, ptr %i.aqz, align 8, !tbaa !151
  %spec.select.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ara, i64 range(i64 0, -7) %i.aql) ; 3 uses
  %i.arb = icmp ugt i64 %spec.select.i.i.i.i, %i.aqp
  %or.cond.i.i.i.i1082 = select i1 %.not.i127.i.i, i1 %i.arb, i1 false
  br i1 %or.cond.i.i.i.i1082, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16 ; 3 uses
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !182
  %i.are = add i64 %spec.select.i.i.i.i, 32       ; 3 uses
  %i.arf = add i64 %i.ard, %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqk, i64 24
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !154
  %i.ari = icmp ugt i64 %i.arf, %i.arh
  br i1 %i.ari, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqk, i64 48
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !183
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqk, i64 72
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !184
  %i.arn = call ptr %i.ark(i64 noundef %i.are, ptr noundef %i.arm) #28, !inline_history !250 ; 8 uses
  %.not37.i.i.i.i = icmp eq ptr %i.arn, null
  br i1 %.not37.i.i.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %tg3__arena_alloc.exit.thread.i.i

tg3__arena_alloc.exit.thread.i.i:                 ; preds = %bb.hs
  store ptr null, ptr %i.arn, align 8, !tbaa !186
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 32 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  store ptr %i.aro, ptr %i.arp, align 8, !tbaa !187
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arn, i64 24
  store i64 %spec.select.i.i.i.i, ptr %i.arq, align 8, !tbaa !181
  %i.arr = load i64, ptr %i.arc, align 8, !tbaa !182
  %i.ars = add i64 %i.arr, %i.are
  store i64 %i.ars, ptr %i.arc, align 8, !tbaa !182
  %i.art = load ptr, ptr %i.aqr, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i.i.i = icmp eq ptr %i.art, null
  %..i.i.i.i = select i1 %.not38.i.i.i.i, ptr %i.aqk, ptr %i.art
  store ptr %i.arn, ptr %..i.i.i.i, align 8, !tbaa !188
  store ptr %i.arn, ptr %i.aqr, align 8, !tbaa !178
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arn, i64 16
  store i64 %i.aql, ptr %i.aru, align 8, !tbaa !179
  br label %.preheader273.i.i

tg3__arena_alloc.exit.i.i:                        ; preds = %bb.hp
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %.pre.i.i.i1079 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i1079, i64 %i.aqu
  store i64 %i.aqv, ptr %i.aqt, align 8, !tbaa !179
  %.not116.i.i = icmp eq ptr %.pre.i.i.i1079, null
  br i1 %.not116.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %.preheader273.i.i

.preheader273.i.i:                                ; preds = %tg3__arena_alloc.exit.i.i, %tg3__arena_alloc.exit.thread.i.i
  %i.arw = phi ptr [ %i.aro, %tg3__arena_alloc.exit.thread.i.i ], [ %i.arv, %tg3__arena_alloc.exit.i.i ] ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  br label %tg3json_object_at.exit.i.i

tg3json_object_at.exit.i.i:                       ; preds = %tg3__json_number_to_int32.exit.i.i, %.preheader273.i.i
  %.0106277.i.i = phi i64 [ 0, %.preheader273.i.i ], [ %i.ate, %tg3__json_number_to_int32.exit.i.i ] ; 4 uses
  %i.ary = load i64, ptr %i.aqi, align 8, !tbaa !26
  %.not9.i.i.i = icmp ult i64 %.0106277.i.i, %i.ary
  call void @llvm.assume(i1 %.not9.i.i.i)
  %i.arz = load ptr, ptr %i.arx, align 8, !tbaa !26
  %i.asa = getelementptr inbounds nuw [24 x i8], ptr %i.arz, i64 %.0106277.i.i ; 4 uses
  %i.asb = getelementptr inbounds nuw [24 x i8], ptr %i.arw, i64 %.0106277.i.i ; 3 uses
  %i.asc = load ptr, ptr %0, align 8, !tbaa !161
  %i.asd = load ptr, ptr %i.asa, align 8, !tbaa !40
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !43
  %i.asg = trunc i64 %i.asf to i32
  %i.ash = call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.asc, ptr noundef %i.asd, i32 noundef %i.asg) ; 2 uses
  %i.asi = extractvalue { ptr, i32 } %i.ash, 0
  %i.asj = extractvalue { ptr, i32 } %i.ash, 1
  store ptr %i.asi, ptr %i.asb, align 8, !tbaa !10
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.asb, i64 8
  store i32 %i.asj, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !tbaa !36
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !44 ; 4 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asb, i64 16
  %.not.i.i.i42.i = icmp eq ptr %i.asl, null
  br i1 %.not.i.i.i42.i, label %bb.hx, label %bb.ht

bb.ht:                                            ; preds = %tg3json_object_at.exit.i.i
  %i.asn = load i32, ptr %i.asl, align 8, !tbaa !28
  switch i32 %i.asn, label %bb.hx [
    i32 2, label %.thread.i.i.i
    i32 3, label %bb.hv
  ]

.thread.i.i.i:                                    ; preds = %bb.ht
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !26 ; 2 uses
  %i.asq = add i64 %i.asp, -2147483648
  %or.cond.i132.i.i = icmp ult i64 %i.asq, -4294967296
  br i1 %or.cond.i132.i.i, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %.thread.i.i.i
  %i.asr = trunc nsw i64 %i.asp to i32
  br label %tg3__json_number_to_int32.exit.i.i

bb.hv:                                            ; preds = %bb.ht
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  %i.ast = load double, ptr %i.ass, align 8, !tbaa !26 ; 5 uses
  %i.asu = call double @llvm.fabs.f64(double %i.ast)
  %i.asv = fcmp ueq double %i.asu, +inf
  %i.asw = fcmp olt double %i.ast, f0xC1E0000000000000
  %or.cond3.i.i.i = or i1 %i.asw, %i.asv
  %i.asx = fcmp ogt double %i.ast, f0x41DFFFFFFFC00000
  %or.cond5.i.i.i = or i1 %i.asx, %or.cond3.i.i.i
  br i1 %or.cond5.i.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.asy = fptosi double %i.ast to i32            ; 2 uses
  %i.asz = sitofp i32 %i.asy to double
  %i.ata = fcmp une double %i.ast, %i.asz
  br i1 %i.ata, label %bb.hx, label %tg3__json_number_to_int32.exit.i.i

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %.thread.i.i.i, %bb.ht, %tg3json_object_at.exit.i.i
  %i.atb = load ptr, ptr %i.amf, align 8, !tbaa !164
  %i.atc = load ptr, ptr %0, align 8, !tbaa !161
  %i.atd = load ptr, ptr %i.asa, align 8, !tbaa !40 ; 2 uses
  %.not124.i.i = icmp eq ptr %i.atd, null
  %spec.select.i.i1081 = select i1 %.not124.i.i, ptr @.str, ptr %i.atd
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.atb, ptr noundef %i.atc, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, ptr noundef nonnull %spec.select.i.i1081)
  br label %tg3__json_number_to_int32.exit.i.i

tg3__json_number_to_int32.exit.i.i:               ; preds = %bb.hu, %bb.hw, %bb.hx
  %storemerge = phi i32 [ 0, %bb.hx ], [ %i.asr, %bb.hu ], [ %i.asy, %bb.hw ]
  store i32 %storemerge, ptr %i.asm, align 8, !tbaa !36
  %i.ate = add nuw i64 %.0106277.i.i, 1           ; 2 uses
  %exitcond.not.i.i1080 = icmp eq i64 %i.ate, %i.aqj
  br i1 %exitcond.not.i.i1080, label %bb.hy, label %tg3json_object_at.exit.i.i, !llvm.loop !251

bb.hy:                                            ; preds = %tg3__json_number_to_int32.exit.i.i
  store ptr %i.arw, ptr %i.apg, align 8, !tbaa !252
  %i.atf = trunc i64 %i.aqj to i32
  %i.atg = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  store i32 %i.atf, ptr %i.atg, align 8, !tbaa !253
  br label %tg3__json_is_object.exit.thread.thread.i.i

tg3__json_is_object.exit.thread.thread.i.i:       ; preds = %bb.hl, %bb.hy, %tg3__arena_alloc.exit.i.i, %bb.hs, %bb.hr, %bb.hq, %bb.hn, %bb.hm, %tg3json_object_size.exit.i.i, %tg3__json_is_object.exit.i.i1078, %tg3__json_get.exit.i.i1076, %.preheader.i.i.i.i.i1067
  %.pr.i.i1072 = load i32, ptr %.0.i37.i, align 8, !tbaa !28
  %.not18.i.i.i134.i.i = icmp eq i32 %.pr.i.i1072, 6
  br i1 %.not18.i.i.i134.i.i, label %.preheader.i.i.i136.i.i, label %tg3__parse_primitive.exit.i

.preheader.i.i.i136.i.i:                          ; preds = %tg3__json_is_object.exit.thread.thread.i.i
  %i.ath = load i64, ptr %i.apl, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i137.i.i = icmp eq i64 %i.ath, 0
  br i1 %.not23.i.i.i137.i.i, label %tg3__parse_primitive.exit.i, label %.lr.ph.i.i.i138.i.i

.lr.ph.i.i.i138.i.i:                              ; preds = %.preheader.i.i.i136.i.i
  %i.ati = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 8
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !26
  br label %bb.hz

bb.hz:                                            ; preds = %bb.ib, %.lr.ph.i.i.i138.i.i
  %.01422.i.i.i139.i.i = phi i64 [ 0, %.lr.ph.i.i.i138.i.i ], [ %i.aty, %bb.ib ] ; 2 uses
  %i.atk = getelementptr inbounds nuw [24 x i8], ptr %i.atj, i64 %.01422.i.i.i139.i.i ; 3 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %i.atm = load i64, ptr %i.atl, align 8, !tbaa !43
  %i.atn = icmp eq i64 %i.atm, 7
  br i1 %i.atn, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.ato = load ptr, ptr %i.atk, align 8, !tbaa !40 ; 2 uses
  %i.atp = load i32, ptr %i.ato, align 1
  %i.atq = xor i32 %i.atp, 1735549300
  %i.atr = getelementptr i8, ptr %i.ato, i64 3
  %i.ats = load i32, ptr %i.atr, align 1
  %i.att = xor i32 %i.ats, 1937007975
  %i.atu = or i32 %i.atq, %i.att
  %i.atv = icmp ne i32 %i.atu, 0
  %i.atw = zext i1 %i.atv to i32
  %i.atx = icmp eq i32 %i.atw, 0
  br i1 %i.atx, label %tg3__json_get.exit142.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.aty = add nuw i64 %.01422.i.i.i139.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i140.i.i = icmp eq i64 %i.aty, %i.ath
  br i1 %exitcond.not.i.i.i140.i.i, label %tg3__parse_primitive.exit.i, label %bb.hz, !llvm.loop !59

tg3__json_get.exit142.i.i:                        ; preds = %bb.ia
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !44 ; 5 uses
  %.not.i143.i.i = icmp eq ptr %i.aua, null
  br i1 %.not.i143.i.i, label %tg3__parse_primitive.exit.i, label %tg3__json_is_array.exit.i.i

tg3__json_is_array.exit.i.i:                      ; preds = %tg3__json_get.exit142.i.i
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !28
  %.not270.i.i = icmp eq i32 %i.aub, 5
  br i1 %.not270.i.i, label %tg3json_array_size.exit.i.i, label %tg3__parse_primitive.exit.i

tg3json_array_size.exit.i.i:                      ; preds = %tg3__json_is_array.exit.i.i
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aua, i64 16 ; 2 uses
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !26 ; 5 uses
  %.not118.i.i = icmp eq i64 %i.aud, 0
  br i1 %.not118.i.i, label %tg3__parse_primitive.exit.i, label %bb.ic

bb.ic:                                            ; preds = %tg3json_array_size.exit.i.i
  %i.aue = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.auf = shl i64 %i.aud, 3                      ; 5 uses
  %i.aug = icmp eq ptr %i.aue, null
  %i.auh = icmp eq i64 %i.auf, 0
  %or.cond.i147.i.i = or i1 %i.auh, %i.aug
  br i1 %or.cond.i147.i.i, label %tg3__arena_alloc.exit162.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aue, i64 32
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !155 ; 3 uses
  %.not.i148.i.i = icmp ne i64 %i.auj, 0          ; 2 uses
  %i.auk = icmp ugt i64 %i.auf, %i.auj
  %or.cond28.i149.i.i = and i1 %.not.i148.i.i, %i.auk
  br i1 %or.cond28.i149.i.i, label %tg3__arena_alloc.exit162.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aue, i64 8 ; 3 uses
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !178 ; 5 uses
  %.not26.i150.i.i = icmp eq ptr %i.aum, null
  br i1 %.not26.i150.i.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !179 ; 2 uses
  %i.aup = add i64 %i.auo, %i.auf
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aum, i64 24
  %i.aur = load i64, ptr %i.auq, align 8, !tbaa !181
  %i.aus = icmp ugt i64 %i.aup, %i.aur
  br i1 %i.aus, label %bb.ig, label %._crit_edge.i151.i.i

._crit_edge.i151.i.i:                             ; preds = %bb.if
  %.phi.trans.insert.i152.i.i = getelementptr inbounds nuw i8, ptr %i.aum, i64 8
  %.pre.i153.i.i = load ptr, ptr %.phi.trans.insert.i152.i.i, align 8, !tbaa !187
  br label %bb.ij

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aue, i64 40
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !151
  %spec.select.i.i156.i.i = call i64 @llvm.umax.i64(i64 %i.auu, i64 range(i64 0, -7) %i.auf) ; 3 uses
  %i.auv = icmp ugt i64 %spec.select.i.i156.i.i, %i.auj
  %or.cond.i.i157.i.i = select i1 %.not.i148.i.i, i1 %i.auv, i1 false
  br i1 %or.cond.i.i157.i.i, label %tg3__arena_alloc.exit162.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aue, i64 16 ; 3 uses
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !182
  %i.auy = add i64 %spec.select.i.i156.i.i, 32    ; 3 uses
  %i.auz = add i64 %i.aux, %i.auy
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aue, i64 24
  %i.avb = load i64, ptr %i.ava, align 8, !tbaa !154
  %i.avc = icmp ugt i64 %i.auz, %i.avb
  br i1 %i.avc, label %tg3__arena_alloc.exit162.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aue, i64 48
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !183
  %i.avf = getelementptr inbounds nuw i8, ptr %i.aue, i64 72
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !184
  %i.avh = call ptr %i.ave(i64 noundef %i.auy, ptr noundef %i.avg) #28, !inline_history !250 ; 9 uses
  %.not37.i.i158.i.i = icmp eq ptr %i.avh, null
  br i1 %.not37.i.i158.i.i, label %tg3__arena_alloc.exit162.i.i, label %tg3__arena_new_block.exit.i159.i.i

tg3__arena_new_block.exit.i159.i.i:               ; preds = %bb.ii
  store ptr null, ptr %i.avh, align 8, !tbaa !186
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 32 ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  store ptr %i.avi, ptr %i.avj, align 8, !tbaa !187
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avh, i64 16
  store i64 0, ptr %i.avk, align 8, !tbaa !179
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avh, i64 24
  store i64 %spec.select.i.i156.i.i, ptr %i.avl, align 8, !tbaa !181
  %i.avm = load i64, ptr %i.auw, align 8, !tbaa !182
  %i.avn = add i64 %i.avm, %i.auy
  store i64 %i.avn, ptr %i.auw, align 8, !tbaa !182
  %i.avo = load ptr, ptr %i.aul, align 8, !tbaa !178 ; 2 uses
end_hunk_1
begin_hunk_2_@tg3__parse_from_json:bb.a
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !155 ; 3 uses
  %.not.i190.i.i = icmp ne i64 %i.ayc, 0          ; 2 uses
  %i.ayd = icmp ugt i64 %i.axy, %i.ayc
  %or.cond28.i191.i.i = and i1 %.not.i190.i.i, %i.ayd
  br i1 %or.cond28.i191.i.i, label %.thread.i.i1074, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axx, i64 8 ; 3 uses
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !178 ; 4 uses
  %.not26.i192.i.i = icmp eq ptr %i.ayf, null
  br i1 %.not26.i192.i.i, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 16 ; 2 uses
  %i.ayh = load i64, ptr %i.ayg, align 8, !tbaa !179 ; 2 uses
  %i.ayi = add i64 %i.ayh, %i.axy                 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayf, i64 24
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !181
  %i.ayl = icmp ugt i64 %i.ayi, %i.ayk
  br i1 %i.ayl, label %bb.iv, label %tg3__arena_alloc.exit204.i.i

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axx, i64 40
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !151
  %spec.select.i.i198.i.i = call i64 @llvm.umax.i64(i64 %i.ayn, i64 range(i64 0, -7) %i.axy) ; 3 uses
  %i.ayo = icmp ugt i64 %spec.select.i.i198.i.i, %i.ayc
  %or.cond.i.i199.i.i = select i1 %.not.i190.i.i, i1 %i.ayo, i1 false
  br i1 %or.cond.i.i199.i.i, label %.thread.i.i1074, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axx, i64 16 ; 3 uses
  %i.ayq = load i64, ptr %i.ayp, align 8, !tbaa !182
  %i.ayr = add i64 %spec.select.i.i198.i.i, 32    ; 3 uses
  %i.ays = add i64 %i.ayq, %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axx, i64 24
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !154
  %i.ayv = icmp ugt i64 %i.ays, %i.ayu
  br i1 %i.ayv, label %.thread.i.i1074, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axx, i64 48
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !183
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axx, i64 72
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !184
  %i.aza = call ptr %i.ayx(i64 noundef %i.ayr, ptr noundef %i.ayz) #28, !inline_history !250 ; 8 uses
  %.not37.i.i200.i.i = icmp eq ptr %i.aza, null
  br i1 %.not37.i.i200.i.i, label %.thread.i.i1074, label %tg3__arena_alloc.exit204.thread.i.i

tg3__arena_alloc.exit204.thread.i.i:              ; preds = %bb.ix
  store ptr null, ptr %i.aza, align 8, !tbaa !186
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 32 ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.aza, i64 8
  store ptr %i.azb, ptr %i.azc, align 8, !tbaa !187
  %i.azd = getelementptr inbounds nuw i8, ptr %i.aza, i64 24
  store i64 %spec.select.i.i198.i.i, ptr %i.azd, align 8, !tbaa !181
  %i.aze = load i64, ptr %i.ayp, align 8, !tbaa !182
  %i.azf = add i64 %i.aze, %i.ayr
  store i64 %i.azf, ptr %i.ayp, align 8, !tbaa !182
  %i.azg = load ptr, ptr %i.aye, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i202.i.i = icmp eq ptr %i.azg, null
  %..i.i203.i.i = select i1 %.not38.i.i202.i.i, ptr %i.axx, ptr %i.azg
  store ptr %i.aza, ptr %..i.i203.i.i, align 8, !tbaa !188
  store ptr %i.aza, ptr %i.aye, align 8, !tbaa !178
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  store i64 %i.axy, ptr %i.azh, align 8, !tbaa !179
  br label %.preheader.i.i1073

tg3__arena_alloc.exit204.i.i:                     ; preds = %bb.iu
  %.phi.trans.insert.i194.i.i = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  %.pre.i195.i.i = load ptr, ptr %.phi.trans.insert.i194.i.i, align 8, !tbaa !187 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.pre.i195.i.i, i64 %i.ayh
  store i64 %i.ayi, ptr %i.ayg, align 8, !tbaa !179
  %.not120.i.i = icmp eq ptr %.pre.i195.i.i, null
  br i1 %.not120.i.i, label %.thread.i.i1074, label %.preheader.i.i1073

.preheader.i.i1073:                               ; preds = %tg3__arena_alloc.exit204.i.i, %tg3__arena_alloc.exit204.thread.i.i
  %i.azj = phi ptr [ %i.azb, %tg3__arena_alloc.exit204.thread.i.i ], [ %i.azi, %tg3__arena_alloc.exit204.i.i ] ; 2 uses
  %.not281.i.i = icmp eq i64 %i.axw, 0
  br i1 %.not281.i.i, label %._crit_edge.i39.i, label %tg3json_object_at.exit209.lr.ph.i.i

tg3json_object_at.exit209.lr.ph.i.i:              ; preds = %.preheader.i.i1073
  %i.azk = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  br label %tg3json_object_at.exit209.i.i

tg3json_object_at.exit209.i.i:                    ; preds = %tg3__json_number_to_int32.exit223.i.i, %tg3json_object_at.exit209.lr.ph.i.i
  %.0278.i.i = phi i64 [ 0, %tg3json_object_at.exit209.lr.ph.i.i ], [ %i.bcd, %tg3__json_number_to_int32.exit223.i.i ] ; 4 uses
  %i.azl = load i64, ptr %i.axv, align 8, !tbaa !26
  %.not9.i208.i.i = icmp ult i64 %.0278.i.i, %i.azl
  call void @llvm.assume(i1 %.not9.i208.i.i)
  %i.azm = load ptr, ptr %i.azk, align 8, !tbaa !26
  %i.azn = getelementptr inbounds nuw [24 x i8], ptr %i.azm, i64 %.0278.i.i ; 4 uses
  %i.azo = getelementptr inbounds nuw [24 x i8], ptr %i.azj, i64 %.0278.i.i ; 3 uses
  %i.azp = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.azq = load ptr, ptr %i.azn, align 8, !tbaa !40 ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  %i.azs = load i64, ptr %i.azr, align 8, !tbaa !43 ; 3 uses
  %i.azt = trunc i64 %i.azs to i32                ; 2 uses
  %i.azu = and i64 %i.azs, 4294967295             ; 3 uses
  %.not.i.i210.i.i = icmp eq ptr %i.azq, null
  %i.azv = icmp eq ptr %i.azp, null
  %or.cond.i211.i.i = or i1 %i.azv, %.not.i.i210.i.i
  br i1 %or.cond.i211.i.i, label %tg3__arena_str.exit.i.i, label %bb.iy

bb.iy:                                            ; preds = %tg3json_object_at.exit209.i.i
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azp, i64 32
  %i.azx = load i64, ptr %i.azw, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i212.i.i = icmp ne i64 %i.azx, 0
  %i.azy = add i64 %i.azx, -1
  %or.cond28.i.i.i.i.i = icmp ult i64 %i.azy, %i.azu
  br i1 %or.cond28.i.i.i.i.i, label %tg3__arena_str.exit.i.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.azz = and i64 %i.azs, 4294967288
  %i.baa = add nuw nsw i64 %i.azz, 8              ; 3 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azp, i64 8 ; 3 uses
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !178 ; 4 uses
  %.not26.i.i.i.i.i = icmp eq ptr %i.bac, null
  br i1 %.not26.i.i.i.i.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 16 ; 2 uses
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !179 ; 2 uses
  %i.baf = add i64 %i.bae, %i.baa                 ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bac, i64 24
  %i.bah = load i64, ptr %i.bag, align 8, !tbaa !181
  %i.bai = icmp ugt i64 %i.baf, %i.bah
  br i1 %i.bai, label %bb.jb, label %tg3__arena_alloc.exit.i.i.i.i

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.baj = getelementptr inbounds nuw i8, ptr %i.azp, i64 40
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !151
  %spec.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bak, i64 range(i64 0, -7) %i.baa) ; 3 uses
  %i.bal = icmp ugt i64 %spec.select.i.i.i.i.i.i, %i.azx
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i212.i.i, i1 %i.bal, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %tg3__arena_str.exit.i.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bam = getelementptr inbounds nuw i8, ptr %i.azp, i64 16 ; 3 uses
  %i.ban = load i64, ptr %i.bam, align 8, !tbaa !182
  %i.bao = add i64 %spec.select.i.i.i.i.i.i, 32   ; 3 uses
  %i.bap = add i64 %i.ban, %i.bao
  %i.baq = getelementptr inbounds nuw i8, ptr %i.azp, i64 24
  %i.bar = load i64, ptr %i.baq, align 8, !tbaa !154
  %i.bas = icmp ugt i64 %i.bap, %i.bar
  br i1 %i.bas, label %tg3__arena_str.exit.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.bat = getelementptr inbounds nuw i8, ptr %i.azp, i64 48
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !183
  %i.bav = getelementptr inbounds nuw i8, ptr %i.azp, i64 72
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !184
  %i.bax = call ptr %i.bau(i64 noundef %i.bao, ptr noundef %i.baw) #28, !inline_history !255 ; 8 uses
  %.not37.i.i.i.i.i.i = icmp eq ptr %i.bax, null
  br i1 %.not37.i.i.i.i.i.i, label %tg3__arena_str.exit.i.i, label %tg3__arena_alloc.exit.thread24.i.i.i.i

tg3__arena_alloc.exit.thread24.i.i.i.i:           ; preds = %bb.jd
  store ptr null, ptr %i.bax, align 8, !tbaa !186
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 32 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bax, i64 8
  store ptr %i.bay, ptr %i.baz, align 8, !tbaa !187
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 24
  store i64 %spec.select.i.i.i.i.i.i, ptr %i.bba, align 8, !tbaa !181
  %i.bbb = load i64, ptr %i.bam, align 8, !tbaa !182
  %i.bbc = add i64 %i.bbb, %i.bao
  store i64 %i.bbc, ptr %i.bam, align 8, !tbaa !182
  %i.bbd = load ptr, ptr %i.bab, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i.i.i.i.i = icmp eq ptr %i.bbd, null
  %..i.i.i.i.i.i = select i1 %.not38.i.i.i.i.i.i, ptr %i.azp, ptr %i.bbd
  store ptr %i.bax, ptr %..i.i.i.i.i.i, align 8, !tbaa !188
  store ptr %i.bax, ptr %i.bab, align 8, !tbaa !178
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bax, i64 16
  store i64 %i.baa, ptr %i.bbe, align 8, !tbaa !179
  br label %bb.je

tg3__arena_alloc.exit.i.i.i.i:                    ; preds = %bb.ja
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bac, i64 8
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %i.bae
  store i64 %i.baf, ptr %i.bad, align 8, !tbaa !179
  %.not14.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not14.i.i.i.i, label %tg3__arena_str.exit.i.i, label %bb.je

bb.je:                                            ; preds = %tg3__arena_alloc.exit.i.i.i.i, %tg3__arena_alloc.exit.thread24.i.i.i.i
  %i.bbg = phi ptr [ %i.bay, %tg3__arena_alloc.exit.thread24.i.i.i.i ], [ %i.bbf, %tg3__arena_alloc.exit.i.i.i.i ] ; 3 uses
  %.not15.i.i.i.i = icmp eq i32 %i.azt, 0
  br i1 %.not15.i.i.i.i, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bbg, ptr nonnull readonly align 1 %i.azq, i64 range(i64 -2147483648, 4294967296) %i.azu, i1 false)
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 %i.azu
  store i8 0, ptr %i.bbh, align 1, !tbaa !26
  br label %tg3__arena_str.exit.i.i

tg3__arena_str.exit.i.i:                          ; preds = %bb.jg, %tg3__arena_alloc.exit.i.i.i.i, %bb.jd, %bb.jc, %bb.jb, %bb.iy, %tg3json_object_at.exit209.i.i
  %.0.i.i213.i.i = phi ptr [ %i.bbg, %bb.jg ], [ null, %tg3json_object_at.exit209.i.i ], [ null, %tg3__arena_alloc.exit.i.i.i.i ], [ null, %bb.iy ], [ null, %bb.jd ], [ null, %bb.jc ], [ null, %bb.jb ] ; 2 uses
  %.not.i214.i.i = icmp eq ptr %.0.i.i213.i.i, null
  %i.bbi = select i1 %.not.i214.i.i, i32 0, i32 %i.azt
  store ptr %.0.i.i213.i.i, ptr %i.azo, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.azo, i64 8
  store i32 %i.bbi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !36
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.azn, i64 16
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !44 ; 4 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.azo, i64 16
  %.not.i.i215.i.i = icmp eq ptr %i.bbk, null
  br i1 %.not.i.i215.i.i, label %bb.jl, label %bb.jh

bb.jh:                                            ; preds = %tg3__arena_str.exit.i.i
  %i.bbm = load i32, ptr %i.bbk, align 8, !tbaa !28
  switch i32 %i.bbm, label %bb.jl [
    i32 2, label %.thread.i221.i.i
    i32 3, label %bb.jj
  ]

.thread.i221.i.i:                                 ; preds = %bb.jh
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8
  %i.bbo = load i64, ptr %i.bbn, align 8, !tbaa !26 ; 2 uses
  %i.bbp = add i64 %i.bbo, -2147483648
  %or.cond.i222.i.i = icmp ult i64 %i.bbp, -4294967296
  br i1 %or.cond.i222.i.i, label %bb.jl, label %bb.ji

bb.ji:                                            ; preds = %.thread.i221.i.i
  %i.bbq = trunc nsw i64 %i.bbo to i32
  br label %tg3__json_number_to_int32.exit223.i.i

bb.jj:                                            ; preds = %bb.jh
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8
  %i.bbs = load double, ptr %i.bbr, align 8, !tbaa !26 ; 5 uses
  %i.bbt = call double @llvm.fabs.f64(double %i.bbs)
  %i.bbu = fcmp ueq double %i.bbt, +inf
  %i.bbv = fcmp olt double %i.bbs, f0xC1E0000000000000
  %or.cond3.i216.i.i = or i1 %i.bbv, %i.bbu
  %i.bbw = fcmp ogt double %i.bbs, f0x41DFFFFFFFC00000
  %or.cond5.i217.i.i = or i1 %i.bbw, %or.cond3.i216.i.i
  br i1 %or.cond5.i217.i.i, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.bbx = fptosi double %i.bbs to i32            ; 2 uses
  %i.bby = sitofp i32 %i.bbx to double
  %i.bbz = fcmp une double %i.bbs, %i.bby
  br i1 %i.bbz, label %bb.jl, label %tg3__json_number_to_int32.exit223.i.i

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %.thread.i221.i.i, %bb.jh, %tg3__arena_str.exit.i.i
  %i.bca = load ptr, ptr %i.amf, align 8, !tbaa !164
  %i.bcb = load ptr, ptr %0, align 8, !tbaa !161
  %i.bcc = load ptr, ptr %i.azn, align 8, !tbaa !40 ; 2 uses
  %.not122.i.i = icmp eq ptr %i.bcc, null
  %spec.select125.i.i = select i1 %.not122.i.i, ptr @.str, ptr %i.bcc
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.bca, ptr noundef %i.bcb, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull %spec.select125.i.i)
  br label %tg3__json_number_to_int32.exit223.i.i

tg3__json_number_to_int32.exit223.i.i:            ; preds = %bb.ji, %bb.jk, %bb.jl
  %storemerge3358 = phi i32 [ 0, %bb.jl ], [ %i.bbq, %bb.ji ], [ %i.bbx, %bb.jk ]
  store i32 %storemerge3358, ptr %i.bbl, align 8, !tbaa !36
  %i.bcd = add nuw i64 %.0278.i.i, 1              ; 2 uses
  %exitcond285.not.i.i = icmp eq i64 %i.bcd, %i.axw
  br i1 %exitcond285.not.i.i, label %._crit_edge.i39.i, label %tg3json_object_at.exit209.i.i, !llvm.loop !256

.thread.i.i1074:                                  ; preds = %tg3__arena_alloc.exit204.i.i, %bb.ix, %bb.iw, %bb.iv, %bb.is, %tg3json_object_size.exit188.i.i
  %i.bce = getelementptr inbounds nuw [8 x i8], ptr %.020.i155.i.i, i64 %.0105279.i.i
  store ptr null, ptr %i.bce, align 8, !tbaa !254
  br label %bb.jm

._crit_edge.i39.i:                                ; preds = %tg3__json_number_to_int32.exit223.i.i, %.preheader.i.i1073
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %.020.i155.i.i, i64 %.0105279.i.i
  store ptr %i.azj, ptr %i.bcf, align 8, !tbaa !254
  %i.bcg = trunc i64 %i.axw to i32
  br label %bb.jm

bb.jm:                                            ; preds = %._crit_edge.i39.i, %.thread.i.i1074, %tg3__json_is_object.exit184.thread.i.i
  %.sink.i.i = phi i32 [ 0, %tg3__json_is_object.exit184.thread.i.i ], [ 0, %.thread.i.i1074 ], [ %i.bcg, %._crit_edge.i39.i ]
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %.0105279.i.i
  store i32 %.sink.i.i, ptr %i.bch, align 4, !tbaa !36
  %i.bci = add nuw i64 %.0105279.i.i, 1           ; 2 uses
  %exitcond287.not.i.i = icmp eq i64 %i.bci, %i.aud
  br i1 %exitcond287.not.i.i, label %bb.jn, label %bb.iq, !llvm.loop !257

bb.jn:                                            ; preds = %bb.jm
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.apg, i64 24
  store ptr %.020.i155.i.i, ptr %i.bcj, align 8, !tbaa !258
  %i.bck = getelementptr inbounds nuw i8, ptr %i.apg, i64 32
  store ptr %i.axk, ptr %i.bck, align 8, !tbaa !259
  %i.bcl = trunc i64 %i.aud to i32
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.apg, i64 40
  store i32 %i.bcl, ptr %i.bcm, align 8, !tbaa !260
  br label %tg3__parse_primitive.exit.i

tg3__parse_primitive.exit.i:                      ; preds = %bb.ib, %bb.jn, %tg3__arena_alloc.exit178.i.i, %bb.ip, %bb.io, %bb.in, %bb.ik, %tg3__arena_alloc.exit162.i.i, %tg3json_array_size.exit.i.i, %tg3__json_is_array.exit.i.i, %tg3__json_get.exit142.i.i, %.preheader.i.i.i136.i.i, %tg3__json_is_object.exit.thread.thread.i.i, %bb.hi, %tg3json_array_get.exit.i
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.apg, i64 48
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef readonly %.0.i37.i, ptr noundef %i.bcn)
  %i.bco = add nuw i64 %.053.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bco, %i.ann
  br i1 %exitcond.not.i, label %bb.jo, label %bb.hf, !llvm.loop !261

bb.jo:                                            ; preds = %tg3__parse_primitive.exit.i
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store ptr %i.apa, ptr %i.bcp, align 8, !tbaa !262
  %i.bcq = trunc i64 %i.ann to i32
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  store i32 %i.bcq, ptr %i.bcr, align 8, !tbaa !265
  br label %tg3__parse_mesh.exit

tg3__parse_mesh.exit:                             ; preds = %tg3__json_get.exit.i, %tg3__json_is_array.exit.i, %tg3json_array_size.exit.i, %bb.gy, %bb.gz, %bb.hc, %bb.hd, %bb.he, %tg3__arena_alloc.exit.i1062, %bb.jo
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  %i.bct = getelementptr inbounds nuw i8, ptr %i.amo, i64 40
  call fastcc void @tg3__parse_number_array(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.amj, ptr noundef nonnull @.str.113, ptr noundef %i.bcs, ptr noundef %i.bct, ptr noundef nonnull @.str.112)
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.amj, ptr noundef %i.bcu)
  br label %bb.jp

bb.jp:                                            ; preds = %tg3__parse_mesh.exit, %tg3__json_is_object.exit1055.thread
  %i.bcv = add nuw i64 %.06622358, 1              ; 2 uses
  %exitcond2555.not = icmp eq i64 %i.bcv, %i.ako
  br i1 %exitcond2555.not, label %bb.jq, label %bb.gs, !llvm.loop !266

bb.jq:                                            ; preds = %bb.jp
  %i.bcw = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.amd, ptr %i.bcw, align 8, !tbaa !267
  %i.bcx = trunc i64 %i.ako to i32
  %i.bcy = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 %i.bcx, ptr %i.bcy, align 8, !tbaa !268
  br label %tg3__json_is_array.exit1028.thread

tg3__json_is_array.exit1028.thread:               ; preds = %bb.gk, %bb.gr, %bb.gp, %bb.gq, %bb.gl, %bb.gm, %.critedge884, %.preheader.i.i1020, %tg3json_object_get.exit1026, %tg3json_array_size.exit1032, %bb.jq, %tg3__arena_alloc.exit1048, %tg3__json_is_array.exit1028
  %i.bcz = load ptr, ptr %i.bk, align 8, !tbaa !174 ; 2 uses
  %.not777 = icmp eq ptr %i.bcz, null
  br i1 %.not777, label %.critedge886, label %bb.jr

bb.jr:                                            ; preds = %tg3__json_is_array.exit1028.thread
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 32
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !269
  %.not778 = icmp eq ptr %i.bdb, null
  br i1 %.not778, label %.critedge886, label %.preheader2223.a

.preheader2223.a:                                 ; preds = %bb.jr
  %i.bdc = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bdd = load i32, ptr %i.bdc, align 8, !tbaa !268
  %.not7802360.not = icmp eq i32 %i.bdd, 0
  br i1 %.not7802360.not, label %.critedge886, label %.lr.ph2362

.lr.ph2362:                                       ; preds = %.preheader2223.a
  %i.bde = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.jt

bb.js:                                            ; preds = %bb.jt
  %indvars.iv.next2557 = add nuw nsw i64 %indvars.iv2556, 1 ; 2 uses
  %i.bdf = load i32, ptr %i.bdc, align 8, !tbaa !268
  %i.bdg = zext i32 %i.bdf to i64
  %.not780 = icmp samesign ult i64 %indvars.iv.next2557, %i.bdg
  br i1 %.not780, label %bb.jt, label %.critedge886, !llvm.loop !270

bb.jt:                                            ; preds = %.lr.ph2362, %bb.js
  %indvars.iv2556 = phi i64 [ 0, %.lr.ph2362 ], [ %indvars.iv.next2557, %bb.js ] ; 3 uses
  %i.bdh = load ptr, ptr %i.bk, align 8, !tbaa !174 ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 32
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !269
  %i.bdk = load ptr, ptr %i.bde, align 8, !tbaa !267
  %i.bdl = getelementptr inbounds nuw [104 x i8], ptr %i.bdk, i64 %indvars.iv2556
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdh, i64 120
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !177
  %i.bdo = trunc nuw i64 %indvars.iv2556 to i32
  %i.bdp = call i32 %i.bdj(ptr noundef %i.bdl, i32 noundef %i.bdo, ptr noundef %i.bdn) #28
  %.not779 = icmp eq i32 %i.bdp, 1
  br i1 %.not779, label %.critedge908, label %bb.js

.critedge886:                                     ; preds = %bb.js, %.preheader2223.a, %tg3__json_is_array.exit1028.thread, %bb.jr
  %i.bdq = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i1089 = icmp eq i32 %i.bdq, 6
  br i1 %.not18.i.i1089, label %.preheader.i.i1091, label %tg3__json_is_array.exit1099.thread

.preheader.i.i1091:                               ; preds = %.critedge886
  %i.bdr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i1092 = icmp eq i64 %i.bds, 0
  br i1 %.not23.i.i1092, label %tg3__json_is_array.exit1099.thread, label %.lr.ph.i.i1093

.lr.ph.i.i1093:                                   ; preds = %.preheader.i.i1091
  %i.bdt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !26
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jw, %.lr.ph.i.i1093
  %.01422.i.i1094 = phi i64 [ 0, %.lr.ph.i.i1093 ], [ %i.bek, %bb.jw ] ; 2 uses
  %i.bdv = getelementptr inbounds nuw [24 x i8], ptr %i.bdu, i64 %.01422.i.i1094 ; 3 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 8
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !43
  %i.bdy = icmp eq i64 %i.bdx, 5
  br i1 %i.bdy, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.bdz = load ptr, ptr %i.bdv, align 8, !tbaa !40 ; 2 uses
  %i.bea = load i32, ptr %i.bdz, align 1
  %i.beb = xor i32 %i.bea, 1701080942
  %i.bec = getelementptr i8, ptr %i.bdz, i64 4
  %i.bed = load i8, ptr %i.bec, align 1
  %i.bee = zext i8 %i.bed to i32
  %i.bef = xor i32 %i.bee, 115
  %i.beg = or i32 %i.beb, %i.bef
  %i.beh = icmp ne i32 %i.beg, 0
end_hunk_2
begin_hunk_3_@tg3__parse_from_json:bb.a
  %.not38.i.i1173 = icmp eq ptr %i.bqo, null
  %..i.i1174 = select i1 %.not38.i.i1173, ptr %i.bpf, ptr %i.bqo
  store ptr %i.bqi, ptr %..i.i1174, align 8, !tbaa !188
  store ptr %i.bqi, ptr %i.bpm, align 8, !tbaa !178
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqi, i64 16
  store i64 %i.bpg, ptr %i.bqp, align 8, !tbaa !179
  br label %.preheader2219

tg3__arena_alloc.exit1175:                        ; preds = %bb.lv
  %.phi.trans.insert.i1165 = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  %.pre.i1166 = load ptr, ptr %.phi.trans.insert.i1165, align 8, !tbaa !187 ; 2 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bpn, i64 16
  %i.bqr = getelementptr inbounds nuw i8, ptr %.pre.i1166, i64 %i.bpp
  %i.bqs = add i64 %i.bpp, %i.bpg
  store i64 %i.bqs, ptr %i.bqq, align 8, !tbaa !179
  %.not790 = icmp eq ptr %.pre.i1166, null
  br i1 %.not790, label %tg3__json_is_array.exit1155.thread, label %.preheader2219

.preheader2219:                                   ; preds = %tg3__arena_alloc.exit1175.thread, %tg3__arena_alloc.exit1175
  %i.bqt = phi ptr [ %i.bqj, %tg3__arena_alloc.exit1175.thread ], [ %i.bqr, %tg3__arena_alloc.exit1175 ] ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bpb, i64 8
  %i.bqv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.lz

bb.lz:                                            ; preds = %.preheader2219, %bb.nw
  %.06582368 = phi i64 [ 0, %.preheader2219 ], [ %i.cax, %bb.nw ] ; 5 uses
  %i.bqx = load i32, ptr %i.bpb, align 8, !tbaa !28
  %.not8.i1177 = icmp eq i32 %i.bqx, 5
  br i1 %.not8.i1177, label %bb.ma, label %tg3__json_is_object.exit1182.thread

bb.ma:                                            ; preds = %bb.lz
  %i.bqy = load i64, ptr %i.bpd, align 8, !tbaa !26
  %.not9.i1179 = icmp ult i64 %.06582368, %i.bqy
  br i1 %.not9.i1179, label %tg3json_array_get.exit1180, label %tg3__json_is_object.exit1182.thread

tg3json_array_get.exit1180:                       ; preds = %bb.ma
  %i.bqz = load ptr, ptr %i.bqu, align 8, !tbaa !26 ; 2 uses
  %i.bra = getelementptr inbounds nuw [24 x i8], ptr %i.bqz, i64 %.06582368 ; 19 uses
  %.not.i1181 = icmp eq ptr %i.bqz, null
  br i1 %.not.i1181, label %tg3__json_is_object.exit1182.thread, label %tg3__json_is_object.exit1182

tg3__json_is_object.exit1182:                     ; preds = %tg3json_array_get.exit1180
  %i.brb = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not2163 = icmp eq i32 %i.brb, 6
  br i1 %.not2163, label %bb.mb, label %tg3__json_is_object.exit1182.thread

tg3__json_is_object.exit1182.thread:              ; preds = %bb.lz, %bb.ma, %tg3json_array_get.exit1180, %tg3__json_is_object.exit1182
  %i.brc = load ptr, ptr %i.bqw, align 8, !tbaa !164
  %i.brd = load ptr, ptr %0, align 8, !tbaa !161
  %i.bre = trunc i64 %.06582368 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.brc, ptr noundef %i.brd, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.50, i32 noundef %i.bre)
  br label %bb.nw

bb.mb:                                            ; preds = %tg3__json_is_object.exit1182
  %i.brf = getelementptr inbounds nuw [584 x i8], ptr %i.bqt, i64 %.06582368 ; 29 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 88 ; 2 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brf, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(584) %i.brf, i8 0, i64 584, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.brg, align 8, !tbaa !76
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brf, i64 104
  store <2 x double> splat (double 1.000000e+00), ptr %i.bri, align 8, !tbaa !76
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brf, i64 184 ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brf, i64 192
  store <2 x double> splat (double 1.000000e+00), ptr %i.brj, align 8, !tbaa !76
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brf, i64 120 ; 2 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brf, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.brm, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.brl, align 8, !tbaa !278
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brf, i64 200 ; 2 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brf, i64 204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.bro, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.brn, align 8, !tbaa !278
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brf, i64 320 ; 4 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brf, i64 324 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brq, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brp, align 8, !tbaa !280
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brf, i64 328 ; 4 uses
  store double 1.000000e+00, ptr %i.brr, align 8, !tbaa !282
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brf, i64 392 ; 4 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brf, i64 396 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brt, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brs, align 8, !tbaa !283
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brf, i64 400 ; 4 uses
  store double 1.000000e+00, ptr %i.bru, align 8, !tbaa !285
  %i.brv = getelementptr inbounds nuw i8, ptr %i.brf, i64 464 ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brf, i64 468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.brw, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.brv, align 8, !tbaa !278
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brf, i64 56 ; 2 uses
  store double 5.000000e-01, ptr %i.brx, align 8, !tbaa !286
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.brf, i32 noundef 0, ptr noundef nonnull @.str.141)
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brf, i64 16
  call fastcc void @tg3__parse_number_to_fixed(ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.142, ptr noundef %i.bry, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr null, ptr %4, align 8, !tbaa !229
  store i32 0, ptr %i.bqv, align 8, !tbaa !230
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.143, ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.141)
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brf, i64 40 ; 2 uses
  %i.bsa = load i32, ptr %i.bqv, align 8, !tbaa !230
  %.not.i1183 = icmp eq i32 %i.bsa, 0
  br i1 %.not.i1183, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.brz, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !289
  br label %bb.ml

bb.md:                                            ; preds = %bb.mb
  %i.bsb = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.bsc = icmp eq ptr %i.bsb, null
  br i1 %i.bsc, label %tg3__arena_str.exit.i, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsb, i64 32
  %i.bse = load i64, ptr %i.bsd, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i.i1214 = icmp ne i64 %i.bse, 0
  %i.bsf = add i64 %i.bse, -1
  %or.cond28.i.i.i.i1215 = icmp ult i64 %i.bsf, 6
  br i1 %or.cond28.i.i.i.i1215, label %tg3__arena_str.exit.i, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsb, i64 8 ; 3 uses
  %i.bsh = load ptr, ptr %i.bsg, align 8, !tbaa !178 ; 4 uses
  %.not26.i.i.i.i1216 = icmp eq ptr %i.bsh, null
  br i1 %.not26.i.i.i.i1216, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 16 ; 2 uses
  %i.bsj = load i64, ptr %i.bsi, align 8, !tbaa !179 ; 2 uses
  %i.bsk = add i64 %i.bsj, 8                      ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsh, i64 24
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !181
  %i.bsn = icmp ugt i64 %i.bsk, %i.bsm
  br i1 %i.bsn, label %bb.mh, label %tg3__arena_alloc.exit.i.i.i1217

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsb, i64 40
  %i.bsp = load i64, ptr %i.bso, align 8, !tbaa !151
  %spec.select.i.i.i.i.i1222 = call i64 @llvm.umax.i64(i64 %i.bsp, i64 range(i64 0, -7) 8) ; 3 uses
  %i.bsq = icmp ugt i64 %spec.select.i.i.i.i.i1222, %i.bse
  %or.cond.i.i.i.i.i1223 = select i1 %.not.i.i.i.i1214, i1 %i.bsq, i1 false
  br i1 %or.cond.i.i.i.i.i1223, label %tg3__arena_str.exit.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsb, i64 16 ; 3 uses
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !182
  %i.bst = add i64 %spec.select.i.i.i.i.i1222, 32 ; 3 uses
  %i.bsu = add i64 %i.bss, %i.bst
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsb, i64 24
  %i.bsw = load i64, ptr %i.bsv, align 8, !tbaa !154
  %i.bsx = icmp ugt i64 %i.bsu, %i.bsw
  br i1 %i.bsx, label %tg3__arena_str.exit.i, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsb, i64 48
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !183
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsb, i64 72
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !184
  %i.btc = call ptr %i.bsz(i64 noundef %i.bst, ptr noundef %i.btb) #28, !inline_history !290 ; 8 uses
  %.not37.i.i.i.i.i1224 = icmp eq ptr %i.btc, null
  br i1 %.not37.i.i.i.i.i1224, label %tg3__arena_str.exit.i, label %tg3__arena_alloc.exit.thread24.i.i.i

tg3__arena_alloc.exit.thread24.i.i.i:             ; preds = %bb.mj
  store ptr null, ptr %i.btc, align 8, !tbaa !186
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 32 ; 2 uses
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btc, i64 8
  store ptr %i.btd, ptr %i.bte, align 8, !tbaa !187
  %i.btf = getelementptr inbounds nuw i8, ptr %i.btc, i64 24
  store i64 %spec.select.i.i.i.i.i1222, ptr %i.btf, align 8, !tbaa !181
  %i.btg = load i64, ptr %i.bsr, align 8, !tbaa !182
  %i.bth = add i64 %i.btg, %i.bst
  store i64 %i.bth, ptr %i.bsr, align 8, !tbaa !182
  %i.bti = load ptr, ptr %i.bsg, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i.i.i.i1225 = icmp eq ptr %i.bti, null
  %..i.i.i.i.i1226 = select i1 %.not38.i.i.i.i.i1225, ptr %i.bsb, ptr %i.bti
  store ptr %i.btc, ptr %..i.i.i.i.i1226, align 8, !tbaa !188
  store ptr %i.btc, ptr %i.bsg, align 8, !tbaa !178
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btc, i64 16
  store i64 8, ptr %i.btj, align 8, !tbaa !179
  br label %bb.mk

tg3__arena_alloc.exit.i.i.i1217:                  ; preds = %bb.mg
  %.phi.trans.insert.i.i.i.i1218 = getelementptr inbounds nuw i8, ptr %i.bsh, i64 8
  %.pre.i.i.i.i1219 = load ptr, ptr %.phi.trans.insert.i.i.i.i1218, align 8, !tbaa !187 ; 2 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i1219, i64 %i.bsj
  store i64 %i.bsk, ptr %i.bsi, align 8, !tbaa !179
  %.not14.i.i.i = icmp eq ptr %.pre.i.i.i.i1219, null
  br i1 %.not14.i.i.i, label %tg3__arena_str.exit.i, label %bb.mk

bb.mk:                                            ; preds = %tg3__arena_alloc.exit.i.i.i1217, %tg3__arena_alloc.exit.thread24.i.i.i
  %i.btl = phi ptr [ %i.btd, %tg3__arena_alloc.exit.thread24.i.i.i ], [ %i.btk, %tg3__arena_alloc.exit.i.i.i1217 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.btl, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.144, i64 range(i64 -2147483648, 4294967296) 6, i1 false)
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 6
  store i8 0, ptr %i.btm, align 1, !tbaa !26
  br label %tg3__arena_str.exit.i

tg3__arena_str.exit.i:                            ; preds = %bb.mk, %tg3__arena_alloc.exit.i.i.i1217, %bb.mj, %bb.mi, %bb.mh, %bb.me, %bb.md
  %.0.i.i.i1220 = phi ptr [ %i.btl, %bb.mk ], [ null, %bb.md ], [ null, %tg3__arena_alloc.exit.i.i.i1217 ], [ null, %bb.me ], [ null, %bb.mj ], [ null, %bb.mi ], [ null, %bb.mh ] ; 2 uses
  %.not.i.i1221 = icmp eq ptr %.0.i.i.i1220, null
  %i.btn = select i1 %.not.i.i1221, i32 0, i32 6
  store ptr %.0.i.i.i1220, ptr %i.brz, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.brf, i64 48
  store i32 %i.btn, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !36
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mc, %tg3__arena_str.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.145, ptr noundef %i.brx, i32 noundef 0, ptr noundef nonnull @.str.141)
  %i.bto = getelementptr inbounds nuw i8, ptr %i.brf, i64 64
  %i.btp = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not18.i.i.i.i.i1185 = icmp eq i32 %i.btp, 6
  br i1 %.not18.i.i.i.i.i1185, label %.preheader.i.i.i.i.i1193, label %tg3__json_get.exit.thread.i.i1186

.preheader.i.i.i.i.i1193:                         ; preds = %bb.ml
  %i.btq = getelementptr inbounds nuw i8, ptr %i.bra, i64 16 ; 3 uses
  %i.btr = load i64, ptr %i.btq, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i.i1194 = icmp eq i64 %i.btr, 0
  br i1 %.not23.i.i.i.i.i1194, label %tg3__parse_bool.exit.thread.i, label %.lr.ph.i.i.i.i.i1195

.lr.ph.i.i.i.i.i1195:                             ; preds = %.preheader.i.i.i.i.i1193
  %i.bts = getelementptr inbounds nuw i8, ptr %i.bra, i64 8
  %i.btt = load ptr, ptr %i.bts, align 8, !tbaa !26
  br label %bb.mm

bb.mm:                                            ; preds = %bb.mo, %.lr.ph.i.i.i.i.i1195
  %.01422.i.i.i.i.i1196 = phi i64 [ 0, %.lr.ph.i.i.i.i.i1195 ], [ %i.bui, %bb.mo ] ; 2 uses
  %i.btu = getelementptr inbounds nuw [24 x i8], ptr %i.btt, i64 %.01422.i.i.i.i.i1196 ; 3 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 8
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !43
  %i.btx = icmp eq i64 %i.btw, 11
  br i1 %i.btx, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.bty = load ptr, ptr %i.btu, align 8, !tbaa !40 ; 2 uses
  %i.btz = load i64, ptr %i.bty, align 1
  %i.bua = xor i64 %i.btz, 7589521313232154468
  %i.bub = getelementptr i8, ptr %i.bty, i64 3
  %i.buc = load i64, ptr %i.bub, align 1
  %i.bud = xor i64 %i.buc, 7234298779974069346
  %i.bue = or i64 %i.bua, %i.bud
  %i.buf = icmp ne i64 %i.bue, 0
  %i.bug = zext i1 %i.buf to i32
  %i.buh = icmp eq i32 %i.bug, 0
  br i1 %i.buh, label %tg3__json_get.exit.i.i1211, label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.bui = add nuw i64 %.01422.i.i.i.i.i1196, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i1197 = icmp eq i64 %i.bui, %i.btr
  br i1 %exitcond.not.i.i.i.i.i1197, label %tg3__parse_bool.exit.thread.i, label %bb.mm, !llvm.loop !59

tg3__json_get.exit.i.i1211:                       ; preds = %bb.mn
  %i.buj = getelementptr inbounds nuw i8, ptr %i.btu, i64 16
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !44 ; 3 uses
  %.not.i63.i = icmp eq ptr %i.buk, null
  br i1 %.not.i63.i, label %tg3__parse_bool.exit.thread.i, label %bb.mp

bb.mp:                                            ; preds = %tg3__json_get.exit.i.i1211
  %i.bul = load i32, ptr %i.buk, align 8, !tbaa !28
  %.not16.i.i1212 = icmp eq i32 %i.bul, 1
  br i1 %.not16.i.i1212, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.bum = load ptr, ptr %i.bqw, align 8, !tbaa !164
  %i.bun = load ptr, ptr %0, align 8, !tbaa !161
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.bum, ptr noundef %i.bun, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.146)
  br label %tg3__parse_bool.exit.thread.i

bb.mr:                                            ; preds = %bb.mp
  %i.buo = getelementptr inbounds nuw i8, ptr %i.buk, i64 8
  %i.bup = load i32, ptr %i.buo, align 8, !tbaa !26
  %.not17.i.i1213 = icmp ne i32 %i.bup, 0
  %i.buq = zext i1 %.not17.i.i1213 to i32
  store i32 %i.buq, ptr %i.bto, align 8, !tbaa !36
  br label %tg3__parse_bool.exit.thread.i

tg3__parse_bool.exit.thread.i:                    ; preds = %bb.mo, %bb.mr, %bb.mq, %tg3__json_get.exit.i.i1211, %.preheader.i.i.i.i.i1193
  %.pr205.i = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not18.i.i.i.i1198 = icmp eq i32 %.pr205.i, 6
  br i1 %.not18.i.i.i.i1198, label %.preheader.i.i.i.i1199, label %tg3__json_get.exit.thread.i.i1186

.preheader.i.i.i.i1199:                           ; preds = %tg3__parse_bool.exit.thread.i
  %i.bur = load i64, ptr %i.btq, align 8, !tbaa !26 ; 5 uses
  %.not23.i.i.i.i1200 = icmp eq i64 %i.bur, 0
  br i1 %.not23.i.i.i.i1200, label %tg3__json_get.exit.thread.i.i1186, label %.lr.ph.i.i.i.i1201

.lr.ph.i.i.i.i1201:                               ; preds = %.preheader.i.i.i.i1199
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bra, i64 8 ; 2 uses
  %i.but = load ptr, ptr %i.bus, align 8, !tbaa !26
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mu, %.lr.ph.i.i.i.i1201
  %.01422.i.i.i.i1202 = phi i64 [ 0, %.lr.ph.i.i.i.i1201 ], [ %i.bvj, %bb.mu ] ; 2 uses
  %i.buu = getelementptr inbounds nuw [24 x i8], ptr %i.but, i64 %.01422.i.i.i.i1202 ; 3 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 8
  %i.buw = load i64, ptr %i.buv, align 8, !tbaa !43
  %i.bux = icmp eq i64 %i.buw, 20
  br i1 %i.bux, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.buy = load ptr, ptr %i.buu, align 8, !tbaa !40 ; 2 uses
  %i.buz = load i128, ptr %i.buy, align 1
  %i.bva = xor i128 %i.buz, 138776899999807956666546506507228439152
  %i.bvb = getelementptr i8, ptr %i.buy, i64 16
  %i.bvc = load i32, ptr %i.bvb, align 1
  %i.bvd = zext i32 %i.bvc to i128
  %i.bve = xor i128 %i.bvd, 1936942446
  %i.bvf = or i128 %i.bva, %i.bve
  %i.bvg = icmp ne i128 %i.bvf, 0
  %i.bvh = zext i1 %i.bvg to i32
  %i.bvi = icmp eq i32 %i.bvh, 0
  br i1 %i.bvi, label %tg3__json_get.exit.i1207, label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.bvj = add nuw i64 %.01422.i.i.i.i1202, 1     ; 2 uses
  %exitcond.not.i.i.i.i1203 = icmp eq i64 %i.bvj, %i.bur
  br i1 %exitcond.not.i.i.i.i1203, label %.lr.ph.i.i.i.i72.i, label %bb.ms, !llvm.loop !59

tg3__json_get.exit.i1207:                         ; preds = %bb.mt
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.buu, i64 16
  %i.bvl = load ptr, ptr %i.bvk, align 8, !tbaa !44 ; 8 uses
  %.not.i66.i = icmp eq ptr %i.bvl, null
  br i1 %.not.i66.i, label %.preheader.i.i.i.i70.i, label %tg3__json_is_object.exit.i1208

tg3__json_is_object.exit.i1208:                   ; preds = %tg3__json_get.exit.i1207
  %i.bvm = load i32, ptr %i.bvl, align 8, !tbaa !28
  %.not141.i = icmp eq i32 %i.bvm, 6
  br i1 %.not141.i, label %tg3__json_is_object.exit.thread.thread139.i, label %.preheader.i.i.i.i70.i

tg3__json_is_object.exit.thread.thread139.i:      ; preds = %tg3__json_is_object.exit.i1208
  call fastcc void @tg3__parse_number_to_fixed(ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.148, ptr noundef %i.brg, i32 noundef 4)
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.149, ptr noundef %i.brj, i32 noundef 0, ptr noundef nonnull @.str.150)
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.151, ptr noundef %i.brk, i32 noundef 0, ptr noundef nonnull @.str.150)
  call fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.152, ptr noundef %i.brl)
  call fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.153, ptr noundef %i.brn)
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef %i.brh)
  %.pr.pre.i1209 = load i32, ptr %i.bra, align 8, !tbaa !28
  %i.bvn = icmp eq i32 %.pr.pre.i1209, 6
  br i1 %i.bvn, label %tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge, label %tg3__json_get.exit.thread.i.i1186

tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge: ; preds = %tg3__json_is_object.exit.thread.thread139.i
  %.pr.i.pre = load i64, ptr %i.btq, align 8, !tbaa !26
  br label %.preheader.i.i.i.i70.i

.preheader.i.i.i.i70.i:                           ; preds = %tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge, %tg3__json_is_object.exit.i1208, %tg3__json_get.exit.i1207
  %.pr.i = phi i64 [ %.pr.i.pre, %tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge ], [ %i.bur, %tg3__json_get.exit.i1207 ], [ %i.bur, %tg3__json_is_object.exit.i1208 ] ; 2 uses
  %.not23.i.i.i.i71.i = icmp eq i64 %.pr.i, 0
  br i1 %.not23.i.i.i.i71.i, label %tg3__json_get.exit.thread.i.i1186, label %.lr.ph.i.i.i.i72.i

.lr.ph.i.i.i.i72.i:                               ; preds = %bb.mu, %.preheader.i.i.i.i70.i
  %.pr.i3085 = phi i64 [ %.pr.i, %.preheader.i.i.i.i70.i ], [ %i.bur, %bb.mu ]
  %i.bvo = load ptr, ptr %i.bus, align 8, !tbaa !26
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mx, %.lr.ph.i.i.i.i72.i
  %.01422.i.i.i.i73.i = phi i64 [ 0, %.lr.ph.i.i.i.i72.i ], [ %i.bwd, %bb.mx ] ; 2 uses
  %i.bvp = getelementptr inbounds nuw [24 x i8], ptr %i.bvo, i64 %.01422.i.i.i.i73.i ; 3 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 8
  %i.bvr = load i64, ptr %i.bvq, align 8, !tbaa !43
  %i.bvs = icmp eq i64 %i.bvr, 13
  br i1 %i.bvs, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.bvt = load ptr, ptr %i.bvp, align 8, !tbaa !40 ; 2 uses
  %i.bvu = load i64, ptr %i.bvt, align 1
  %i.bvv = xor i64 %i.bvu, 7301580061578260334
  %i.bvw = getelementptr i8, ptr %i.bvt, i64 5
  %i.bvx = load i64, ptr %i.bvw, align 1
  %i.bvy = xor i64 %i.bvx, 7310034288272299116
  %i.bvz = or i64 %i.bvv, %i.bvy
  %i.bwa = icmp ne i64 %i.bvz, 0
  %i.bwb = zext i1 %i.bwa to i32
  %i.bwc = icmp eq i32 %i.bwb, 0
  br i1 %i.bwc, label %tg3__json_get.exit.i76.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %i.bwd = add nuw i64 %.01422.i.i.i.i73.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i74.i = icmp eq i64 %i.bwd, %.pr.i3085
  br i1 %exitcond.not.i.i.i.i74.i, label %tg3__json_get.exit.thread.i.i1186, label %bb.mv, !llvm.loop !59

tg3__json_get.exit.thread.i.i1186:                ; preds = %bb.mx, %.preheader.i.i.i.i70.i, %tg3__json_is_object.exit.thread.thread139.i, %.preheader.i.i.i.i1199, %tg3__parse_bool.exit.thread.i, %bb.ml
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brq, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brp, align 8, !tbaa !280
  store double 1.000000e+00, ptr %i.brr, align 8, !tbaa !282
  br label %tg3__parse_normal_texture_info.exit.i

tg3__json_get.exit.i76.i:                         ; preds = %bb.mw
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvp, i64 16
  %i.bwf = load ptr, ptr %i.bwe, align 8, !tbaa !44 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brq, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brp, align 8, !tbaa !280
  store double 1.000000e+00, ptr %i.brr, align 8, !tbaa !282
  %.not.i77.i = icmp eq ptr %i.bwf, null
  br i1 %.not.i77.i, label %tg3__parse_normal_texture_info.exit.i, label %tg3__json_is_object.exit.i.i1204

tg3__json_is_object.exit.i.i1204:                 ; preds = %tg3__json_get.exit.i76.i
  %i.bwg = load i32, ptr %i.bwf, align 8, !tbaa !28
  %.not3.i.i = icmp eq i32 %i.bwg, 6
  br i1 %.not3.i.i, label %bb.my, label %tg3__parse_normal_texture_info.exit.i

bb.my:                                            ; preds = %tg3__json_is_object.exit.i.i1204
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.bwf, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.brp, i32 noundef 0, ptr noundef nonnull @.str.154)
end_hunk_3
begin_hunk_4_@tg3__parse_from_json:bb.a

bb.si:                                            ; preds = %bb.sh
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyy, i64 16 ; 2 uses
  %i.cza = load i64, ptr %i.cyz, align 8, !tbaa !179 ; 2 uses
  %i.czb = add i64 %i.cza, %i.cyr                 ; 2 uses
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cyy, i64 24
  %i.czd = load i64, ptr %i.czc, align 8, !tbaa !181
  %i.cze = icmp ugt i64 %i.czb, %i.czd
  br i1 %i.cze, label %bb.sj, label %tg3__arena_alloc.exit148.i

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cyq, i64 40
  %i.czg = load i64, ptr %i.czf, align 8, !tbaa !151
  %spec.select.i.i142.i = call i64 @llvm.umax.i64(i64 %i.czg, i64 range(i64 0, -7) %i.cyr) ; 3 uses
  %i.czh = icmp ugt i64 %spec.select.i.i142.i, %i.cyv
  %or.cond.i.i143.i = select i1 %.not.i134.i, i1 %i.czh, i1 false
  br i1 %or.cond.i.i143.i, label %tg3__parse_animation.exit, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.czi = getelementptr inbounds nuw i8, ptr %i.cyq, i64 16 ; 3 uses
  %i.czj = load i64, ptr %i.czi, align 8, !tbaa !182
  %i.czk = add i64 %spec.select.i.i142.i, 32      ; 3 uses
  %i.czl = add i64 %i.czj, %i.czk
  %i.czm = getelementptr inbounds nuw i8, ptr %i.cyq, i64 24
  %i.czn = load i64, ptr %i.czm, align 8, !tbaa !154
  %i.czo = icmp ugt i64 %i.czl, %i.czn
  br i1 %i.czo, label %tg3__parse_animation.exit, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.czp = getelementptr inbounds nuw i8, ptr %i.cyq, i64 48
  %i.czq = load ptr, ptr %i.czp, align 8, !tbaa !183
  %i.czr = getelementptr inbounds nuw i8, ptr %i.cyq, i64 72
  %i.czs = load ptr, ptr %i.czr, align 8, !tbaa !184
  %i.czt = call ptr %i.czq(i64 noundef %i.czk, ptr noundef %i.czs) #28, !inline_history !326 ; 8 uses
  %.not37.i.i144.i = icmp eq ptr %i.czt, null
  br i1 %.not37.i.i144.i, label %tg3__parse_animation.exit, label %tg3__arena_alloc.exit148.thread.i

tg3__arena_alloc.exit148.thread.i:                ; preds = %bb.sl
  store ptr null, ptr %i.czt, align 8, !tbaa !186
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czt, i64 32 ; 2 uses
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czt, i64 8
  store ptr %i.czu, ptr %i.czv, align 8, !tbaa !187
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czt, i64 24
  store i64 %spec.select.i.i142.i, ptr %i.czw, align 8, !tbaa !181
  %i.czx = load i64, ptr %i.czi, align 8, !tbaa !182
  %i.czy = add i64 %i.czx, %i.czk
  store i64 %i.czy, ptr %i.czi, align 8, !tbaa !182
  %i.czz = load ptr, ptr %i.cyx, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i146.i = icmp eq ptr %i.czz, null
  %..i.i147.i = select i1 %.not38.i.i146.i, ptr %i.cyq, ptr %i.czz
  store ptr %i.czt, ptr %..i.i147.i, align 8, !tbaa !188
  store ptr %i.czt, ptr %i.cyx, align 8, !tbaa !178
  %i.daa = getelementptr inbounds nuw i8, ptr %i.czt, i64 16
  store i64 %i.cyr, ptr %i.daa, align 8, !tbaa !179
  br label %.preheader.i1430

tg3__arena_alloc.exit148.i:                       ; preds = %bb.si
  %.phi.trans.insert.i138.i = getelementptr inbounds nuw i8, ptr %i.cyy, i64 8
  %.pre.i139.i1429 = load ptr, ptr %.phi.trans.insert.i138.i, align 8, !tbaa !187 ; 2 uses
  %i.dab = getelementptr inbounds nuw i8, ptr %.pre.i139.i1429, i64 %i.cza
  store i64 %i.czb, ptr %i.cyz, align 8, !tbaa !179
  %.not98.i = icmp eq ptr %.pre.i139.i1429, null
  br i1 %.not98.i, label %tg3__parse_animation.exit, label %.preheader.i1430

.preheader.i1430:                                 ; preds = %tg3__arena_alloc.exit148.i, %tg3__arena_alloc.exit148.thread.i
  %i.dac = phi ptr [ %i.czu, %tg3__arena_alloc.exit148.thread.i ], [ %i.dab, %tg3__arena_alloc.exit148.i ] ; 2 uses
  %i.dad = getelementptr inbounds nuw i8, ptr %.0.i.i103.i, i64 8
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sy, %.preheader.i1430
  %.0187.i = phi i64 [ 0, %.preheader.i1430 ], [ %i.dca, %bb.sy ] ; 4 uses
  %i.dae = load i32, ptr %.0.i.i103.i, align 8, !tbaa !28
  %.not8.i150.i = icmp eq i32 %i.dae, 5
  br i1 %.not8.i150.i, label %bb.sn, label %tg3json_array_get.exit153.i

bb.sn:                                            ; preds = %bb.sm
  %i.daf = load i64, ptr %i.cyo, align 8, !tbaa !26
  %.not9.i152.i = icmp ult i64 %.0187.i, %i.daf
  br i1 %.not9.i152.i, label %bb.so, label %tg3json_array_get.exit153.i

bb.so:                                            ; preds = %bb.sn
  %i.dag = load ptr, ptr %i.dad, align 8, !tbaa !26
  %i.dah = getelementptr inbounds nuw [24 x i8], ptr %i.dag, i64 %.0187.i
  br label %tg3json_array_get.exit153.i

tg3json_array_get.exit153.i:                      ; preds = %bb.so, %bb.sn, %bb.sm
  %.0.i151.i = phi ptr [ %i.dah, %bb.so ], [ null, %bb.sn ], [ null, %bb.sm ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.dai = getelementptr inbounds nuw [80 x i8], ptr %i.dac, i64 %.0187.i ; 6 uses
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dai, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.daj, i8 0, i64 72, i1 false)
  store i32 -1, ptr %i.dai, align 8, !tbaa !337
  %i.dak = getelementptr inbounds nuw i8, ptr %i.dai, i64 4 ; 2 uses
  store i32 -1, ptr %i.dak, align 4, !tbaa !339
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef %.0.i151.i, ptr noundef nonnull @.str.181, ptr noundef %i.dai, i32 noundef 1, ptr noundef nonnull @.str.182)
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef %.0.i151.i, ptr noundef nonnull @.str.183, ptr noundef %i.dak, i32 noundef 1, ptr noundef nonnull @.str.182)
  store ptr null, ptr %3, align 8, !tbaa !229
  store i32 0, ptr %i.ctx, align 8, !tbaa !230
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef %.0.i151.i, ptr noundef nonnull @.str.184, ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.182)
  %i.dal = load i32, ptr %i.ctx, align 8, !tbaa !230
  %.not99.i = icmp eq i32 %i.dal, 0
  br i1 %.not99.i, label %bb.sq, label %bb.sp

bb.sp:                                            ; preds = %tg3json_array_get.exit153.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.daj, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !289
  br label %bb.sy

bb.sq:                                            ; preds = %tg3json_array_get.exit153.i
  %i.dam = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.dan = icmp eq ptr %i.dam, null
  br i1 %i.dan, label %tg3__arena_str.exit.i1437, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.dao = getelementptr inbounds nuw i8, ptr %i.dam, i64 32
  %i.dap = load i64, ptr %i.dao, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i155.i = icmp ne i64 %i.dap, 0
  %i.daq = add i64 %i.dap, -1
  %or.cond28.i.i.i.i1431 = icmp ult i64 %i.daq, 6
  br i1 %or.cond28.i.i.i.i1431, label %tg3__arena_str.exit.i1437, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.dar = getelementptr inbounds nuw i8, ptr %i.dam, i64 8 ; 3 uses
  %i.das = load ptr, ptr %i.dar, align 8, !tbaa !178 ; 4 uses
  %.not26.i.i.i.i1432 = icmp eq ptr %i.das, null
  br i1 %.not26.i.i.i.i1432, label %bb.su, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.dat = getelementptr inbounds nuw i8, ptr %i.das, i64 16 ; 2 uses
  %i.dau = load i64, ptr %i.dat, align 8, !tbaa !179 ; 2 uses
  %i.dav = add i64 %i.dau, 8                      ; 2 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %i.das, i64 24
  %i.dax = load i64, ptr %i.daw, align 8, !tbaa !181
  %i.day = icmp ugt i64 %i.dav, %i.dax
  br i1 %i.day, label %bb.su, label %tg3__arena_alloc.exit.i.i.i1433

bb.su:                                            ; preds = %bb.st, %bb.ss
  %i.daz = getelementptr inbounds nuw i8, ptr %i.dam, i64 40
  %i.dba = load i64, ptr %i.daz, align 8, !tbaa !151
  %spec.select.i.i.i.i.i1439 = call i64 @llvm.umax.i64(i64 %i.dba, i64 range(i64 0, -7) 8) ; 3 uses
  %i.dbb = icmp ugt i64 %spec.select.i.i.i.i.i1439, %i.dap
  %or.cond.i.i.i.i.i1440 = select i1 %.not.i.i.i155.i, i1 %i.dbb, i1 false
  br i1 %or.cond.i.i.i.i.i1440, label %tg3__arena_str.exit.i1437, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dam, i64 16 ; 3 uses
  %i.dbd = load i64, ptr %i.dbc, align 8, !tbaa !182
  %i.dbe = add i64 %spec.select.i.i.i.i.i1439, 32 ; 3 uses
  %i.dbf = add i64 %i.dbd, %i.dbe
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dam, i64 24
  %i.dbh = load i64, ptr %i.dbg, align 8, !tbaa !154
  %i.dbi = icmp ugt i64 %i.dbf, %i.dbh
  br i1 %i.dbi, label %tg3__arena_str.exit.i1437, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dam, i64 48
  %i.dbk = load ptr, ptr %i.dbj, align 8, !tbaa !183
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dam, i64 72
  %i.dbm = load ptr, ptr %i.dbl, align 8, !tbaa !184
  %i.dbn = call ptr %i.dbk(i64 noundef %i.dbe, ptr noundef %i.dbm) #28, !inline_history !340 ; 8 uses
  %.not37.i.i.i.i.i1441 = icmp eq ptr %i.dbn, null
  br i1 %.not37.i.i.i.i.i1441, label %tg3__arena_str.exit.i1437, label %tg3__arena_alloc.exit.thread24.i.i.i1442

tg3__arena_alloc.exit.thread24.i.i.i1442:         ; preds = %bb.sw
  store ptr null, ptr %i.dbn, align 8, !tbaa !186
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 32 ; 2 uses
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.dbn, i64 8
  store ptr %i.dbo, ptr %i.dbp, align 8, !tbaa !187
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbn, i64 24
  store i64 %spec.select.i.i.i.i.i1439, ptr %i.dbq, align 8, !tbaa !181
  %i.dbr = load i64, ptr %i.dbc, align 8, !tbaa !182
  %i.dbs = add i64 %i.dbr, %i.dbe
  store i64 %i.dbs, ptr %i.dbc, align 8, !tbaa !182
  %i.dbt = load ptr, ptr %i.dar, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i.i.i.i1443 = icmp eq ptr %i.dbt, null
  %..i.i.i.i.i1444 = select i1 %.not38.i.i.i.i.i1443, ptr %i.dam, ptr %i.dbt
  store ptr %i.dbn, ptr %..i.i.i.i.i1444, align 8, !tbaa !188
  store ptr %i.dbn, ptr %i.dar, align 8, !tbaa !178
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbn, i64 16
  store i64 8, ptr %i.dbu, align 8, !tbaa !179
  br label %bb.sx

tg3__arena_alloc.exit.i.i.i1433:                  ; preds = %bb.st
  %.phi.trans.insert.i.i.i.i1434 = getelementptr inbounds nuw i8, ptr %i.das, i64 8
  %.pre.i.i.i.i1435 = load ptr, ptr %.phi.trans.insert.i.i.i.i1434, align 8, !tbaa !187 ; 2 uses
  %i.dbv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i1435, i64 %i.dau
  store i64 %i.dav, ptr %i.dat, align 8, !tbaa !179
  %.not14.i.i.i1436 = icmp eq ptr %.pre.i.i.i.i1435, null
  br i1 %.not14.i.i.i1436, label %tg3__arena_str.exit.i1437, label %bb.sx

bb.sx:                                            ; preds = %tg3__arena_alloc.exit.i.i.i1433, %tg3__arena_alloc.exit.thread24.i.i.i1442
  %i.dbw = phi ptr [ %i.dbo, %tg3__arena_alloc.exit.thread24.i.i.i1442 ], [ %i.dbv, %tg3__arena_alloc.exit.i.i.i1433 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dbw, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.185, i64 range(i64 -2147483648, 4294967296) 6, i1 false)
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dbw, i64 6
  store i8 0, ptr %i.dbx, align 1, !tbaa !26
  br label %tg3__arena_str.exit.i1437

tg3__arena_str.exit.i1437:                        ; preds = %bb.sx, %tg3__arena_alloc.exit.i.i.i1433, %bb.sw, %bb.sv, %bb.su, %bb.sr, %bb.sq
  %.0.i.i156.i = phi ptr [ %i.dbw, %bb.sx ], [ null, %bb.sq ], [ null, %tg3__arena_alloc.exit.i.i.i1433 ], [ null, %bb.sr ], [ null, %bb.sw ], [ null, %bb.sv ], [ null, %bb.su ] ; 2 uses
  %.not.i157.i = icmp eq ptr %.0.i.i156.i, null
  %i.dby = select i1 %.not.i157.i, i32 0, i32 6
  store ptr %.0.i.i156.i, ptr %i.daj, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i1438 = getelementptr inbounds nuw i8, ptr %i.dai, i64 16
  store i32 %i.dby, ptr %.sroa.4.0..sroa_idx.i1438, align 8, !tbaa !36
  br label %bb.sy

bb.sy:                                            ; preds = %tg3__arena_str.exit.i1437, %bb.sp
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dai, i64 24
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef %.0.i151.i, ptr noundef %i.dbz)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dca = add nuw i64 %.0187.i, 1                ; 2 uses
  %exitcond194.not.i = icmp eq i64 %i.dca, %i.cyp
  br i1 %exitcond194.not.i, label %bb.sz, label %bb.sm, !llvm.loop !341

bb.sz:                                            ; preds = %bb.sy
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.cuh, i64 32
  store ptr %i.dac, ptr %i.dcb, align 8, !tbaa !342
  %i.dcc = trunc i64 %i.cyp to i32
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.cuh, i64 40
  store i32 %i.dcc, ptr %i.dcd, align 8, !tbaa !343
  br label %tg3__parse_animation.exit

tg3__parse_animation.exit:                        ; preds = %tg3__json_is_array.exit.thread.i, %tg3__json_is_array.exit128.i, %tg3json_array_size.exit132.i, %bb.sf, %bb.sg, %bb.sj, %bb.sk, %bb.sl, %tg3__arena_alloc.exit148.i, %bb.sz
  %i.dce = getelementptr inbounds nuw i8, ptr %i.cuh, i64 48
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.cuc, ptr noundef %i.dce)
  br label %bb.ta

bb.ta:                                            ; preds = %tg3__parse_animation.exit, %tg3__json_is_object.exit1422.thread
  %i.dcf = add nuw i64 %.06482393, 1              ; 2 uses
  %exitcond2590.not = icmp eq i64 %i.dcf, %i.csg
  br i1 %exitcond2590.not, label %bb.tb, label %bb.rg, !llvm.loop !344

bb.tb:                                            ; preds = %bb.ta
  %i.dcg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ctv, ptr %i.dcg, align 8, !tbaa !345
  %i.dch = trunc i64 %i.csg to i32
  %i.dci = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.dch, ptr %i.dci, align 8, !tbaa !346
  br label %tg3__json_is_array.exit1395.thread

tg3__json_is_array.exit1395.thread:               ; preds = %bb.qy, %bb.rf, %bb.rd, %bb.re, %bb.qz, %bb.ra, %.critedge898, %.preheader.i.i1387, %tg3json_object_get.exit1393, %tg3json_array_size.exit1399, %bb.tb, %tg3__arena_alloc.exit1415, %tg3__json_is_array.exit1395
  %i.dcj = load ptr, ptr %i.bk, align 8, !tbaa !174 ; 2 uses
  %.not826 = icmp eq ptr %i.dcj, null
  br i1 %.not826, label %.critedge900, label %bb.tc

bb.tc:                                            ; preds = %tg3__json_is_array.exit1395.thread
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dcj, i64 80
  %i.dcl = load ptr, ptr %i.dck, align 8, !tbaa !347
  %.not827 = icmp eq ptr %i.dcl, null
  br i1 %.not827, label %.critedge900, label %.preheader2201.a

.preheader2201.a:                                 ; preds = %bb.tc
  %i.dcm = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dcn = load i32, ptr %i.dcm, align 8, !tbaa !346
  %.not8292395.not = icmp eq i32 %i.dcn, 0
  br i1 %.not8292395.not, label %.critedge900, label %.lr.ph2397

.lr.ph2397:                                       ; preds = %.preheader2201.a
  %i.dco = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.te

bb.td:                                            ; preds = %bb.te
  %indvars.iv.next2592 = add nuw nsw i64 %indvars.iv2591, 1 ; 2 uses
  %i.dcp = load i32, ptr %i.dcm, align 8, !tbaa !346
  %i.dcq = zext i32 %i.dcp to i64
  %.not829 = icmp samesign ult i64 %indvars.iv.next2592, %i.dcq
  br i1 %.not829, label %bb.te, label %.critedge900, !llvm.loop !348

bb.te:                                            ; preds = %.lr.ph2397, %bb.td
  %indvars.iv2591 = phi i64 [ 0, %.lr.ph2397 ], [ %indvars.iv.next2592, %bb.td ] ; 3 uses
  %i.dcr = load ptr, ptr %i.bk, align 8, !tbaa !174 ; 2 uses
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcr, i64 80
  %i.dct = load ptr, ptr %i.dcs, align 8, !tbaa !347
  %i.dcu = load ptr, ptr %i.dco, align 8, !tbaa !345
  %i.dcv = getelementptr inbounds nuw [104 x i8], ptr %i.dcu, i64 %indvars.iv2591
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcr, i64 120
  %i.dcx = load ptr, ptr %i.dcw, align 8, !tbaa !177
  %i.dcy = trunc nuw i64 %indvars.iv2591 to i32
  %i.dcz = call i32 %i.dct(ptr noundef %i.dcv, i32 noundef %i.dcy, ptr noundef %i.dcx) #28
  %.not828 = icmp eq i32 %i.dcz, 1
  br i1 %.not828, label %.critedge908, label %bb.td

.critedge900:                                     ; preds = %bb.td, %.preheader2201.a, %tg3__json_is_array.exit1395.thread, %bb.tc
  %i.dda = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i1471 = icmp eq i32 %i.dda, 6
  br i1 %.not18.i.i1471, label %.preheader.i.i1473, label %tg3__json_is_array.exit1481.thread

.preheader.i.i1473:                               ; preds = %.critedge900
  %i.ddb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ddc = load i64, ptr %i.ddb, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i1474 = icmp eq i64 %i.ddc, 0
  br i1 %.not23.i.i1474, label %tg3__json_is_array.exit1481.thread, label %.lr.ph.i.i1475

.lr.ph.i.i1475:                                   ; preds = %.preheader.i.i1473
  %i.ddd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dde = load ptr, ptr %i.ddd, align 8, !tbaa !26
  br label %bb.tf

bb.tf:                                            ; preds = %bb.th, %.lr.ph.i.i1475
  %.01422.i.i1476 = phi i64 [ 0, %.lr.ph.i.i1475 ], [ %i.ddt, %bb.th ] ; 2 uses
  %i.ddf = getelementptr inbounds nuw [24 x i8], ptr %i.dde, i64 %.01422.i.i1476 ; 3 uses
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.ddf, i64 8
  %i.ddh = load i64, ptr %i.ddg, align 8, !tbaa !43
  %i.ddi = icmp eq i64 %i.ddh, 7
  br i1 %i.ddi, label %bb.tg, label %bb.th

bb.tg:                                            ; preds = %bb.tf
  %i.ddj = load ptr, ptr %i.ddf, align 8, !tbaa !40 ; 2 uses
  %i.ddk = load i32, ptr %i.ddj, align 1
  %i.ddl = xor i32 %i.ddk, 1701667171
  %i.ddm = getelementptr i8, ptr %i.ddj, i64 3
  %i.ddn = load i32, ptr %i.ddm, align 1
  %i.ddo = xor i32 %i.ddn, 1935766117
  %i.ddp = or i32 %i.ddl, %i.ddo
  %i.ddq = icmp ne i32 %i.ddp, 0
  %i.ddr = zext i1 %i.ddq to i32
  %i.dds = icmp eq i32 %i.ddr, 0
  br i1 %i.dds, label %tg3json_object_get.exit1479, label %bb.th

bb.th:                                            ; preds = %bb.tg, %bb.tf
  %i.ddt = add nuw i64 %.01422.i.i1476, 1         ; 2 uses
  %exitcond.not.i.i1477 = icmp eq i64 %i.ddt, %i.ddc
  br i1 %exitcond.not.i.i1477, label %tg3__json_is_array.exit1481.thread, label %bb.tf, !llvm.loop !59

tg3json_object_get.exit1479:                      ; preds = %bb.tg
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddf, i64 16
  %i.ddv = load ptr, ptr %i.ddu, align 8, !tbaa !44 ; 5 uses
  %.not.i1480 = icmp eq ptr %i.ddv, null
  br i1 %.not.i1480, label %tg3__json_is_array.exit1481.thread, label %tg3__json_is_array.exit1481

tg3__json_is_array.exit1481:                      ; preds = %tg3json_object_get.exit1479
  %i.ddw = load i32, ptr %i.ddv, align 8, !tbaa !28
  %.not2174 = icmp eq i32 %i.ddw, 5
  br i1 %.not2174, label %tg3json_array_size.exit1485, label %tg3__json_is_array.exit1481.thread

tg3json_array_size.exit1485:                      ; preds = %tg3__json_is_array.exit1481
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddv, i64 16 ; 2 uses
  %i.ddy = load i64, ptr %i.ddx, align 8, !tbaa !26 ; 4 uses
  %.not831 = icmp eq i64 %i.ddy, 0
  br i1 %.not831, label %tg3__json_is_array.exit1481.thread, label %bb.ti

bb.ti:                                            ; preds = %tg3json_array_size.exit1485
  %i.ddz = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.dea = mul i64 %i.ddy, 264                    ; 6 uses
  %i.deb = icmp eq ptr %i.ddz, null
  %i.dec = icmp eq i64 %i.dea, 0
  %or.cond.i1486 = or i1 %i.dec, %i.deb
  br i1 %or.cond.i1486, label %tg3__json_is_array.exit1481.thread, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.ded = getelementptr inbounds nuw i8, ptr %i.ddz, i64 32
  %i.dee = load i64, ptr %i.ded, align 8, !tbaa !155 ; 3 uses
  %.not.i1487 = icmp ne i64 %i.dee, 0             ; 2 uses
  %i.def = icmp ugt i64 %i.dea, %i.dee
  %or.cond28.i1488 = and i1 %.not.i1487, %i.def
  br i1 %or.cond28.i1488, label %tg3__json_is_array.exit1481.thread, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.deg = getelementptr inbounds nuw i8, ptr %i.ddz, i64 8 ; 3 uses
  %i.deh = load ptr, ptr %i.deg, align 8, !tbaa !178 ; 5 uses
  %.not26.i1489 = icmp eq ptr %i.deh, null
  br i1 %.not26.i1489, label %bb.tm, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  %i.dei = getelementptr inbounds nuw i8, ptr %i.deh, i64 16
  %i.dej = load i64, ptr %i.dei, align 8, !tbaa !179 ; 3 uses
  %i.dek = add i64 %i.dej, %i.dea
  %i.del = getelementptr inbounds nuw i8, ptr %i.deh, i64 24
  %i.dem = load i64, ptr %i.del, align 8, !tbaa !181
  %i.den = icmp ugt i64 %i.dek, %i.dem
  br i1 %i.den, label %bb.tm, label %tg3__arena_alloc.exit1501

bb.tm:                                            ; preds = %bb.tl, %bb.tk
  %i.deo = getelementptr inbounds nuw i8, ptr %i.ddz, i64 40
  %i.dep = load i64, ptr %i.deo, align 8, !tbaa !151
  %spec.select.i.i1495 = call i64 @llvm.umax.i64(i64 %i.dep, i64 range(i64 0, -7) %i.dea) ; 3 uses
  %i.deq = icmp ugt i64 %spec.select.i.i1495, %i.dee
  %or.cond.i.i1496 = select i1 %.not.i1487, i1 %i.deq, i1 false
  br i1 %or.cond.i.i1496, label %tg3__json_is_array.exit1481.thread, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.der = getelementptr inbounds nuw i8, ptr %i.ddz, i64 16 ; 3 uses
  %i.des = load i64, ptr %i.der, align 8, !tbaa !182
  %i.det = add i64 %spec.select.i.i1495, 32       ; 3 uses
  %i.deu = add i64 %i.des, %i.det
  %i.dev = getelementptr inbounds nuw i8, ptr %i.ddz, i64 24
  %i.dew = load i64, ptr %i.dev, align 8, !tbaa !154
  %i.dex = icmp ugt i64 %i.deu, %i.dew
  br i1 %i.dex, label %tg3__json_is_array.exit1481.thread, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.dey = getelementptr inbounds nuw i8, ptr %i.ddz, i64 48
  %i.dez = load ptr, ptr %i.dey, align 8, !tbaa !183
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.ddz, i64 72
  %i.dfb = load ptr, ptr %i.dfa, align 8, !tbaa !184
  %i.dfc = call ptr %i.dez(i64 noundef %i.det, ptr noundef %i.dfb) #28, !inline_history !185 ; 8 uses
  %.not37.i.i1497 = icmp eq ptr %i.dfc, null
  br i1 %.not37.i.i1497, label %tg3__json_is_array.exit1481.thread, label %tg3__arena_alloc.exit1501.thread

tg3__arena_alloc.exit1501.thread:                 ; preds = %bb.to
  store ptr null, ptr %i.dfc, align 8, !tbaa !186
  %i.dfd = getelementptr inbounds nuw i8, ptr %i.dfc, i64 32 ; 2 uses
end_hunk_4
begin_hunk_5_@tg3_parse_glb:bb.a
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !26
  %.not48.i = icmp eq i8 %i.ad, 84
  br i1 %.not48.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !26
  %.not49.i = icmp eq i8 %i.af, 70
  br i1 %.not49.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.not.i55.i = icmp eq ptr %1, null
  br i1 %.not.i55.i, label %tg3__error_push.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !141 ; 3 uses
  %.not27.i56.i = icmp ult i32 %i.ah, %i.aj
  %.pre.i57.i = load ptr, ptr %1, align 8, !tbaa !87 ; 2 uses
  br i1 %.not27.i56.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not28.i58.i = icmp eq i32 %i.aj, 0
  %i.ak = shl i32 %i.aj, 1
  %spec.select.i59.i = select i1 %.not28.i58.i, i32 16, i32 %i.ak ; 2 uses
  %i.al = zext i32 %spec.select.i59.i to i64
  %i.am = shl nuw nsw i64 %i.al, 5
  %i.an = tail call ptr @realloc(ptr noundef %.pre.i57.i, i64 noundef %i.am) #29 ; 3 uses
  %.not29.i60.i = icmp eq ptr %i.an, null
  br i1 %.not29.i60.i, label %tg3__error_push.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.an, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i59.i, ptr %i.ai, align 4, !tbaa !141
  %.pre30.i61.i = load i32, ptr %i.ag, align 8, !tbaa !86
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ao = phi i32 [ %.pre30.i61.i, %bb.p ], [ %i.ah, %bb.n ] ; 2 uses
  %i.ap = phi ptr [ %i.an, %bb.p ], [ %.pre.i57.i, %bb.n ]
  %i.aq = add i32 %i.ao, 1
  store i32 %i.aq, ptr %i.ag, align 8, !tbaa !86
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ar ; 5 uses
  store i32 2, ptr %i.as, align 8, !tbaa !142
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 20, ptr %i.at, align 4, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @.str.279, ptr %i.au, align 8, !tbaa !145
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr null, ptr %i.av, align 8, !tbaa !146
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 -1, ptr %i.aw, align 8, !tbaa !147
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ax, align 8, !tbaa !83
  br label %tg3__error_push.exit

bb.r:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload81.i = load i32, ptr %i.ay, align 1
  %.not50.i = icmp eq i32 %.0.copyload81.i, 2
  br i1 %.not50.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @tg3__error_push(ptr noundef %1, i32 noundef 21, ptr noundef nonnull @.str.280, ptr noundef null, i64 noundef -1)
  br label %tg3__error_push.exit

bb.t:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload79.i = load i32, ptr %i.az, align 1 ; 2 uses
  %i.ba = zext i32 %.0.copyload79.i to i64
  %.not51.i = icmp eq i64 %3, %i.ba
  br i1 %.not51.i, label %tg3__error_push.exit70.preheader.i, label %bb.u

tg3__error_push.exit70.preheader.i:               ; preds = %bb.t
  %.not5283.i = icmp ult i32 %.0.copyload79.i, 20
  br i1 %.not5283.i, label %tg3__error_push.exit70._crit_edge.i.thread, label %.lr.ph.i

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @tg3__error_push(ptr noundef %1, i32 noundef 24, ptr noundef nonnull @.str.281, ptr noundef null, i64 noundef -1)
  br label %tg3__error_push.exit

.lr.ph.i:                                         ; preds = %tg3__error_push.exit70.preheader.i, %tg3__error_push.exit70.loopexit.i
  %i.bb = phi i64 [ %i.cd, %tg3__error_push.exit70.loopexit.i ], [ 20, %tg3__error_push.exit70.preheader.i ] ; 2 uses
  %.04184.i = phi i64 [ %i.cc, %tg3__error_push.exit70.loopexit.i ], [ 12, %tg3__error_push.exit70.preheader.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.04184.i ; 2 uses
  %.0.copyload75.i = load i32, ptr %i.bc, align 1
  %i.bd = zext i32 %.0.copyload75.i to i64        ; 2 uses
  %i.be = add nuw nsw i64 %i.bb, %i.bd            ; 4 uses
  %.not54.i = icmp ugt i64 %i.be, %3
  br i1 %.not54.i, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.lr.ph.i
  %.not.i63.i = icmp eq ptr %1, null
  br i1 %.not.i63.i, label %tg3__error_push.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !86 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !141 ; 3 uses
  %.not27.i64.i = icmp ult i32 %i.bg, %i.bi
  %.pre.i65.i = load ptr, ptr %1, align 8, !tbaa !87 ; 2 uses
  br i1 %.not27.i64.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not28.i66.i = icmp eq i32 %i.bi, 0
  %i.bj = shl i32 %i.bi, 1
  %spec.select.i67.i = select i1 %.not28.i66.i, i32 16, i32 %i.bj ; 2 uses
  %i.bk = zext i32 %spec.select.i67.i to i64
  %i.bl = shl nuw nsw i64 %i.bk, 5
  %i.bm = tail call ptr @realloc(ptr noundef %.pre.i65.i, i64 noundef %i.bl) #29 ; 3 uses
  %.not29.i68.i = icmp eq ptr %i.bm, null
  br i1 %.not29.i68.i, label %tg3__error_push.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.bm, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i67.i, ptr %i.bh, align 4, !tbaa !141
  %.pre30.i69.i = load i32, ptr %i.bf, align 8, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.bn = phi i32 [ %.pre30.i69.i, %bb.y ], [ %i.bg, %bb.w ] ; 2 uses
  %i.bo = phi ptr [ %i.bm, %bb.y ], [ %.pre.i65.i, %bb.w ]
  %i.bp = add i32 %i.bn, 1
  store i32 %i.bp, ptr %i.bf, align 8, !tbaa !86
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bq ; 5 uses
  store i32 2, ptr %i.br, align 8, !tbaa !142
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 23, ptr %i.bs, align 4, !tbaa !144
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @.str.282, ptr %i.bt, align 8, !tbaa !145
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr null, ptr %i.bu, align 8, !tbaa !146
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 -1, ptr %i.bv, align 8, !tbaa !147
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.bw, align 8, !tbaa !83
  br label %tg3__error_push.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.bx = getelementptr i8, ptr %i.bc, i64 4
  %.0.copyload.i = load i32, ptr %i.bx, align 1
  switch i32 %.0.copyload.i, label %tg3__error_push.exit70.loopexit.i [
    i32 1313821514, label %tg3__error_push.exit70.loopexit.sink.split.i
    i32 5130562, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %tg3__error_push.exit70.loopexit.sink.split.i

tg3__error_push.exit70.loopexit.sink.split.i:     ; preds = %bb.ab, %bb.aa
  %.sink98.i = phi ptr [ %i.c, %bb.ab ], [ %i.a, %bb.aa ]
  %.sink.i = phi ptr [ %i.d, %bb.ab ], [ %i.b, %bb.aa ]
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  store ptr %i.by, ptr %.sink98.i, align 8, !tbaa !10
  store i64 %i.bd, ptr %.sink.i, align 8, !tbaa !19
  br label %tg3__error_push.exit70.loopexit.i

tg3__error_push.exit70.loopexit.i:                ; preds = %tg3__error_push.exit70.loopexit.sink.split.i, %bb.aa
  %i.bz = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %i.be)
  %i.ca = sub nsw i64 0, %i.be
  %i.cb = and i64 %i.ca, 3
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.cb)
  %i.cc = add nuw nsw i64 %i.be, %umin.i          ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 8                ; 2 uses
  %.not52.i = icmp ugt i64 %i.cd, %3
  br i1 %.not52.i, label %tg3__error_push.exit70._crit_edge.i, label %.lr.ph.i, !llvm.loop !440

tg3__error_push.exit70._crit_edge.i:              ; preds = %tg3__error_push.exit70.loopexit.i
  %.0..0..0.66.pre = load ptr, ptr %i.a, align 8, !tbaa !10 ; 3 uses
  %.not53.i = icmp eq ptr %.0..0..0.66.pre, null
  br i1 %.not53.i, label %tg3__error_push.exit70._crit_edge.i.thread, label %tg3__parse_glb_header.exit

tg3__error_push.exit70._crit_edge.i.thread:       ; preds = %tg3__error_push.exit70.preheader.i, %tg3__error_push.exit70._crit_edge.i
  tail call fastcc void @tg3__error_push(ptr noundef %1, i32 noundef 23, ptr noundef nonnull @.str.283, ptr noundef null, i64 noundef -1)
  br label %tg3__error_push.exit

tg3__parse_glb_header.exit:                       ; preds = %tg3__error_push.exit70._crit_edge.i
  %.not36 = icmp eq ptr %6, null
  br i1 %.not36, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %tg3__parse_glb_header.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.0.sroa.gep58, i8 0, i64 208, i1 false)
  store i32 1, ptr %7, align 8, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ce, align 4, !tbaa !96
  store i64 1073741824, ptr %.0.sroa.gep28, align 8, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 262144, ptr %i.cf, align 8, !tbaa !98
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i64 0, ptr %i.cg, align 8, !tbaa !99
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 1, ptr %i.ch, align 8, !tbaa !100
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %tg3__parse_glb_header.exit
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep28, %bb.ac ] ; 6 uses
  %.0.sroa.phi56 = phi ptr [ %.0.sroa.gep57.a, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep58, %bb.ac ]
  %.0.sroa.phi59 = phi ptr [ %.0.sroa.gep60.a, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep61, %bb.ac ]
  %.0 = phi ptr [ %6, %tg3__parse_glb_header.exit ], [ %7, %bb.ac ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !139 ; 2 uses
  %.not33.i = icmp eq ptr %i.cj, null
  br i1 %.not33.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 32
  %11 = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !55
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 48
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !55
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.ae ], [ null, %bb.ad ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.cj, %bb.ae ], [ @tg3__default_alloc, %bb.ad ] ; 2 uses
  %12 = phi <2 x ptr> [ %11, %bb.ae ], [ <ptr @tg3__default_realloc, ptr @tg3__default_free>, %bb.ad ]
  %i.ck = tail call ptr %.sroa.0.0.i(i64 noundef 80, ptr noundef %.sroa.8.0.i) #28, !inline_history !140 ; 10 uses
  %.not34.i = icmp eq ptr %i.ck, null
  br i1 %.not34.i, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %.not.i42 = icmp eq ptr %1, null
  br i1 %.not.i42, label %tg3__error_push.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !86 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !141 ; 3 uses
  %.not27.i.a = icmp ult i32 %i.cm, %i.co
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !87  ; 2 uses
  br i1 %.not27.i.a, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not28.i.a = icmp eq i32 %i.co, 0
  %i.cp = shl i32 %i.co, 1
  %spec.select.i43 = select i1 %.not28.i.a, i32 16, i32 %i.cp ; 2 uses
  %i.cq = zext i32 %spec.select.i43 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 5
  %i.cs = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.cr) #29 ; 3 uses
  %.not29.i = icmp eq ptr %i.cs, null
  br i1 %.not29.i, label %tg3__error_push.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.cs, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i43, ptr %i.cn, align 4, !tbaa !141
  %.pre30.i = load i32, ptr %i.cl, align 8, !tbaa !86
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.ct = phi i32 [ %.pre30.i, %bb.aj ], [ %i.cm, %bb.ah ] ; 2 uses
  %i.cu = phi ptr [ %i.cs, %bb.aj ], [ %.pre.i, %bb.ah ]
  %i.cv = add i32 %i.ct, 1
  store i32 %i.cv, ptr %i.cl, align 8, !tbaa !86
  %i.cw = zext i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cw ; 5 uses
  store i32 2, ptr %i.cx, align 8, !tbaa !142
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 50, ptr %i.cy, align 4, !tbaa !144
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr @.str.2, ptr %i.cz, align 8, !tbaa !145
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr null, ptr %i.da, align 8, !tbaa !146
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 -1, ptr %i.db, align 8, !tbaa !147
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.dc, align 8, !tbaa !83
  br label %tg3__error_push.exit

bb.al:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.ck, i8 0, i64 48, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store ptr %.sroa.0.0.i, ptr %i.dd, align 8, !tbaa !55
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store <2 x ptr> %12, ptr %.sroa.6.0..sroa_idx8.i, align 8, !tbaa !55
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  store ptr %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx12.i, align 8, !tbaa !55
  %i.de = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !148 ; 2 uses
  %.not35.i = icmp eq i32 %i.df, 0
  %narrow.i = select i1 %.not35.i, i32 262144, i32 %i.df
  %spec.select.i = zext i32 %narrow.i to i64
  %i.dg = load i64, ptr %.0.sroa.phi, align 8, !tbaa !149 ; 3 uses
  %.not36.i = icmp eq i64 %i.dg, 0
  %spec.select38.i = select i1 %.not36.i, i64 1073741824, i64 %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !150
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store i64 %spec.select.i, ptr %i.dj, align 8, !tbaa !151
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %spec.select38.i, ptr %i.dk, align 8, !tbaa !154
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %i.di, ptr %i.dl, align 8, !tbaa !155
  store ptr %i.ck, ptr %0, align 8, !tbaa !156
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.dn, align 8
  store i64 512, ptr %10, align 8, !tbaa !17
  store i64 %i.dg, ptr %i.dm, align 8, !tbaa !157
  %i.do = load i64, ptr %.0.sroa.phi56, align 8, !tbaa !158
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !159
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 67108864, ptr %i.dq, align 8, !tbaa !20
  %i.dr = load i32, ptr %.0.sroa.phi59, align 4, !tbaa !160
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !21
  %.0..0..0.63 = load i64, ptr %i.b, align 8, !tbaa !19
  %i.dt = call i32 @tg3json_parse_n_opts(ptr noundef nonnull %.0..0..0.66.pre, i64 noundef %.0..0..0.63, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  %i.du = icmp eq i32 %i.dt, 0                    ; 2 uses
  %i.dv = load i32, ptr %9, align 8
  %i.dw = icmp ne i32 %i.dv, 6
  %or.cond = select i1 %i.du, i1 true, i1 %i.dw
  br i1 %or.cond, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.dx = load ptr, ptr %i.e, align 8, !tbaa !10  ; 2 uses
  %.not38 = icmp eq ptr %i.dx, null
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %.0..0..0.66.pre to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = select i1 %.not38, i64 -1, i64 %i.ea
  %.not.i44 = icmp eq ptr %1, null
  br i1 %.not.i44, label %tg3__error_push.exit51, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !86 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !141 ; 3 uses
  %.not27.i45 = icmp ult i32 %i.ed, %i.ef
  %.pre.i46 = load ptr, ptr %1, align 8, !tbaa !87 ; 2 uses
  br i1 %.not27.i45, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not28.i47 = icmp eq i32 %i.ef, 0
  %i.eg = shl i32 %i.ef, 1
  %spec.select.i48 = select i1 %.not28.i47, i32 16, i32 %i.eg ; 2 uses
  %i.eh = zext i32 %spec.select.i48 to i64
  %i.ei = shl nuw nsw i64 %i.eh, 5
  %i.ej = call ptr @realloc(ptr noundef %.pre.i46, i64 noundef %i.ei) #29 ; 3 uses
  %.not29.i49 = icmp eq ptr %i.ej, null
  br i1 %.not29.i49, label %tg3__error_push.exit51, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.ej, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i48, ptr %i.ee, align 4, !tbaa !141
  %.pre30.i50 = load i32, ptr %i.ec, align 8, !tbaa !86
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.ek = phi i32 [ %.pre30.i50, %bb.ap ], [ %i.ed, %bb.an ] ; 2 uses
  %i.el = phi ptr [ %i.ej, %bb.ap ], [ %.pre.i46, %bb.an ]
  %i.em = add i32 %i.ek, 1
  store i32 %i.em, ptr %i.ec, align 8, !tbaa !86
  %i.en = zext i32 %i.ek to i64
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %i.en ; 5 uses
  store i32 2, ptr %i.eo, align 8, !tbaa !142
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 10, ptr %i.ep, align 4, !tbaa !144
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr @.str.4, ptr %i.eq, align 8, !tbaa !145
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr null, ptr %i.er, align 8, !tbaa !146
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %i.eb, ptr %i.es, align 8, !tbaa !147
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.et, align 8, !tbaa !83
  br label %tg3__error_push.exit51

tg3__error_push.exit51:                           ; preds = %bb.am, %bb.ao, %bb.aq
  br i1 %i.du, label %tg3__error_push.exit, label %bb.ar

bb.ar:                                            ; preds = %tg3__error_push.exit51
  call void @tg3json_value_free(ptr noundef nonnull %9)
  br label %tg3__error_push.exit

bb.as:                                            ; preds = %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i8 0, i64 32, i1 false)
  store ptr %i.ck, ptr %8, align 8, !tbaa !161
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ev, align 8, !tbaa !164
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ew, ptr noundef nonnull align 8 dereferenceable(232) %.0, i64 232, i1 false), !tbaa.struct !165
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 248
  store ptr %4, ptr %i.ex, align 8, !tbaa !167
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i32 %5, ptr %i.ey, align 8, !tbaa !168
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 280
  store i32 1, ptr %i.ez, align 8, !tbaa !192
  %.0..0..0.62 = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 264
  store ptr %.0..0..0.62, ptr %i.fa, align 8, !tbaa !194
  %.0..0..0. = load i64, ptr %i.d, align 8, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 272
  store i64 %.0..0..0., ptr %i.fb, align 8, !tbaa !195
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !169
  %.not.i52 = icmp eq ptr %i.fe, null
  br i1 %.not.i52, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr @tg3__fs_read_file, ptr %i.fd, align 8, !tbaa !169
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !170
  %.not8.i = icmp eq ptr %i.fg, null
  br i1 %.not8.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store ptr @tg3__fs_free_file, ptr %i.ff, align 8, !tbaa !170
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !171
  %.not9.i = icmp eq ptr %i.fh, null
  br i1 %.not9.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr @tg3__fs_file_exists, ptr %i.fc, align 8, !tbaa !171
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !172
  %.not10.i = icmp eq ptr %i.fj, null
  br i1 %.not10.i, label %bb.az, label %tg3__set_default_fs.exit

bb.az:                                            ; preds = %bb.ay
  store ptr @tg3__fs_write_file, ptr %i.fi, align 8, !tbaa !172
  br label %tg3__set_default_fs.exit

tg3__set_default_fs.exit:                         ; preds = %bb.ay, %bb.az
  %i.fk = call fastcc i32 @tg3__parse_from_json(ptr noundef %8, ptr noundef %9, ptr noundef %0)
  call void @tg3json_value_free(ptr noundef nonnull %9)
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.x, %bb.z, %bb.q, %bb.o, %bb.m, %bb.f, %bb.d, %tg3__error_push.exit70._crit_edge.i.thread, %bb.v, %bb.u, %bb.s, %bb.h, %bb.ak, %bb.ai, %bb.ag, %tg3__error_push.exit51, %bb.ar, %bb.b, %bb.a, %tg3__set_default_fs.exit
  %.027 = phi i32 [ 22, %bb.b ], [ 50, %bb.ak ], [ %i.fk, %tg3__set_default_fs.exit ], [ 10, %tg3__error_push.exit51 ], [ 22, %bb.a ], [ 10, %bb.ar ], [ 50, %bb.ag ], [ 50, %bb.ai ], [ 23, %bb.x ], [ 23, %bb.z ], [ 20, %bb.q ], [ 20, %bb.o ], [ 20, %bb.m ], [ 22, %bb.f ], [ 22, %bb.d ], [ 23, %tg3__error_push.exit70._crit_edge.i.thread ], [ 23, %bb.v ], [ 24, %bb.u ], [ 21, %bb.s ], [ 22, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 71) i32 @tg3_parse_auto(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(472) %0, i8 0, i64 472, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.c, align 4, !tbaa !118
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %3, 3
end_hunk_5
begin_hunk_6_@tg3__parse_string_array:bb.a
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c, !llvm.loop !59

tg3__json_get.exit:                               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 6 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %tg3__json_is_array.exit

tg3__json_get.exit.thread:                        ; preds = %bb.e, %.preheader.i.i.i, %bb.b, %bb.a, %tg3__json_get.exit
  store ptr null, ptr %3, align 8, !tbaa !561
  br label %tg3__arena_alloc.exit.thread.sink.split

tg3__json_is_array.exit:                          ; preds = %tg3__json_get.exit
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28
  %.not8 = icmp eq i32 %i.p, 5
  br i1 %.not8, label %tg3json_array_size.exit, label %tg3__arena_alloc.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26   ; 7 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %tg3json_array_size.exit.thread, label %bb.f

tg3json_array_size.exit.thread:                   ; preds = %tg3json_array_size.exit
  store ptr null, ptr %3, align 8, !tbaa !561
  br label %tg3__arena_alloc.exit.thread.sink.split

bb.f:                                             ; preds = %tg3json_array_size.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !161    ; 9 uses
  %i.u = shl i64 %i.r, 4                          ; 6 uses
  %i.v = icmp eq ptr %i.t, null
  %i.w = icmp eq i64 %i.u, 0
  %or.cond.i = or i1 %i.w, %i.v
  br i1 %or.cond.i, label %tg3__arena_alloc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !155  ; 3 uses
  %.not.i48 = icmp ne i64 %i.y, 0                 ; 2 uses
  %i.z = icmp ugt i64 %i.u, %i.y
  %or.cond28.i = and i1 %.not.i48, %i.z
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !178 ; 5 uses
  %.not26.i = icmp eq ptr %i.ab, null
  br i1 %.not26.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !179 ; 3 uses
  %i.ae = add i64 %i.ad, %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !181
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %tg3__arena_alloc.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !151
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 range(i64 0, -7) %i.u) ; 3 uses
  %i.ak = icmp ugt i64 %spec.select.i.i, %i.y
  %or.cond.i.i = select i1 %.not.i48, i1 %i.ak, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !182
  %i.an = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.ao = add i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !154
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %tg3__arena_alloc.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !184
  %i.aw = tail call ptr %i.at(i64 noundef %i.an, ptr noundef %i.av) #28, !inline_history !185 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.aw, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread26

tg3__arena_alloc.exit.thread26:                   ; preds = %bb.l
  store ptr null, ptr %i.aw, align 8, !tbaa !186
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !187
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %spec.select.i.i, ptr %i.az, align 8, !tbaa !181
  %i.ba = load i64, ptr %i.al, align 8, !tbaa !182
  %i.bb = add i64 %i.ba, %i.an
  store i64 %i.bb, ptr %i.al, align 8, !tbaa !182
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.bc, null
  %..i.i = select i1 %.not38.i.i, ptr %i.t, ptr %i.bc
  store ptr %i.aw, ptr %..i.i, align 8, !tbaa !188
  store ptr %i.aw, ptr %i.aa, align 8, !tbaa !178
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.u, ptr %i.bd, align 8, !tbaa !179
  br label %.preheader

tg3__arena_alloc.exit:                            ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !187 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ad
  %i.bg = add i64 %i.ad, %i.u
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !179
  %.not44 = icmp eq ptr %.pre.i, null
  br i1 %.not44, label %tg3__arena_alloc.exit.thread, label %.preheader

.preheader:                                       ; preds = %tg3__arena_alloc.exit.thread26, %tg3__arena_alloc.exit
  %i.bh = phi ptr [ %i.ax, %tg3__arena_alloc.exit.thread26 ], [ %i.bf, %tg3__arena_alloc.exit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bj = load i32, ptr %i.o, align 8, !tbaa !28
  %i.bk = icmp eq i32 %i.bj, 5
  br i1 %i.bk, label %.preheader.split, label %tg3json_array_get.exit.thread.us.preheader

tg3json_array_get.exit.thread.us.preheader:       ; preds = %.preheader
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.bl = icmp ult i64 %i.r, 4
  br i1 %i.bl, label %tg3json_array_get.exit.thread.us.epil.preheader, label %tg3json_array_get.exit.thread.us.preheader.new

tg3json_array_get.exit.thread.us.preheader.new:   ; preds = %tg3json_array_get.exit.thread.us.preheader
  %unroll_iter = and i64 %i.r, -4
  br label %tg3json_array_get.exit.thread.us

tg3json_array_get.exit.thread.us:                 ; preds = %tg3json_array_get.exit.thread.us, %tg3json_array_get.exit.thread.us.preheader.new
  %.03810.us = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader.new ], [ %i.bx, %tg3json_array_get.exit.thread.us ] ; 5 uses
  %niter = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader.new ], [ %niter.next.3, %tg3json_array_get.exit.thread.us ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !229
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 0, ptr %i.bn, align 8, !tbaa !230
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr null, ptr %i.bp, align 8, !tbaa !229
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 0, ptr %i.bq, align 8, !tbaa !230
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !229
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !230
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store ptr null, ptr %i.bv, align 8, !tbaa !229
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i32 0, ptr %i.bw, align 8, !tbaa !230
  %i.bx = add nuw i64 %.03810.us, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split.us.loopexit3.unr-lcssa, label %tg3json_array_get.exit.thread.us, !llvm.loop !562

.preheader.splitthread-pre-split:                 ; preds = %bb.p
  %.pr = load i32, ptr %i.o, align 8, !tbaa !28
  br label %.preheader.split

.preheader.split:                                 ; preds = %.preheader, %.preheader.splitthread-pre-split
  %i.by = phi i32 [ %.pr, %.preheader.splitthread-pre-split ], [ 5, %.preheader ]
  %.03810 = phi i64 [ %i.cp, %.preheader.splitthread-pre-split ], [ 0, %.preheader ] ; 6 uses
  %.not8.i = icmp eq i32 %i.by, 5
  br i1 %.not8.i, label %bb.m, label %tg3json_array_get.exit.thread

bb.m:                                             ; preds = %.preheader.split
  %i.bz = load i64, ptr %i.q, align 8, !tbaa !26
  %.not9.i = icmp ult i64 %.03810, %i.bz
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3json_array_get.exit.thread

tg3json_array_get.exit:                           ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !26 ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.03810 ; 3 uses
  %.not45 = icmp eq ptr %i.ca, null
  br i1 %.not45, label %tg3json_array_get.exit.thread, label %bb.n

bb.n:                                             ; preds = %tg3json_array_get.exit
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !28
  %.not46 = icmp eq i32 %i.cc, 4
  br i1 %.not46, label %bb.o, label %tg3json_array_get.exit.thread

tg3json_array_get.exit.thread:                    ; preds = %.preheader.split, %bb.m, %bb.n, %tg3json_array_get.exit
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810
  store ptr null, ptr %i.cd, align 8, !tbaa !229
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810
  %i.cf = load ptr, ptr %0, align 8, !tbaa !161
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !26
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = tail call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.cf, ptr noundef %i.ch, i32 noundef %i.ck) ; 2 uses
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  %i.cn = extractvalue { ptr, i32 } %i.cl, 1
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %tg3json_array_get.exit.thread
  %.sink = phi i32 [ %i.cn, %bb.o ], [ 0, %tg3json_array_get.exit.thread ]
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %i.cp = add nuw i64 %.03810, 1                  ; 2 uses
  %exitcond14.not = icmp eq i64 %i.cp, %i.r
  br i1 %exitcond14.not, label %.split.us, label %.preheader.splitthread-pre-split, !llvm.loop !563

.split.us.loopexit3.unr-lcssa:                    ; preds = %tg3json_array_get.exit.thread.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %tg3json_array_get.exit.thread.us.epil.preheader

tg3json_array_get.exit.thread.us.epil.preheader:  ; preds = %.split.us.loopexit3.unr-lcssa, %tg3json_array_get.exit.thread.us.preheader
  %.03810.us.epil.init = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader ], [ %i.bx, %.split.us.loopexit3.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %tg3json_array_get.exit.thread.us.epil

tg3json_array_get.exit.thread.us.epil:            ; preds = %tg3json_array_get.exit.thread.us.epil, %tg3json_array_get.exit.thread.us.epil.preheader
  %.03810.us.epil = phi i64 [ %i.cs, %tg3json_array_get.exit.thread.us.epil ], [ %.03810.us.epil.init, %tg3json_array_get.exit.thread.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %tg3json_array_get.exit.thread.us.epil ], [ 0, %tg3json_array_get.exit.thread.us.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us.epil ; 2 uses
  store ptr null, ptr %i.cq, align 8, !tbaa !229
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 0, ptr %i.cr, align 8, !tbaa !230
  %i.cs = add nuw i64 %.03810.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split.us, label %tg3json_array_get.exit.thread.us.epil, !llvm.loop !565

.split.us:                                        ; preds = %.split.us.loopexit3.unr-lcssa, %tg3json_array_get.exit.thread.us.epil, %bb.p
  store ptr %i.bh, ptr %3, align 8, !tbaa !561
  %i.ct = trunc i64 %i.r to i32
  br label %tg3__arena_alloc.exit.thread.sink.split

tg3__arena_alloc.exit.thread.sink.split:          ; preds = %tg3__json_get.exit.thread, %tg3json_array_size.exit.thread, %.split.us
  %.sink32 = phi i32 [ %i.ct, %.split.us ], [ 0, %tg3json_array_size.exit.thread ], [ 0, %tg3__json_get.exit.thread ]
  store i32 %.sink32, ptr %4, align 4, !tbaa !36
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %tg3__arena_alloc.exit.thread.sink.split, %bb.l, %bb.j, %bb.k, %bb.f, %bb.g, %tg3__arena_alloc.exit, %tg3__json_is_array.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_int(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !40
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !59

tg3__json_get.exit:                               ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.h

tg3__json_get.exit.thread:                        ; preds = %bb.f, %.preheader.i.i.i, %bb.c, %bb.b, %bb.a, %tg3__json_get.exit
  %.not20 = icmp eq i32 %4, 0
  br i1 %.not20, label %bb.n, label %bb.g

bb.g:                                             ; preds = %tg3__json_get.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.r = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.q, ptr noundef %i.r, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef %2)
  br label %bb.n

bb.h:                                             ; preds = %tg3__json_get.exit
  %i.s = load i32, ptr %i.o, align 8, !tbaa !28
  switch i32 %i.s, label %bb.i [
    i32 2, label %.thread.i
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  %i.v = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.u, ptr noundef %i.v, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.63, ptr noundef nonnull %2)
  br label %bb.n

.thread.i:                                        ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = add i64 %i.x, -2147483648
  %or.cond.i = icmp ult i64 %i.y, -4294967296
  br i1 %or.cond.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.z = trunc nsw i64 %i.x to i32
  br label %tg3__json_number_to_int32.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !26 ; 5 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp ueq double %i.ac, +inf
  %i.ae = fcmp olt double %i.ab, f0xC1E0000000000000
  %or.cond3.i = or i1 %i.ae, %i.ad
  %i.af = fcmp ogt double %i.ab, f0x41DFFFFFFFC00000
  %or.cond5.i = or i1 %i.af, %or.cond3.i
  br i1 %or.cond5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = fptosi double %i.ab to i32              ; 2 uses
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fcmp une double %i.ab, %i.ah
  br i1 %i.ai, label %bb.m, label %tg3__json_number_to_int32.exit

tg3__json_number_to_int32.exit:                   ; preds = %bb.j, %bb.l
  %.sink.i = phi i32 [ %i.z, %bb.j ], [ %i.ag, %bb.l ]
  store i32 %.sink.i, ptr %3, align 4, !tbaa !36
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %.thread.i, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !164
  %i.al = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.ak, ptr noundef %i.al, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.64, ptr noundef nonnull %2)
  br label %bb.n

bb.n:                                             ; preds = %tg3__json_number_to_int32.exit, %tg3__json_get.exit.thread, %bb.m, %bb.i, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tg3__error_pushf(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 %2, i32 noundef range(i32 2, 46) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ...) unnamed_addr #12 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %6 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tg3__error_push.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %6)
  %i.b = call noundef i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef readonly %5, ptr noundef nonnull %6) #28 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %6)
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %spec.store.select1 = call i32 @llvm.umin.i32(i32 %spec.store.select, i32 1023)
  %i.c = zext nneg i32 %spec.store.select1 to i64 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !155  ; 3 uses
  %.not.i.i = icmp ne i64 %i.e, 0
  %i.f = add i64 %i.e, -1
  %or.cond28.i.i = icmp ult i64 %i.f, %i.c
  br i1 %or.cond28.i.i, label %tg3__arena_strdup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %i.c, 1016
  %i.h = add nuw nsw i64 %i.g, 8                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
end_hunk_6
begin_hunk_7_@tg3__parse_extras_and_extensions:bb.a
  %6 = alloca %struct.tg3_value, align 8          ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_is_object.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i.i = icmp eq i32 %i.a, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_is_object.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.u, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.01422.i.i.i ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 1920235621
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = xor i32 %i.o, 29537
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %tg3__json_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.u, %i.c
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread.thread, label %bb.c, !llvm.loop !59

tg3__json_get.exit:                               ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 3 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %tg3__json_get.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %tg3__json_get.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.y = load i32, ptr %i.x, align 4, !tbaa !567
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %bb.g, label %tg3__arena_alloc.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !161    ; 9 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i = icmp ne i64 %i.ac, 0
  %i.ad = add i64 %i.ac, -1
  %or.cond28.i = icmp ult i64 %i.ad, 79
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !178 ; 5 uses
  %.not26.i = icmp eq ptr %i.af, null
  br i1 %.not26.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !179 ; 3 uses
  %i.ai = add i64 %i.ah, 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !181
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %tg3__arena_alloc.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !151
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 range(i64 0, -7) 80) ; 3 uses
  %i.ao = icmp ugt i64 %spec.select.i.i, %i.ac
  %or.cond.i.i = select i1 %.not.i, i1 %i.ao, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !182
  %i.ar = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.as = add i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !154
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %tg3__arena_alloc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !183
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !184
  %i.ba = tail call ptr %i.ax(i64 noundef %i.ar, ptr noundef %i.az) #28, !inline_history !185 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.ba, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread171

tg3__arena_alloc.exit.thread171:                  ; preds = %bb.m
  store ptr null, ptr %i.ba, align 8, !tbaa !186
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !187
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %spec.select.i.i, ptr %i.bd, align 8, !tbaa !181
  %i.be = load i64, ptr %i.ap, align 8, !tbaa !182
  %i.bf = add i64 %i.be, %i.ar
  store i64 %i.bf, ptr %i.ap, align 8, !tbaa !182
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.bg, null
  %..i.i = select i1 %.not38.i.i, ptr %i.z, ptr %i.bg
  store ptr %i.ba, ptr %..i.i, align 8, !tbaa !188
  store ptr %i.ba, ptr %i.ae, align 8, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 80, ptr %i.bh, align 8, !tbaa !179
  br label %bb.n

tg3__arena_alloc.exit:                            ; preds = %bb.j
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !187 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bj = add i64 %i.ah, 80
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !179
  %.not67 = icmp eq ptr %.pre.i, null
  br i1 %.not67, label %tg3__arena_alloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %tg3__arena_alloc.exit.thread171, %tg3__arena_alloc.exit
  %i.bk = phi ptr [ %i.bb, %tg3__arena_alloc.exit.thread171 ], [ %.pre.i, %tg3__arena_alloc.exit ]
  %i.bl = phi i64 [ 0, %tg3__arena_alloc.exit.thread171 ], [ %i.ah, %tg3__arena_alloc.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %0, ptr noundef nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !568
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store ptr %i.bm, ptr %2, align 8, !tbaa !572
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.m, %bb.k, %bb.l, %bb.g, %bb.h, %tg3__arena_alloc.exit, %bb.n, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !573
  %.not68 = icmp eq i32 %i.bo, 0
  br i1 %.not68, label %tg3__json_get.exit.thread.thread, label %bb.o

bb.o:                                             ; preds = %tg3__arena_alloc.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.bp = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %4, ptr noundef nonnull readonly %i.w, i32 noundef -1, i32 noundef 0)
  %.not12.i = icmp eq i32 %i.bp, 0
  %.phi.trans.insert.i77 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i78 = load ptr, ptr %.phi.trans.insert.i77, align 8, !tbaa !61 ; 3 uses
  br i1 %.not12.i, label %._crit_edge.i80, label %bb.p

._crit_edge.i80:                                  ; preds = %bb.o
  call void @free(ptr noundef %.pre.i78) #28
  br label %tg3json_stringify.exit.thread

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq ptr %.pre.i78, null
  br i1 %.not14.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bq = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  %.not15.i = icmp eq ptr %i.bq, null
  br i1 %.not15.i, label %tg3json_stringify.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.bq, align 1, !tbaa !26
  br label %bb.s

tg3json_stringify.exit.thread:                    ; preds = %._crit_edge.i80, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__json_get.exit.thread.thread

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.br = phi ptr [ %i.bq, %bb.r ], [ %.pre.i78, %bb.p ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = load ptr, ptr %0, align 8, !tbaa !161
  %i.bw = trunc i64 %i.bt to i32
  %i.bx = call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.bv, ptr noundef nonnull %i.br, i32 noundef %i.bw) ; 2 uses
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  %i.bz = extractvalue { ptr, i32 } %i.bx, 1
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !10
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.bz, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !36
  call void @free(ptr noundef nonnull %i.br) #28
  br label %tg3__json_get.exit.thread.thread

tg3__json_get.exit.thread.thread:                 ; preds = %bb.e, %tg3__json_get.exit, %tg3__arena_alloc.exit.thread, %tg3json_stringify.exit.thread, %bb.s, %.preheader.i.i.i
  %.pr = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i.i82 = icmp eq i32 %.pr, 6
  br i1 %.not18.i.i.i82, label %.preheader.i.i.i84, label %tg3__json_is_object.exit.thread

.preheader.i.i.i84:                               ; preds = %tg3__json_get.exit.thread.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i85 = icmp eq i64 %i.cb, 0
  br i1 %.not23.i.i.i85, label %tg3__json_is_object.exit.thread, label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %.preheader.i.i.i84
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.lr.ph.i.i.i86
  %.01422.i.i.i87 = phi i64 [ 0, %.lr.ph.i.i.i86 ], [ %i.ct, %bb.v ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.01422.i.i.i87 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !43
  %i.ch = icmp eq i64 %i.cg, 10
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !40 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 1
  %i.ck = xor i64 %i.cj, 8028074728750348389
  %i.cl = getelementptr i8, ptr %i.ci, i64 8
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i64
  %i.co = xor i64 %i.cn, 29550
  %i.cp = or i64 %i.ck, %i.co
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %tg3__json_get.exit90, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ct = add nuw i64 %.01422.i.i.i87, 1          ; 2 uses
  %exitcond.not.i.i.i88 = icmp eq i64 %i.ct, %i.cb
  br i1 %exitcond.not.i.i.i88, label %tg3__json_is_object.exit.thread, label %bb.t, !llvm.loop !59

tg3__json_get.exit90:                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44 ; 5 uses
  %.not.i91 = icmp eq ptr %i.cv, null
  br i1 %.not.i91, label %tg3__json_is_object.exit.thread, label %tg3__json_is_object.exit

tg3__json_is_object.exit:                         ; preds = %tg3__json_get.exit90
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !28
  %.not145 = icmp eq i32 %i.cw, 6
  br i1 %.not145, label %tg3json_object_size.exit, label %tg3__json_is_object.exit.thread

tg3json_object_size.exit:                         ; preds = %tg3__json_is_object.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26 ; 4 uses
  %.not71 = icmp eq i64 %i.cy, 0
  br i1 %.not71, label %tg3json_object_size.exit.thread, label %bb.w

bb.w:                                             ; preds = %tg3json_object_size.exit
  %i.cz = load ptr, ptr %0, align 8, !tbaa !161   ; 9 uses
  %i.da = mul i64 %i.cy, 96                       ; 6 uses
  %i.db = icmp eq ptr %i.cz, null
  %i.dc = icmp eq i64 %i.da, 0
  %or.cond.i = or i1 %i.dc, %i.db
  br i1 %or.cond.i, label %tg3json_object_size.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !155 ; 3 uses
  %.not.i94 = icmp ne i64 %i.de, 0                ; 2 uses
  %i.df = icmp ugt i64 %i.da, %i.de
  %or.cond28.i95 = and i1 %.not.i94, %i.df
  br i1 %or.cond28.i95, label %tg3json_object_size.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !178 ; 5 uses
  %.not26.i96 = icmp eq ptr %i.dh, null
  br i1 %.not26.i96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !179 ; 3 uses
  %i.dk = add i64 %i.dj, %i.da
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !181
  %i.dn = icmp ugt i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.aa, label %tg3__arena_alloc.exit108

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !151
  %spec.select.i.i102 = call i64 @llvm.umax.i64(i64 %i.dp, i64 range(i64 0, -7) %i.da) ; 3 uses
  %i.dq = icmp ugt i64 %spec.select.i.i102, %i.de
  %or.cond.i.i103 = select i1 %.not.i94, i1 %i.dq, i1 false
  br i1 %or.cond.i.i103, label %tg3json_object_size.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !182
  %i.dt = add i64 %spec.select.i.i102, 32         ; 3 uses
  %i.du = add i64 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !154
  %i.dx = icmp ugt i64 %i.du, %i.dw
  br i1 %i.dx, label %tg3json_object_size.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !183
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !184
  %i.ec = call ptr %i.dz(i64 noundef %i.dt, ptr noundef %i.eb) #28, !inline_history !185 ; 8 uses
  %.not37.i.i104 = icmp eq ptr %i.ec, null
  br i1 %.not37.i.i104, label %tg3json_object_size.exit.thread, label %tg3__arena_alloc.exit108.thread

tg3__arena_alloc.exit108.thread:                  ; preds = %bb.ac
  store ptr null, ptr %i.ec, align 8, !tbaa !186
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !187
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i64 %spec.select.i.i102, ptr %i.ef, align 8, !tbaa !181
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !182
  %i.eh = add i64 %i.eg, %i.dt
  store i64 %i.eh, ptr %i.dr, align 8, !tbaa !182
  %i.ei = load ptr, ptr %i.dg, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i106 = icmp eq ptr %i.ei, null
  %..i.i107 = select i1 %.not38.i.i106, ptr %i.cz, ptr %i.ei
  store ptr %i.ec, ptr %..i.i107, align 8, !tbaa !188
  store ptr %i.ec, ptr %i.dg, align 8, !tbaa !178
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %i.da, ptr %i.ej, align 8, !tbaa !179
  br label %.preheader

tg3__arena_alloc.exit108:                         ; preds = %bb.z
  %.phi.trans.insert.i98 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.pre.i99 = load ptr, ptr %.phi.trans.insert.i98, align 8, !tbaa !187 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.pre.i99, i64 %i.dj
  %i.em = add i64 %i.dj, %i.da
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !179
  %.not72 = icmp eq ptr %.pre.i99, null
  br i1 %.not72, label %tg3json_object_size.exit.thread, label %.preheader

.preheader:                                       ; preds = %tg3__arena_alloc.exit108.thread, %tg3__arena_alloc.exit108
  %i.en = phi ptr [ %i.ed, %tg3__arena_alloc.exit108.thread ], [ %i.el, %tg3__arena_alloc.exit108 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 220
  br label %tg3json_object_at.exit

tg3json_object_at.exit:                           ; preds = %.preheader, %bb.af
  %.0149 = phi i64 [ 0, %.preheader ], [ %i.fg, %bb.af ] ; 4 uses
  %i.eq = load i64, ptr %i.cx, align 8, !tbaa !26
  %.not9.i = icmp ult i64 %.0149, %i.eq
  call void @llvm.assume(i1 %.not9.i)
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !26
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %.0149 ; 3 uses
  %i.et = getelementptr inbounds nuw [96 x i8], ptr %i.en, i64 %.0149 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.et, i8 0, i64 96, i1 false)
  %i.eu = load ptr, ptr %0, align 8, !tbaa !161
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !43
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.eu, ptr noundef %i.ev, i32 noundef %i.ey) ; 2 uses
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  %i.fb = extractvalue { ptr, i32 } %i.ez, 1
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !10
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %i.fb, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !36
  %i.fc = load i32, ptr %i.ep, align 4, !tbaa !567
  %.not75 = icmp eq i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  br i1 %.not75, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %tg3json_object_at.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !44
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %0, ptr noundef %i.ff)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false), !tbaa.struct !568
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.af

bb.ae:                                            ; preds = %tg3json_object_at.exit
  store i32 0, ptr %i.fd, align 8, !tbaa !574
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fg = add nuw i64 %.0149, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.fg, %i.cy
  br i1 %exitcond.not, label %bb.ag, label %tg3json_object_at.exit, !llvm.loop !577

bb.ag:                                            ; preds = %bb.af
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.en, ptr %i.fh, align 8, !tbaa !578
  %i.fi = trunc i64 %i.cy to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !579
  br label %tg3json_object_size.exit.thread

tg3json_object_size.exit.thread:                  ; preds = %bb.ac, %bb.aa, %bb.ab, %bb.w, %bb.x, %tg3__arena_alloc.exit108, %bb.ag, %tg3json_object_size.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !573
  %.not73 = icmp eq i32 %i.fl, 0
  br i1 %.not73, label %tg3__json_is_object.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %tg3json_object_size.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.fm = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %3, ptr noundef nonnull readonly %i.cv, i32 noundef -1, i32 noundef 0)
  %.not12.i112 = icmp eq i32 %i.fm, 0
  %.phi.trans.insert.i113 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i114 = load ptr, ptr %.phi.trans.insert.i113, align 8, !tbaa !61 ; 3 uses
  br i1 %.not12.i112, label %._crit_edge.i120, label %bb.ai

._crit_edge.i120:                                 ; preds = %bb.ah
  call void @free(ptr noundef %.pre.i114) #28
  br label %tg3json_stringify.exit121.thread

bb.ai:                                            ; preds = %bb.ah
  %.not14.i115 = icmp eq ptr %.pre.i114, null
  br i1 %.not14.i115, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fn = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  %.not15.i119 = icmp eq ptr %i.fn, null
  br i1 %.not15.i119, label %tg3json_stringify.exit121.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.fn, align 1, !tbaa !26
  br label %bb.al

tg3json_stringify.exit121.thread:                 ; preds = %._crit_edge.i120, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %tg3__json_is_object.exit.thread

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.fo = phi ptr [ %i.fn, %bb.ak ], [ %.pre.i114, %bb.ai ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fs = load ptr, ptr %0, align 8, !tbaa !161
  %i.ft = trunc i64 %i.fq to i32
  %i.fu = call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.fs, ptr noundef nonnull %i.fo, i32 noundef %i.ft) ; 2 uses
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  %i.fw = extractvalue { ptr, i32 } %i.fu, 1
  store ptr %i.fv, ptr %i.fr, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.fw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  call void @free(ptr noundef nonnull %i.fo) #28
  br label %tg3__json_is_object.exit.thread

tg3__json_is_object.exit.thread:                  ; preds = %bb.v, %bb.b, %bb.a, %.preheader.i.i.i84, %tg3__json_get.exit.thread.thread, %tg3__json_get.exit90, %bb.al, %tg3json_stringify.exit121.thread, %tg3json_object_size.exit.thread, %tg3__json_is_object.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_string(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !40
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !59

tg3__json_get.exit:                               ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.i

tg3__json_get.exit.thread:                        ; preds = %bb.f, %.preheader.i.i.i, %bb.c, %bb.b, %bb.a, %tg3__json_get.exit
  %.not22 = icmp eq i32 %4, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %tg3__json_get.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.r = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.q, ptr noundef %i.r, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef %2)
  br label %bb.l

bb.h:                                             ; preds = %tg3__json_get.exit.thread
  store ptr null, ptr %3, align 8, !tbaa !229
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !230
  br label %bb.l

bb.i:                                             ; preds = %tg3__json_get.exit
  %i.t = load i32, ptr %i.o, align 8, !tbaa !28
  %.not23 = icmp eq i32 %i.t, 4
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !164
  %i.w = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.v, ptr noundef %i.w, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.62, ptr noundef nonnull %2)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !161
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.x, ptr noundef %i.z, i32 noundef %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %i.ae, ptr %3, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.af, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i32 } @tg3__arena_str(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 4 uses
  %.not.i = icmp eq ptr %1, null
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %.not.i
  br i1 %or.cond, label %tg3__arena_strdup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !155  ; 3 uses
  %.not.i.i = icmp ne i64 %i.d, 0
  %i.e = add i64 %i.d, -1
  %or.cond28.i.i = icmp ult i64 %i.e, %i.a
  br i1 %or.cond28.i.i, label %tg3__arena_strdup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.a, 4294967288
  %i.g = add nuw nsw i64 %i.f, 8                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178  ; 4 uses
  %.not26.i.i = icmp eq ptr %i.i, null
  br i1 %.not26.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !179  ; 2 uses
  %i.l = add i64 %i.k, %i.g                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !181
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %tg3__arena_alloc.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !151
  %spec.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 range(i64 0, -7) %i.g) ; 3 uses
  %i.r = icmp ugt i64 %spec.select.i.i.i, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i, i1 %i.r, i1 false
  br i1 %or.cond.i.i.i, label %tg3__arena_strdup.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !182
  %i.u = add i64 %spec.select.i.i.i, 32           ; 3 uses
  %i.v = add i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !154
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %tg3__arena_strdup.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !183
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !184
  %i.ad = tail call ptr %i.aa(i64 noundef %i.u, ptr noundef %i.ac) #28, !inline_history !566 ; 8 uses
  %.not37.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not37.i.i.i, label %tg3__arena_strdup.exit, label %tg3__arena_alloc.exit.thread24.i

tg3__arena_alloc.exit.thread24.i:                 ; preds = %bb.g
  store ptr null, ptr %i.ad, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %spec.select.i.i.i, ptr %i.ag, align 8, !tbaa !181
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !182
  %i.ai = add i64 %i.ah, %i.u
  store i64 %i.ai, ptr %i.s, align 8, !tbaa !182
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.aj, null
  %..i.i.i = select i1 %.not38.i.i.i, ptr %0, ptr %i.aj
  store ptr %i.ad, ptr %..i.i.i, align 8, !tbaa !188
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !178
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.g, ptr %i.ak, align 8, !tbaa !179
  br label %bb.h

tg3__arena_alloc.exit.i:                          ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !187 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.k
  store i64 %i.l, ptr %i.j, align 8, !tbaa !179
  %.not14.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not14.i, label %tg3__arena_strdup.exit, label %bb.h

bb.h:                                             ; preds = %tg3__arena_alloc.exit.i, %tg3__arena_alloc.exit.thread24.i
  %i.am = phi ptr [ %i.ae, %tg3__arena_alloc.exit.thread24.i ], [ %i.al, %tg3__arena_alloc.exit.i ] ; 3 uses
  %.not15.i = icmp eq i32 %2, 0
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %1, i64 range(i64 -2147483648, 4294967296) %i.a, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.a
  store i8 0, ptr %i.an, align 1, !tbaa !26
  br label %tg3__arena_strdup.exit

tg3__arena_strdup.exit:                           ; preds = %bb.a, %bb.b, %bb.e, %bb.f, %bb.g, %tg3__arena_alloc.exit.i, %bb.j
  %.0.i = phi ptr [ %i.am, %bb.j ], [ null, %bb.a ], [ null, %tg3__arena_alloc.exit.i ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  %i.ao = select i1 %.not, i32 0, i32 %2
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.0.i, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.ao, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #24

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_uint64(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !40
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !59

tg3__json_get.exit:                               ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.h

tg3__json_get.exit.thread:                        ; preds = %bb.f, %.preheader.i.i.i, %bb.c, %bb.b, %bb.a, %tg3__json_get.exit
  %.not20 = icmp eq i32 %4, 0
  br i1 %.not20, label %bb.m, label %bb.g

bb.g:                                             ; preds = %tg3__json_get.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.r = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.q, ptr noundef %i.r, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef %2)
  br label %bb.m

bb.h:                                             ; preds = %tg3__json_get.exit
  %i.s = load i32, ptr %i.o, align 8, !tbaa !28
  switch i32 %i.s, label %bb.i [
    i32 2, label %.thread
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_7
begin_hunk_8_@tg3__parse_double:bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !40
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !59

tg3__json_get.exit:                               ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.h

tg3__json_get.exit.thread:                        ; preds = %bb.f, %.preheader.i.i.i, %bb.c, %bb.b, %bb.a, %tg3__json_get.exit
  %.not16 = icmp eq i32 %4, 0
  br i1 %.not16, label %bb.k, label %bb.g

bb.g:                                             ; preds = %tg3__json_get.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.r = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.q, ptr noundef %i.r, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef %2)
  br label %bb.k

bb.h:                                             ; preds = %tg3__json_get.exit
  %i.s = load i32, ptr %i.o, align 8, !tbaa !28
  switch i32 %i.s, label %bb.i [
    i32 2, label %.thread
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  %i.v = load ptr, ptr %0, align 8, !tbaa !161
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.u, ptr noundef %i.v, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.63, ptr noundef nonnull %2)
  br label %bb.k

.thread:                                          ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = sitofp i64 %i.x to double
  br label %tg3__json_number_to_double.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !26
  br label %tg3__json_number_to_double.exit

tg3__json_number_to_double.exit:                  ; preds = %.thread, %bb.j
  %.0.i = phi double [ %i.y, %.thread ], [ %i.aa, %bb.j ]
  store double %.0.i, ptr %3, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %tg3__json_get.exit.thread, %tg3__json_number_to_double.exit, %bb.i, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !40
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !59

tg3__json_get.exit.thread:                        ; preds = %bb.f, %bb.a, %bb.b, %bb.c, %.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.n, i8 0, i64 60, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !278
  br label %bb.h

tg3__json_get.exit:                               ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.q, i8 0, i64 60, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !278
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %tg3__json_is_object.exit

tg3__json_is_object.exit:                         ; preds = %tg3__json_get.exit
  %i.r = load i32, ptr %i.p, align 8, !tbaa !28
  %.not20 = icmp eq i32 %i.r, 6
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %tg3__json_is_object.exit
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.158, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2)
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.159, ptr noundef %i.q, i32 noundef 0, ptr noundef nonnull %2)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call fastcc void @tg3__parse_extras_and_extensions(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef %i.s)
  br label %bb.h

bb.h:                                             ; preds = %tg3__json_get.exit.thread, %tg3__json_is_object.exit, %tg3__json_get.exit, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 80)) %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #12 {
bb.a:
  %3 = alloca %struct.tg3_value, align 8          ; 4 uses
  %4 = alloca %struct.tg3_value, align 8          ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %tg3__arena_alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !28
  switch i32 %i.a, label %tg3__arena_alloc.exit.thread [
    i32 6, label %bb.o
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %0, align 8, !tbaa !585
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %.not54 = icmp ne i32 %i.c, 0
  %i.d = zext i1 %.not54 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !26
  br label %tg3__arena_alloc.exit.thread

bb.d:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 8, !tbaa !585
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !26
  br label %tg3__arena_alloc.exit.thread

bb.e:                                             ; preds = %bb.b
  store i32 3, ptr %0, align 8, !tbaa !585
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.j, ptr %i.k, align 8, !tbaa !26
  br label %tg3__arena_alloc.exit.thread

bb.f:                                             ; preds = %bb.b
  store i32 4, ptr %0, align 8, !tbaa !585
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %1, align 8, !tbaa !161
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.m, ptr noundef %i.o, i32 noundef %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = extractvalue { ptr, i32 } %i.s, 1
  store ptr %i.t, ptr %i.l, align 8, !tbaa !10
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.u, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !36
  br label %tg3__arena_alloc.exit.thread

bb.g:                                             ; preds = %bb.b
  store i32 5, ptr %0, align 8, !tbaa !585
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %.not52 = icmp eq i64 %i.x, 0
  br i1 %.not52, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %1, align 8, !tbaa !161    ; 9 uses
  %i.z = mul i64 %i.x, 80                         ; 6 uses
  %i.aa = icmp eq ptr %i.y, null
  %i.ab = icmp eq i64 %i.z, 0
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %tg3__arena_alloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !155 ; 3 uses
  %.not.i = icmp ne i64 %i.ad, 0                  ; 2 uses
  %i.ae = icmp ugt i64 %i.z, %i.ad
  %or.cond28.i = and i1 %.not.i, %i.ae
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !178 ; 5 uses
  %.not26.i = icmp eq ptr %i.ag, null
  br i1 %.not26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !179 ; 3 uses
  %i.aj = add i64 %i.ai, %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !181
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.l, label %tg3__arena_alloc.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !151
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 range(i64 0, -7) %i.z) ; 3 uses
  %i.ap = icmp ugt i64 %spec.select.i.i, %i.ad
  %or.cond.i.i = select i1 %.not.i, i1 %i.ap, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !182
  %i.as = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.at = add i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !154
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %tg3__arena_alloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !183
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !184
  %i.bb = tail call ptr %i.ay(i64 noundef %i.as, ptr noundef %i.ba) #28, !inline_history !185 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.bb, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread98

tg3__arena_alloc.exit.thread98:                   ; preds = %bb.n
  store ptr null, ptr %i.bb, align 8, !tbaa !186
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !187
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %spec.select.i.i, ptr %i.be, align 8, !tbaa !181
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !182
  %i.bg = add i64 %i.bf, %i.as
  store i64 %i.bg, ptr %i.aq, align 8, !tbaa !182
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.bh, null
  %..i.i = select i1 %.not38.i.i, ptr %i.y, ptr %i.bh
  store ptr %i.bb, ptr %..i.i, align 8, !tbaa !188
  store ptr %i.bb, ptr %i.af, align 8, !tbaa !178
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.z, ptr %i.bi, align 8, !tbaa !179
  br label %.preheader

tg3__arena_alloc.exit:                            ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !187 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ai
  %i.bl = add i64 %i.ai, %i.z
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !179
  %.not53 = icmp eq ptr %.pre.i, null
  br i1 %.not53, label %tg3__arena_alloc.exit.thread, label %.preheader

.preheader:                                       ; preds = %tg3__arena_alloc.exit.thread98, %tg3__arena_alloc.exit
  %i.bm = phi ptr [ %i.bc, %tg3__arena_alloc.exit.thread98 ], [ %i.bk, %tg3__arena_alloc.exit ] ; 2 uses
  %i.bn = load i64, ptr %i.w, align 8, !tbaa !26
  %.not83 = icmp eq i64 %i.bn, 0
  br i1 %.not83, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %.preheader, %.lr.ph79
  %.078 = phi i64 [ %i.br, %.lr.ph79 ], [ 0, %.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %i.bm, i64 %.078
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.078
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %1, ptr noundef %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bo, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false), !tbaa.struct !568
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.br = add nuw i64 %.078, 1                    ; 2 uses
  %i.bs = load i64, ptr %i.w, align 8, !tbaa !26  ; 2 uses
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph79, label %._crit_edge80.loopexit, !llvm.loop !586

._crit_edge80.loopexit:                           ; preds = %.lr.ph79
  %i.bu = trunc i64 %i.bs to i32
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %.preheader
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.bu, %._crit_edge80.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bm, ptr %i.bv, align 8, !tbaa !587
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.lcssa, ptr %i.bw, align 8, !tbaa !588
  br label %tg3__arena_alloc.exit.thread

bb.o:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 8, !tbaa !585
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %.not50 = icmp eq i64 %i.bz, 0
  br i1 %.not50, label %tg3__arena_alloc.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %1, align 8, !tbaa !161   ; 9 uses
  %i.cb = mul i64 %i.bz, 96                       ; 6 uses
  %i.cc = icmp eq ptr %i.ca, null
  %i.cd = icmp eq i64 %i.cb, 0
  %or.cond.i55 = or i1 %i.cd, %i.cc
  br i1 %or.cond.i55, label %tg3__arena_alloc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !155 ; 3 uses
  %.not.i56 = icmp ne i64 %i.cf, 0                ; 2 uses
  %i.cg = icmp ugt i64 %i.cb, %i.cf
  %or.cond28.i57 = and i1 %.not.i56, %i.cg
  br i1 %or.cond28.i57, label %tg3__arena_alloc.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !178 ; 5 uses
  %.not26.i58 = icmp eq ptr %i.ci, null
  br i1 %.not26.i58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !179 ; 3 uses
  %i.cl = add i64 %i.ck, %i.cb
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !181
  %i.co = icmp ugt i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.t, label %tg3__arena_alloc.exit70

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !151
  %spec.select.i.i64 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 range(i64 0, -7) %i.cb) ; 3 uses
  %i.cr = icmp ugt i64 %spec.select.i.i64, %i.cf
  %or.cond.i.i65 = select i1 %.not.i56, i1 %i.cr, i1 false
  br i1 %or.cond.i.i65, label %tg3__arena_alloc.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !182
  %i.cu = add i64 %spec.select.i.i64, 32          ; 3 uses
  %i.cv = add i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !154
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %tg3__arena_alloc.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !184
  %i.dd = tail call ptr %i.da(i64 noundef %i.cu, ptr noundef %i.dc) #28, !inline_history !185 ; 8 uses
  %.not37.i.i66 = icmp eq ptr %i.dd, null
  br i1 %.not37.i.i66, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit70.thread

tg3__arena_alloc.exit70.thread:                   ; preds = %bb.v
  store ptr null, ptr %i.dd, align 8, !tbaa !186
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.df, align 8, !tbaa !187
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 %spec.select.i.i64, ptr %i.dg, align 8, !tbaa !181
  %i.dh = load i64, ptr %i.cs, align 8, !tbaa !182
  %i.di = add i64 %i.dh, %i.cu
  store i64 %i.di, ptr %i.cs, align 8, !tbaa !182
  %i.dj = load ptr, ptr %i.ch, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i68 = icmp eq ptr %i.dj, null
  %..i.i69 = select i1 %.not38.i.i68, ptr %i.ca, ptr %i.dj
  store ptr %i.dd, ptr %..i.i69, align 8, !tbaa !188
  store ptr %i.dd, ptr %i.ch, align 8, !tbaa !178
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %i.cb, ptr %i.dk, align 8, !tbaa !179
  br label %.preheader75

tg3__arena_alloc.exit70:                          ; preds = %bb.s
  %.phi.trans.insert.i60 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.pre.i61 = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !187 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 %i.ck
  %i.dn = add i64 %i.ck, %i.cb
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !179
  %.not51 = icmp eq ptr %.pre.i61, null
  br i1 %.not51, label %tg3__arena_alloc.exit.thread, label %.preheader75

.preheader75:                                     ; preds = %tg3__arena_alloc.exit70.thread, %tg3__arena_alloc.exit70
  %i.do = phi ptr [ %i.de, %tg3__arena_alloc.exit70.thread ], [ %i.dm, %tg3__arena_alloc.exit70 ] ; 2 uses
  %i.dp = load i64, ptr %i.by, align 8, !tbaa !26
  %.not82 = icmp eq i64 %i.dp, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader75, %.lr.ph
  %.177 = phi i64 [ %i.eg, %.lr.ph ], [ 0, %.preheader75 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [96 x i8], ptr %i.do, i64 %.177 ; 3 uses
  %i.dr = load ptr, ptr %1, align 8, !tbaa !161
  %i.ds = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.177 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !43
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = tail call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.dr, ptr noundef %i.du, i32 noundef %i.dx) ; 2 uses
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  %i.ea = extractvalue { ptr, i32 } %i.dy, 1
  store ptr %i.dz, ptr %i.dq, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %i.ea, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ec = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %.177
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !44
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %1, ptr noundef %i.ef)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.eb, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !568
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.eg = add nuw i64 %.177, 1                    ; 2 uses
  %i.eh = load i64, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !589

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ej = trunc i64 %i.eh to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader75
  %.lcssa76 = phi i32 [ 0, %.preheader75 ], [ %i.ej, %._crit_edge.loopexit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.do, ptr %i.ek, align 8, !tbaa !590
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.lcssa76, ptr %i.el, align 8, !tbaa !591
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.v, %bb.t, %bb.u, %bb.p, %bb.q, %bb.n, %bb.l, %bb.m, %bb.h, %bb.i, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.o, %._crit_edge80, %tg3__arena_alloc.exit, %._crit_edge, %tg3__arena_alloc.exit70, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__json_set_int(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i, label %tg3json_object_set_take.exit.i

tg3json_object_set_take.exit.i:                   ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.c = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.b, ptr noundef nonnull %3)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %tg3json_object_set_take.exit.thread.i, label %tg3__json_set_take.exit

tg3json_object_set_take.exit.thread.i:            ; preds = %tg3json_object_set_take.exit.i, %bb.a
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.i, %tg3json_object_set_take.exit.thread.i
  %.0.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i32 %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_string_array(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 5, ptr %5, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  %.pre.i.i.i17 = phi ptr [ null, %bb.b ], [ %.pre.i.i.i16, %bb.m ] ; 5 uses
  %i.g = phi i64 [ 0, %bb.b ], [ %i.y, %bb.m ]    ; 8 uses
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !229  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !230  ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  store i64 4, ptr %4, align 8
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #30 ; 4 uses
  %.not.i13.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i13.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not11.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.i, i64 %i.l, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store i64 %i.g, ptr %i.f, align 8
  store ptr %.pre.i.i.i17, ptr %i.e, align 8
  br label %tg3__json_from_string_array.exit.thread

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !26
  store ptr %i.n, ptr %i.c, align 8, !tbaa !26
  store i64 %i.l, ptr %i.d, align 8, !tbaa !26
  %i.p = add i64 %i.g, 1                          ; 4 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.g, -1
  br i1 %.not.i.not.i.i.i, label %tg3__json_push_take.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not25.i.i.i.i = icmp eq i64 %i.g, 0
  %spec.select.i.i.i.i = select i1 %.not25.i.i.i.i, i64 8, i64 %i.g ; 3 uses
  %i.q = icmp ult i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.027.i.i.i.i = phi i64 [ %i.s, %bb.j ], [ %spec.select.i.i.i.i, %bb.i ] ; 2 uses
  %i.r = icmp slt i64 %.027.i.i.i.i, 0
  br i1 %i.r, label %._crit_edge.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = shl nuw i64 %.027.i.i.i.i, 1             ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.p
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !54

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %.lr.ph.i.i.i.i, %bb.i
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.u = icmp ugt i64 %.1.i.i.i.i, 768614336404564650
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = mul nuw i64 %.1.i.i.i.i, 24
  %i.w = tail call ptr @realloc(ptr noundef %.pre.i.i.i17, i64 noundef %i.v) #29 ; 2 uses
  %.not26.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not26.i.i.i.i, label %bb.l, label %tg3__json_push_take.exit.i

tg3__json_push_take.exit.i:                       ; preds = %bb.k, %bb.h
  %.pre.i.i.i15 = phi ptr [ %.pre.i.i.i17, %bb.h ], [ %i.w, %bb.k ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i15, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !35
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  store i64 %i.g, ptr %i.f, align 8
  store ptr %.pre.i.i.i17, ptr %i.e, align 8
  call void @tg3json_value_free(ptr noundef nonnull %4)
  br label %tg3__json_from_string_array.exit.thread

tg3__json_from_string_array.exit.thread:          ; preds = %bb.g, %bb.l
  call void @tg3json_value_free(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__json_set_take.exit

bb.m:                                             ; preds = %tg3__json_push_take.exit.i, %bb.c
  %.pre.i.i.i16 = phi ptr [ %.pre.i.i.i15, %tg3__json_push_take.exit.i ], [ %.pre.i.i.i17, %bb.c ] ; 2 uses
  %i.y = phi i64 [ %i.p, %tg3__json_push_take.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_string_array.exit, label %bb.c, !llvm.loop !592

tg3__json_from_string_array.exit:                 ; preds = %bb.m
  store i64 %i.y, ptr %i.f, align 8
  store ptr %.pre.i.i.i16, ptr %i.e, align 8
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i, label %tg3json_object_set_take.exit.i

tg3json_object_set_take.exit.i:                   ; preds = %tg3__json_from_string_array.exit
  %i.z = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.aa = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.z, ptr noundef nonnull %5)
  %.not.i9 = icmp eq i32 %i.aa, 0
  br i1 %.not.i9, label %tg3json_object_set_take.exit.thread.i, label %tg3__json_set_take.exit

tg3json_object_set_take.exit.thread.i:            ; preds = %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit
  call void @tg3json_value_free(ptr noundef nonnull %5)
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.thread.i, %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit.thread, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %tg3__json_from_string_array.exit.thread ], [ 0, %tg3json_object_set_take.exit.thread.i ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__json_push_take(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
end_hunk_8
