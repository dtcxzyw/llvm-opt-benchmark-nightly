Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.00?download=true
inline.NumInlined: 430
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext9tail_push:bb.a
  %i.df = load i64, ptr %i.bj, align 8, !range !8, !alias.scope !134, !noundef !3
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dh = getelementptr i8, ptr %i.bg, i64 -16
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !134, !nonnull !3, !noundef !3
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.de
  store i64 %i.dc, ptr %i.dj, align 8
  %i.dk = add i64 %i.de, 1
  store i64 %i.dk, ptr %i.dd, align 8, !alias.scope !134
  ret void

.body.thread:                                     ; preds = %bb.at, %bb.ba
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.cm, %bb.at ], [ %lpad.thr_comm, %bb.ba ]
  resume { ptr, i32 } %eh.lpad-body26

bb.ba:                                            ; preds = %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.invoke, %.invoke, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeEBF_(ptr noalias noundef align 8 dereferenceable(152) %1) #17
          to label %.body.thread unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast12on_exit_data(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.n ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.n, -1            ; 3 uses
  %i.q = icmp ult i64 %.sroa.0.08.i, %i.l
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 0, 115292150460684698) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !147
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.0.09.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !12, !alias.scope !147, !noundef !3
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !147
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 73
  %i.x = load i8, ptr %i.w, align 1, !range !11, !alias.scope !147, !noundef !3
  %i.y = load i8, ptr %i.r, align 1, !range !11, !alias.scope !147, !noundef !3
  %i.z = icmp eq i8 %i.x, %i.y
  br i1 %i.z, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.aa, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.ac, ptr %i.c, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val4 = load i64, ptr %i.ae, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %.val4, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.ag = getelementptr [200 x i8], ptr %.val, i64 %.val4 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -200   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3
  %i.ak = getelementptr i8, ptr %i.ag, i64 -32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.j
  %.sroa.0.017.i.i = phi ptr [ %i.ay, %bb.j ], [ %i.ah, %bb.h ] ; 3 uses
  %.sroa.02.016.i.i = phi i64 [ %i.az, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.02.016.i.i
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !148, !noalias !149, !noundef !3 ; 3 uses
  %i.ao = load i64, ptr %.sroa.0.017.i.i, align 8, !range !5, !alias.scope !150, !noalias !148, !noundef !3 ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 34
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, -2
  %i.ar = icmp samesign ugt i64 %i.ao, 1
  %i.as = select i1 %i.ar, i64 %i.aq, i64 32
  switch i64 %i.as, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i [
    i64 0, label %bb.i
    i64 1, label %bb.i
    i64 2, label %bb.i
    i64 3, label %bb.i
    i64 4, label %bb.i
    i64 11, label %bb.i
    i64 12, label %bb.i
    i64 18, label %bb.i
    i64 19, label %bb.i
    i64 20, label %bb.i
    i64 21, label %bb.i
    i64 26, label %bb.i
    i64 27, label %bb.i
    i64 29, label %bb.i
    i64 30, label %bb.i
    i64 31, label %bb.i
    i64 33, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 80
  %i.au = load i64, ptr %i.at, align 8, !noalias !148, !noundef !3 ; 2 uses
  %i.av = icmp ult i64 %i.an, %i.au
  br i1 %i.av, label %bb.j, label %bb.k

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i: ; preds = %.lr.ph.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !151
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !148, !nonnull !3, !noundef !3
  %i.ay = getelementptr inbounds nuw [152 x i8], ptr %i.ax, i64 %i.an ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.02.016.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !151
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.j, %bb.h
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ah, %bb.h ], [ %i.ay, %bb.j ] ; 4 uses
  %i.ba = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.bb = icmp ne i64 %i.ba, 34
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %i.ba, 24
  br i1 %i.bc, label %bb.l, label %bb.n, !prof !13

bb.l:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.bd = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 64
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 80 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !152, !noundef !3 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  %.not.i5 = icmp eq i64 %i.be, 0
  br i1 %.not.i5, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = extractvalue { ptr, i64 } %i.bd, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !152, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bj, i64 %i.be, i1 false)
  %.pre.i = load i64, ptr %i.bg, align 8, !alias.scope !152
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.l, %bb.m
  %i.bn = phi i64 [ %.pre.i, %bb.m ], [ %i.bh, %bb.l ]
  %i.bo = add i64 %i.bn, %i.be
  store i64 %i.bo, ptr %i.bg, align 8, !alias.scope !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !153
  call fastcc void @_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_pop(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %1), !noalias !154
  %i.bp = load i64, ptr %i.a, align 8, !range !4, !noalias !153, !noundef !3 ; 2 uses
  %.not.i6 = icmp eq i64 %i.bp, -1
  br i1 %.not.i6, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @28, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
  unreachable

bb.o:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx8, i64 40, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.bp, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast13on_enter_data(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val13 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %.val13, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr [200 x i8], ptr %.val, i64 %.val13 ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -200     ; 4 uses
  %i.f = getelementptr i8, ptr %i.d, i64 -40      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 -32      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %.not.i.i = icmp eq i64 %i.i, 0                 ; 2 uses
  br i1 %.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.sroa.0.017.i.i = phi ptr [ %i.v, %bb.e ], [ %i.e, %bb.c ] ; 3 uses
  %.sroa.02.016.i.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.02.016.i.i
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !175, !noalias !176, !noundef !3 ; 3 uses
  %i.l = load i64, ptr %.sroa.0.017.i.i, align 8, !range !5, !alias.scope !177, !noalias !175, !noundef !3 ; 3 uses
  %i.m = icmp ne i64 %i.l, 34
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i64 %i.l, -2
  %i.o = icmp samesign ugt i64 %i.l, 1
  %i.p = select i1 %i.o, i64 %i.n, i64 32
  switch i64 %i.p, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.d
    i64 3, label %bb.d
    i64 4, label %bb.d
    i64 11, label %bb.d
    i64 12, label %bb.d
    i64 18, label %bb.d
    i64 19, label %bb.d
    i64 20, label %bb.d
    i64 21, label %bb.d
    i64 26, label %bb.d
    i64 27, label %bb.d
    i64 29, label %bb.d
    i64 30, label %bb.d
    i64 31, label %bb.d
    i64 33, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 80
  %i.r = load i64, ptr %i.q, align 8, !noalias !175, !noundef !3 ; 2 uses
  %i.s = icmp ult i64 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i: ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !178
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !noalias !175, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw [152 x i8], ptr %i.u, i64 %i.k ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.02.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !178
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.e, %bb.c
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.e, %bb.c ], [ %i.v, %bb.e ] ; 3 uses
  %i.x = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !alias.scope !179, !noundef !3 ; 3 uses
  %i.y = icmp ne i64 %i.x, 34
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nsw i64 %i.x, -2
  %i.aa = icmp samesign ugt i64 %i.x, 1
  %i.ab = select i1 %i.aa, i64 %i.z, i64 32
  switch i64 %i.ab, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit [
    i64 0, label %bb.g
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 3, label %bb.g
    i64 4, label %bb.g
    i64 11, label %bb.g
    i64 12, label %bb.g
    i64 18, label %bb.g
    i64 19, label %bb.g
    i64 20, label %bb.g
    i64 21, label %bb.g
    i64 26, label %bb.g
    i64 27, label %bb.g
    i64 29, label %bb.g
    i64 30, label %bb.g
    i64 31, label %bb.g
    i64 33, label %bb.g
  ]

