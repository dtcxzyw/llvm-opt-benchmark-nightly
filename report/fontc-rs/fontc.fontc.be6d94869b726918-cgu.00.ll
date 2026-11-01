Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc.fontc.be6d94869b726918-cgu.00?download=true
inline.NumInlined: 762
inline.NumDeleted: 371
begin_hunk_0_@_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs2xcxdQoJA8F_10serde_json5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.105.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2098
  br label %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %.noexc2, %.noexc1, %.noexc, %bb.f, %bb.e, %bb.d
  %.sroa.9.0 = phi i8 [ undef, %.noexc2 ], [ %i.ab, %bb.e ], [ undef, %bb.f ], [ undef, %.noexc ], [ undef, %.noexc1 ], [ undef, %bb.d ]
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.025 ; 3 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.105, i64 30, i1 false), !noalias !2097
  store i8 %i.z, ptr %i.ag, align 8, !noalias !2097
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %.sroa.9.0, ptr %.sroa.413.0..sroa_idx, align 1, !noalias !2097
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.105)
  %i.ah = icmp eq i64 %i.v, 0
  br i1 %i.ah, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtCs2xcxdQoJA8F_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2097, !inline_history !2094
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.025, ptr %i.s, align 8, !noalias !2097
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs2xcxdQoJA8F_10serde_json5value5ValueEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #18
          to label %bb.l unwind label %bb.j, !noalias !2097, !inline_history !2094

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtCs2xcxdQoJA8F_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit: ; preds = %_RNvXs3_NtCs2xcxdQoJA8F_10serde_json5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit
  store i64 %i.i, ptr %i.s, align 8, !noalias !2095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2095
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [328 x i8], align 8               ; 15 uses
  %i.i = alloca [288 x i8], align 8               ; 9 uses
  %.sroa.01.i.i.i.i.i.i = alloca [64 x i8], align 16 ; 5 uses
  %.sroa.9.i.i.i.i.i.i = alloca [295 x i8], align 1 ; 4 uses
  %.sroa.0.sroa.9.i.i.i.i.i.i = alloca [56 x i8], align 16 ; 4 uses
  %.sroa.0.sroa.13.i.i.i.i.i.i = alloca [328 x i8], align 16 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.023.i = alloca [24 x i8], align 8        ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2147
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, 192153584101141163) %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !2147
  %i.q = load i64, ptr %i.k, align 8, !range !16, !noalias !2147, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !23, !noalias !2147, !noundef !5 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !2147
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #21, !noalias !2148
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !noalias !2147, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = icmp ule i64 %i.p, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2147
  store i64 %i.t, ptr %i.l, align 8, !noalias !2147
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !2147
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8, !noalias !2147
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.p
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4.0..sroa_idx34.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.436.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.537.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.01.32..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i.i.i.i, i64 32
  %.sroa.9.96..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i.i.i.i, i64 7
  br label %bb.c

bb.c:                                             ; preds = %bb.ag, %.lr.ph.i
  %.sroa.012.0178.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.bd, %bb.ag ] ; 11 uses
  %.sroa.7.0177.i = phi i64 [ 0, %.lr.ph.i ], [ %i.be, %bb.ag ] ; 3 uses
  %.sroa.10.0176.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.bb, %bb.ag ]
  %i.bb = add i64 %.sroa.10.0176.i, -1            ; 2 uses
  %i.bc = icmp eq ptr %.sroa.012.0178.i, %i.aa
  br i1 %i.bc, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 48
  %i.be = add nuw nsw i64 %.sroa.7.0177.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2150
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.012.0178.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2148

.noexc.i:                                         ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !range !12, !alias.scope !2151, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq i8 %i.bg, -1
  br i1 %.not.i.i, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  switch i8 %i.bg, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.ag
    i8 5, label %bb.j
    i8 6, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 25
  %i.bi = load i8, ptr %i.bh, align 1, !range !25, !alias.scope !2153, !noundef !5
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !2153, !noundef !5
  br label %bb.ag

bb.h:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !2153, !noundef !5
  br label %bb.ag

bb.i:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !2153, !noundef !5
  br label %bb.ag

bb.j:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !2153, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !2154
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.ad, label %bb.ac

bb.k:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 32
  %.val.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !2153 ; 32 uses
  %i.bu = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsglDVE6xSTcO_5fontc()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !2155 ; 16 uses

