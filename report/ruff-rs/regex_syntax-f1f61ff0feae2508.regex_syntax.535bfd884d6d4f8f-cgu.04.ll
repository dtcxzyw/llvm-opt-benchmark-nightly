Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_syntax-f1f61ff0feae2508.regex_syntax.535bfd884d6d4f8f-cgu.04?download=true
inline.NumInlined: 224
inline.NumDeleted: 82
begin_hunk_0_@_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI9push_char:bb.a
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.w = load i64, ptr %.0.val, align 8, !noundef !5
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit
  store i64 -1, ptr %.0.val, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.i:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2983) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr [48 x i8], ptr %i.ac, i64 %i.aa ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 -48
  %i.af = load i64, ptr %i.ae, align 8, !range !8, !noundef !5
  %i.ag = icmp eq i64 %i.af, 10
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.05.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.ad, i64 -40
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %.sroa.0.05.i)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs79ICTHwG85D_12regex_syntax.exit unwind label %bb.m

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs79ICTHwG85D_12regex_syntax.exit: ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %i.ad, i64 -24    ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !148, !noundef !5 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr i8, ptr %i.ad, i64 -32
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !148, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false)
  %.pre.i = load i64, ptr %i.ai, align 8, !alias.scope !148
  %i.ao = add i64 %.pre.i, %.sroa.0.05.i
  store i64 %i.ao, ptr %i.ai, align 8, !alias.scope !148
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.p, %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.n:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs79ICTHwG85D_12regex_syntax.exit, %bb.u
  %i.aq = load i64, ptr %.0.val, align 8, !noundef !5
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %.0.val, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.o:                                             ; preds = %bb.k
  %i.as = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !13, !noundef !5 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.aw, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #18
          to label %bb.v unwind label %bb.m

bb.q:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.az = icmp samesign ule i64 %.sroa.0.05.i, %i.av
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.av, ptr %i.ba, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.0.05.i, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 10, ptr %i.b, align 8
  %i.bb = load i64, ptr %i.z, align 8, !alias.scope !149, !noalias !150, !noundef !5 ; 3 uses
  %i.bc = load i64, ptr %i.y, align 8, !range !17, !alias.scope !149, !noalias !150, !noundef !5
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir9translate8HirFrameE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.u unwind label %bb.s, !noalias !150

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs79ICTHwG85D_12regex_syntax3hir9translate8HirFrameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #16
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !149, !noalias !150, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.bj = add i64 %i.bb, 1
  store i64 %i.bj, ptr %i.z, align 8, !alias.scope !149, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.v:                                             ; preds = %bb.p
  unreachable