bb.g:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i64 %i.ad, 0
  br i1 %.not12, label %bb.i, label %bb.h

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit: ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #19
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3
  %i.ag = getelementptr [152 x i8], ptr %i.af, i64 %i.ad
  %i.ah = getelementptr i8, ptr %i.ag, i64 -152
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !noundef !3 ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 34
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 24
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.al, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i64 24, ptr %i.a, align 8
  call fastcc void @_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext9tail_push(ptr noalias noundef align 8 dereferenceable(224) %0, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  br i1 %.not.i.i, label %_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast9delve_mut.exit.i, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.j, %bb.l
  %.sroa.0.017.i.i17 = phi ptr [ %i.ay, %bb.l ], [ %i.e, %bb.j ] ; 3 uses
  %.sroa.02.016.i.i18 = phi i64 [ %i.az, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.02.016.i.i18
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !181, !noalias !182, !noundef !3 ; 3 uses
  %i.ao = load i64, ptr %.sroa.0.017.i.i17, align 8, !range !5, !alias.scope !183, !noalias !184, !noundef !3 ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 34
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, -2
  %i.ar = icmp samesign ugt i64 %i.ao, 1
  %i.as = select i1 %i.ar, i64 %i.aq, i64 32
  switch i64 %i.as, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i21 [
    i64 0, label %bb.k
    i64 1, label %bb.k
end_hunk_0
begin_hunk_1_@_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast21on_exit_code_indented:bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.f) #17
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast22on_exit_autolink_email(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast12on_exit_data(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(224) %1)
  %i.e = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.o, -1            ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.08.i, %i.m
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef range(i64 0, 115292150460684698) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !318
  unreachable

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %.sroa.0.09.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i8, ptr %i.u, align 8, !range !12, !alias.scope !318, !noundef !3
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h, %bb.d
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.d ], [ %.sroa.0.0.i, %bb.h ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !318
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 73
  %i.y = load i8, ptr %i.x, align 1, !range !11, !alias.scope !318, !noundef !3
  %i.z = load i8, ptr %i.s, align 1, !range !11, !alias.scope !318, !noundef !3
  %i.aa = icmp eq i8 %i.y, %i.z
  br i1 %i.aa, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.ab = icmp ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.ab, label %bb.f, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.ad, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val5 = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %.val5, 0
  br i1 %.not.i, label %bb.i, label %bb.j, !prof !6

bb.i:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.ah = getelementptr [200 x i8], ptr %.val, i64 %.val5 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -200   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 -40
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  %i.al = getelementptr i8, ptr %i.ah, i64 -32
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.l
  %.sroa.0.017.i.i = phi ptr [ %i.az, %bb.l ], [ %i.ai, %bb.j ] ; 3 uses
  %.sroa.02.016.i.i = phi i64 [ %i.ba, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.02.016.i.i
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !319, !noalias !320, !noundef !3 ; 3 uses
  %i.ap = load i64, ptr %.sroa.0.017.i.i, align 8, !range !5, !alias.scope !321, !noalias !319, !noundef !3 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 34
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nsw i64 %i.ap, -2
  %i.as = icmp samesign ugt i64 %i.ap, 1
  %i.at = select i1 %i.as, i64 %i.ar, i64 32
  switch i64 %i.at, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i [
    i64 0, label %bb.k
    i64 1, label %bb.k
    i64 2, label %bb.k
    i64 3, label %bb.k
    i64 4, label %bb.k
    i64 11, label %bb.k
    i64 12, label %bb.k
    i64 18, label %bb.k
    i64 19, label %bb.k
    i64 20, label %bb.k
    i64 21, label %bb.k
    i64 26, label %bb.k
    i64 27, label %bb.k
    i64 29, label %bb.k
    i64 30, label %bb.k
    i64 31, label %bb.k
    i64 33, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 80
  %i.av = load i64, ptr %i.au, align 8, !noalias !319, !noundef !3 ; 2 uses
  %i.aw = icmp ult i64 %i.ao, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i: ; preds = %.lr.ph.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !322
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !319, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw [152 x i8], ptr %i.ay, i64 %i.ao ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.02.016.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.am
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !322
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.l, %bb.j
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.az, %bb.l ] ; 4 uses
  %i.bb = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 34
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.bb, 21
  br i1 %i.bd, label %bb.n, label %bb.p, !prof !13

bb.n:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 88 ; 2 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef 7)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 104 ; 6 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !323, !noundef !3 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 96 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !323, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bk, ptr noundef nonnull align 1 dereferenceable(7) @106, i64 7, i1 false)
  %.pre.i = load i64, ptr %i.bf, align 8, !alias.scope !323
  %i.bl = add i64 %.pre.i, 7
  store i64 %i.bl, ptr %i.bf, align 8, !alias.scope !323
  %i.bm = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 1      ; 4 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.bn)
  %i.bo = load i64, ptr %i.bf, align 8, !alias.scope !324, !noundef !3 ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  call void @llvm.assume(i1 %i.bp)
  %.not.i6 = icmp eq i64 %i.bn, 0
  br i1 %.not.i6, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = extractvalue { ptr, i64 } %i.bm, 0
  %i.br = load ptr, ptr %i.bi, align 8, !alias.scope !324, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %i.bq, i64 %i.bn, i1 false)
  %.pre.i7 = load i64, ptr %i.bf, align 8, !alias.scope !324
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.n, %bb.o
  %i.bt = phi i64 [ %.pre.i7, %bb.o ], [ %i.bo, %bb.n ]
  %i.bu = add i64 %i.bt, %i.bn
  store i64 %i.bu, ptr %i.bf, align 8, !alias.scope !324
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.p:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #19
  unreachable

bb.q:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast23on_exit_list_item_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.n ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.n, -1            ; 3 uses
  %i.q = icmp ult i64 %.sroa.0.08.i, %i.l
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 0, 115292150460684698) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !329
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.0.09.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !12, !alias.scope !329, !noundef !3
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !329
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 73
  %i.x = load i8, ptr %i.w, align 1, !range !11, !alias.scope !329, !noundef !3
  %i.y = load i8, ptr %i.r, align 1, !range !11, !alias.scope !329, !noundef !3
  %i.z = icmp eq i8 %i.x, %i.y
  br i1 %i.z, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.aa, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.ac, ptr %i.c, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.ae = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  switch i64 %i.ag, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !330, !noundef !3 ; 2 uses
  switch i8 %i.ah, label %bb.h [
    i8 43, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
  ]

thread-pre-split.i:                               ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %.pr.i = load i8, ptr %i.af, align 1, !alias.scope !330
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.ai = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ah, %bb.g ]
  %cond.i = icmp eq i8 %i.ai, 43                  ; 2 uses
  %i.aj = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.ag, %i.aj        ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i8 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.ak = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.ak, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.h
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i9