.noexc.i.i:                                       ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.13.i.i.i.i.i.i)
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2159
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 120
  %.val19.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !2160, !noalias !2154, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 128
  %.val20.i.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !2160, !noalias !2154, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2161
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 2305843009213693952) %.val20.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp, !noalias !2154

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i
  %i.by = load i64, ptr %i.f, align 8, !range !16, !noalias !2161, !noundef !5
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = load i64, ptr %i.ac, align 8, !range !23, !noalias !2161, !noundef !5 ; 3 uses
  br i1 %i.bz, label %bb.l, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i, !prof !22

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.cb = load i64, ptr %i.ad, align 8, !noalias !2161
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cb) #21
          to label %.noexc1.i.i.i.i unwind label %.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp, !noalias !2154

.noexc1.i.i.i.i:                                  ; preds = %bb.l
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.cc = load ptr, ptr %i.ad, align 8, !noalias !2161, !nonnull !5, !noundef !5 ; 2 uses
  %i.cd = icmp ule i64 %.val20.i.i.i.i.i.i.i, %i.ca
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2161
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val20.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i
  %i.ce = shl nuw nsw i64 %.val20.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull readonly align 4 %.val19.i.i.i.i.i.i.i, i64 %i.ce, i1 false), !noalias !2162
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.cf, i64 256, i1 false), !noalias !2163
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 392
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !2160, !noalias !2154, !noundef !5
  store i64 %i.ca, ptr %i.i, align 8, !noalias !2159
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx34.i.i.i.i.i.i.i, align 8, !noalias !2159
  store i64 %.val20.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2159
  store i64 %i.ch, ptr %i.af, align 8, !noalias !2159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2159
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 504
  %.val17.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !2160, !noalias !2154, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 512
  %.val18.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !2160, !noalias !2154, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2164
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 2305843009213693952) %.val18.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.split-lp40.i.loopexit.split-lp.loopexit.split-lp, !noalias !2165

.noexc.i.i.i.i.i.i.i:                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i
  %i.ck = load i64, ptr %i.e, align 8, !range !16, !noalias !2164, !noundef !5
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = load i64, ptr %i.ag, align 8, !range !23, !noalias !2164, !noundef !5 ; 3 uses
  br i1 %i.cl, label %bb.n, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i21.i.i.i.i.i.i.i, !prof !22

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.cn = load i64, ptr %i.ah, align 8, !noalias !2164
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cm, i64 %i.cn) #21
          to label %.noexc23.i.i.i.i.i.i.i unwind label %.loopexit.split-lp40.i.loopexit.split-lp.loopexit.split-lp, !noalias !2165

.noexc23.i.i.i.i.i.i.i:                           ; preds = %bb.n
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i21.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  %i.co = load ptr, ptr %i.ah, align 8, !noalias !2164, !nonnull !5, !noundef !5 ; 2 uses
  %i.cp = icmp ule i64 %.val18.i.i.i.i.i.i.i, %i.cm
  tail call void @llvm.assume(i1 %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2164
  %.not.i.i22.i.i.i.i.i.i.i = icmp eq i64 %.val18.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i22.i.i.i.i.i.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit24.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i21.i.i.i.i.i.i.i
  %i.cq = shl nuw nsw i64 %.val18.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.co, ptr nonnull readonly align 4 %.val17.i.i.i.i.i.i.i, i64 %i.cq, i1 false), !noalias !2166
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit24.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp40.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i.i.i
  %.pn.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp40.i.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.i)
          to label %.loopexit.split-lp35.i unwind label %bb.aa, !noalias !2165