bb.w:                                             ; preds = %bb.m, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.be, %bb.s ]
  %i.bk = load i64, ptr %.0.val, align 8, !noundef !5
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %.0.val, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs79ICTHwG85D_12regex_syntax3hir9translate5FlagsNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !154
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store ptr %i.h, ptr %i.a, align 8, !noalias !154
  store ptr %i.c, ptr %i.b, align 8, !noalias !154
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @3046, ptr %i.i, align 8, !noalias !154
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.j, align 8, !noalias !154
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @3046, ptr %i.k, align 8, !noalias !154
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.l, align 8, !noalias !154
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @3046, ptr %i.m, align 8, !noalias !154
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.n, align 8, !noalias !154
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @3046, ptr %i.o, align 8, !noalias !154
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.p, align 8, !noalias !154
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @3046, ptr %i.q, align 8, !noalias !154
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.a, ptr %i.r, align 8, !noalias !154
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @3047, ptr %i.s, align 8, !noalias !154
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3055, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @3054, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !154
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor10visit_post(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7.i278 = alloca [40 x i8], align 8       ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 14 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7.i = alloca [40 x i8], align 8          ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %3 = alloca [40 x i8], align 8                  ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 5 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 4                ; 9 uses
  %i.v = alloca [40 x i8], align 8                ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 5 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 14 uses
  %.sroa.15 = alloca [48 x i8], align 8           ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 32
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.6420 = alloca [40 x i8], align 8         ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 7 uses
  %i.ai = alloca [48 x i8], align 8               ; 10 uses
  %.sroa.11413 = alloca [16 x i8], align 8        ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 9 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 4 uses
  %i.am = alloca [48 x i8], align 8               ; 5 uses
  %i.an = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.11400 = alloca [16 x i8], align 8        ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.5387 = alloca [32 x i8], align 8         ; 5 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.6383 = alloca [40 x i8], align 8         ; 4 uses
  %i.ar = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.6379 = alloca [40 x i8], align 8         ; 4 uses
  %i.as = alloca [48 x i8], align 8               ; 5 uses
  %i.at = alloca [48 x i8], align 8               ; 8 uses
  %i.au = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.6369 = alloca [24 x i8], align 8         ; 5 uses
  %i.av = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.6365 = alloca [40 x i8], align 8         ; 4 uses
  %i.aw = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.6361 = alloca [40 x i8], align 8         ; 4 uses
  %i.ax = alloca [48 x i8], align 8               ; 5 uses
  %i.ay = alloca [48 x i8], align 8               ; 7 uses
  %i.az = alloca [48 x i8], align 8               ; 4 uses
  %i.ba = alloca [40 x i8], align 8               ; 5 uses
  %i.bb = alloca [80 x i8], align 8               ; 6 uses
  %.sroa.6357 = alloca [40 x i8], align 8         ; 4 uses
  %i.bc = alloca [48 x i8], align 8               ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 10 uses
  %i.be = alloca [48 x i8], align 8               ; 4 uses
  %i.bf = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.6348 = alloca [40 x i8], align 8         ; 4 uses
  %i.bg = alloca [48 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 11 uses
  %i.bi = alloca [48 x i8], align 8               ; 4 uses
  %i.bj = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.663 = alloca [32 x i8], align 8          ; 6 uses
  %i.bk = alloca [40 x i8], align 8               ; 6 uses
  %i.bl = alloca [48 x i8], align 8               ; 4 uses
  %i.bm = alloca [40 x i8], align 8               ; 5 uses
  %i.bn = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.654 = alloca [32 x i8], align 8          ; 6 uses
  %i.bo = alloca [48 x i8], align 8               ; 4 uses
  %i.bp = alloca [40 x i8], align 8               ; 5 uses
  %i.bq = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.645 = alloca [32 x i8], align 8          ; 6 uses
  %i.br = alloca [48 x i8], align 8               ; 6 uses
  %i.bs = alloca [48 x i8], align 8               ; 5 uses
  %i.bt = alloca [48 x i8], align 8               ; 7 uses
  %i.bu = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.611.sroa.7 = alloca [40 x i8], align 8   ; 3 uses
  %i.bv = alloca [48 x i8], align 8               ; 4 uses
  %i.bw = alloca [80 x i8], align 8               ; 8 uses
  %i.bx = alloca [80 x i8], align 8               ; 16 uses
  %i.by = alloca [48 x i8], align 8               ; 5 uses
  %i.bz = alloca [48 x i8], align 8               ; 5 uses
  %i.ca = load i64, ptr %2, align 8, !range !18, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  switch i64 %i.ca, label %default.unreachable724 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.l
    i64 3, label %bb.s
    i64 4, label %bb.aq
    i64 5, label %bb.bg
    i64 6, label %bb.bh
    i64 7, label %bb.bi
    i64 8, label %bb.bj
    i64 9, label %bb.bm
    i64 10, label %bb.bp
    i64 11, label %bb.bq
  ]

default.unreachable724:                           ; preds = %.lr.ph.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.cc = tail call noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties5empty(), !noalias !253
  store i64 2, ptr %i.bz, align 8
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr %i.cc, ptr %.sroa.4321.0..sroa_idx, align 8
  %.val193 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %.val193, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.br

bb.c:                                             ; preds = %bb.a
  %i.cd = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val194 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 7 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val195 = load ptr, ptr %i.ce, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 16
  %.val196 = load i64, ptr %i.cf, align 8, !noundef !5 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val194, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.cg, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val194, i64 33 ; 2 uses
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val194, i64 34 ; 2 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 2 ; 8 uses
  %.idx.i.i = mul nuw nsw i64 %.val196, 56
  %i.ch = getelementptr inbounds nuw i8, ptr %.val195, i64 %.idx.i.i
  %i.ci = icmp eq i64 %.val196, 0
  br i1 %i.ci, label %.thread123.i, label %.lr.ph.i.i

.thread123.i:                                     ; preds = %bb.c
  %i.cj = lshr i32 %.sroa.4.0.copyload.i, 24
  %i.ck = trunc nuw i32 %i.cj to i8
  %i.cl = lshr i32 %.sroa.4.0.copyload.i, 16
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = lshr i32 %.sroa.4.0.copyload.i, 8
  %i.co = trunc i32 %i.cn to i8
  %i.cp = trunc i32 %.sroa.4.0.copyload.i to i8
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI9set_flags.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.sroa.0.014.i.i = phi i8 [ %.sroa.0.1.i.i, %bb.e ], [ 2, %bb.c ] ; 7 uses
  %.sroa.3.013.i.i = phi i8 [ %.sroa.3.1.i.i, %bb.e ], [ 2, %bb.c ] ; 7 uses
  %.sroa.5.012.i.i = phi i8 [ %.sroa.5.1.i.i, %bb.e ], [ 2, %bb.c ] ; 7 uses
  %.sroa.7.011.i.i = phi i8 [ %.sroa.7.1.i.i, %bb.e ], [ 2, %bb.c ] ; 7 uses
  %.sroa.9.010.i.i = phi i8 [ %.sroa.9.1.i.i, %bb.e ], [ 2, %bb.c ] ; 7 uses
  %.sroa.11.09.i.i = phi i8 [ %.sroa.11.1.i.i, %bb.e ], [ 2, %bb.c ] ; 7 uses
  %.sroa.01.08.i.i = phi i8 [ %.sroa.01.1.i.i, %bb.e ], [ 1, %bb.c ] ; 13 uses
  %.sroa.07.07.i.i = phi ptr [ %i.cq, %bb.e ], [ %.val195, %bb.c ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.07.07.i.i, i64 56 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.07.07.i.i, i64 48
  %i.cs = load i8, ptr %i.cr, align 8, !range !19, !noundef !5
  switch i8 %i.cs, label %default.unreachable724 [
    i8 -1, label %bb.d
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
    i8 6, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %.lr.ph.i.i
  %.sroa.01.1.i.i = phi i8 [ %.sroa.01.08.i.i, %bb.f ], [ %.sroa.01.08.i.i, %bb.g ], [ %.sroa.01.08.i.i, %bb.h ], [ %.sroa.01.08.i.i, %bb.i ], [ %.sroa.01.08.i.i, %bb.j ], [ %.sroa.01.08.i.i, %bb.k ], [ %.sroa.01.08.i.i, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.sroa.11.1.i.i = phi i8 [ %.sroa.11.09.i.i, %bb.f ], [ %.sroa.11.09.i.i, %bb.g ], [ %.sroa.11.09.i.i, %bb.h ], [ %.sroa.11.09.i.i, %bb.i ], [ %.sroa.11.09.i.i, %bb.j ], [ %.sroa.01.08.i.i, %bb.k ], [ %.sroa.11.09.i.i, %.lr.ph.i.i ], [ %.sroa.11.09.i.i, %bb.d ] ; 3 uses
  %.sroa.9.1.i.i = phi i8 [ %.sroa.9.010.i.i, %bb.f ], [ %.sroa.9.010.i.i, %bb.g ], [ %.sroa.9.010.i.i, %bb.h ], [ %.sroa.9.010.i.i, %bb.i ], [ %.sroa.01.08.i.i, %bb.j ], [ %.sroa.9.010.i.i, %bb.k ], [ %.sroa.9.010.i.i, %.lr.ph.i.i ], [ %.sroa.9.010.i.i, %bb.d ] ; 3 uses
  %.sroa.7.1.i.i = phi i8 [ %.sroa.7.011.i.i, %bb.f ], [ %.sroa.7.011.i.i, %bb.g ], [ %.sroa.7.011.i.i, %bb.h ], [ %.sroa.01.08.i.i, %bb.i ], [ %.sroa.7.011.i.i, %bb.j ], [ %.sroa.7.011.i.i, %bb.k ], [ %.sroa.7.011.i.i, %.lr.ph.i.i ], [ %.sroa.7.011.i.i, %bb.d ] ; 3 uses
  %.sroa.5.1.i.i = phi i8 [ %.sroa.5.012.i.i, %bb.f ], [ %.sroa.5.012.i.i, %bb.g ], [ %.sroa.01.08.i.i, %bb.h ], [ %.sroa.5.012.i.i, %bb.i ], [ %.sroa.5.012.i.i, %bb.j ], [ %.sroa.5.012.i.i, %bb.k ], [ %.sroa.5.012.i.i, %.lr.ph.i.i ], [ %.sroa.5.012.i.i, %bb.d ] ; 3 uses
  %.sroa.3.1.i.i = phi i8 [ %.sroa.3.013.i.i, %bb.f ], [ %.sroa.01.08.i.i, %bb.g ], [ %.sroa.3.013.i.i, %bb.h ], [ %.sroa.3.013.i.i, %bb.i ], [ %.sroa.3.013.i.i, %bb.j ], [ %.sroa.3.013.i.i, %bb.k ], [ %.sroa.3.013.i.i, %.lr.ph.i.i ], [ %.sroa.3.013.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i8 [ %.sroa.01.08.i.i, %bb.f ], [ %.sroa.0.014.i.i, %bb.g ], [ %.sroa.0.014.i.i, %bb.h ], [ %.sroa.0.014.i.i, %bb.i ], [ %.sroa.0.014.i.i, %bb.j ], [ %.sroa.0.014.i.i, %bb.k ], [ %.sroa.0.014.i.i, %.lr.ph.i.i ], [ %.sroa.0.014.i.i, %bb.d ] ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.ch
  br i1 %i.ct, label %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  br label %bb.e

bb.g:                                             ; preds = %.lr.ph.i.i
  br label %bb.e

bb.h:                                             ; preds = %.lr.ph.i.i
  br label %bb.e

bb.i:                                             ; preds = %.lr.ph.i.i
  br label %bb.e

bb.j:                                             ; preds = %.lr.ph.i.i
  br label %bb.e

bb.k:                                             ; preds = %.lr.ph.i.i
  br label %bb.e

_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i: ; preds = %bb.e
  %i.cu = lshr i32 %.sroa.4.0.copyload.i, 24
  %i.cv = trunc nuw i32 %i.cu to i8
  %i.cw = lshr i32 %.sroa.4.0.copyload.i, 16
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = lshr i32 %.sroa.4.0.copyload.i, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = trunc i32 %.sroa.4.0.copyload.i to i8
  %.not.i.i = icmp eq i8 %.sroa.0.1.i.i, 2
  %spec.select.i = select i1 %.not.i.i, i8 %.sroa.0.0.copyload.i, i8 %.sroa.0.1.i.i
  %.not1.i.i = icmp eq i8 %.sroa.3.1.i.i, 2
  %i.db = select i1 %.not1.i.i, i8 %.sroa.3.0.copyload.i, i8 %.sroa.3.1.i.i
  %.not2.i.i = icmp eq i8 %.sroa.5.1.i.i, 2
  %i.dc = select i1 %.not2.i.i, i8 %i.da, i8 %.sroa.5.1.i.i
  %.not3.i.i = icmp eq i8 %.sroa.7.1.i.i, 2
  %i.dd = select i1 %.not3.i.i, i8 %i.cz, i8 %.sroa.7.1.i.i
  %.not4.i.i = icmp eq i8 %.sroa.9.1.i.i, 2
  %i.de = select i1 %.not4.i.i, i8 %i.cx, i8 %.sroa.9.1.i.i
  %.not5.i.i = icmp eq i8 %.sroa.11.1.i.i, 2
  %spec.select136.i = select i1 %.not5.i.i, i8 %i.cv, i8 %.sroa.11.1.i.i
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI9set_flags.exit

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI9set_flags.exit: ; preds = %.thread123.i, %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i
  %i.df = phi i8 [ %i.de, %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i ], [ %i.cm, %.thread123.i ]
  %i.dg = phi i8 [ %i.dc, %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i ], [ %i.cp, %.thread123.i ]
  %i.dh = phi i8 [ %spec.select.i, %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i ], [ %.sroa.0.0.copyload.i, %.thread123.i ]
  %i.di = phi i8 [ %i.db, %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i ], [ %.sroa.3.0.copyload.i, %.thread123.i ]
  %i.dj = phi i8 [ %i.dd, %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i ], [ %i.co, %.thread123.i ]
  %i.dk = phi i8 [ %spec.select136.i, %_RNvMs4_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_5Flags8from_ast.exit.i ], [ %i.ck, %.thread123.i ]
  %.sroa.5.0..sroa_idx40528697121130.i = getelementptr inbounds nuw i8, ptr %.val194, i64 35
  %.sroa.6.0..sroa_idx38548499119132.i = getelementptr inbounds nuw i8, ptr %.val194, i64 36
  %.sroa.7.0..sroa_idx365682101117134.i = getelementptr inbounds nuw i8, ptr %.val194, i64 37
  store i8 %i.dh, ptr %i.cg, align 8
  store i8 %i.di, ptr %.sroa.3.0..sroa_idx.i, align 1
  store i8 %i.dg, ptr %.sroa.4.0..sroa_idx.i, align 2
  store i8 %i.dj, ptr %.sroa.5.0..sroa_idx40528697121130.i, align 1
  store i8 %i.df, ptr %.sroa.6.0..sroa_idx38548499119132.i, align 4
  store i8 %i.dk, ptr %.sroa.7.0..sroa_idx365682101117134.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.dl = tail call noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties5empty(), !noalias !254
  store i64 2, ptr %i.by, align 8
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store ptr %i.dl, ptr %.sroa.4324.0..sroa_idx, align 8
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %.val194, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.br

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.dm = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.dn = load ptr, ptr %1, align 8, !alias.scope !256, !noalias !258, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %i.dp = load i8, ptr %i.do, align 4, !range !11, !noalias !259, !noundef !5
  %or.cond6.not.i = icmp eq i8 %i.dp, 0
  br i1 %or.cond6.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dr = load i32, ptr %i.dq, align 8, !range !14, !alias.scope !257, !noalias !260, !noundef !5
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 0, ptr %i.ds, align 8, !alias.scope !255, !noalias !261
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %i.dr, ptr %.sroa.47.0..sroa_idx.i, align 4, !alias.scope !255, !noalias !261
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.du = load i8, ptr %i.dt, align 4, !range !16, !alias.scope !257, !noalias !260, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 53
  %i.dw = icmp ne i8 %i.du, 4
  %i.dx = load i8, ptr %i.dv, align 1, !range !11, !alias.scope !257, !noalias !260
  %i.dy = icmp ne i8 %i.dx, 0
  %or.cond.not26.i = select i1 %i.dw, i1 true, i1 %i.dy
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.ea = load i32, ptr %i.dz, align 8, !range !14, !alias.scope !257, !noalias !260 ; 4 uses
  %i.eb = icmp samesign ugt i32 %i.ea, 255
  %or.cond24.i = select i1 %or.cond.not26.i, i1 true, i1 %i.eb
  br i1 %or.cond24.i, label %._crit_edge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = trunc nuw i32 %i.ea to i8               ; 2 uses
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 39
  %i.ef = load i8, ptr %i.ee, align 1, !range !15, !noalias !259, !noundef !5
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 0, ptr %i.eh, align 8, !alias.scope !255, !noalias !261
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %i.ea, ptr %.sroa.415.0..sroa_idx.i, align 4, !alias.scope !255, !noalias !261
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 1, ptr %i.ei, align 8, !alias.scope !255, !noalias !261
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  store i8 %i.ec, ptr %.sroa.417.0..sroa_idx.i, align 1, !alias.scope !255, !noalias !261
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread

._crit_edge.i:                                    ; preds = %bb.n
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 0, ptr %i.ej, align 8, !alias.scope !255, !noalias !261
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %i.ea, ptr %.sroa.412.0..sroa_idx.i, align 4, !alias.scope !255, !noalias !261
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit: ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.ek, align 8, !alias.scope !256, !noalias !258, !nonnull !5, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val22.i = load i64, ptr %i.el, align 8, !alias.scope !256, !noalias !258, !noundef !5
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI5error(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.bx, ptr nonnull %.val.i, i64 %.val22.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.dm, i8 noundef 1), !noalias !256
  %.pr = load i64, ptr %i.bx, align 8             ; 2 uses
  %.not178 = icmp eq i64 %.pr, -1
  br i1 %.not178, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread, label %bb.bs

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.em = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.em, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.en = load ptr, ptr %1, align 8, !alias.scope !262, !noalias !263, !nonnull !5, !align !10, !noundef !5 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 39
  %i.ep = load i8, ptr %i.eo, align 1, !range !15, !noalias !264, !noundef !5
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 38
  %i.es = load i8, ptr %i.er, align 2, !noalias !264, !noundef !5 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 34
  %i.eu = load i8, ptr %i.et, align 2, !range !11, !noalias !264, !noundef !5
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  %i.ew = load i8, ptr %i.ev, align 4, !range !11, !noalias !264, !noundef !5 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 37
  %i.ey = load i8, ptr %i.ex, align 1, !range !11, !noalias !264, !noundef !5 ; 2 uses
  br i1 %i.eq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %bb.s
  %i.ez = and i8 %i.eu, 1
  %or.cond3.not.i = icmp eq i8 %i.ez, 0
  %or.cond6.not.not.i = icmp eq i8 %i.ew, 0       ; 2 uses
  br i1 %or.cond3.not.i, label %4, label %5

bb.u:                                             ; preds = %bb.s
  %.not31.i = icmp eq i8 %i.ew, 2
  br i1 %.not31.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = trunc nuw i8 %i.ew to i1
  %i.fb = icmp sgt i8 %i.es, -1
  %or.cond.i = and i1 %i.fb, %i.fa
  br i1 %or.cond.i, label %bb.t, label %bb.x

bb.w:                                             ; preds = %bb.u
  %.old.i = icmp sgt i8 %i.es, -1
  br i1 %.old.i, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val35.i = load ptr, ptr %i.fc, align 8, !alias.scope !262, !noalias !263, !nonnull !5, !noundef !5
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val36.i = load i64, ptr %i.fd, align 8, !alias.scope !262, !noalias !263, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !265
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef %.val36.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !265
  %i.fe = load i64, ptr %i.ab, align 8, !range !7, !noalias !265, !noundef !5
  %i.ff = trunc nuw i64 %i.fe to i1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !range !13, !noalias !265, !noundef !5 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.ff, label %bb.y, label %bb.z, !prof !12

bb.y:                                             ; preds = %bb.x
  %i.fj = load i64, ptr %i.fi, align 8, !noalias !265
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fh, i64 %i.fj) #18, !noalias !265
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.fi, align 8, !noalias !265, !nonnull !5, !noundef !5 ; 3 uses
  %i.fl = icmp ule i64 %.val36.i, %i.fh
  tail call void @llvm.assume(i1 %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !265
  %.not.i.i217 = icmp eq i64 %.val36.i, 0
  br i1 %.not.i.i217, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull readonly align 1 %.val35.i, i64 %.val36.i, i1 false), !noalias !265
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit.i

4:                                                ; preds = %bb.t
  br i1 %or.cond6.not.not.i, label %bb.ac, label %bb.ab

5:                                                ; preds = %bb.t
  %..i = zext i1 %or.cond6.not.not.i to i8
  br label %bb.ai

bb.ab:                                            ; preds = %4
  %i.fm = and i8 %i.ey, 1
  %or.cond9.not.i = icmp eq i8 %i.fm, 0
  br i1 %or.cond9.not.i, label %bb.ad, label %.thread53.i

.thread53.i:                                      ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !266
  %i.fn = tail call { i32, i32 } @_RNvMse_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_17ClassUnicodeRange3new(i32 noundef 0, i32 noundef 9), !noalias !266 ; 2 uses
  %i.fo = extractvalue { i32, i32 } %i.fn, 0
  %i.fp = extractvalue { i32, i32 } %i.fn, 1
  %i.fq = tail call { i32, i32 } @_RNvMse_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_17ClassUnicodeRange3new(i32 noundef 11, i32 noundef 12), !noalias !266 ; 2 uses
  %i.fr = extractvalue { i32, i32 } %i.fq, 0
  %i.fs = extractvalue { i32, i32 } %i.fq, 1
  %i.ft = tail call { i32, i32 } @_RNvMse_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_17ClassUnicodeRange3new(i32 noundef 14, i32 noundef 1114111), !noalias !266 ; 2 uses
  %i.fu = extractvalue { i32, i32 } %i.ft, 0
  %i.fv = extractvalue { i32, i32 } %i.ft, 1
  store i32 %i.fo, ptr %i.u, align 4, !noalias !266
  %i.fw = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.fp, ptr %i.fw, align 4, !noalias !266
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.fr, ptr %i.fx, align 4, !noalias !266
  %i.fy = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 %i.fs, ptr %i.fy, align 4, !noalias !266
  %i.fz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.fu, ptr %i.fz, align 4, !noalias !266
  %i.ga = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i32 %i.fv, ptr %i.ga, align 4, !noalias !266
  %i.gb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newAB18_j3_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gb, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(24) %i.u), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !266
  store i64 0, ptr %i.v, align 8, !noalias !266
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.v), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !266
  br label %bb.cb

bb.ac:                                            ; preds = %4
  %6 = shl nuw nsw i8 %i.ey, 1
  %.33.i = or i8 %6, 5
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.gc = icmp sgt i8 %i.es, -1
  br i1 %i.gc, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i216 = load ptr, ptr %i.gd, align 8, !alias.scope !262, !noalias !263, !nonnull !5, !noundef !5
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val34.i = load i64, ptr %i.ge, align 8, !alias.scope !262, !noalias !263, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !267
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %.val34.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !267
  %i.gf = load i64, ptr %i.aa, align 8, !range !7, !noalias !267, !noundef !5
  %i.gg = trunc nuw i64 %i.gf to i1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !range !13, !noalias !267, !noundef !5 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.gg, label %bb.af, label %bb.ag, !prof !12

bb.af:                                            ; preds = %bb.ae
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !267
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gi, i64 %i.gk) #18, !noalias !267
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.gl = load ptr, ptr %i.gj, align 8, !noalias !267, !nonnull !5, !noundef !5 ; 3 uses
  %i.gm = icmp ule i64 %.val34.i, %i.gi
  tail call void @llvm.assume(i1 %i.gm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !267
  %.not.i37.i = icmp eq i64 %.val34.i, 0
  br i1 %.not.i37.i, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gl, ptr nonnull readonly align 1 %.val.i216, i64 %.val34.i, i1 false), !noalias !267
  br label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit.i

.thread.i:                                        ; preds = %bb.ad
  %i.gn = zext nneg i8 %i.es to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !266
  %i.go = tail call { i32, i32 } @_RNvMse_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_17ClassUnicodeRange3new(i32 noundef %i.gn, i32 noundef %i.gn), !noalias !266 ; 2 uses
  %i.gp = extractvalue { i32, i32 } %i.go, 0
  %i.gq = extractvalue { i32, i32 } %i.go, 1
  %.sroa.426.0.insert.ext.i.i = zext i32 %i.gq to i64
  %.sroa.426.0.insert.shift.i.i = shl nuw i64 %.sroa.426.0.insert.ext.i.i, 32
  %.sroa.025.0.insert.ext.i.i = zext i32 %i.gp to i64
  %.sroa.025.0.insert.insert.i.i = or disjoint i64 %.sroa.426.0.insert.shift.i.i, %.sroa.025.0.insert.ext.i.i
  call void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newAB18_j1_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, i64 noundef %.sroa.025.0.insert.insert.i.i), !noalias !266
  invoke void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode6negate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.al unwind label %bb.am, !noalias !266

