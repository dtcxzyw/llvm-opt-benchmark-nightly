Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cat-8a8a5503c214c967.uu_cat.f0005ff5274a7231-cgu.0?download=true
inline.NumInlined: 454
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs3_CskBwnbTnIhiv_6uu_catNtB5_8CatErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !969
  %i.ag = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 9) 1) #23, !noalias !969 ; 18 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.p, label %bb.q

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.ai = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !8, !align !17, !noundef !8
  %i.al = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef nonnull @28, ptr noundef nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val104 = load i64, ptr %i.h, align 8, !range !11, !noundef !8 ; 2 uses
  %i.am = icmp eq i64 %.val104, 0
  br i1 %i.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit112, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val105 = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val105, i64 noundef %.val104, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit112

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit112: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.ao = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !8, !align !17, !noundef !8
  %i.ar = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noundef nonnull @28, ptr noundef nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val102 = load i64, ptr %i.f, align 8, !range !11, !noundef !8 ; 2 uses
  %i.as = icmp eq i64 %.val102, 0
  br i1 %i.as, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit113, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val103 = load ptr, ptr %i.at, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val103, i64 noundef %.val102, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit113

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit113: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.470.0..sroa_idx, align 8
  %i.au = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !8, !align !17, !noundef !8
  %i.ax = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noundef nonnull @28, ptr noundef nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val100 = load i64, ptr %i.d, align 8, !range !11, !noundef !8 ; 2 uses
  %i.ay = icmp eq i64 %.val100, 0
  br i1 %i.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit114, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val101 = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val101, i64 noundef %.val100, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit114

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit114: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx, align 8
  %i.ba = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !8, !align !17, !noundef !8
  %i.bd = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noundef nonnull @28, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8, !range !11, !noundef !8 ; 2 uses
  %i.be = icmp eq i64 %.val, 0
  br i1 %i.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit115, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val99 = load ptr, ptr %i.bf, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit115

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit115: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit115, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit114, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit113, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit112, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit183, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit
  %.sroa.0.1.in = phi i1 [ %i.y, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit ], [ %i.gf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit183 ], [ %i.al, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit112 ], [ %i.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit113 ], [ %i.ax, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit114 ], [ %i.bd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit115 ]
  ret i1 %.sroa.0.1.in

bb.p:                                             ; preds = %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.ae) #26
  unreachable

bb.q:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.ac, i64 %i.ae, i1 false)
  %cond = icmp eq i64 %i.ae, 1
  %i.bg = load i8, ptr %i.ag, align 1, !alias.scope !970, !noalias !971 ; 2 uses
  br i1 %cond, label %bb.r, label %thread-pre-split.i

