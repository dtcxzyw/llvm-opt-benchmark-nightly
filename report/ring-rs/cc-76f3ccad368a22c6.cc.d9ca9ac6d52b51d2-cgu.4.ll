Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.4?download=true
inline.NumInlined: 260
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc:bb.a
  %i.cy = xor i64 %i.cx, %.sroa.07.0.copyload     ; 2 uses
  store i64 %i.cy, ptr %i.al, align 8
  %i.cz = load i64, ptr %i.am, align 8            ; 2 uses
  %i.da = add i64 %i.cz, %i.cv
  store i64 %i.da, ptr %0, align 8
  %i.db = add i64 %i.cu, %i.cy
  store i64 %i.db, ptr %i.an, align 8
  %i.dc = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.cz, i32 13) #34
  %i.dd = load i64, ptr %0, align 8
  %i.de = xor i64 %i.dd, %i.dc
  store i64 %i.de, ptr %i.am, align 8
  %i.df = load i64, ptr %i.al, align 8
  %i.dg = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.df, i32 16) #34
  %i.dh = load i64, ptr %i.an, align 8
  %i.di = xor i64 %i.dh, %i.dg
  store i64 %i.di, ptr %i.al, align 8
  %i.dj = load i64, ptr %0, align 8
  %i.dk = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.dj, i32 32) #34
  %i.dl = load i64, ptr %i.an, align 8
  %i.dm = load i64, ptr %i.am, align 8            ; 2 uses
  %i.dn = add i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.an, align 8
  %i.do = load i64, ptr %i.al, align 8
  %i.dp = add i64 %i.do, %i.dk
  store i64 %i.dp, ptr %0, align 8
  %i.dq = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.dm, i32 17) #34
  %i.dr = load i64, ptr %i.an, align 8
  %i.ds = xor i64 %i.dr, %i.dq
  store i64 %i.ds, ptr %i.am, align 8
  %i.dt = load i64, ptr %i.al, align 8
  %i.du = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.dt, i32 21) #34
  %i.dv = load i64, ptr %0, align 8
  %i.dw = xor i64 %i.dv, %i.du
  store i64 %i.dw, ptr %i.al, align 8
  %i.dx = load i64, ptr %i.an, align 8
  %i.dy = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.dx, i32 32) #34 ; 2 uses
  store i64 %i.dy, ptr %i.an, align 8
  %i.dz = load i64, ptr %0, align 8
  %i.ea = xor i64 %i.dz, %.sroa.07.0.copyload     ; 2 uses
  store i64 %i.ea, ptr %0, align 8
  %i.eb = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.aj
  br i1 %i.ec, label %bb.p, label %._crit_edge