.preheader60.i:                                   ; preds = %bb.k
  %.not55.i = icmp eq i64 %i.ao, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.da, %bb.s ], [ 0, %.preheader.i ], [ %i.bc, %bb.l ], [ %i.bk, %bb.m ], [ %i.br, %bb.n ], [ %i.by, %bb.o ], [ %i.cf, %bb.p ], [ %i.cm, %bb.q ], [ %i.ct, %bb.r ], [ %i.ay, %.preheader60.i ]
  %i.al = zext i32 %.sroa.045.1.i to i64
  %i.am = shl nuw i64 %i.al, 32
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.preheader60.i.preheader:                         ; preds = %bb.h, %.preheader60.i
  %.sroa.0.1.i51 = phi ptr [ %i.an, %.preheader60.i ], [ %.sroa.0.0.i8, %bb.h ] ; 2 uses
  %.sroa.15.1.i50 = phi i64 [ %i.ao, %.preheader60.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.045.0.i49 = phi i32 [ %i.ay, %.preheader60.i ], [ 0, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i51, i64 1
  %i.ao = add nsw i64 %.sroa.15.1.i50, -1         ; 2 uses
  %i.ap = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i49, i32 10) ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ap, 0       ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.ap, 1
  %i.as = load i8, ptr %.sroa.0.1.i51, align 1, !alias.scope !330, !noundef !3 ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %.preheader60.i.preheader
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.k, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.j:                                             ; preds = %.preheader60.i.preheader
  %i.aw = add i8 %i.as, -48
  %i.ax = icmp ult i8 %i.aw, 10
  %spec.select.i = select i1 %i.ax, i64 513, i64 257
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = add i32 %i.au, %i.aq                    ; 3 uses
  %i.az = icmp ult i32 %i.ay, %i.aq
  br i1 %i.az, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %.preheader60.i, !prof !6

.lr.ph.i9:                                        ; preds = %.preheader.i
  %i.ba = load i8, ptr %.sroa.0.0.i8, align 1, !alias.scope !330, !noundef !3
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 3 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.l, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.l:                                             ; preds = %.lr.ph.i9
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i9.1

.lr.ph.i9.1:                                      ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !330, !noundef !3
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.m, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.m:                                             ; preds = %.lr.ph.i9.1
  %i.bj = mul nuw nsw i32 %i.bc, 10
  %i.bk = add nuw nsw i32 %i.bh, %i.bj            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i9.2

.lr.ph.i9.2:                                      ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !330, !noundef !3
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.n, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

end_hunk_1
begin_hunk_2_@_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast24on_exit_reference_string:bb.a
  %.pn.ph = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %i.au, %bb.s ], [ %i.as, %bb.q ] ; 2 uses
  %.sroa.02.1.ph = phi i1 [ false, %.body11 ], [ true, %bb.s ], [ true, %bb.q ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.d unwind label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.ac, %bb.o, %bb.b
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ae:                                            ; preds = %.thread31, %.thread, %bb.d, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn23, %.thread ], [ %.pn.ph, %bb.d ], [ %i.g, %bb.b ], [ %eh.lpad-body18, %.thread31 ]
  resume { ptr, i32 } %.pn.pn.pn