bb.ai:                                            ; preds = %bb.ac, %5
  %.sroa.0.0.i = phi i8 [ %.33.i, %bb.ac ], [ %..i, %5 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !264
  switch i8 %.sroa.0.0.i, label %default.unreachable.i217 [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 7, label %.thread59.i
    i8 6, label %7
    i8 5, label %.thread56.i
  ]

default.unreachable.i217:                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !266
  %i.gr = tail call { i32, i32 } @_RNvMse_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_17ClassUnicodeRange3new(i32 noundef 0, i32 noundef 1114111), !noalias !266 ; 2 uses
  %i.gs = extractvalue { i32, i32 } %i.gr, 0
  %i.gt = extractvalue { i32, i32 } %i.gr, 1
  %.sroa.422.0.insert.ext.i.i = zext i32 %i.gt to i64
  %.sroa.422.0.insert.shift.i.i = shl nuw i64 %.sroa.422.0.insert.ext.i.i, 32
  %.sroa.021.0.insert.ext.i.i = zext i32 %i.gs to i64
  %.sroa.021.0.insert.insert.i.i = or disjoint i64 %.sroa.422.0.insert.shift.i.i, %.sroa.021.0.insert.ext.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newAB18_j1_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gu, i64 noundef %.sroa.021.0.insert.insert.i.i), !noalias !266
  store i64 0, ptr %i.z, align 8, !noalias !266
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.z), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !266
  br label %bb.cb

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !266
  %i.gv = tail call { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef 0, i8 noundef -1), !noalias !266 ; 2 uses
  %i.gw = extractvalue { i8, i8 } %i.gv, 0
  %i.gx = extractvalue { i8, i8 } %i.gv, 1
  %.sroa.424.0.insert.ext.i.i = zext i8 %i.gx to i16
  %.sroa.424.0.insert.shift.i.i = shl nuw i16 %.sroa.424.0.insert.ext.i.i, 8
  %.sroa.023.0.insert.ext.i.i = zext i8 %i.gw to i16
  %.sroa.023.0.insert.insert.i.i = or disjoint i16 %.sroa.424.0.insert.shift.i.i, %.sroa.023.0.insert.ext.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j1_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gy, i16 noundef %.sroa.023.0.insert.insert.i.i), !noalias !266
  store i64 1, ptr %i.y, align 8, !noalias !266
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.y), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !266
  br label %bb.cb