bb.q:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_leCsiHivYpkJ4Hu_2cc.exit17, %bb.j
  %storemerge = phi i64 [ %i.by, %bb.j ], [ %i.ai, %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_leCsiHivYpkJ4Hu_2cc.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define i64 @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.59.0.copyload = load i64, ptr %.sroa.59.0..sroa_idx, align 8 ; 2 uses
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.76.0.copyload = load i64, ptr %.sroa.76.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  %i.c = shl i64 %i.b, 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = or i64 %i.c, %i.e                        ; 2 uses
  %i.g = xor i64 %i.f, %.sroa.76.0.copyload       ; 2 uses
  %i.h = add i64 %.sroa.59.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %i.i = add i64 %i.g, %.sroa.28.0.copyload       ; 2 uses
  %i.j = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %.sroa.59.0.copyload, i32 13) #34
  %i.k = xor i64 %i.j, %i.h                       ; 2 uses
  %i.l = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.g, i32 16) #34
  %i.m = xor i64 %i.i, %i.l                       ; 2 uses
  %i.n = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.h, i32 32) #34
  %i.o = add i64 %i.i, %i.k                       ; 2 uses
  %i.p = add i64 %i.m, %i.n                       ; 2 uses
  %i.q = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.k, i32 17) #34
  %i.r = xor i64 %i.o, %i.q                       ; 2 uses
  %i.s = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.m, i32 21) #34
  %i.t = xor i64 %i.p, %i.s                       ; 2 uses
  %i.u = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.o, i32 32) #34
  %i.v = xor i64 %i.p, %i.f
  %i.w = xor i64 %i.u, 255
  %i.x = add i64 %i.v, %i.r                       ; 2 uses
  %i.y = add i64 %i.w, %i.t                       ; 2 uses
  %i.z = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.r, i32 13) #34
  %i.aa = xor i64 %i.x, %i.z                      ; 2 uses
  %i.ab = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.t, i32 16) #34
  %i.ac = xor i64 %i.y, %i.ab                     ; 2 uses
  %i.ad = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.x, i32 32) #34
  %i.ae = add i64 %i.aa, %i.y                     ; 2 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.aa, i32 17) #34
  %i.ah = xor i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.ac, i32 21) #34
  %i.aj = xor i64 %i.ai, %i.af                    ; 2 uses
  %i.ak = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.ae, i32 32) #34
  %i.al = add i64 %i.ah, %i.af                    ; 2 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.ah, i32 13) #34
  %i.ao = xor i64 %i.an, %i.al                    ; 2 uses
  %i.ap = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.aj, i32 16) #34
  %i.aq = xor i64 %i.ap, %i.am                    ; 2 uses
  %i.ar = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.al, i32 32) #34
  %i.as = add i64 %i.ao, %i.am                    ; 2 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.ao, i32 17) #34
  %i.av = xor i64 %i.au, %i.as                    ; 2 uses
  %i.aw = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.aq, i32 21) #34
  %i.ax = xor i64 %i.aw, %i.at                    ; 2 uses
  %i.ay = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.as, i32 32) #34
  %i.az = add i64 %i.av, %i.at                    ; 2 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.av, i32 13) #34
  %i.bc = xor i64 %i.bb, %i.az                    ; 2 uses
  %i.bd = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.ax, i32 16) #34
  %i.be = xor i64 %i.bd, %i.ba
  %i.bf = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.az, i32 32) #34 ; 0 uses
  %i.bg = add i64 %i.bc, %i.ba                    ; 2 uses
  %i.bh = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.bc, i32 17) #34
  %i.bi = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.be, i32 21) #34
  %i.bj = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECsiHivYpkJ4Hu_2cc(i64 %i.bg, i32 32) #34
  %i.bk = xor i64 %i.bh, %i.bi
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = xor i64 %i.bl, %i.bg
  ret i64 %i.bm
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsiHivYpkJ4Hu_2cc(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr %1, i64 %2) #29
  store i8 -1, ptr %i.a, align 1
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nonnull %i.a, i64 1) #29
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i32 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i32 } %i.a, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = add i64 %i.f, %i.j
  %i.m = sub i64 %i.l, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.m, %bb.b ], [ undef, %bb.a ]
  %i.n = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, i32 } %i.n, i32 %.sroa.3.0, 1
  ret { i64, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs5_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nofree readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @10, i64 15, ptr nonnull %i.a, ptr nonnull align 8 @9)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCs1xwejQucwHj_5alloc5sliceShINtB5_16SpecCloneIntoVechNtNtB7_5alloc6GlobalE10clone_intoCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr align 8 initializes((16, 24)) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.a, align 8
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr align 8 %2, ptr %0, i64 %1) #29
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringbNtB5_8ToString9to_stringCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.val = load i8, ptr %1, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 4, i64 5
  %.1.i = select i1 %i.b, ptr @12, ptr @11
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull %.1.i, i64 %..i) #29, !noalias !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringmNtB5_8ToString9to_stringCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  %.val = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @_RNvMsa_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impm4__fmt(i32 %.val, ptr nonnull %i.b, i64 10), !noalias !9 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.d, i64 %i.e) #29, !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsD_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter5SplithNtNtBb_3str17IsAsciiWhitespaceENtB1M_15BytesIsNotEmptyENtB1M_16UnsafeBytesToStrENtNtNtB9_6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsD_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_20SplitAsciiWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1) #29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8
  store <2 x i64> %i.d, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsV_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB5_5OsStrE6as_refCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitAcj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalAcj2_E4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_RNvXsc_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_17CharArraySearcherKj2_ENtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #29
  call void @_RNvXsc_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_17CharArraySearcherKj2_ENtB5_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0) #29
  %i.f = load i64, ptr %i.a, align 8
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, i64 } %i.e, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sub nuw i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  store i64 %i.l, ptr %i.m, align 8
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalAcj2_E4nextCsiHivYpkJ4Hu_2cc.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.b, align 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalAcj2_E4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8
  %.not.i.i = icmp eq i64 %i.w, %i.y
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalAcj2_E4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = call { ptr, i64 } @_RNvXsc_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_17CharArraySearcherKj2_ENtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #29
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sub nuw i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalAcj2_E4nextCsiHivYpkJ4Hu_2cc.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalAcj2_E4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %i.o, %bb.c ], [ %i.af, %bb.g ], [ undef, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ %i.ag, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.ai
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNtB7_12IsWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNtB7_12IsWhitespaceENtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e) #29
  call void @_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNtB7_12IsWhitespaceENtB5_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e) #29
  %i.g = load i64, ptr %i.a, align 8
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %0, align 8                ; 2 uses
  %i.o = sub nuw i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  store i64 %i.m, ptr %0, align 8
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.b, align 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = load i64, ptr %0, align 8
  %.not.i.i = icmp eq i64 %i.w, %i.x
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = call { ptr, i64 } @_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNtB7_12IsWhitespaceENtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e) #29
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = load i64, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = sub nuw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %i.o, %bb.c ], [ %i.ad, %bb.g ], [ undef, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ %i.ae, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.ag
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #29
  call void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0) #29
  %i.f = load i64, ptr %i.a, align 8
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, i64 } %i.e, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr align 8, ptr, i64, ptr, i64, ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path3neweECsiHivYpkJ4Hu_2cc(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStr3newNtNtCs1xwejQucwHj_5alloc6string6StringECsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlags14set_rustc_flag10arg_to_u32ReEB7_(ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i8 @_RINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlags14set_rustc_flag11arg_to_boolReEB7_(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvMs1_NtCsiHivYpkJ4Hu_2cc9utilitiesINtB17_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB19_6target6parser21TargetInfoParserInnerNtB19_5ErrorEE11get_or_initNvMB2u_B2s_32from_cargo_environment_variablesE0E0B19_(ptr align 8, ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBT_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2d_NtNtNtB1C_4hash6random11RandomStateE0E0B2h_(ptr align 8, ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBT_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2d_NtNtNtB1C_4hash6random11RandomStateE0Es_0B2h_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBT_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2d_E0NCINvB3n_11make_hasherBS_B2d_NtNtNtB1C_4hash6random11RandomStateE0E0B2h_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBT_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2d_E0E0B2h_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtB1Q_4hash6random11RandomStateE0E0CsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtB1Q_4hash6random11RandomStateE0Es_0CsiHivYpkJ4Hu_2cc(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1t_E0NCINvB2Y_11make_hasherBS_B1t_NtNtNtB1Q_4hash6random11RandomStateE0E0CsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1t_E0E0CsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CsiHivYpkJ4Hu_2cc(ptr align 8, ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0CsiHivYpkJ4Hu_2cc(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArceEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1t_E0NCINvB2k_11make_hasherBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0CsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBX_4sync3ArceEEE4findNCINvNtBa_3map14equivalent_keyeBS_B1t_E0E0CsiHivYpkJ4Hu_2cc(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_(ptr align 8, ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0BU_(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_bE0NCINvB1Y_11make_hasherBS_bNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEE4findNCINvNtBa_3map14equivalent_keyBS_BS_bE0E0BU_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsiHivYpkJ4Hu_2cc(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNCNvMs4_CsiHivYpkJ4Hu_2ccNtB7_5Build23apple_deployment_target0B7_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNCNvMs4_CsiHivYpkJ4Hu_2ccNtB7_5Build23apple_deployment_targets0_0B7_(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvMs4_CsiHivYpkJ4Hu_2ccNtB7_5Build5which0B7_(ptr sret([24 x i8]) align 8, ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathE5Owned0CsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCsaL1QbXo9JQH_3std4path4PathE8Borrowed0CsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE5Owned0CsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CoweE5Owned0CsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNcNtINtNtCs1xwejQucwHj_5alloc6borrow3CoweE8Borrowed0CsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNcNtINtNtCs3oUPovFnLWP_4core6result6ResultuINtNtNtB8_3num7nonzero7NonZerojEE3Err0CsiHivYpkJ4Hu_2cc(i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool20from_find_msvc_tools(ptr sret([152 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCsiHivYpkJ4Hu_2cc(i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB2_21TargetInfoParserInner32from_cargo_environment_variables(ptr sret([96 x i8]) align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i8 @_RNvMs6_CsiHivYpkJ4Hu_2ccNtB5_10AsmFileExt9from_path(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStr15to_string_lossyCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsiHivYpkJ4Hu_2cc15command_helpers13write_warning(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB6_11RandomState3new4KEYS27___rust_std_internal_init_fnCsiHivYpkJ4Hu_2cc() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs18_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1o_NtB1o_5Build8assemble0ENtNtNtB9_6traits8iterator8Iterator4nextB1o_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsA_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB7_3ffi6os_str8OsStringE4fromCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBz_EE4intoCsiHivYpkJ4Hu_2cc(ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringeNtB5_8ToString9to_stringCs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #17

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #10 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #12 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { inlinehint }
attributes #30 = { cold }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { noinline }
attributes #34 = { nounwind }
attributes #35 = { noinline noreturn nounwind }
attributes #36 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = distinct !{!4, i1 false, !"_RNvXsF_NtCs1xwejQucwHj_5alloc6stringbNtB5_12SpecToString14spec_to_stringCsiHivYpkJ4Hu_2cc"}
!5 = distinct !{!5, !4, !"_RNvXsF_NtCs1xwejQucwHj_5alloc6stringbNtB5_12SpecToString14spec_to_stringCsiHivYpkJ4Hu_2cc: argument 0"}
!6 = !{!5}
!7 = distinct !{!7, i1 false, !"_RNvXs1L_NtCs1xwejQucwHj_5alloc6stringmNtB6_12SpecToString14spec_to_stringCsiHivYpkJ4Hu_2cc"}
!8 = distinct !{!8, !7, !"_RNvXs1L_NtCs1xwejQucwHj_5alloc6stringmNtB6_12SpecToString14spec_to_stringCsiHivYpkJ4Hu_2cc: argument 0"}
!9 = !{!8}
end_hunk_1