.thread:                                          ; preds = %bb.e, %bb.o, %bb.d
  %.pn.pn23 = phi { ptr, i32 } [ %.pn.ph, %bb.d ], [ %i.h, %bb.e ], [ %i.ar, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.f) #17
          to label %bb.ae unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast25on_exit_autolink_protocol(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast12on_exit_data(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef align 8 dereferenceable(224) %1)
  %i.e = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.o, -1            ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.08.i, %i.m
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef range(i64 0, 115292150460684698) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !344
  unreachable

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %.sroa.0.09.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i8, ptr %i.u, align 8, !range !12, !alias.scope !344, !noundef !3
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h, %bb.d
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.d ], [ %.sroa.0.0.i, %bb.h ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !344
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 73
  %i.y = load i8, ptr %i.x, align 1, !range !11, !alias.scope !344, !noundef !3
  %i.z = load i8, ptr %i.s, align 1, !range !11, !alias.scope !344, !noundef !3
  %i.aa = icmp eq i8 %i.y, %i.z
  br i1 %i.aa, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.ab = icmp ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.ab, label %bb.f, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.ad, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val4 = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %.val4, 0
  br i1 %.not.i, label %bb.i, label %bb.j, !prof !6

bb.i:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.ah = getelementptr [200 x i8], ptr %.val, i64 %.val4 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -200   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 -40
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  %i.al = getelementptr i8, ptr %i.ah, i64 -32
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.l
  %.sroa.0.017.i.i = phi ptr [ %i.az, %bb.l ], [ %i.ai, %bb.j ] ; 3 uses
  %.sroa.02.016.i.i = phi i64 [ %i.ba, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.02.016.i.i
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !345, !noalias !346, !noundef !3 ; 3 uses
  %i.ap = load i64, ptr %.sroa.0.017.i.i, align 8, !range !5, !alias.scope !347, !noalias !345, !noundef !3 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, 34
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nsw i64 %i.ap, -2
  %i.as = icmp samesign ugt i64 %i.ap, 1
  %i.at = select i1 %i.as, i64 %i.ar, i64 32
  switch i64 %i.at, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i [
    i64 0, label %bb.k
    i64 1, label %bb.k
    i64 2, label %bb.k
    i64 3, label %bb.k
    i64 4, label %bb.k
    i64 11, label %bb.k
    i64 12, label %bb.k
    i64 18, label %bb.k
    i64 19, label %bb.k
    i64 20, label %bb.k
    i64 21, label %bb.k
    i64 26, label %bb.k
    i64 27, label %bb.k
    i64 29, label %bb.k
    i64 30, label %bb.k
    i64 31, label %bb.k
    i64 33, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 80
  %i.av = load i64, ptr %i.au, align 8, !noalias !345, !noundef !3 ; 2 uses
  %i.aw = icmp ult i64 %i.ao, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i: ; preds = %.lr.ph.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !348
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !345, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw [152 x i8], ptr %i.ay, i64 %i.ao ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.02.016.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.am
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !348
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.l, %bb.j
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.az, %bb.l ] ; 4 uses
  %i.bb = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 34
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.bb, 21
  br i1 %i.bd, label %bb.n, label %bb.p, !prof !13

bb.n:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.be = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 1      ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 88
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 104 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !349, !noundef !3 ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %.not.i5 = icmp eq i64 %i.bf, 0
  br i1 %.not.i5, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = extractvalue { ptr, i64 } %i.be, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !349, !nonnull !3, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %i.bk, i64 %i.bf, i1 false)
  %.pre.i = load i64, ptr %i.bh, align 8, !alias.scope !349
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.n, %bb.o
  %i.bo = phi i64 [ %.pre.i, %bb.o ], [ %i.bi, %bb.n ]
  %i.bp = add i64 %i.bo, %i.bf
  store i64 %i.bp, ptr %i.bh, align 8, !alias.scope !349
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.p:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #19
  unreachable

bb.q:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast28on_exit_heading_atx_sequence(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.m ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.m, -1            ; 3 uses
  %i.p = icmp ult i64 %.sroa.0.08.i, %i.k
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef range(i64 0, 115292150460684698) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !357
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.0.09.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load i8, ptr %i.s, align 8, !range !12, !alias.scope !357, !noundef !3
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !357
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 73
  %i.w = load i8, ptr %i.v, align 1, !range !11, !alias.scope !357, !noundef !3
  %i.x = load i8, ptr %i.q, align 1, !range !11, !alias.scope !357, !noundef !3
  %i.y = icmp eq i8 %i.w, %i.x
  br i1 %i.y, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.z = icmp ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.z, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.ab, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aa, ptr %i.ac, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3 = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %.val3, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr [200 x i8], ptr %.val, i64 %.val3 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -200   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 -40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr i8, ptr %i.af, i64 -32
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.j
  %.sroa.0.017.i.i = phi ptr [ %i.ax, %bb.j ], [ %i.ag, %bb.h ] ; 3 uses
  %.sroa.02.016.i.i = phi i64 [ %i.ay, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.02.016.i.i
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !358, !noalias !359, !noundef !3 ; 3 uses
  %i.an = load i64, ptr %.sroa.0.017.i.i, align 8, !range !5, !alias.scope !360, !noalias !358, !noundef !3 ; 3 uses
  %i.ao = icmp ne i64 %i.an, 34
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nsw i64 %i.an, -2
  %i.aq = icmp samesign ugt i64 %i.an, 1
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 32
  switch i64 %i.ar, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i [
    i64 0, label %bb.i
    i64 1, label %bb.i
    i64 2, label %bb.i
    i64 3, label %bb.i
    i64 4, label %bb.i
    i64 11, label %bb.i
    i64 12, label %bb.i
    i64 18, label %bb.i
    i64 19, label %bb.i
    i64 20, label %bb.i
    i64 21, label %bb.i
    i64 26, label %bb.i
    i64 27, label %bb.i
    i64 29, label %bb.i
    i64 30, label %bb.i
    i64 31, label %bb.i
    i64 33, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 80
  %i.at = load i64, ptr %i.as, align 8, !noalias !358, !noundef !3 ; 2 uses
  %i.au = icmp ult i64 %i.am, %i.at
  br i1 %i.au, label %bb.j, label %bb.k

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i: ; preds = %.lr.ph.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !361
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !358, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw [152 x i8], ptr %i.aw, i64 %i.am ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.02.016.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ay, %i.ak
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !361
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.j, %bb.h
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.ax, %bb.j ] ; 2 uses
  %i.az = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ba = icmp ne i64 %i.az, 34
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 28
  br i1 %i.bb, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 88 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !noundef !3
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.n, label %bb.o

bb.m:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @128, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #19
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3
  %i.bj = add i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_2
begin_hunk_3_@_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast30on_exit_code_fenced_fence_info:bb.a
  %i.x = phi i64 [ 24, %bb.d ], [ 28, %.lr.ph.i.i ]
  %i.y = phi ptr [ @16, %bb.d ], [ @188, %.lr.ph.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #19
          to label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.cont unwind label %bb.q

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.cont: ; preds = %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !383, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %i.n ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.02.016.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.l
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19
          to label %.noexc9 unwind label %bb.q

.noexc9:                                          ; preds = %bb.h
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.g, %bb.e
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.h, %bb.e ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 34
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, 25
  br i1 %i.af, label %bb.i, label %bb.m, !prof !13

bb.i:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 88 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !alias.scope !386, !noundef !3
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit unwind label %bb.n

bb.m:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #19
          to label %bb.o unwind label %bb.q

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i, %bb.q, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %eh.lpad-body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke, %bb.h, %bb.m, %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast30on_exit_mdx_jsx_tag_name_local(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.l, -1            ; 3 uses
  %i.o = icmp ult i64 %.sroa.0.08.i, %i.j
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef range(i64 0, 115292150460684698) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !393
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.0.09.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load i8, ptr %i.r, align 8, !range !12, !alias.scope !393, !noundef !3
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !393
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  %i.v = load i8, ptr %i.u, align 1, !range !11, !alias.scope !393, !noundef !3
  %i.w = load i8, ptr %i.p, align 1, !range !11, !alias.scope !393, !noundef !3
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.y = icmp ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.y, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %i.ad, -1
  br i1 %.not, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !noundef !3
  %.not3 = icmp eq i64 %i.af, -1
  br i1 %.not3, label %bb.k, label %bb.i, !prof !6

bb.h:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !394, !noundef !3 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 1)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !394, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 58, ptr %i.al, align 1
  %i.am = add nuw i64 %i.ah, 1
  store i64 %i.am, ptr %i.ag, align 8, !alias.scope !394
  %i.an = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 1      ; 4 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.ao)
  %i.ap = load i64, ptr %i.ag, align 8, !alias.scope !395, !noundef !3 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = extractvalue { ptr, i64 } %i.an, 0
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !395, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.ar, i64 %i.ao, i1 false)
  %.pre.i = load i64, ptr %i.ag, align 8, !alias.scope !395
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.i, %bb.j
  %i.au = phi i64 [ %.pre.i, %bb.j ], [ %i.ap, %bb.i ]
  %i.av = add i64 %i.au, %i.ao
  store i64 %i.av, ptr %i.ag, align 8, !alias.scope !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast31on_exit_definition_title_string(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [152 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext6resume(ptr noalias noundef align 8 captures(none) dereferenceable(152) %i.b, ptr noalias noundef align 8 dereferenceable(224) %0)
  invoke void @_RNvXs_NtCs2KzzoC5ewhj_8markdown5mdastNtB4_4NodeNtNtCscdodAO9FK5_5alloc6string8ToString9to_string(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeEBF_(ptr noalias noundef align 8 dereferenceable(152) %i.b) #17
          to label %bb.p unwind label %bb.r

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeEBF_(ptr noalias noundef align 8 dereferenceable(152) %i.b)
          to label %bb.d unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i: ; preds = %bb.k, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.aj, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.p

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val7 = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %.val7, 0
  br i1 %.not.i, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr [200 x i8], ptr %.val, i64 %.val7 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -200     ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr i8, ptr %i.g, i64 -32
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %.sroa.0.017.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.h, %bb.e ] ; 3 uses
  %.sroa.02.016.i.i = phi i64 [ %i.ac, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.02.016.i.i
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !403, !noalias !404, !noundef !3 ; 3 uses
  %i.o = load i64, ptr %.sroa.0.017.i.i, align 8, !range !5, !alias.scope !405, !noalias !403, !noundef !3 ; 3 uses
  %i.p = icmp ne i64 %i.o, 34
  call void @llvm.assume(i1 %i.p)
  %i.q = add nsw i64 %i.o, -2
  %i.r = icmp samesign ugt i64 %i.o, 1
  %i.s = select i1 %i.r, i64 %i.q, i64 32
  switch i64 %i.s, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke [
    i64 0, label %bb.f
    i64 1, label %bb.f
    i64 2, label %bb.f
    i64 3, label %bb.f
    i64 4, label %bb.f
    i64 11, label %bb.f
    i64 12, label %bb.f
    i64 18, label %bb.f
    i64 19, label %bb.f
    i64 20, label %bb.f
    i64 21, label %bb.f
    i64 26, label %bb.f
    i64 27, label %bb.f
    i64 29, label %bb.f
    i64 30, label %bb.f
    i64 31, label %bb.f
    i64 33, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 80
  %i.u = load i64, ptr %i.t, align 8, !noalias !403, !noundef !3 ; 2 uses
  %i.v = icmp ult i64 %i.n, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke: ; preds = %.lr.ph.i.i, %bb.d
  %i.w = phi ptr [ @6, %bb.d ], [ @187, %.lr.ph.i.i ]
  %i.x = phi i64 [ 24, %bb.d ], [ 28, %.lr.ph.i.i ]
  %i.y = phi ptr [ @16, %bb.d ], [ @188, %.lr.ph.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #19
          to label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.cont unwind label %bb.q

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.cont: ; preds = %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !403, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %i.n ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.02.016.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.l
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19
          to label %.noexc9 unwind label %bb.q

.noexc9:                                          ; preds = %bb.h
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.g, %bb.e
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.h, %bb.e ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 34
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp samesign ult i64 %i.ad, 2
  br i1 %i.af, label %bb.i, label %bb.m, !prof !13

bb.i:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 104 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !alias.scope !406, !noundef !3
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit unwind label %bb.n

bb.m:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @141, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #19
          to label %bb.o unwind label %bb.q

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i, %bb.q, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %eh.lpad-body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke, %bb.h, %bb.m, %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast31on_exit_mdx_jsx_tag_name_member(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.l, -1            ; 3 uses
  %i.o = icmp ult i64 %.sroa.0.08.i, %i.j
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef range(i64 0, 115292150460684698) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !413
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.0.09.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load i8, ptr %i.r, align 8, !range !12, !alias.scope !413, !noundef !3
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !413
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  %i.v = load i8, ptr %i.u, align 1, !range !11, !alias.scope !413, !noundef !3
  %i.w = load i8, ptr %i.p, align 1, !range !11, !alias.scope !413, !noundef !3
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.y = icmp ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.y, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %i.ad, -1
  br i1 %.not, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !noundef !3
  %.not3 = icmp eq i64 %i.af, -1
  br i1 %.not3, label %bb.k, label %bb.i, !prof !6

bb.h:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !414, !noundef !3 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 1)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !414, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 46, ptr %i.al, align 1
  %i.am = add nuw i64 %i.ah, 1
  store i64 %i.am, ptr %i.ag, align 8, !alias.scope !414
  %i.an = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 1      ; 4 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.ao)
  %i.ap = load i64, ptr %i.ag, align 8, !alias.scope !415, !noundef !3 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = extractvalue { ptr, i64 } %i.an, 0
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !415, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.ar, i64 %i.ao, i1 false)
  %.pre.i = load i64, ptr %i.ag, align 8, !alias.scope !415
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.i, %bb.j
  %i.au = phi i64 [ %.pre.i, %bb.j ], [ %i.ap, %bb.i ]
  %i.av = add i64 %i.au, %i.ao
  store i64 %i.av, ptr %i.ag, align 8, !alias.scope !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast32on_exit_mdx_jsx_tag_name_primary(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.n ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.n, -1            ; 3 uses
  %i.q = icmp ult i64 %.sroa.0.08.i, %i.l
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 0, 115292150460684698) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !420
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.0.09.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !12, !alias.scope !420, !noundef !3
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !420
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 73
  %i.x = load i8, ptr %i.w, align 1, !range !11, !alias.scope !420, !noundef !3
  %i.y = load i8, ptr %i.r, align 1, !range !11, !alias.scope !420, !noundef !3
  %i.z = icmp eq i8 %i.x, %i.y
  br i1 %i.z, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.aa, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.ac, ptr %i.c, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %i.af, -1
  br i1 %.not, label %bb.k, label %bb.g, !prof !6

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !alias.scope !421, !noundef !3
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit unwind label %bb.n

bb.k:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #19
          to label %bb.m unwind label %bb.p

bb.l:                                             ; preds = %bb.n, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.aj, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %bb.l, %bb.p
  %.pn5 = phi { ptr, i32 } [ %i.am, %bb.p ], [ %eh.lpad-body, %bb.l ]
  resume { ptr, i32 } %.pn5

bb.p:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17
          to label %bb.o unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast33on_exit_character_reference_value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.o, -1            ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.08.i, %i.m
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef range(i64 0, 115292150460684698) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !431
end_hunk_3
begin_hunk_4_@_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast37on_exit_definition_destination_string:bb.a
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.l
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19
          to label %.noexc9 unwind label %bb.p

.noexc9:                                          ; preds = %bb.h
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.g, %bb.e
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.h, %bb.e ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 34
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp samesign ult i64 %i.ad, 2
  br i1 %i.af, label %bb.i, label %bb.l, !prof !13

bb.i:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 56 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit unwind label %bb.m

bb.l:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @141, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #19
          to label %bb.n unwind label %bb.p

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i, %bb.p, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %eh.lpad-body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke, %bb.h, %bb.l, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.o unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast40on_exit_mdx_jsx_tag_attribute_name_local(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.m ; 2 uses
  %.sroa.0.08.i = add nsw i64 %i.m, -1            ; 3 uses
  %i.p = icmp ult i64 %.sroa.0.08.i, %i.k
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef range(i64 0, 115292150460684698) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !467
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.0.09.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load i8, ptr %i.s, align 8, !range !12, !alias.scope !467, !noundef !3
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !467
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 73
  %i.w = load i8, ptr %i.v, align 1, !range !11, !alias.scope !467, !noundef !3
  %i.x = load i8, ptr %i.q, align 1, !range !11, !alias.scope !467, !noundef !3
  %i.y = icmp eq i8 %i.w, %i.x
  br i1 %i.y, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.z = icmp ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.z, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.ab, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aa, ptr %i.ac, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  %.not7 = icmp eq i64 %i.ag, 0
  br i1 %.not7, label %bb.j, label %bb.i, !prof !6

bb.h:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr [72 x i8], ptr %i.ai, i64 %i.ag ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -72    ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !4, !noundef !3
  %.not8 = icmp eq i64 %i.al, -1
  br i1 %.not8, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @168, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #19
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.aj, i64 -56    ; 5 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !468, !noundef !3 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef 1)
  %i.ap = getelementptr i8, ptr %i.aj, i64 -64    ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !468, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  store i8 58, ptr %i.ar, align 1
  %i.as = add nuw i64 %i.an, 1
  store i64 %i.as, ptr %i.am, align 8, !alias.scope !468
  %i.at = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 1      ; 4 uses
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.au)
  %i.av = load i64, ptr %i.am, align 8, !alias.scope !469, !noundef !3 ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = extractvalue { ptr, i64 } %i.at, 0
  %i.ay = load ptr, ptr %i.ap, align 8, !alias.scope !469, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.ax, i64 %i.au, i1 false)
  %.pre.i = load i64, ptr %i.am, align 8, !alias.scope !469
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.k, %bb.l
  %i.ba = phi i64 [ %.pre.i, %bb.l ], [ %i.av, %bb.k ]
  %i.bb = add i64 %i.ba, %i.au
  store i64 %i.bb, ptr %i.am, align 8, !alias.scope !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast41on_exit_heading_setext_underline_sequence(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.08.i = add nsw i64 %i.g, -1            ; 3 uses
  %i.i = icmp ult i64 %.sroa.0.08.i, %i.e
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 73
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef range(i64 0, 115292150460684698) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !477
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %.sroa.0.09.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i8, ptr %i.m, align 8, !range !12, !alias.scope !477, !noundef !3
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.b ], [ %.sroa.0.0.i, %bb.f ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !noalias !477
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 73
  %i.q = load i8, ptr %i.p, align 1, !range !11, !alias.scope !477, !noundef !3
  %i.r = load i8, ptr %i.k, align 1, !range !11, !alias.scope !477, !noundef !3
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.t = icmp ult i64 %.sroa.0.0.i, %i.e
  br i1 %i.t, label %bb.d, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.v = load i64, ptr %i.u, align 8, !noundef !3 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load i64, ptr %i.w, align 8, !noundef !3 ; 2 uses
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5 = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %.val5, 0
  br i1 %.not.i, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr [200 x i8], ptr %.val, i64 %.val5 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -200   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 -40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr i8, ptr %i.af, i64 -32
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.k
  %.sroa.0.017.i.i = phi ptr [ %i.ax, %bb.k ], [ %i.ag, %bb.i ] ; 3 uses
  %.sroa.02.016.i.i = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.02.016.i.i
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !478, !noalias !479, !noundef !3 ; 3 uses
  %i.an = load i64, ptr %.sroa.0.017.i.i, align 8, !range !5, !alias.scope !480, !noalias !478, !noundef !3 ; 3 uses
  %i.ao = icmp ne i64 %i.an, 34
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nsw i64 %i.an, -2
  %i.aq = icmp samesign ugt i64 %i.an, 1
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 32
  switch i64 %i.ar, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i [
    i64 0, label %bb.j
    i64 1, label %bb.j
    i64 2, label %bb.j
    i64 3, label %bb.j
    i64 4, label %bb.j
    i64 11, label %bb.j
    i64 12, label %bb.j
    i64 18, label %bb.j
    i64 19, label %bb.j
    i64 20, label %bb.j
    i64 21, label %bb.j
    i64 26, label %bb.j
    i64 27, label %bb.j
    i64 29, label %bb.j
    i64 30, label %bb.j
    i64 31, label %bb.j
    i64 33, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 80
  %i.at = load i64, ptr %i.as, align 8, !noalias !478, !noundef !3 ; 2 uses
  %i.au = icmp ult i64 %i.am, %i.at
  br i1 %i.au, label %bb.k, label %bb.l

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i: ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !481
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !478, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw [152 x i8], ptr %i.aw, i64 %i.am ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.02.016.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ay, %i.ak
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit, label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !481
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit: ; preds = %bb.k, %bb.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ag, %bb.i ], [ %i.ax, %bb.k ] ; 2 uses
  %i.az = load i64, ptr %.sroa.0.0.lcssa.i.i, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ba = icmp ne i64 %i.az, 34
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 28
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !13

bb.m:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #19
  unreachable

bb.n:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  %i.bc = icmp eq i8 %i.ac, 45
  %. = select i1 %i.bc, i8 2, i8 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 88
  store i8 %., ptr %i.bd, align 8
  ret void

bb.o:                                             ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @128, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast42on_exit_mdx_jsx_tag_attribute_primary_name(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 5 uses
end_hunk_4
begin_hunk_5_@_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast4exit:bb.a
bb.fl:                                            ; preds = %bb.fj
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val15.i = load ptr, ptr %i.ro, align 8, !alias.scope !709, !noalias !711, !nonnull !3, !noundef !3
  %i.rp = getelementptr [200 x i8], ptr %.val15.i, i64 %.val16.i ; 3 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 -200   ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rp, i64 -40
  %i.rs = load ptr, ptr %i.rr, align 8, !noalias !710, !nonnull !3, !noundef !3
  %i.rt = getelementptr i8, ptr %i.rp, i64 -32
  %i.ru = load i64, ptr %i.rt, align 8, !noalias !710, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %.not.i.i.i77 = icmp eq i64 %i.ru, 0
  br i1 %.not.i.i.i77, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i82, label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %bb.fl, %bb.fn
  %.sroa.0.017.i.i.i79 = phi ptr [ %i.sh, %bb.fn ], [ %i.rq, %bb.fl ] ; 3 uses
  %.sroa.02.016.i.i.i80 = phi i64 [ %i.si, %bb.fn ], [ 0, %bb.fl ] ; 2 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %.sroa.02.016.i.i.i80
  %i.rw = load i64, ptr %i.rv, align 8, !alias.scope !714, !noalias !715, !noundef !3 ; 3 uses
  %i.rx = load i64, ptr %.sroa.0.017.i.i.i79, align 8, !range !5, !alias.scope !716, !noalias !717, !noundef !3 ; 3 uses
  %i.ry = icmp ne i64 %i.rx, 34
  call void @llvm.assume(i1 %i.ry)
  %i.rz = add nsw i64 %i.rx, -2
  %i.sa = icmp samesign ugt i64 %i.rx, 1
  %i.sb = select i1 %i.sa, i64 %i.rz, i64 32
  switch i64 %i.sb, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.i [
    i64 0, label %bb.fm
    i64 1, label %bb.fm
    i64 2, label %bb.fm
    i64 3, label %bb.fm
    i64 4, label %bb.fm
    i64 11, label %bb.fm
    i64 12, label %bb.fm
    i64 18, label %bb.fm
    i64 19, label %bb.fm
    i64 20, label %bb.fm
    i64 21, label %bb.fm
    i64 26, label %bb.fm
    i64 27, label %bb.fm
    i64 29, label %bb.fm
    i64 30, label %bb.fm
    i64 31, label %bb.fm
    i64 33, label %bb.fm
  ]

bb.fm:                                            ; preds = %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78, %.lr.ph.i.i.i78
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i79, i64 80
  %i.sd = load i64, ptr %i.sc, align 8, !noalias !717, !noundef !3 ; 2 uses
  %i.se = icmp ult i64 %i.rw, %i.sd
  br i1 %i.se, label %bb.fn, label %bb.fo

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.i: ; preds = %.lr.ph.i.i.i78
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !718
  unreachable

bb.fn:                                            ; preds = %bb.fm
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i79, i64 72
  %i.sg = load ptr, ptr %i.sf, align 8, !noalias !717, !nonnull !3, !noundef !3
  %i.sh = getelementptr inbounds nuw [152 x i8], ptr %i.sg, i64 %i.rw ; 2 uses
  %i.si = add nuw nsw i64 %.sroa.02.016.i.i.i80, 1 ; 2 uses
  %exitcond.not.i.i.i81 = icmp eq i64 %i.si, %i.ru
  br i1 %exitcond.not.i.i.i81, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i82, label %.lr.ph.i.i.i78

bb.fo:                                            ; preds = %bb.fm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.rw, i64 noundef %i.sd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !718
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i82: ; preds = %bb.fn, %bb.fl
  %.sroa.0.0.lcssa.i.i.i83 = phi ptr [ %i.rq, %bb.fl ], [ %i.sh, %bb.fn ] ; 2 uses
  %i.sj = load i64, ptr %.sroa.0.0.lcssa.i.i.i83, align 8, !range !5, !noalias !710, !noundef !3 ; 2 uses
  %i.sk = icmp ne i64 %i.sj, 34
  call void @llvm.assume(i1 %i.sk)
  %i.sl = icmp eq i64 %i.sj, 21
  br i1 %i.sl, label %bb.fy, label %bb.fx, !prof !13

bb.fp:                                            ; preds = %bb.fi
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fi
  %.sroa.0.0.i = phi ptr [ @125, %bb.fp ], [ @106, %bb.fi ]
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val14.i = load i64, ptr %i.sm, align 8, !alias.scope !709, !noalias !711, !noundef !3 ; 2 uses
  %.not.i17.i74 = icmp eq i64 %.val14.i, 0
  br i1 %.not.i17.i74, label %bb.fr, label %bb.fs, !prof !6

bb.fr:                                            ; preds = %bb.fq
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !710
  unreachable

bb.fs:                                            ; preds = %bb.fq
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i75 = load ptr, ptr %i.sn, align 8, !alias.scope !709, !noalias !711, !nonnull !3, !noundef !3
  %i.so = getelementptr [200 x i8], ptr %.val.i75, i64 %.val14.i ; 3 uses
  %i.sp = getelementptr i8, ptr %i.so, i64 -200   ; 2 uses
  %i.sq = getelementptr i8, ptr %i.so, i64 -40
  %i.sr = load ptr, ptr %i.sq, align 8, !noalias !710, !nonnull !3, !noundef !3
  %i.ss = getelementptr i8, ptr %i.so, i64 -32
  %i.st = load i64, ptr %i.ss, align 8, !noalias !710, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %.not.i.i18.i = icmp eq i64 %i.st, 0
  br i1 %.not.i.i18.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit25.i, label %.lr.ph.i.i19.i

.lr.ph.i.i19.i:                                   ; preds = %bb.fs, %bb.fu
  %.sroa.0.017.i.i20.i = phi ptr [ %i.tg, %bb.fu ], [ %i.sp, %bb.fs ] ; 3 uses
  %.sroa.02.016.i.i21.i = phi i64 [ %i.th, %bb.fu ], [ 0, %bb.fs ] ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.sroa.02.016.i.i21.i
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !719, !noalias !720, !noundef !3 ; 3 uses
  %i.sw = load i64, ptr %.sroa.0.017.i.i20.i, align 8, !range !5, !alias.scope !721, !noalias !722, !noundef !3 ; 3 uses
  %i.sx = icmp ne i64 %i.sw, 34
  call void @llvm.assume(i1 %i.sx)
  %i.sy = add nsw i64 %i.sw, -2
  %i.sz = icmp samesign ugt i64 %i.sw, 1
  %i.ta = select i1 %i.sz, i64 %i.sy, i64 32
  switch i64 %i.ta, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i24.i [
    i64 0, label %bb.ft
    i64 1, label %bb.ft
    i64 2, label %bb.ft
    i64 3, label %bb.ft
    i64 4, label %bb.ft
    i64 11, label %bb.ft
    i64 12, label %bb.ft
    i64 18, label %bb.ft
    i64 19, label %bb.ft
    i64 20, label %bb.ft
    i64 21, label %bb.ft
    i64 26, label %bb.ft
    i64 27, label %bb.ft
    i64 29, label %bb.ft
    i64 30, label %bb.ft
    i64 31, label %bb.ft
    i64 33, label %bb.ft
  ]

bb.ft:                                            ; preds = %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i, %.lr.ph.i.i19.i
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i20.i, i64 80
  %i.tc = load i64, ptr %i.tb, align 8, !noalias !722, !noundef !3 ; 2 uses
  %i.td = icmp ult i64 %i.sv, %i.tc
  br i1 %i.td, label %bb.fu, label %bb.fv

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i24.i: ; preds = %.lr.ph.i.i19.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #19, !noalias !723
  unreachable

bb.fu:                                            ; preds = %bb.ft
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i20.i, i64 72
  %i.tf = load ptr, ptr %i.te, align 8, !noalias !722, !nonnull !3, !noundef !3
  %i.tg = getelementptr inbounds nuw [152 x i8], ptr %i.tf, i64 %i.sv ; 2 uses
  %i.th = add nuw nsw i64 %.sroa.02.016.i.i21.i, 1 ; 2 uses
  %exitcond.not.i.i22.i = icmp eq i64 %i.th, %i.st
  br i1 %exitcond.not.i.i22.i, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit25.i, label %.lr.ph.i.i19.i

bb.fv:                                            ; preds = %bb.ft
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.sv, i64 noundef %i.tc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19, !noalias !723
  unreachable

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit25.i: ; preds = %bb.fu, %bb.fs
  %.sroa.0.0.lcssa.i.i23.i = phi ptr [ %i.sp, %bb.fs ], [ %i.tg, %bb.fu ] ; 5 uses
  %i.ti = load i64, ptr %.sroa.0.0.lcssa.i.i23.i, align 8, !range !5, !noalias !710, !noundef !3 ; 2 uses
  %i.tj = icmp ne i64 %i.ti, 34
  call void @llvm.assume(i1 %i.tj)
  %i.tk = icmp eq i64 %i.ti, 21
  br i1 %i.tk, label %bb.fw, label %bb.fx, !prof !13

bb.fw:                                            ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit25.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i23.i, i64 88
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tl, i64 noundef 7), !noalias !710
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i23.i, i64 104 ; 3 uses
  %i.tn = load i64, ptr %i.tm, align 8, !alias.scope !724, !noalias !710, !noundef !3 ; 2 uses
  %i.to = icmp sgt i64 %i.tn, -1
  call void @llvm.assume(i1 %i.to)
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i23.i, i64 96
  %i.tq = load ptr, ptr %i.tp, align 8, !alias.scope !724, !noalias !710, !nonnull !3, !noundef !3
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.tr, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.0.0.i, i64 7, i1 false), !noalias !710
  %.pre.i.i = load i64, ptr %i.tm, align 8, !alias.scope !724, !noalias !710
  %i.ts = add i64 %.pre.i.i, 7
  store i64 %i.ts, ptr %i.tm, align 8, !alias.scope !724, !noalias !710
  br label %bb.fy

bb.fx:                                            ; preds = %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit25.i, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !710
  store ptr @108, ptr %i.bf, align 8, !noalias !710
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !710
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #19, !noalias !710
  unreachable

bb.fy:                                            ; preds = %bb.fw, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i82
  %.sroa.01.0.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i83, %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i82 ], [ %.sroa.0.0.lcssa.i.i23.i, %bb.fw ] ; 3 uses
  %i.tt = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh), !noalias !710 ; 2 uses
  %i.tu = extractvalue { ptr, i64 } %i.tt, 1      ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 88
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tv, i64 noundef %i.tu), !noalias !710
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 104 ; 3 uses
  %i.tx = load i64, ptr %i.tw, align 8, !alias.scope !725, !noalias !710, !noundef !3 ; 3 uses
  %i.ty = icmp sgt i64 %i.tx, -1
  call void @llvm.assume(i1 %i.ty)
  %.not.i26.i = icmp eq i64 %i.tu, 0
  br i1 %.not.i26.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.tz = extractvalue { ptr, i64 } %i.tt, 0
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 96
  %i.ub = load ptr, ptr %i.ua, align 8, !alias.scope !725, !noalias !710, !nonnull !3, !noundef !3
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.tx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uc, ptr nonnull readonly align 1 %i.tz, i64 %i.tu, i1 false), !noalias !710
  %.pre.i27.i = load i64, ptr %i.tw, align 8, !alias.scope !725, !noalias !710
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.fz, %bb.fy
  %i.ud = phi i64 [ %.pre.i27.i, %bb.fz ], [ %i.tx, %bb.fy ]
  %i.ue = add i64 %i.ud, %i.tu
  store i64 %i.ue, ptr %i.tw, align 8, !alias.scope !725, !noalias !710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !726
  call fastcc void @_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_pop(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.be, ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %1), !noalias !727
  %i.uf = load i64, ptr %i.be, align 8, !range !4, !noalias !726, !noundef !3 ; 2 uses
  %.not.i28.i = icmp eq i64 %i.uf, -1
  br i1 %.not.i28.i, label %bb.oa, label %bb.ga