.thread56.i:                                      ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !266
  %i.gz = tail call { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef %i.es, i8 noundef %i.es), !noalias !266 ; 2 uses
  %i.ha = extractvalue { i8, i8 } %i.gz, 0
  %i.hb = extractvalue { i8, i8 } %i.gz, 1
  %.sroa.430.0.insert.ext.i.i = zext i8 %i.hb to i16
  %.sroa.430.0.insert.shift.i.i = shl nuw i16 %.sroa.430.0.insert.ext.i.i, 8
  %.sroa.029.0.insert.ext.i.i = zext i8 %i.ha to i16
  %.sroa.029.0.insert.insert.i.i = or disjoint i16 %.sroa.430.0.insert.shift.i.i, %.sroa.029.0.insert.ext.i.i
  call void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j1_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, i16 noundef %.sroa.029.0.insert.insert.i.i), !noalias !266
  invoke void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes6negate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.ao unwind label %bb.ap, !noalias !266

7:                                                ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !266
  %8 = tail call { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef 0, i8 noundef 9), !noalias !266 ; 2 uses
  %9 = extractvalue { i8, i8 } %8, 0
  %10 = extractvalue { i8, i8 } %8, 1
  %11 = tail call { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef 11, i8 noundef -1), !noalias !266 ; 2 uses
  %12 = extractvalue { i8, i8 } %11, 0
  %13 = extractvalue { i8, i8 } %11, 1
  %.sroa.634.0.insert.ext.i.i = zext i8 %13 to i32
  %.sroa.634.0.insert.shift.i.i = shl nuw i32 %.sroa.634.0.insert.ext.i.i, 24
  %.sroa.533.0.insert.ext.i.i = zext i8 %12 to i32
  %.sroa.533.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.533.0.insert.ext.i.i, 16
  %.sroa.533.0.insert.insert.i.i = or disjoint i32 %.sroa.634.0.insert.shift.i.i, %.sroa.533.0.insert.shift.i.i
  %.sroa.432.0.insert.ext.i.i = zext i8 %10 to i32
  %.sroa.432.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.432.0.insert.ext.i.i, 8
  %.sroa.432.0.insert.insert.i.i = or disjoint i32 %.sroa.533.0.insert.insert.i.i, %.sroa.432.0.insert.shift.i.i
  %.sroa.031.0.insert.ext.i.i = zext i8 %9 to i32
  %.sroa.031.0.insert.insert.i.i = or disjoint i32 %.sroa.432.0.insert.insert.i.i, %.sroa.031.0.insert.ext.i.i
  %14 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j2_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %14, i32 noundef %.sroa.031.0.insert.insert.i.i), !noalias !266
  store i64 1, ptr %i.r, align 8, !noalias !266
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.r), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !266
  br label %bb.cb