.loopexit.split-lp40.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit24.i.i.i.i.i.i.i: ; preds = %bb.o, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i21.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 480
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 800
  %i.ct = load i8, ptr %i.cs, align 16, !range !13, !alias.scope !2160, !noalias !2154, !noundef !5
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.cu, i64 256, i1 false), !noalias !2163
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 792
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !2160, !noalias !2154, !noundef !5
  %i.cx = load i64, ptr %i.cr, align 16, !range !16, !alias.scope !2160, !noalias !2154, !noundef !5 ; 2 uses
  %i.cy = trunc nuw i64 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 488
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !2160, !noalias !2154
  %.sroa.55.0.i.i.i.i.i.i.i = select i1 %i.cy, i64 %i.da, i64 undef
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 520
  %i.dc = load i32, ptr %i.db, align 8, !range !2167, !alias.scope !2160, !noalias !2154, !noundef !5 ; 2 uses
  %i.dd = trunc nuw i32 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 524
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !2160, !noalias !2154
  %.sroa.57.0.i.i.i.i.i.i.i = select i1 %i.dd, i32 %i.df, i32 undef
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 528
  %i.dh = load i32, ptr %i.dg, align 16, !range !2167, !alias.scope !2160, !noalias !2154, !noundef !5 ; 2 uses
  %i.di = trunc nuw i32 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 532
  %i.dk = load i32, ptr %i.dj, align 4, !alias.scope !2160, !noalias !2154
  %.sroa.59.0.i.i.i.i.i.i.i = select i1 %i.di, i32 %i.dk, i32 undef
  store i64 %i.cm, ptr %i.aj, align 8, !noalias !2159
  store ptr %i.co, ptr %.sroa.436.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2159
  store i64 %.val18.i.i.i.i.i.i.i, ptr %.sroa.537.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2159
  store i8 %i.ct, ptr %i.ak, align 8, !noalias !2159
  store i64 %i.cw, ptr %i.al, align 8, !noalias !2159
  store i64 %i.cx, ptr %i.h, align 8, !noalias !2159
  store i64 %.sroa.55.0.i.i.i.i.i.i.i, ptr %i.am, align 8, !noalias !2159
  store i32 %i.dc, ptr %i.an, align 8, !noalias !2159
  store i32 %.sroa.57.0.i.i.i.i.i.i.i, ptr %i.ao, align 4, !noalias !2159
  store i32 %i.dh, ptr %i.ap, align 8, !noalias !2159
  store i32 %.sroa.59.0.i.i.i.i.i.i.i, ptr %i.aq, align 4, !noalias !2159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2159
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2170
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 408
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !2171, !noalias !2154, !nonnull !5, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 416
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.dm, align 16, !alias.scope !2171, !noalias !2154, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2174
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 2305843009213693952) %.val3.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc26.i.i.i.i.i.i.i unwind label %.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp, !noalias !2165

.noexc26.i.i.i.i.i.i.i:                           ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit24.i.i.i.i.i.i.i
  %i.dn = load i64, ptr %i.c, align 8, !range !16, !noalias !2174, !noundef !5
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = load i64, ptr %i.ar, align 8, !range !23, !noalias !2174, !noundef !5 ; 3 uses
  br i1 %i.do, label %bb.p, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i.i, !prof !22

bb.p:                                             ; preds = %.noexc26.i.i.i.i.i.i.i
  %i.dq = load i64, ptr %i.as, align 8, !noalias !2174
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dp, i64 %i.dq) #21
          to label %.noexc27.i.i.i.i.i.i.i unwind label %.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp, !noalias !2165

.noexc27.i.i.i.i.i.i.i:                           ; preds = %bb.p
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc26.i.i.i.i.i.i.i
  %i.dr = load ptr, ptr %i.as, align 8, !noalias !2174, !nonnull !5, !noundef !5 ; 2 uses
  %i.ds = icmp ule i64 %.val3.i.i.i.i.i.i.i.i, %i.dp
  tail call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2174
  store i64 %i.dp, ptr %i.d, align 8, !alias.scope !2175, !noalias !2170
  store ptr %i.dr, ptr %i.at, align 8, !alias.scope !2175, !noalias !2170
  store i64 0, ptr %i.au, align 8, !alias.scope !2175, !noalias !2170
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i.i
  %i.dt = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr nonnull readonly align 4 %.val2.i.i.i.i.i.i.i.i, i64 %i.dt, i1 false), !noalias !2176
  store i64 %.val3.i.i.i.i.i.i.i.i, ptr %i.au, align 8, !alias.scope !2175, !noalias !2170
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 432
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 16, !alias.scope !2171, !noalias !2154, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 440
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.dv, align 8, !alias.scope !2171, !noalias !2154, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2177
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %.val1.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp, !noalias !2178

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i
  %i.dw = load i64, ptr %i.b, align 8, !range !16, !noalias !2177, !noundef !5
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = load i64, ptr %i.av, align 8, !range !23, !noalias !2177, !noundef !5 ; 3 uses
  br i1 %i.dx, label %bb.r, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i4.i.i.i.i.i.i.i.i, !prof !22

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.dz = load i64, ptr %i.aw, align 8, !noalias !2177
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.dz) #21
          to label %.noexc6.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp, !noalias !2178

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.r
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i4.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.ea = load ptr, ptr %i.aw, align 8, !noalias !2177, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = icmp ule i64 %.val1.i.i.i.i.i.i.i.i, %i.dy
  tail call void @llvm.assume(i1 %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2177
  %.not.i.i5.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i4.i.i.i.i.i.i.i.i
  %i.ec = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i.i, i64 %i.ec, i1 false), !noalias !2179
  br label %bb.u

.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i.i, %bb.r
  %lpad.loopexit.split-lp306 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.t, !noalias !2178