bb.ga:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit.i
  %.sroa.7.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx30.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !710
  br label %bb.nz

bb.gb:                                            ; preds = %bb.b, %bb.b, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !729
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.uh = load i64, ptr %i.ug, align 8, !alias.scope !728, !noalias !730, !noundef !3 ; 3 uses
  %i.ui = icmp eq i64 %i.uh, 0
  br i1 %i.ui, label %bb.gc, label %bb.gd, !prof !6

bb.gc:                                            ; preds = %bb.gb
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19, !noalias !729
  unreachable

bb.gd:                                            ; preds = %bb.gb
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uk = add nsw i64 %i.uh, -1                   ; 3 uses
  store i64 %i.uk, ptr %i.ug, align 8, !alias.scope !728, !noalias !730
  %i.ul = load i64, ptr %i.uj, align 8, !range !8, !alias.scope !728, !noalias !730, !noundef !3
  %i.um = icmp samesign ult i64 %i.uk, %i.ul
  tail call void @llvm.assume(i1 %i.um)
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !728, !noalias !730, !nonnull !3, !noundef !3
  %i.up = icmp ult i64 %i.uh, 164703072086692427
  tail call void @llvm.assume(i1 %i.up)
  %i.uq = getelementptr inbounds nuw [56 x i8], ptr %i.uo, i64 %i.uk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %i.uq, i64 56, i1 false), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !731
  invoke fastcc void @_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_pop(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ar, ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %1)
          to label %.noexc.i85 unwind label %bb.gf, !noalias !730