.thread59.i:                                      ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !266
  %i.hc = tail call { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef 0, i8 noundef 9), !noalias !266 ; 2 uses
  %i.hd = extractvalue { i8, i8 } %i.hc, 0
  %i.he = extractvalue { i8, i8 } %i.hc, 1
  %i.hf = tail call { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef 11, i8 noundef 12), !noalias !266 ; 2 uses
  %i.hg = extractvalue { i8, i8 } %i.hf, 0
  %i.hh = extractvalue { i8, i8 } %i.hf, 1
  %i.hi = tail call { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef 14, i8 noundef -1), !noalias !266 ; 2 uses
  %i.hj = extractvalue { i8, i8 } %i.hi, 0
  %i.hk = extractvalue { i8, i8 } %i.hi, 1
  %.sroa.035.0.insert.ext.i.i = zext i8 %i.hd to i48
  %.sroa.035.1.insert.ext.i.i = zext i8 %i.he to i48
  %.sroa.035.1.insert.shift.i.i = shl nuw nsw i48 %.sroa.035.1.insert.ext.i.i, 8
  %.sroa.035.1.insert.insert.i.i = or disjoint i48 %.sroa.035.1.insert.shift.i.i, %.sroa.035.0.insert.ext.i.i
  %.sroa.035.2.insert.ext.i.i = zext i8 %i.hg to i48
  %.sroa.035.2.insert.shift.i.i = shl nuw nsw i48 %.sroa.035.2.insert.ext.i.i, 16
  %.sroa.035.2.insert.insert.i.i = or disjoint i48 %.sroa.035.1.insert.insert.i.i, %.sroa.035.2.insert.shift.i.i
  %.sroa.035.3.insert.ext.i.i = zext i8 %i.hh to i48
  %.sroa.035.3.insert.shift.i.i = shl nuw nsw i48 %.sroa.035.3.insert.ext.i.i, 24
  %.sroa.035.3.insert.insert.i.i = or disjoint i48 %.sroa.035.2.insert.insert.i.i, %.sroa.035.3.insert.shift.i.i
  %.sroa.035.4.insert.ext.i.i = zext i8 %i.hj to i48
  %.sroa.035.4.insert.shift.i.i = shl nuw nsw i48 %.sroa.035.4.insert.ext.i.i, 32
  %.sroa.035.4.insert.insert.i.i = or disjoint i48 %.sroa.035.3.insert.insert.i.i, %.sroa.035.4.insert.shift.i.i
  %.sroa.035.5.insert.ext.i.i = zext i8 %i.hk to i48
  %.sroa.035.5.insert.shift.i.i = shl nuw i48 %.sroa.035.5.insert.ext.i.i, 40
  %.sroa.035.5.insert.insert.i.i = or disjoint i48 %.sroa.035.4.insert.insert.i.i, %.sroa.035.5.insert.shift.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j3_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.hl, i48 noundef %.sroa.035.5.insert.insert.i.i), !noalias !266
  store i64 1, ptr %3, align 8, !noalias !266
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(40) %3), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !266
  br label %bb.cb

bb.al:                                            ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !266
  %i.hm = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !266
  store i64 0, ptr %i.w, align 8, !noalias !266
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.w), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !266
  br label %bb.cb

common.resume:                                    ; preds = %bb.du, %bb.dh, %bb.dj, %bb.dd, %bb.dx, %.body.thread, %.body246.thread, %.thread535, %.thread564, %bb.er, %bb.et, %.body.i.i, %.body.i, %bb.gh, %bb.gj, %bb.gn, %bb.da, %bb.ct, %bb.cv, %bb.am, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.ma, %bb.dh ], [ %i.hq, %bb.ap ], [ %i.lm, %bb.ct ], [ %i.lv, %bb.da ], [ %i.qg, %.body.i ], [ %i.hn, %bb.am ], [ %i.lm, %bb.cv ], [ %lpad.thr_comm496, %bb.dx ], [ %i.mu, %bb.du ], [ %lpad.thr_comm.split-lp, %bb.dd ], [ %i.ma, %bb.dj ], [ %eh.lpad-body508, %.body.thread ], [ %i.qg, %bb.gh ], [ %eh.lpad-body247522, %.body246.thread ], [ %i.qu, %bb.gn ], [ %.pn161538, %.thread535 ], [ %i.qr, %bb.gj ], [ %.pn567, %.thread564 ], [ %i.oo, %bb.et ], [ %i.nw, %bb.er ], [ %.pn.i.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.am:                                            ; preds = %.thread.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir12ClassUnicodeEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.x) #16
          to label %common.resume unwind label %bb.an, !noalias !266

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !266
  unreachable

bb.ao:                                            ; preds = %.thread56.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !266
  %i.hp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hp, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !266
  store i64 1, ptr %i.s, align 8, !noalias !266
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.s), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !266
  br label %bb.cb

bb.ap:                                            ; preds = %.thread56.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10ClassBytesEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.t) #16
          to label %common.resume unwind label %bb.an, !noalias !266

bb.aq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.hr = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  %.val197 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 48
  %.val198 = load i8, ptr %i.hs, align 8          ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val197, i64 36
  %i.hu = load i8, ptr %i.ht, align 4, !range !11, !noalias !268, !noundef !5 ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.val197, i64 33
  %i.hw = load i8, ptr %i.hv, align 1, !range !11, !noalias !268, !noundef !5
  %i.hx = and i8 %i.hw, 1
  %.sroa.06.0.not1.i = icmp eq i8 %i.hx, 0        ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.val197, i64 37
  %i.hz = load i8, ptr %i.hy, align 1, !range !11, !noalias !268, !noundef !5 ; 2 uses
  %.not101.i = icmp eq i8 %i.hz, 2
  br i1 %.not101.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = trunc nuw i8 %i.hz to i1                ; 2 uses
  switch i8 %.val198, label %default.unreachable.i219 [
    i8 0, label %bb.be
    i8 1, label %bb.bf
    i8 2, label %bb.cc
    i8 3, label %bb.av
    i8 4, label %bb.aw
    i8 5, label %bb.ax
    i8 6, label %bb.ay
    i8 7, label %bb.az
    i8 8, label %bb.ay
    i8 9, label %bb.az
    i8 10, label %bb.ba
    i8 11, label %bb.bb
  ]