bb.t:                                             ; preds = %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2178
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp309, %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp50.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp303, %.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !2165

.loopexit.split-lp45.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit24.i.i.i.i.i.i.i, %bb.p
  %lpad.loopexit.split-lp303 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i4.i.i.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 448
  %i.ef = load i64, ptr %i.ee, align 16, !alias.scope !2171, !noalias !2154, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2180
  store i64 %i.dy, ptr %i.ax, align 8, !alias.scope !2168, !noalias !2159
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !2168, !noalias !2159
  store i64 %.val1.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !2168, !noalias !2159
  store i64 %i.ef, ptr %i.ay, align 8, !alias.scope !2168, !noalias !2159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2170
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 464
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.eg, align 16, !alias.scope !2160, !noalias !2154, !nonnull !5, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 472
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !2160, !noalias !2154, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2181
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %.val16.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc31.i.i.i.i.i.i.i unwind label %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, !noalias !2165

.noexc31.i.i.i.i.i.i.i:                           ; preds = %bb.u
  %i.ei = load i64, ptr %i.a, align 8, !range !16, !noalias !2181, !noundef !5
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = load i64, ptr %i.az, align 8, !range !23, !noalias !2181, !noundef !5 ; 3 uses
  br i1 %i.ej, label %bb.v, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i, !prof !22

bb.v:                                             ; preds = %.noexc31.i.i.i.i.i.i.i
  %i.el = load i64, ptr %i.ba, align 8, !noalias !2181
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ek, i64 %i.el) #21
          to label %.noexc32.i.i.i.i.i.i.i unwind label %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, !noalias !2165

.noexc32.i.i.i.i.i.i.i:                           ; preds = %bb.v
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i.i.i
  %i.em = load ptr, ptr %i.ba, align 8, !noalias !2181, !nonnull !5, !noundef !5 ; 2 uses
  %i.en = icmp ule i64 %.val16.i.i.i.i.i.i.i, %i.ek
  tail call void @llvm.assume(i1 %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2181
  %.not.i.i30.i.i.i.i.i.i.i = icmp eq i64 %.val16.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i30.i.i.i.i.i.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i
  %i.eo = shl nuw nsw i64 %.val16.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.em, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i, i64 %i.eo, i1 false), !noalias !2182
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i

.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v
  %lpad.loopexit.split-lp309 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense11MatchStatesINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #18
          to label %.body.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !2165

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i: ; preds = %bb.w, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i.i29.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 104
  %i.eq = load i8, ptr %i.ep, align 8, !range !13, !alias.scope !2160, !noalias !2154, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eq, 2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 80 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 16, !alias.scope !2160, !noalias !2154, !nonnull !5, !noundef !5
  %i.et = atomicrmw add ptr %i.es, i64 1 monotonic, align 8, !noalias !2165
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %2 = load <2 x ptr>, ptr %i.er, align 16, !alias.scope !2160, !noalias !2154
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96
  %i.ew = load i64, ptr %i.ev, align 16, !alias.scope !2160, !noalias !2154, !noundef !5
  br label %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %.loopexit.split-lp55.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2165
  unreachable

_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i: ; preds = %bb.y, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i
  %.sroa.0.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.ew, %bb.y ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i ]
  %3 = phi <2 x ptr> [ %2, %bb.y ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit33.i.i.i.i.i.i.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.32..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ey, i64 32, i1 false), !noalias !2183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %.sroa.9.96..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.i, i64 288, i1 false), !noalias !2184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %i.h, i64 328, i1 false), !noalias !2184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !2184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.bv, i64 32, i1 false), !noalias !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2159
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 816
  %i.fa = load <2 x i32>, ptr %i.ez, align 16, !alias.scope !2185, !noalias !2154
  %i.fb = load ptr, ptr %.val.i.i.i, align 16, !alias.scope !2185, !noalias !2154, !nonnull !5, !noundef !5 ; 2 uses
  %i.fc = atomicrmw add ptr %i.fb, i64 1 monotonic, align 8, !noalias !2186
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %bb.ab, label %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i

bb.ab:                                            ; preds = %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %bb.l
  %lpad.loopexit.split-lp299 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp35.i

.loopexit.split-lp35.i:                           ; preds = %.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8hFumjqO1Bi_14regex_automata3dfa5dense10StartTableINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp299, %.loopexit.split-lp35.i.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 832, i64 noundef 16) #17, !noalias !2154
  br label %.body.i.i