.noexc.i85:                                       ; preds = %bb.gd
  %i.ur = load i64, ptr %i.ar, align 8, !range !4, !noalias !731, !noundef !3 ; 2 uses
  %.not.i.i86 = icmp eq i64 %i.ur, -1
  br i1 %.not.i.i86, label %bb.gg, label %bb.ol

bb.ge:                                            ; preds = %bb.it, %bb.is, %.body80.i, %bb.hy, %bb.hx, %.body65.i, %bb.gf
  %.sroa.09.0.i = phi i8 [ %.sroa.07.1.i, %bb.gf ], [ %.sroa.07.4.i, %bb.it ], [ %.sroa.07.4.i, %.body80.i ], [ %.sroa.07.2.i, %bb.hx ], [ %.sroa.07.2.i, %bb.hy ], [ %.sroa.07.2.i, %.body65.i ], [ %.sroa.07.4.i, %bb.is ]
  %.pn37.i = phi { ptr, i32 } [ %i.us, %bb.gf ], [ %.pn.i95, %bb.it ], [ %.pn.i95, %.body80.i ], [ %.pn33.i, %bb.hx ], [ %.pn33.i, %bb.hy ], [ %.pn33.i, %.body65.i ], [ %.pn.i95, %bb.is ] ; 2 uses
  %cond.i = icmp eq i8 %.sroa.09.0.i, 0
  br i1 %cond.i, label %common.resume, label %bb.ix