bb.as:                                            ; preds = %bb.aq
  switch i8 %.val198, label %default.unreachable.i219 [
    i8 0, label %bb.at
    i8 1, label %bb.au
    i8 2, label %bb.cc
    i8 3, label %bb.av
    i8 4, label %bb.aw
    i8 5, label %bb.ax
    i8 6, label %bb.ay
    i8 7, label %bb.az
    i8 8, label %bb.ay
    i8 9, label %bb.az
    i8 10, label %bb.ba
    i8 11, label %bb.bb
  ]

default.unreachable.i219:                         ; preds = %bb.as, %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.as
  br i1 %.sroa.06.0.not1.i, label %bb.cc, label %bb.bc

bb.au:                                            ; preds = %bb.as
  br i1 %.sroa.06.0.not1.i, label %bb.cc, label %bb.bd

bb.av:                                            ; preds = %bb.as, %bb.ar
  br label %bb.cc

bb.aw:                                            ; preds = %bb.as, %bb.ar
  %.not6.i = icmp eq i8 %i.hu, 0
  %.sroa.019.0.i = select i1 %.not6.i, i32 64, i32 256
  br label %bb.cc

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %.not5.i = icmp eq i8 %i.hu, 0
  %.sroa.021.0.i = select i1 %.not5.i, i32 128, i32 512
  br label %bb.cc

bb.ay:                                            ; preds = %bb.as, %bb.as, %bb.ar, %bb.ar
  %.not4.i = icmp eq i8 %i.hu, 0
  %.sroa.023.0.i = select i1 %.not4.i, i32 1024, i32 4096
  br label %bb.cc

bb.az:                                            ; preds = %bb.as, %bb.as, %bb.ar, %bb.ar
  %.not3.i = icmp eq i8 %i.hu, 0
  %.sroa.025.0.i = select i1 %.not3.i, i32 2048, i32 8192
  br label %bb.cc

bb.ba:                                            ; preds = %bb.as, %bb.ar
  %.not2.i = icmp eq i8 %i.hu, 0
  %.sroa.027.0.i = select i1 %.not2.i, i32 16384, i32 65536
  br label %bb.cc

bb.bb:                                            ; preds = %bb.as, %bb.ar
  %.not.i = icmp eq i8 %i.hu, 0
  %.sroa.029.0.i = select i1 %.not.i, i32 32768, i32 131072
  br label %bb.cc

bb.bc:                                            ; preds = %bb.be, %bb.at
  br label %bb.cc

bb.bd:                                            ; preds = %bb.bf, %bb.au
  br label %bb.cc

bb.be:                                            ; preds = %bb.ar
  %brmerge.i = select i1 %.sroa.06.0.not1.i, i1 true, i1 %i.ia
  %.mux.i = select i1 %.sroa.06.0.not1.i, i32 1, i32 16
  br i1 %brmerge.i, label %bb.cc, label %bb.bc

bb.bf:                                            ; preds = %bb.ar
  %brmerge103.i = select i1 %.sroa.06.0.not1.i, i1 true, i1 %i.ia
  %.mux104.i = select i1 %.sroa.06.0.not1.i, i32 2, i32 32
  br i1 %brmerge103.i, label %bb.cc, label %bb.bd

bb.bg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.ib = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI17hir_unicode_class(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ib)
  %i.ic = load i64, ptr %i.bj, align 8, !range !4, !noundef !5 ; 2 uses
  %.not175 = icmp eq i64 %i.ic, -1
  %i.id = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, ptr noundef nonnull align 8 dereferenceable(32) %i.id, i64 32, i1 false)
  br i1 %.not175, label %bb.ce, label %bb.cd

bb.bh:                                            ; preds = %bb.a
  %.val200 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val200, i64 32
  %.sroa.0.0.copyload.i220 = load i48, ptr %i.ie, align 8
  %.sroa.4341.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i220, 32
  %.sroa.4341.0.extract.trunc = trunc i48 %.sroa.4341.0.extract.shift to i8
  %.sroa.0.0.i.not = icmp eq i8 %.sroa.4341.0.extract.trunc, 0
  br i1 %.sroa.0.0.i.not, label %bb.cf, label %bb.cg

bb.bi:                                            ; preds = %bb.a
  %.val199 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 17 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.val199, i64 32
  %.sroa.0.0.copyload.i221 = load i48, ptr %i.if, align 8 ; 2 uses
  %i.ig = and i48 %.sroa.0.0.copyload.i221, 1095216660480
  %.sroa.0.0.i222.not = icmp eq i48 %i.ig, 0
  br i1 %.sroa.0.0.i222.not, label %bb.cl, label %bb.co

bb.bj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6361)
  %.val209 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 13 uses
  %i.ih = load i64, ptr %.val209, align 8, !noalias !269, !noundef !5
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.bk, label %bb.bl, !prof !9

bb.bk:                                            ; preds = %bb.bj
  store i64 -1, ptr %.val209, align 8, !noalias !269
  %i.ij = getelementptr inbounds nuw i8, ptr %.val209, i64 24 ; 4 uses
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !269, !noundef !5 ; 3 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit.thread, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit.thread: ; preds = %bb.bk
  store i64 0, ptr %.val209, align 8, !noalias !269
  br label %bb.eb
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor10visit_post:bb.a
  %i.iu = load i64, ptr %.val208, align 8, !noalias !270, !noundef !5
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.bn, label %bb.bo, !prof !9

bb.bn:                                            ; preds = %bb.bm
  store i64 -1, ptr %.val208, align 8, !noalias !270
  %i.iw = getelementptr inbounds nuw i8, ptr %.val208, i64 24 ; 4 uses
  %i.ix = load i64, ptr %i.iw, align 8, !noalias !270, !noundef !5 ; 3 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit223.thread, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit223

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit223.thread: ; preds = %bb.bn
  store i64 0, ptr %.val208, align 8, !noalias !270
  br label %bb.fn

bb.bo:                                            ; preds = %bb.bm
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2980) #18, !noalias !270
  unreachable

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit223: ; preds = %bb.bn
  %i.iz = getelementptr inbounds nuw i8, ptr %.val208, i64 8 ; 2 uses
  %i.ja = add nsw i64 %i.ix, -1                   ; 3 uses
  store i64 %i.ja, ptr %i.iw, align 8, !noalias !270
  %i.jb = load i64, ptr %i.iz, align 8, !range !17, !noalias !270, !noundef !5
  %i.jc = icmp samesign ult i64 %i.ja, %i.jb
  tail call void @llvm.assume(i1 %i.jc)
  %i.jd = getelementptr inbounds nuw i8, ptr %.val208, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !270, !nonnull !5, !noundef !5
  %i.jf = icmp ult i64 %i.ix, 192153584101141164
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.je, i64 %i.ja ; 2 uses
  %.sroa.0377.0.copyload378 = load i64, ptr %i.jg, align 8 ; 2 uses
  %.sroa.6379.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6379, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6379.0..sroa_idx380, i64 40, i1 false)
  store i64 0, ptr %.val208, align 8, !noalias !270
  %.not163 = icmp eq i64 %.sroa.0377.0.copyload378, -1
  br i1 %.not163, label %bb.fn, label %bb.fk, !prof !20

bb.bp:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  store i64 0, ptr %i.ji, align 8
  %.val214 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11413)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.jj = load i64, ptr %.val214, align 8, !noalias !272, !noundef !5
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %.lr.ph688, label %._crit_edge689, !prof !273

.lr.ph688:                                        ; preds = %bb.bp
  %i.jl = getelementptr inbounds nuw i8, ptr %.val214, i64 24 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val214, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.val214, i64 16 ; 2 uses
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.10410.0..sroa_idx411 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11413.0..sroa_idx414 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.11415.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.9407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.10410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.11413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.11415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.6420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  br label %bb.go