bb.r:                                             ; preds = %bb.q
  switch i8 %i.bg, label %bb.y [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.q
  switch i8 %i.bg, label %bb.y [
    i8 43, label %bb.s
    i8 45, label %bb.t
  ]

bb.s:                                             ; preds = %thread-pre-split.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.bi = add nsw i64 %i.ae, -1
  br label %bb.y

bb.t:                                             ; preds = %thread-pre-split.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.bk = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.bl = icmp samesign ult i64 %i.ae, 17
  br i1 %i.bl, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.w
  %.sroa.0.1136.i = phi ptr [ %i.bm, %bb.w ], [ %i.bj, %bb.t ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.bn, %bb.w ], [ %i.bk, %bb.t ]
  %.sroa.084.0134.i = phi i64 [ %i.by, %bb.w ], [ 0, %bb.t ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.bn = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.bo = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 0
  %i.bq = extractvalue { i64, i1 } %i.bo, 1
  br i1 %i.bq, label %.thread, label %bb.u, !prof !10

bb.u:                                             ; preds = %.lr.ph.i
  %i.br = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !970, !noalias !971, !noundef !8
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 10
  br i1 %i.bu, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bp, i64 %i.bv) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %.thread, label %bb.w, !prof !10

bb.w:                                             ; preds = %bb.v
  %i.by = extractvalue { i64, i1 } %i.bw, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.bn, 0
  br i1 %.not102.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.t, %bb.x
  %.sroa.0.2140.i = phi ptr [ %i.cf, %bb.x ], [ %i.bj, %bb.t ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ce, %bb.x ], [ %i.bk, %bb.t ]
  %.sroa.084.2138.i = phi i64 [ %i.ch, %bb.x ], [ 0, %bb.t ]
  %i.bz = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !970, !noalias !971, !noundef !8
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.x, label %.thread

bb.x:                                             ; preds = %.lr.ph141.i
  %i.cd = mul i64 %.sroa.084.2138.i, 10
  %i.ce = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.cg = zext nneg i32 %i.cb to i64
  %i.ch = sub i64 %i.cd, %i.cg                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ce, 0
  br i1 %.not103.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph141.i

bb.y:                                             ; preds = %bb.r, %bb.s, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.bi, %bb.s ], [ %i.ae, %thread-pre-split.i ], [ %i.ae, %bb.r ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.bh, %bb.s ], [ %i.ag, %thread-pre-split.i ], [ %i.ag, %bb.r ] ; 2 uses
  %i.ci = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ci, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.y, %bb.ab
  %.sroa.0.3145.i = phi ptr [ %i.cj, %bb.ab ], [ %.sroa.0.0.i, %bb.y ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ck, %bb.ab ], [ %.sroa.26.0.i, %bb.y ]
  %.sroa.084.3143.i = phi i64 [ %i.cv, %bb.ab ], [ 0, %bb.y ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ck = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.cl = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 0
  %i.cn = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cn, label %.thread, label %bb.z, !prof !10

bb.z:                                             ; preds = %.preheader111.i
  %i.co = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !970, !noalias !971, !noundef !8
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cm, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cu, label %.thread, label %bb.ab, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ck, 0
  br i1 %.not104.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.y, %bb.ac
  %.sroa.0.4149.i = phi ptr [ %i.dc, %bb.ac ], [ %.sroa.0.0.i, %bb.y ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.db, %bb.ac ], [ %.sroa.26.0.i, %bb.y ]
  %.sroa.084.4147.i = phi i64 [ %i.de, %bb.ac ], [ 0, %bb.y ]
  %i.cw = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !970, !noalias !971, !noundef !8
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %.lr.ph150.i
  %i.da = mul i64 %.sroa.084.4147.i, 10
  %i.db = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = add i64 %i.da, %i.dd                    ; 2 uses
  %.not105.i = icmp eq i64 %i.db, 0
  br i1 %.not105.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.v, %bb.u, %.lr.ph141.i, %.preheader111.i, %bb.z, %bb.aa, %.lr.ph150.i, %bb.r, %bb.r, %bb.f
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.f ], [ %i.ag, %.preheader111.i ], [ %i.ag, %.lr.ph150.i ], [ %i.ag, %bb.r ], [ %i.ag, %.lr.ph141.i ], [ %i.ag, %bb.r ], [ %i.ag, %bb.aa ], [ %i.ag, %bb.z ], [ %i.ag, %bb.u ], [ %i.ag, %bb.v ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ae) #22
  %i.df = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ae, label %bb.an

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i: ; preds = %bb.w, %bb.x, %bb.ab, %bb.ac
  %.sroa.15187.0 = phi i64 [ %i.cv, %bb.ab ], [ %i.ch, %bb.x ], [ %i.de, %bb.ac ], [ %i.by, %bb.w ]
  %i.dh = sitofp i64 %.sroa.15187.0 to double
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22, !noalias !972
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !973, !noalias !972 ; 11 uses
  store i64 -1, ptr %.pre.i, align 8
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  store ptr @61, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8
  %.sroa.027.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  store i64 8, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  store i64 0, ptr %.sroa.428.0..sroa_idx.i, align 8
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  store i64 0, ptr %.sroa.630.0..sroa_idx.i, align 8
  %.sroa.832.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  store i64 0, ptr %.sroa.832.0..sroa_idx.i, align 8
  %.sroa.1034.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  store i64 0, ptr %.sroa.1034.0..sroa_idx.i, align 8
  %.sroa.1236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 88
  store i64 0, ptr %.sroa.1236.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 136
  store double %i.dh, ptr %.sroa.21.0..sroa_idx.i, align 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !973, !noalias !972
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskBwnbTnIhiv_6uu_cat.exit
  %i.di = phi ptr [ %.ph, %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskBwnbTnIhiv_6uu_cat.exit ], [ %i.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dj = icmp eq i64 %i.ae, 0
  br i1 %i.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117, label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskBwnbTnIhiv_6uu_cat.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117

bb.ae:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.dk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !974, !noalias !975, !nonnull !8, !noundef !8 ; 3 uses
  %i.dl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !974, !noalias !975, !noundef !8 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  switch i64 %i.dl, label %.lr.ph.i.i.i129 [
    i64 0, label %bb.ag
    i64 1, label %._crit_edge.i.i.i118
  ]

._crit_edge.i.i.i118:                             ; preds = %.lr.ph.i.i.i129, %bb.ae
  %.sroa.05.0.lcssa.i.i.i119 = phi i64 [ 0, %bb.ae ], [ %i.eb, %.lr.ph.i.i.i129 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [144 x i8], ptr %i.dk, i64 %.sroa.05.0.lcssa.i.i.i119 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %.sroa.0.0.in.i.i.i.i.i.i120 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i121 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i120, align 8, !alias.scope !980, !noalias !981, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i.i.i.i122 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i123 = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i122, align 8, !alias.scope !980, !noalias !981, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i124 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i123, i64 8)
  %i.dn = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i121, ptr nonnull readonly @61, i64 %spec.store.select.i.i.i.i.i.i.i124), !alias.scope !982, !noalias !983 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp eq i32 %i.dn, 0
  %i.dq = add i64 %.sroa.3.0.i.i.i.i.i.i123, -8
  %spec.select.i.i.i.i.i.i.i125 = select i1 %i.dp, i64 %i.dq, i64 %i.do ; 2 uses
  %i.dr = icmp eq i64 %spec.select.i.i.i.i.i.i.i125, 0
  br i1 %i.dr, label %bb.ak, label %bb.af