bb.gf:                                            ; preds = %bb.iq, %bb.hu, %bb.gs, %.invoke.i100, %bb.gl, %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke.i102, %bb.gd
  %.sroa.07.1.i = phi i8 [ 1, %bb.gs ], [ 0, %bb.hu ], [ 0, %bb.iq ], [ 1, %.invoke.i100 ], [ 1, %bb.gd ], [ 1, %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke.i102 ], [ 1, %bb.gl ]
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.gg:                                            ; preds = %.noexc.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !731
  %i.ut = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.uu = load i8, ptr %i.ut, align 8, !range !732, !noalias !729, !noundef !3 ; 3 uses
  %.not25.i = icmp eq i8 %i.uu, -1
  br i1 %.not25.i, label %bb.gm, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val40.i = load i64, ptr %i.uv, align 8, !alias.scope !728, !noalias !730, !noundef !3 ; 2 uses
  %.not.i41.i = icmp eq i64 %.val40.i, 0
  br i1 %.not.i41.i, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke.i102, label %bb.gi, !prof !6

bb.gi:                                            ; preds = %bb.gh
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i87 = load ptr, ptr %i.uw, align 8, !alias.scope !728, !noalias !730, !nonnull !3, !noundef !3
  %i.ux = getelementptr [200 x i8], ptr %.val.i87, i64 %.val40.i ; 3 uses
  %i.uy = getelementptr i8, ptr %i.ux, i64 -200   ; 2 uses
  %i.uz = getelementptr i8, ptr %i.ux, i64 -40
  %i.va = load ptr, ptr %i.uz, align 8, !noalias !729, !nonnull !3, !noundef !3
  %i.vb = getelementptr i8, ptr %i.ux, i64 -32
  %i.vc = load i64, ptr %i.vb, align 8, !noalias !729, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %.not.i.i.i88 = icmp eq i64 %i.vc, 0
  br i1 %.not.i.i.i88, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i93, label %.lr.ph.i.i.i89