bb.bq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 0, ptr %i.ao, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 4 uses
  store i64 0, ptr %i.jq, align 8
  %.val215 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i278)
  %i.jr = load i64, ptr %.val215, align 8, !noalias !275, !noundef !5
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %.lr.ph, label %._crit_edge, !prof !273

.lr.ph:                                           ; preds = %bb.bq
  %i.jt = getelementptr inbounds nuw i8, ptr %.val215, i64 24 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.val215, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %.val215, i64 16
  %.sroa.410.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.10397.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.11400.0..sroa_idx401 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.11402.0..sroa_idx403 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.9394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.10397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.11400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.11402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 3 uses
  br label %bb.hu

bb.br:                                            ; preds = %bb.bt, %bb.by, %bb.bx, %bb.dc, %bb.dw, %bb.ci, %bb.ck, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEBS_.exit313, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEBS_.exit, %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI11hir_capture.exit, %bb.fj, %bb.ce, %bb.cc, %bb.cb, %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI9set_flags.exit, %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.ca

bb.bs:                                            ; preds = %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.483.0.copyload = load i64, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.587.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.584.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.bz

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread: ; preds = %._crit_edge.i, %bb.r, %bb.q, %bb.m, %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.078.0.copyload = load i64, ptr %i.jx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.sroa.38.0.extract.shift = lshr i64 %.sroa.078.0.copyload, 32
  %.sroa.38.0.extract.trunc = trunc nuw i64 %.sroa.38.0.extract.shift to i32 ; 2 uses
  %i.jy = trunc i64 %.sroa.078.0.copyload to i1
  br i1 %i.jy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread
  %.sroa.2.0.extract.shift = lshr i64 %.sroa.078.0.copyload, 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8
  tail call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI9push_byte(ptr nonnull %i.dn, i8 noundef %.sroa.2.0.extract.trunc)
  br label %bb.br

bb.bu:                                            ; preds = %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI21ast_literal_to_scalar.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.dm, i64 48, i1 false)
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI14case_fold_char(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bv, i32 noundef %.sroa.38.0.extract.trunc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.jz = load i64, ptr %i.bw, align 8, !range !4, !noundef !5 ; 2 uses
  %.not179 = icmp eq i64 %i.jz, -1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.088.0.copyload = load i64, ptr %i.ka, align 8 ; 3 uses
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.611.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.489.0..sroa_idx, i64 40, i1 false)
  br i1 %.not179, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.697.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.611.sroa.7, i64 40, i1 false)
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %.not180 = icmp eq i64 %.sroa.088.0.copyload, -1
  br i1 %.not180, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.611.sroa.7, i64 40, i1 false)
  store i64 %.sroa.088.0.copyload, ptr %i.bu, align 8
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %i.dn, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.br

bb.by:                                            ; preds = %bb.bw
  tail call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI9push_char(ptr nonnull %i.dn, i32 noundef %.sroa.38.0.extract.trunc)
  br label %bb.br

bb.bz:                                            ; preds = %bb.bv, %bb.bs
  %.sink = phi i64 [ %i.jz, %bb.bv ], [ %.pr, %bb.bs ]
  %.sroa.088.0.copyload.sink = phi i64 [ %.sroa.088.0.copyload, %bb.bv ], [ %.sroa.483.0.copyload, %bb.bs ]
  store i64 %.sink, ptr %0, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.088.0.copyload.sink, ptr %.sroa.499.0..sroa_idx, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir10ClassBytesEBF_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs79ICTHwG85D_12regex_syntax3hir12ClassUnicodeEBF_.exit, %bb.ch, %bb.cj, %bb.cd, %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit.i, %bb.bz, %bb.br
  ret void

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit.i: ; preds = %bb.ag, %bb.ah, %bb.z, %bb.aa
  %.sroa.18.0.ph = phi i8 [ 1, %bb.z ], [ 1, %bb.aa ], [ 2, %bb.ah ], [ 2, %bb.ag ]
  %.sroa.13.0.ph = phi i64 [ %.val36.i, %bb.z ], [ %.val36.i, %bb.aa ], [ %.val34.i, %bb.ah ], [ %.val34.i, %bb.ag ]
  %.sroa.8327.0.ph = phi ptr [ %i.fk, %bb.z ], [ %i.fk, %bb.aa ], [ %i.gl, %bb.ah ], [ %i.gl, %bb.ag ]
  %.sroa.0325.0.ph = phi i64 [ %i.fh, %bb.z ], [ %i.fh, %bb.aa ], [ %i.gi, %bb.ah ], [ %i.gi, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %.sroa.4109.sroa.5.0..sroa.4109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4109.sroa.5.0..sroa.4109.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15, i64 32, i1 false)
  store i64 %.sroa.0325.0.ph, ptr %0, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8327.0.ph, ptr %.sroa.4109.0..sroa_idx, align 8
  %.sroa.4109.sroa.4.0..sroa.4109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.ph, ptr %.sroa.4109.sroa.4.0..sroa.4109.0..sroa_idx.sroa_idx, align 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %.sroa.5110.sroa.4.0..sroa.5110.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.18.0.ph, ptr %.sroa.5110.sroa.4.0..sroa.5110.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.ca

bb.cb:                                            ; preds = %bb.ao, %bb.al, %.thread59.i, %7, %bb.ak, %bb.aj, %.thread53.i
  %.sroa.8327.8.copyload329 = load ptr, ptr %i.ac, align 8, !noalias !276
  %.sroa.13.8..sroa_idx331 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.13.8.copyload332 = load i64, ptr %.sroa.13.8..sroa_idx331, align 8, !noalias !276
  %.sroa.15.8..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.8..sroa_idx333, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15, i64 32, i1 false)
  store ptr %.sroa.8327.8.copyload329, ptr %i.bt, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.13.8.copyload332, ptr %.sroa.2.0..sroa_idx, align 8
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %i.en, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.br

bb.cc:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.sroa.029.0.sink.i = phi i32 [ %.sroa.029.0.i, %bb.bb ], [ %.sroa.027.0.i, %bb.ba ], [ %.sroa.025.0.i, %bb.az ], [ %.sroa.023.0.i, %bb.ay ], [ %.sroa.021.0.i, %bb.ax ], [ %.sroa.019.0.i, %bb.aw ], [ %.mux104.i, %bb.bf ], [ 1, %bb.ar ], [ 2, %bb.av ], [ 2, %bb.au ], [ 8, %bb.bd ], [ 1, %bb.as ], [ 1, %bb.at ], [ 4, %bb.bc ], [ %.mux.i, %bb.be ] ; 2 uses
  %i.kb = tail call noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties4look(i32 noundef %.sroa.029.0.sink.i), !noalias !268
  store i64 5, ptr %i.br, align 8
  %.sroa.2441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %.sroa.029.0.sink.i, ptr %.sroa.2441.0..sroa_idx, align 8
  %.sroa.4443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.kb, ptr %.sroa.4443.0..sroa_idx, align 8
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %.val197, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.br

bb.cd:                                            ; preds = %bb.bg
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5143.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4145.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false)
  store i64 %i.ic, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.ca

bb.ce:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false)
  store i64 0, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bk)
  %.val188 = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %.val188, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.br

bb.cf:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.kd = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI19hir_perl_byte_class(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.kd)
  %i.ke = load i64, ptr %i.bn, align 8, !range !4, !noundef !5 ; 2 uses
  %.not173 = icmp eq i64 %i.ke, -1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, ptr noundef nonnull align 8 dereferenceable(32) %i.kf, i64 32, i1 false)
  br i1 %.not173, label %bb.ci, label %bb.ch

bb.cg:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.645)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.kg = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI22hir_perl_unicode_class(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.kg)
  %i.kh = load i64, ptr %i.bq, align 8, !range !4, !noundef !5 ; 2 uses
  %.not174 = icmp eq i64 %i.kh, -1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.645, ptr noundef nonnull align 8 dereferenceable(32) %i.ki, i64 32, i1 false)
  br i1 %.not174, label %bb.ck, label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5134.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4136.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, i64 32, i1 false)
  store i64 %i.ke, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  br label %bb.ca

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  store i64 1, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bl, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bm)
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %.val200, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.br