.lr.ph.i.i.i129:                                  ; preds = %bb.ae, %.lr.ph.i.i.i129
  %.sroa.01.025.i.i.i130 = phi i64 [ %i.ec, %.lr.ph.i.i.i129 ], [ %i.dl, %bb.ae ] ; 2 uses
  %.sroa.05.024.i.i.i131 = phi i64 [ %i.eb, %.lr.ph.i.i.i129 ], [ 0, %bb.ae ] ; 2 uses
  %i.ds = lshr i64 %.sroa.01.025.i.i.i130, 1      ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, %.sroa.05.024.i.i.i131 ; 3 uses
  %i.du = icmp ult i64 %i.dt, %i.dl
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw [144 x i8], ptr %i.dk, i64 %i.dt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %.sroa.0.0.in.i.i.i14.i.i.i132 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.i.i.i15.i.i.i133 = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i132, align 8, !alias.scope !986, !noalias !987, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i16.i.i.i134 = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.3.0.i.i.i17.i.i.i135 = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i134, align 8, !alias.scope !986, !noalias !987, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i135, i64 8)
  %i.dw = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i133, ptr nonnull readonly @61, i64 %spec.store.select.i.i.i.i22.i.i.i136), !alias.scope !988, !noalias !989 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp eq i32 %i.dw, 0
  %i.dz = add i64 %.sroa.3.0.i.i.i17.i.i.i135, -8
  %spec.select.i.i.i.i23.i.i.i137 = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  %i.ea = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i137, 0
  %i.eb = select i1 %i.ea, i64 %.sroa.05.024.i.i.i131, i64 %i.dt, !unpredictable !8 ; 2 uses
  %i.ec = sub nuw nsw i64 %.sroa.01.025.i.i.i130, %i.ds ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 1
  br i1 %i.ed, label %.lr.ph.i.i.i129, label %._crit_edge.i.i.i118