.lr.ph.i.i.i89:                                   ; preds = %bb.gi, %bb.gk
  %.sroa.0.017.i.i.i90 = phi ptr [ %i.vs, %bb.gk ], [ %i.uy, %bb.gi ] ; 3 uses
  %.sroa.02.016.i.i.i91 = phi i64 [ %i.vt, %bb.gk ], [ 0, %bb.gi ] ; 2 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %.sroa.02.016.i.i.i91
  %i.ve = load i64, ptr %i.vd, align 8, !alias.scope !733, !noalias !734, !noundef !3 ; 3 uses
  %i.vf = load i64, ptr %.sroa.0.017.i.i.i90, align 8, !range !5, !alias.scope !735, !noalias !736, !noundef !3 ; 3 uses
  %i.vg = icmp ne i64 %i.vf, 34
  tail call void @llvm.assume(i1 %i.vg)
  %i.vh = add nsw i64 %i.vf, -2
  %i.vi = icmp samesign ugt i64 %i.vf, 1
  %i.vj = select i1 %i.vi, i64 %i.vh, i64 32
  switch i64 %i.vj, label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke.i102 [
    i64 0, label %bb.gj
    i64 1, label %bb.gj
    i64 2, label %bb.gj
    i64 3, label %bb.gj
    i64 4, label %bb.gj
    i64 11, label %bb.gj
    i64 12, label %bb.gj
    i64 18, label %bb.gj
    i64 19, label %bb.gj
    i64 20, label %bb.gj
    i64 21, label %bb.gj
    i64 26, label %bb.gj
    i64 27, label %bb.gj
    i64 29, label %bb.gj
    i64 30, label %bb.gj
    i64 31, label %bb.gj
    i64 33, label %bb.gj
  ]

bb.gj:                                            ; preds = %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89, %.lr.ph.i.i.i89
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i90, i64 80
  %i.vl = load i64, ptr %i.vk, align 8, !noalias !736, !noundef !3 ; 2 uses
  %i.vm = icmp ult i64 %i.ve, %i.vl
  br i1 %i.vm, label %bb.gk, label %bb.gl

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke.i102: ; preds = %.lr.ph.i.i.i89, %bb.gh
  %i.vn = phi ptr [ @6, %bb.gh ], [ @187, %.lr.ph.i.i.i89 ]
  %i.vo = phi i64 [ 24, %bb.gh ], [ 28, %.lr.ph.i.i.i89 ]
  %i.vp = phi ptr [ @16, %bb.gh ], [ @188, %.lr.ph.i.i.i89 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vn, i64 noundef %i.vo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vp) #19
          to label %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.cont.i103 unwind label %bb.gf, !noalias !729

_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.cont.i103: ; preds = %_RNvMs0_NtCs2KzzoC5ewhj_8markdown5mdastNtB5_4Node12children_mut.exit.i.i.invoke.i102
  unreachable

bb.gk:                                            ; preds = %bb.gj
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i90, i64 72
  %i.vr = load ptr, ptr %i.vq, align 8, !noalias !736, !nonnull !3, !noundef !3
  %i.vs = getelementptr inbounds nuw [152 x i8], ptr %i.vr, i64 %i.ve ; 2 uses
  %i.vt = add nuw nsw i64 %.sroa.02.016.i.i.i91, 1 ; 2 uses
  %exitcond.not.i.i.i92 = icmp eq i64 %i.vt, %i.vc
  br i1 %exitcond.not.i.i.i92, label %_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i93, label %.lr.ph.i.i.i89

bb.gl:                                            ; preds = %bb.gj
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ve, i64 noundef %i.vl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #19
          to label %.noexc44.i unwind label %bb.gf, !noalias !729

.noexc44.i:                                       ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gg
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i104 unwind label %bb.gn, !noalias !729

bb.gn:                                            ; preds = %bb.gm
  %i.vu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body.i unwind label %bb.go, !noalias !729

bb.go:                                            ; preds = %bb.gn
  %i.vv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !729
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i104: ; preds = %bb.gm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i105 unwind label %bb.iu, !noalias !729

_RNvMs_NtCs2KzzoC5ewhj_8markdown8to_mdastNtB4_14CompileContext8tail_mut.exit.i93: ; preds = %bb.gk, %bb.gi
  %.sroa.0.0.lcssa.i.i.i94 = phi ptr [ %i.uy, %bb.gi ], [ %i.vs, %bb.gk ] ; 4 uses
  %i.vw = load i64, ptr %.sroa.0.0.lcssa.i.i.i94, align 8, !range !5, !alias.scope !737, !noalias !729, !noundef !3 ; 3 uses
  %i.vx = icmp ne i64 %i.vw, 34
  tail call void @llvm.assume(i1 %i.vx)
  %i.vy = add nsw i64 %i.vw, -2
  %i.vz = icmp samesign ugt i64 %i.vw, 1
  %i.wa = select i1 %i.vz, i64 %i.vy, i64 32
  switch i64 %i.wa, label %.invoke.i100 [
    i64 0, label %bb.gp
    i64 1, label %bb.gp
    i64 2, label %bb.gp
    i64 3, label %bb.gp
    i64 4, label %bb.gp
    i64 11, label %bb.gp
    i64 12, label %bb.gp
    i64 18, label %bb.gp
    i64 19, label %bb.gp
    i64 20, label %bb.gp
    i64 21, label %bb.gp
    i64 26, label %bb.gp
    i64 27, label %bb.gp
end_hunk_5