bb.cj:                                            ; preds = %bb.cg
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5125.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4127.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.645, i64 32, i1 false)
  store i64 %i.kh, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645)
  br label %bb.ca

bb.ck:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.645, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645)
  store i64 0, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call fastcc void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir5class(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bo, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bp)
  call fastcc void @_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI4push(ptr nonnull %.val200, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.br

bb.cl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6357)
  %i.kl = load i64, ptr %.val199, align 8, !noalias !277, !noundef !5
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %bb.cm, label %bb.cn, !prof !9

bb.cm:                                            ; preds = %bb.cl
  store i64 -1, ptr %.val199, align 8, !noalias !277
  %i.kn = getelementptr inbounds nuw i8, ptr %.val199, i64 24 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !277, !noundef !5 ; 3 uses
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit224.thread, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit224

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit224.thread: ; preds = %bb.cm
  store i64 0, ptr %.val199, align 8, !noalias !277
  br label %bb.cx

bb.cn:                                            ; preds = %bb.cl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2980) #18, !noalias !277
  unreachable

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit224: ; preds = %bb.cm
  %i.kq = getelementptr inbounds nuw i8, ptr %.val199, i64 8
  %i.kr = add nsw i64 %i.ko, -1                   ; 3 uses
  store i64 %i.kr, ptr %i.kn, align 8, !noalias !277
  %i.ks = load i64, ptr %i.kq, align 8, !range !17, !noalias !277, !noundef !5
  %i.kt = icmp samesign ult i64 %i.kr, %i.ks
  tail call void @llvm.assume(i1 %i.kt)
  %i.ku = getelementptr inbounds nuw i8, ptr %.val199, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !277, !nonnull !5, !noundef !5
  %i.kw = icmp ult i64 %i.ko, 192153584101141164
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = getelementptr inbounds nuw [48 x i8], ptr %i.kv, i64 %i.kr ; 2 uses
  %.sroa.0355.0.copyload356 = load i64, ptr %i.kx, align 8 ; 3 uses
  %.sroa.6357.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6357, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6357.0..sroa_idx358, i64 40, i1 false)
  store i64 0, ptr %.val199, align 8, !noalias !277
  %.not167 = icmp eq i64 %.sroa.0355.0.copyload356, -1
  br i1 %.not167, label %bb.cx, label %bb.cr, !prof !20

bb.co:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6348)
  %i.ky = load i64, ptr %.val199, align 8, !noalias !278, !noundef !5
  %i.kz = icmp eq i64 %i.ky, 0
  br i1 %i.kz, label %bb.cp, label %bb.cq, !prof !9

bb.cp:                                            ; preds = %bb.co
  store i64 -1, ptr %.val199, align 8, !noalias !278
  %i.la = getelementptr inbounds nuw i8, ptr %.val199, i64 24 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !noalias !278, !noundef !5 ; 3 uses
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit225.thread, label %_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit225

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit225.thread: ; preds = %bb.cp
  store i64 0, ptr %.val199, align 8, !noalias !278
  br label %bb.ds

bb.cq:                                            ; preds = %bb.co
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2980) #18, !noalias !278
  unreachable

_RNvMs3_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_11TranslatorI3pop.exit225: ; preds = %bb.cp
  %i.ld = getelementptr inbounds nuw i8, ptr %.val199, i64 8
  %i.le = add nsw i64 %i.lb, -1                   ; 3 uses
  store i64 %i.le, ptr %i.la, align 8, !noalias !278
  %i.lf = load i64, ptr %i.ld, align 8, !range !17, !noalias !278, !noundef !5
  %i.lg = icmp samesign ult i64 %i.le, %i.lf
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = getelementptr inbounds nuw i8, ptr %.val199, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !278, !nonnull !5, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionbENtNtB7_3fmt5Debug3fmtCs79ICTHwG85D_12regex_syntax:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !11, !noundef !5
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3030, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3029)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3028, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtCs79ICTHwG85D_12regex_syntax3hir9translateNtB5_8HirFrameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 9)
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3032, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3031)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3034, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3033)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3036, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3035)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.b, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3038, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3037)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3039, i64 noundef 10)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.a, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3041, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3042, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3040)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3043, i64 noundef 6)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3044, i64 noundef 11)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3045, i64 noundef 17)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.t, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties5empty() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties7literal(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir15ClassBytesRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs79ICTHwG85D_12regex_syntax(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir15ClassBytesRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs79ICTHwG85D_12regex_syntax(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsm_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs79ICTHwG85D_12regex_syntax3ast7visitor5visitNtNtNtB6_3hir9translate11TranslatorIEB6_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties10repetition(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMse_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_17ClassUnicodeRange3new(i32 noundef range(i32 0, 1114112), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newAB18_j1_EBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvMsi_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j1_EBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode6negate(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newAB18_j3_EBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes6negate(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j2_EBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newAB18_j3_EBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i48 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes5empty(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties5class(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_5Class7literal(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties7capture(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCs79ICTHwG85D_12regex_syntax(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties4look(i32 noundef range(i32 1, 131073)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newINtNtCscdodAO9FK5_5alloc3vec3VecB18_EEBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes16case_fold_simple(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs2_NtCs79ICTHwG85D_12regex_syntax7unicodeNtB5_16SimpleCaseFolder8overlaps(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef range(i32 0, 1114112), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtCscdodAO9FK5_5alloc3vec3VecB18_EEBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode20try_case_fold_simple(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCs79ICTHwG85D_12regex_syntax7unicode5class(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes8is_ascii(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1E_6copied6CopiedINtNtNtB1I_5slice4iter4IterThhEEENCNvMs3_NtB8_9translateNtB3p_11TranslatorI20hir_ascii_byte_class0EEBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCs79ICTHwG85D_12regex_syntax7unicode10perl_digit(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCs79ICTHwG85D_12regex_syntax7unicode10perl_space(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCs79ICTHwG85D_12regex_syntax7unicode9perl_word(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs79ICTHwG85D_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB1C_INtNtB1G_6copied6CopiedINtNtNtB1K_5slice4iter4IterThhEEENCNvNtB8_9translate20ascii_class_as_chars0ENCNvMs3_B3s_NtB3s_11TranslatorI23hir_ascii_unicode_class0EEBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs79ICTHwG85D_12regex_syntax(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs79ICTHwG85D_12regex_syntax3hir3HirE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs79ICTHwG85D_12regex_syntax3hir9translate8HirFrameE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs79ICTHwG85D_12regex_syntax(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs79ICTHwG85D_12regex_syntax(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2t_6copied6CopiedINtNtNtB2x_5slice4iter4IterThhEEENCNvNtB14_9translate21hir_ascii_class_bytes0EE9from_iterB16_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsC_NtCscdodAO9FK5_5alloc3vecINtNtB7_5boxed3BoxShEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_3VechEE4fromCs79ICTHwG85D_12regex_syntax(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir11alternation(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3Hir6concat(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode5empty(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes4push(ptr noalias noundef align 8 dereferenceable(32), i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode4push(ptr noalias noundef align 8 dereferenceable(32), i32 noundef range(i32 0, 1114112), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes5union(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode5union(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes9intersect(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes10difference(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsf_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10ClassBytes20symmetric_difference(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode9intersect(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode10difference(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_12ClassUnicode20symmetric_difference(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRbNtB6_5Debug3fmtCs79ICTHwG85D_12regex_syntax(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs79ICTHwG85D_12regex_syntax3hir3HirNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_5Debug3fmtCs79ICTHwG85D_12regex_syntax(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs79ICTHwG85D_12regex_syntax3hir12ClassUnicodeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs79ICTHwG85D_12regex_syntax3hir10ClassBytesNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionbENtB6_5Debug3fmtCs79ICTHwG85D_12regex_syntax(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind }
end_hunk_2