_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i: ; preds = %_RNvXsD_NtNtCs8hFumjqO1Bi_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 808
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !2185, !noalias !2154, !noundef !5
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.01.i.i.i.i.i.i, i64 64, i1 false), !noalias !2187
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(295) %.sroa.10.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(295) %.sroa.9.i.i.i.i.i.i, i64 295, i1 false), !noalias !2187
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.11.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, i64 56, i1 false), !noalias !2187
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.15.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, i64 328, i1 false), !noalias !2187
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 808
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.16.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.fe, i64 3, i1 false), !noalias !2154
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.13.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  store ptr %i.fb, ptr %i.bu, align 16, !noalias !2187
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.fg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2187
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  store <2 x ptr> %3, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2187
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  store i64 %.sroa.0.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2187
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  store i8 %i.eq, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2187
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 456
  store i64 %i.ek, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2187
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 464
  store ptr %i.em, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2187
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 472
  store i64 %.val16.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2187
  %.sroa.171.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 816
  store <2 x i32> %i.fa, ptr %.sroa.171.0..sroa_idx.i.i.i.i.i, align 16, !noalias !2187
  %i.fh = ptrtoint ptr %i.bu to i64
  br label %bb.ag

bb.ac:                                            ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.0178.i, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !2153, !noundef !5
  %i.fk = ptrtoint ptr %i.bq to i64
  br label %bb.ag

bb.ad:                                            ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.k
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %.loopexit.split-lp35.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fl, %bb.ae ], [ %eh.lpad-body.i.i.i.i, %.loopexit.split-lp35.i ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ai unwind label %bb.af, !noalias !2155

bb.af:                                            ; preds = %.body.i.i
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2155
  unreachable

bb.ag:                                            ; preds = %bb.ac, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.noexc.i
  %.sroa.5.sroa.6.0.i.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.e ], [ %i.fj, %bb.ac ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i ]
  %.sroa.5.sroa.5.0.i.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.f ], [ %i.bk, %bb.g ], [ %i.bm, %bb.h ], [ %i.bo, %bb.i ], [ undef, %bb.e ], [ %i.fk, %bb.ac ], [ %i.fh, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i ]
  %.sroa.5.sroa.0.0.i.i = phi i8 [ undef, %.noexc.i ], [ %i.bi, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.e ], [ undef, %bb.ac ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !2147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2150
  %i.fn = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.sroa.7.0177.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.i, i64 24, i1 false), !noalias !2148
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i8 %i.bg, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !2148
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 25
  store i8 %.sroa.5.sroa.0.0.i.i, ptr %.sroa.525.0..sroa_idx.i, align 1, !noalias !2148
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store i64 %.sroa.5.sroa.5.0.i.i, ptr %.sroa.727.0..sroa_idx.i, align 8, !noalias !2148
  %.sroa.828.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store i64 %.sroa.5.sroa.6.0.i.i, ptr %.sroa.828.0..sroa_idx.i, align 8, !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023.i)
  %i.fo = icmp eq i64 %i.bb, 0
  br i1 %i.fo, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %bb.c

bb.ah:                                            ; preds = %bb.ai
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2148
  unreachable

bb.ai:                                            ; preds = %.body.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.0177.i, ptr %i.z, align 8, !noalias !2147
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #18
          to label %bb.aj unwind label %bb.ah, !noalias !2148

bb.aj:                                            ; preds = %bb.ai
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.c, %bb.ag, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i
  store i64 %i.p, ptr %i.z, align 8, !noalias !2147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2147
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2192
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2192
  %i.f = load i64, ptr %i.a, align 8, !range !16, !noalias !2192, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !2192, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2192
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !noalias !2192
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2192, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2192
  store i64 %i.i, ptr %0, align 8, !alias.scope !2191
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !2191
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !2191
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !2191
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !2191
  br label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit

_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsglDVE6xSTcO_5fontc.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit, label %.lr.ph66

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i
  %.sroa.0.0.i65 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i65 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i65, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2205, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2205, !noundef !5 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph66, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i64 = phi i64 [ %i.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i ], [ 0, %.lr.ph66 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i64
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i.i64, 1  ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i unwind label %bb.b, !noalias !2206

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i: ; preds = %.lr.ph68
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i.i67, 1  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body.i.i, label %.lr.ph68

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body.i.i, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i67 = phi i64 [ %i.q, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i67
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i unwind label %bb.c, !noalias !2206

bb.c:                                             ; preds = %.lr.ph68
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !2206
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit7.i.i.i.i, %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.d

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i.i.i.i, %.lr.ph66
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEECsglDVE6xSTcO_5fontc.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.body.i.i
  %i.w = landingpad { ptr, i32 }
end_hunk_0