bb.af:                                            ; preds = %._crit_edge.i.i.i118
  %spec.select.i.i.i.i.lobit.i.i.i126 = lshr i64 %spec.select.i.i.i.i.i.i.i125, 63
  %i.ee = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i126, %.sroa.05.0.lcssa.i.i.i119 ; 2 uses
  %i.ef = icmp ule i64 %i.ee, %i.dl
  call void @llvm.assume(i1 %i.ef)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.4.0.i.i.ph.i = phi i64 [ %i.ee, %bb.af ], [ %i.dl, %bb.ae ] ; 3 uses
  %i.eg = icmp ult i64 %i.dl, 64051194700380388
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.l, align 8, !range !11, !alias.scope !990, !noalias !991, !noundef !8
  %i.ei = icmp eq i64 %i.dl, %i.eh
  br i1 %i.ei, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #22, !noalias !991
  %.pre.i128 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !990, !noalias !991
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ej = phi ptr [ %.pre.i128, %bb.ah ], [ %i.dk, %bb.ag ]
  %i.ek = getelementptr inbounds nuw [144 x i8], ptr %i.ej, i64 %.sroa.4.0.i.i.ph.i ; 9 uses
  %i.el = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i, %i.dl
  br i1 %i.el, label %bb.aj, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127

bb.aj:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.en = sub nuw nsw i64 %i.dl, %.sroa.4.0.i.i.ph.i
  %i.eo = mul nuw nsw i64 %i.en, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.ek, i64 %i.eo, i1 false), !noalias !991
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127: ; preds = %bb.aj, %bb.ai
  store i64 -1, ptr %i.ek, align 8, !noalias !975
  %.sroa.05.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr @61, ptr %.sroa.05.sroa.4.0..sroa_idx.i, align 8, !noalias !975
  %.sroa.05.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 8, ptr %.sroa.05.sroa.5.0..sroa_idx.i, align 8, !noalias !975
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i64 2, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !975
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store i64 %i.ae, ptr %.sroa.57.0..sroa_idx.i, align 8
  %.sroa.5190.0..sroa.57.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store ptr %.ph, ptr %.sroa.5190.0..sroa.57.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.6.0..sroa.57.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store i64 %i.ae, ptr %.sroa.6.0..sroa.57.0..sroa_idx.i.sroa_idx, align 8
  %i.ep = add nuw nsw i64 %i.dl, 1
  store i64 %i.ep, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !990, !noalias !991
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.i118
  %i.eq = icmp ult i64 %.sroa.05.0.lcssa.i.i.i119, %i.dl
  br i1 %i.eq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskBwnbTnIhiv_6uu_cat(ptr noalias nofree noundef align 8 dereferenceable(144) %i.dm) #23, !noalias !992
  store i64 -1, ptr %i.dm, align 8, !noalias !992
  store ptr @61, ptr %.sroa.0.0.in.i.i.i.i.i.i120, align 8, !noalias !992
  store i64 8, ptr %.sroa.3.0.in.i.i.i.i.i.i122, align 8, !noalias !992
  %i.er = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 2, ptr %i.er, align 8, !noalias !992
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !974
  %.sroa.5190.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr %.ph, ptr %.sroa.5190.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !974
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store i64 %i.ae, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !974
  br label %_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i119, i64 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21, !noalias !992
  unreachable

_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskBwnbTnIhiv_6uu_cat.exit.i127, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskBwnbTnIhiv_6uu_cat.exit117

bb.an:                                            ; preds = %.thread
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.et = load double, ptr %i.es, align 8, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.eu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !993, !nonnull !8, !noundef !8 ; 3 uses
  %i.ev = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !993, !noundef !8 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  switch i64 %i.ev, label %.lr.ph.i.i.i174 [
    i64 0, label %.thread.i147
    i64 1, label %._crit_edge.i.i.i138
  ]

._crit_edge.i.i.i138:                             ; preds = %.lr.ph.i.i.i174, %bb.an
  %.sroa.05.0.lcssa.i.i.i139 = phi i64 [ 0, %bb.an ], [ %i.fl, %.lr.ph.i.i.i174 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [144 x i8], ptr %i.eu, i64 %.sroa.05.0.lcssa.i.i.i139 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %.sroa.0.0.in.i.i.i.i.i.i140 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i141 = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i140, align 8, !alias.scope !998, !noalias !999, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i.i.i.i142 = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i143 = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i142, align 8, !alias.scope !998, !noalias !999, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i144 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i143, i64 8)
end_hunk_0
