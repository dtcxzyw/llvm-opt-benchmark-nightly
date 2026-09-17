Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RNvNtCskXtk6F4WjxZ_4just8function6choose:bb.a
  %i.et = or disjoint i32 %i.es, %i.eo
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i, %bb.n, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i = phi ptr [ %i.ds, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i ], [ %i.eb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i ], [ %i.el, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i ], [ %i.dm, %bb.n ] ; 3 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.dx, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i ], [ %i.ei, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i ], [ %i.et, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i ], [ %i.dz, %bb.n ]
  %i.eu = icmp samesign ult i64 %i.dl, 2305843009213693952
  call void @llvm.assume(i1 %i.eu)
  %i.ev = load i64, ptr %i.d, align 8, !range !43, !alias.scope !78353, !noalias !78347, !noundef !28
  %i.ew = icmp eq i64 %i.dl, %i.ev
  br i1 %i.ew, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, label %.noexc.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.o
  %i.ex = ptrtoint ptr %.sroa.0.1.ph.i.i.i to i64
  %i.ey = sub nuw i64 %i.cx, %i.ex                ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = and i64 %i.ey, 3
  %.not.i4.i.i.i = icmp ne i64 %i.fa, 0
  %i.fb = zext i1 %.not.i4.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.ez, 1
  %i.fc = add nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.fb
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i64 noundef range(i64 1, 0) %i.fc, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i unwind label %bb.p, !noalias !78347

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78353, !noalias !78347
  br label %.noexc.i

.noexc.i:                                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i, %bb.o
  %i.fd = phi ptr [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i ], [ %i.dk, %bb.o ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.dl
  store i32 %spec.select.i.ph.i.i.i, ptr %i.fe, align 4, !noalias !78354
  %i.ff = add nuw nsw i64 %i.dl, 1                ; 3 uses
  store i64 %i.ff, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !78353, !noalias !78347
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i, %i.ac
  br i1 %.not.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit, label %.lr.ph.i.i.i

bb.p:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !noalias !78347 ; 2 uses
  %i.fh = icmp eq i64 %.val.i, 0
  br i1 %i.fh, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !78347, !nonnull !28, !noundef !28
  %i.fi = shl nuw i64 %.val.i, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 4) #70, !noalias !78347
  br label %.body

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit: ; preds = %.noexc.i
  %.sroa.0.0.copyload.pre = load i64, ptr %i.d, align 8
  %.sroa.8.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i
  %.sroa.13.0.copyload = phi i64 [ %i.ff, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 9 uses
  %.sroa.8.0.copyload = phi ptr [ %.sroa.8.0.copyload.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 7 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ %.sroa.4.0.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78347
  switch i64 %3, label %thread-pre-split.i [
    i64 0, label %.loopexit96
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i
  %i.fj = load i8, ptr %2, align 1, !alias.scope !78355, !noalias !78356, !noundef !28 ; 2 uses
  switch i8 %i.fj, label %bb.s [
    i8 43, label %.loopexit96
    i8 45, label %.loopexit96
  ]

thread-pre-split.i:                               ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i
  %.pr.i = load i8, ptr %2, align 1, !alias.scope !78355, !noalias !78356
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i, %bb.r
  %i.fk = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.fj, %bb.r ]
  %cond.i = icmp eq i8 %i.fk, 43                  ; 2 uses
  %i.fl = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %3, %i.fl           ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i59 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.fm = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.fm, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.s
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.v
  %.not52.i = icmp eq i64 %i.fo, 0
  br i1 %.not52.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.s, %.preheader56.i
  %.sroa.0.1.i165 = phi ptr [ %i.fn, %.preheader56.i ], [ %.sroa.0.0.i59, %bb.s ] ; 2 uses
  %.sroa.15.1.i164 = phi i64 [ %i.fo, %.preheader56.i ], [ %.sroa.15.0.i, %bb.s ]
  %.sroa.042.0.i163 = phi i64 [ %i.fz, %.preheader56.i ], [ 0, %bb.s ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i165, i64 1
  %i.fo = add nsw i64 %.sroa.15.1.i164, -1        ; 2 uses
  %i.fp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i163, i64 10) ; 2 uses
  %i.fq = extractvalue { i64, i1 } %i.fp, 0       ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fp, 1
  %i.fs = load i8, ptr %.sroa.0.1.i165, align 1, !alias.scope !78355, !noalias !78356, !noundef !28 ; 2 uses
  br i1 %i.fr, label %bb.u, label %bb.t, !prof !44

bb.t:                                             ; preds = %.preheader56.i.preheader
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nsw i32 %i.ft, -48                  ; 2 uses
  %i.fv = icmp ult i32 %i.fu, 10
  br i1 %i.fv, label %bb.v, label %.loopexit96

bb.u:                                             ; preds = %.preheader56.i.preheader
  %i.fw = add i8 %i.fs, -48
  %i.fx = icmp ult i8 %i.fw, 10
  %spec.select = select i1 %i.fx, i8 2, i8 1
  br label %.loopexit96

bb.v:                                             ; preds = %bb.t
  %i.fy = zext nneg i32 %i.fu to i64
  %i.fz = add i64 %i.fq, %i.fy                    ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.fq
  br i1 %i.ga, label %.loopexit96, label %.preheader56.i, !prof !44

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.w
  %.sroa.0.269.i = phi ptr [ %i.gh, %bb.w ], [ %.sroa.0.0.i59, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.gg, %bb.w ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.gj, %bb.w ], [ 0, %.preheader.i ]
  %i.gb = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !78355, !noalias !78356, !noundef !28
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10
  br i1 %i.ge, label %bb.w, label %.loopexit96

bb.w:                                             ; preds = %.lr.ph.i
  %i.gf = mul i64 %.sroa.042.267.i, 10
  %i.gg = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.gi = zext nneg i32 %i.gd to i64
  %i.gj = add i64 %i.gf, %i.gi                    ; 2 uses
  %.not53.i = icmp eq i64 %i.gg, 0
  br i1 %.not53.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit: ; preds = %.body63, %bb.bc, %bb.y
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.y ], [ %lpad.phi.i, %bb.bc ], [ %lpad.phi.i, %.body63 ] ; 2 uses
  %i.gk = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.gk, label %.body, label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit
  %i.gl = shl nuw i64 %.sroa.0.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 4) #70
  br label %.body

bb.y:                                             ; preds = %bb.bd, %.loopexit96, %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit

.loopexit96:                                      ; preds = %bb.t, %bb.v, %.lr.ph.i, %bb.u, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i, %bb.r, %bb.r
  %.sroa.5.0.ph = phi i8 [ 1, %bb.r ], [ %spec.select, %bb.u ], [ 1, %bb.r ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i ], [ 1, %.lr.ph.i ], [ 1, %bb.t ], [ 2, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.sroa.5.0.ph, ptr %i.c, align 1, !noalias !78357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78357
  store ptr %i.l, ptr %i.b, align 8, !noalias !78357
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !78357
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.gn, align 8, !noalias !78357
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !78357
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @656, ptr noundef nonnull %i.b)
          to label %bb.bh unwind label %bb.y

_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.w, %.preheader.i
  %.sroa.1275.0 = phi i64 [ %i.gj, %bb.w ], [ 0, %.preheader.i ], [ %i.fz, %.preheader56.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.go = invoke noundef nonnull ptr @_RNvNtNtCs3R0z6j4fLAW_4rand4rngs6thread3rng()
          to label %bb.z unwind label %bb.y       ; 2 uses

bb.z:                                             ; preds = %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit
  store ptr %i.go, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78358
  store i64 0, ptr %i.a, align 8, !noalias !78358
  %.sroa.4.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i61, align 8, !noalias !78358
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !78358
  call void @llvm.experimental.noalias.scope.decl(metadata !78359)
  call void @llvm.experimental.noalias.scope.decl(metadata !78360)
  %.not.not.i.not = icmp eq i64 %.sroa.1275.0, 0
  br i1 %.not.not.i.not, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.aa, !prof !29

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.1275.0, i64 noundef 1, i64 noundef 1)
          to label %.lr.ph.i.i.i.i.i.i.i.preheader106 unwind label %.loopexit.split-lp.i, !noalias !78358

.lr.ph.i.i.i.i.i.i.i.preheader106:                ; preds = %bb.aa
  %i.gp = icmp samesign ugt i64 %.sroa.13.0.copyload, 4294967295
  %i.gq = trunc nuw i64 %.sroa.13.0.copyload to i32 ; 2 uses
  %i.gr = sub i32 0, %i.gq                        ; 2 uses
  %i.gs = zext nneg i64 %.sroa.13.0.copyload to i128
  %i.gt = sub nsw i64 0, %.sroa.13.0.copyload
  br label %.lr.ph.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !78361)
  call void @llvm.experimental.noalias.scope.decl(metadata !78362)
  call void @llvm.experimental.noalias.scope.decl(metadata !78363)
  br label %.loopexit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader106, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.gu, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader106 ]
  %i.gu = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !78364, !nonnull !28, !noundef !28 ; 13 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16 ; 18 uses
  %i.gw = load i32, ptr %i.gv, align 4, !noalias !78365, !noundef !28 ; 7 uses
  br i1 %i.gp, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gx = icmp ugt i32 %i.gw, 63
  br i1 %i.gx, label %bb.ac, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.ha = load i64, ptr %i.gz, align 4, !alias.scope !78366, !noalias !78367
  %i.hb = icmp ugt i64 %i.ha, 1023
  br i1 %i.hb, label %bb.ad, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread, !prof !44

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.gy) #74
          to label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread unwind label %.loopexit.i62, !noalias !78358

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.hc = zext nneg i32 %i.gw to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hc
  %i.he = add nuw nsw i32 %i.gw, 1                ; 2 uses
  %i.hf = load i32, ptr %i.hd, align 4, !alias.scope !78368, !noalias !78369, !noundef !28
  store i32 %i.he, ptr %i.gv, align 4, !alias.scope !78368, !noalias !78369
  %i.hg = zext i32 %i.hf to i64
  %i.hh = mul nuw i64 %.sroa.13.0.copyload, %i.hg ; 2 uses
  %i.hi = lshr i64 %i.hh, 32                      ; 3 uses
  %i.hj = trunc i64 %i.hh to i32                  ; 3 uses
  %i.hk = icmp ult i32 %i.gr, %i.hj
  br i1 %i.hk, label %bb.ae, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread: ; preds = %bb.ac, %bb.ad
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.gy, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78369
  %i.hl = load i32, ptr %i.gv, align 4, !alias.scope !78368, !noalias !78369, !noundef !28
  store i32 1, ptr %i.gv, align 4, !alias.scope !78368, !noalias !78369
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %.sroa.13.0.copyload, %i.hm ; 2 uses
  %i.ho = lshr i64 %i.hn, 32                      ; 2 uses
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  %i.hq = icmp ult i32 %i.gr, %i.hp
  br i1 %i.hq, label %.thread, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = icmp eq i32 %i.gw, 63
  br i1 %i.hr, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.hs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.hu = load i64, ptr %i.ht, align 4, !alias.scope !78370, !noalias !78371
  %i.hv = icmp ugt i64 %i.hu, 1023
  br i1 %i.hv, label %bb.ag, label %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.hs) #74
          to label %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78358

.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.ag, %bb.af
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.hs, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78372
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread:                                          ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread, %bb.ae
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i144146 = phi i32 [ %i.he, %bb.ae ], [ 1, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ] ; 2 uses
  %i.hw = phi i64 [ %i.hi, %bb.ae ], [ %i.ho, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ]
  %i.hx = phi i32 [ %i.hj, %bb.ae ], [ %i.hp, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ]
  %i.hy = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i144146 to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hy
  %i.ia = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i144146, 1
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ib = phi i64 [ %i.hi, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hw, %.thread ]
  %i.ic = phi i32 [ %i.hj, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hx, %.thread ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ia, %.thread ]
  %.in.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hz, %.thread ]
  %i.id = load i32, ptr %.in.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !78373, !noalias !78372, !noundef !28
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gv, align 4, !alias.scope !78373, !noalias !78372
  %6 = call i32 @llvm.umulh.i32(i32 %i.id, i32 %i.gq)
  %i.ie = xor i32 %i.ic, -1
  %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %6, %i.ie
  %i.if = zext i1 %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ig = add nuw nsw i64 %i.ib, %i.if
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ih = icmp ult i32 %i.gw, 63
  br i1 %i.ih, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ii = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 268
  %i.ij = load i32, ptr %i.ii, align 4, !alias.scope !78374, !noalias !78375, !noundef !28
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.im = load i64, ptr %i.il, align 4, !alias.scope !78376, !noalias !78377
  %i.in = icmp ugt i64 %i.im, 1023
  br i1 %i.in, label %bb.aj, label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ik) #74
          to label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78358

_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ik, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78375
  %i.io = load i32, ptr %i.gv, align 4, !alias.scope !78374, !noalias !78375, !noundef !28 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gw, 63 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 20
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !78374, !noalias !78375
  %.sroa.03.0.ph.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.io, i32 %i.iq
  %.sroa.02.0.ph.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.ij, i32 %i.io
  %.sroa.0.0.ph.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.ir = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !alias.scope !78374, !noalias !78375, !noundef !28
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !alias.scope !78374, !noalias !78375, !noundef !28
  %i.iw = shl nuw nsw i64 %i.ir, 32
  %i.ix = add nuw nsw i64 %i.iw, 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ix, %bb.ak ] ; 3 uses
  %.sroa.02.017.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.it, %bb.ak ]
  %.sroa.03.016.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %bb.ak ]
  %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %.sroa.6.0.extract.trunc.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gv, align 4, !alias.scope !78374, !noalias !78375
  %i.iy = zext i32 %.sroa.03.016.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.iz = shl nuw i64 %i.iy, 32
  %i.ja = zext i32 %.sroa.02.017.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.jb = or disjoint i64 %i.iz, %i.ja
  %i.jc = zext i64 %i.jb to i128
  %i.jd = mul nuw nsw i128 %i.jc, %i.gs           ; 2 uses
  %i.je = lshr i128 %i.jd, 64
  %i.jf = trunc nuw nsw i128 %i.je to i64         ; 2 uses
  %i.jg = trunc i128 %i.jd to i64                 ; 2 uses
  %i.jh = icmp ult i64 %i.gt, %i.jg
  br i1 %i.jh, label %bb.al, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = icmp samesign ult i64 %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 270582939648
  br i1 %i.ji, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 268
  %i.jk = load i32, ptr %i.jj, align 4, !alias.scope !78378, !noalias !78379, !noundef !28
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.jn = load i64, ptr %i.jm, align 4, !alias.scope !78380, !noalias !78381
  %i.jo = icmp ugt i64 %i.jn, 1023
  br i1 %i.jo, label %bb.an, label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.jl) #74
          to label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78358

_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.jl, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78379
  %i.jp = load i32, ptr %i.gv, align 4, !alias.scope !78378, !noalias !78379, !noundef !28 ; 2 uses
  %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 63 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 20
  %i.jr = load i32, ptr %i.jq, align 4, !alias.scope !78378, !noalias !78379
  %.sroa.03.0.ph.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.jp, i32 %i.jr
  %.sroa.02.0.ph.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.jk, i32 %i.jp
  %.sroa.0.0.ph.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.al
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !alias.scope !78378, !noalias !78379, !noundef !28
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !alias.scope !78378, !noalias !78379, !noundef !28
  %i.jw = and i64 %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 270582939648
  %i.jx = add nuw nsw i64 %i.jw, 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jx, %bb.ao ]
  %.sroa.02.017.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jt, %bb.ao ]
  %.sroa.03.016.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jv, %bb.ao ]
  %.sroa.6.0.extract.shift.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.018.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gv, align 4, !alias.scope !78378, !noalias !78379
  %i.jy = zext i32 %.sroa.03.016.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.jz = shl nuw i64 %i.jy, 32
  %i.ka = zext i32 %.sroa.02.017.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.kb = or disjoint i64 %i.jz, %i.ka
  %7 = call i64 @llvm.umulh.i64(i64 %i.kb, i64 range(i64 0, 2305843009213693952) %.sroa.13.0.copyload)
  %i.kc = xor i64 %i.jg, -1
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %7, %i.kc
  %i.kd = zext i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ke = add nuw nsw i64 %i.kd, %i.jf
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hi, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ig, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ke, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jf, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ho, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ] ; 3 uses
  %i.kf = icmp samesign ult i64 %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.13.0.copyload
  br i1 %i.kf, label %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.13.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @554) #75
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !78358

.noexc7.i:                                        ; preds = %bb.ap
  unreachable

_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.kg, align 4, !range !52, !alias.scope !78382, !noalias !78364, !noundef !28 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78383)
  %i.kh = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !78384, !noalias !78385, !noundef !28 ; 5 uses
  %i.ki = icmp sgt i64 %i.kh, -1
  call void @llvm.assume(i1 %i.ki)
  %i.kj = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 128 ; 2 uses
  br i1 %i.kj, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i
  %i.kk = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 2048
  br i1 %i.kk, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kl = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.kl, i64 3, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.aq ], [ %..i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ], [ 1, %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.km = load i64, ptr %i.a, align 8, !range !43, !alias.scope !78386, !noalias !78385, !noundef !28
  %i.kn = sub nsw i64 %i.km, %i.kh
  %i.ko = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.kn
  br i1 %i.ko, label %bb.at, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.kh, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78358

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.kp = load ptr, ptr %.sroa.4.0..sroa_idx.i61, align 8, !alias.scope !78384, !noalias !78385, !nonnull !28, !noundef !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kh ; 10 uses
  br i1 %i.kj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kr = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 2048
  %i.ks = trunc i32 %.val3.i.i.i.i.i.i.i.i to i8
  %i.kt = and i8 %i.ks, 63
  %i.ku = or disjoint i8 %i.kt, -128              ; 3 uses
  %i.kv = lshr i32 %.val3.i.i.i.i.i.i.i.i, 6
  %i.kw = trunc i32 %i.kv to i8                   ; 2 uses
  %i.kx = and i8 %i.kw, 63
  %i.ky = or disjoint i8 %i.kx, -128              ; 2 uses
  %i.kz = lshr i32 %.val3.i.i.i.i.i.i.i.i, 12
  %i.la = trunc i32 %i.kz to i8                   ; 2 uses
  %i.lb = and i8 %i.la, 63
  %i.lc = or disjoint i8 %i.lb, -128
  %i.ld = lshr i32 %.val3.i.i.i.i.i.i.i.i, 18
  %i.le = trunc nuw nsw i32 %i.ld to i8
  %i.lf = or disjoint i8 %i.le, -16
  br i1 %i.kr, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lg = trunc nuw nsw i32 %.val3.i.i.i.i.i.i.i.i to i8
  store i8 %i.lg, ptr %i.kq, align 1, !noalias !78387
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.lh = or disjoint i8 %i.kw, -64
  store i8 %i.lh, ptr %i.kq, align 1, !noalias !78387
  %i.li = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %i.ku, ptr %i.li, align 1, !noalias !78387
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.au
  %i.lj = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 65536
  br i1 %i.lj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lk = or disjoint i8 %i.la, -32
  store i8 %i.lk, ptr %i.kq, align 1, !noalias !78387
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %i.ky, ptr %i.ll, align 1, !noalias !78387
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i8 %i.ku, ptr %i.lm, align 1, !noalias !78387
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  store i8 %i.lf, ptr %i.kq, align 1, !noalias !78387
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %i.lc, ptr %i.ln, align 1, !noalias !78387
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i8 %i.ky, ptr %i.lo, align 1, !noalias !78387
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  store i8 %i.ku, ptr %i.lp, align 1, !noalias !78387
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.aw, %bb.av
  %i.lq = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.kh
  store i64 %i.lq, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !78384, !noalias !78385
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.gu, %.sroa.1275.0
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i62:                                    ; preds = %bb.at, %bb.an, %bb.aj, %bb.ag, %bb.ad
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp.i:                             ; preds = %bb.ap, %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i62
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i62 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78388)
  call void @llvm.experimental.noalias.scope.decl(metadata !78389)
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !78390, !noalias !78358 ; 2 uses
  %i.lr = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.lr, label %.body63, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i61, align 8, !alias.scope !78390, !noalias !78358, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !78391
  br label %.body63

.body63:                                          ; preds = %bb.ba, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !78392)
  call void @llvm.experimental.noalias.scope.decl(metadata !78393)
  call void @llvm.experimental.noalias.scope.decl(metadata !78394)
  %i.ls = load ptr, ptr %i.g, align 8, !alias.scope !78395, !nonnull !28, !noundef !28 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !noalias !78395, !noundef !28
  %i.lu = add i64 %i.lt, -1                       ; 2 uses
  store i64 %i.lu, ptr %i.ls, align 8, !noalias !78395
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit

bb.bc:                                            ; preds = %.body63
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCs9ILO0rivZwZ_9rand_core5block8BlockRngNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #74
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit unwind label %bb.bg

.loopexit.loopexit:                               ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !78396
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.lw = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.go, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78358
  store i64 0, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !78397)
  call void @llvm.experimental.noalias.scope.decl(metadata !78398)
  call void @llvm.experimental.noalias.scope.decl(metadata !78399)
  %i.ly = load i64, ptr %i.lw, align 8, !noalias !78396, !noundef !28
  %i.lz = add i64 %i.ly, -1                       ; 2 uses
  store i64 %i.lz, ptr %i.lw, align 8, !noalias !78396
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %bb.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67

bb.bd:                                            ; preds = %.loopexit
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCs9ILO0rivZwZ_9rand_core5block8BlockRngNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #74
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67 unwind label %bb.y

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67: ; preds = %.loopexit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.mb = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.mb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68, label %bb.be

bb.be:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67
  %i.mc = shl nuw i64 %.sroa.0.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 4) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68: ; preds = %bb.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67
  %.val54 = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val55 = load i64, ptr %i.md, align 8, !noundef !28 ; 4 uses
  %i.me = icmp eq i64 %.val55, 0
  br i1 %i.me, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetcEECskXtk6F4WjxZ_4just.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68
  %i.mf = shl i64 %.val55, 2
  %i.mg = icmp slt i64 %.val55, 4611686018427387900
  call void @llvm.assume(i1 %i.mg)
  %i.mh = and i64 %i.mf, -16                      ; 2 uses
  %i.mi = add i64 %i.mh, 16                       ; 2 uses
  %i.mj = add nsw i64 %.val55, 17
  %i.mk = add i64 %i.mj, %i.mi                    ; 4 uses
  %i.ml = icmp uge i64 %i.mk, %i.mi
  %i.mm = icmp ult i64 %i.mk, 9223372036854775793
  call void @llvm.assume(i1 %i.ml)
end_hunk_0
begin_hunk_1_@llvm.bswap.i64

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #58

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNtB5_13PathCompleter3dir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNtB5_13PathCompleter4file(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs12_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB6_7NonZeroyENtNtNtBa_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs10_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserhNtB6_18ValueParserFactory12value_parser(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9debug_set(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsi_NtNtNtCsaKJjC64KgbL_3std3sys2fs4unixNtB5_4File4read(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs3_NtNtCsk7w47U2izUG_14regex_automata4meta5regexNtB5_5RegexNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCscpDzAHcVcWB_4uuid3fmtNtB6_4UuidNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Csh2YIbNO2017_16percent_encodingNtB4_13PercentEncodeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_Csjcnq7zA68du_6caminoNtB5_11Utf8PathBufNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_Csjcnq7zA68du_6caminoNtB5_8Utf8PathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(640), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs2uF6e5yHHeh_6chrono6offset3utcNtB5_3UtcNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs2uF6e5yHHeh_6chrono6offset5fixedNtB5_11FixedOffsetNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketuEE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsfxuqquxiU4q_10serde_core2de5implsNtB2_11UnitVisitorNtB4_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsfxuqquxiU4q_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i8 } @_RNvNtCsl7tMOFksck4_7dotenvy4iter14eval_end_state(i8 noundef range(i8 0, 8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr17ends_with_newline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsF_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsF_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(760), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBd_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse15body_to_tag_end(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse13item_to_event(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCs9ILO0rivZwZ_9rand_core5block8BlockRngNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seek(ptr noalias nofree noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs2_NtCsaKJjC64KgbL_3std7processNtB5_10ChildStdinNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsfxuqquxiU4q_10serde_core2deNtB5_5OneOfNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaKJjC64KgbL_3std3sys5stdio4unixNtB5_6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsg2HB1uAEQDf_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs8home_dir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #68

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #58

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #69

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #58

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #58

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #58

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #14 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #53 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #56 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #58 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #59 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #61 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #62 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #66 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #67 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #69 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #70 = { nounwind }
attributes #71 = { noreturn }
attributes #72 = { cold }
attributes #73 = { cold noreturn nounwind }
attributes #74 = { noinline }
attributes #75 = { noinline noreturn }
attributes #76 = { inlinehint }
attributes #77 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !{ptr @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just, null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEEB1e_"}
!4 = distinct !{!4, !3, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEEB1e_: argument 0"}
!5 = distinct !{null}
!6 = distinct !{!6, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just"}
!7 = distinct !{!7, !6, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just: argument 0"}
!8 = distinct !{null}
!9 = distinct !{!9, !53}
!10 = distinct !{null}
!11 = distinct !{ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1c_, null, null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{!14, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just"}
!15 = distinct !{!15, !14, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just: argument 0"}
!16 = distinct !{!16, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just"}
!17 = distinct !{!17, !16, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just: argument 0"}
!18 = distinct !{!18, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!19 = distinct !{!19, !18, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!20 = distinct !{!20, !53}
!21 = distinct !{null}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 2, !"RtLibUseGOT", i32 1}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!26 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!27 = !{i64 0, i64 3}
!28 = !{}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!"branch_weights", i32 1073205, i32 2146410443}
!32 = !{!"branch_weights", i32 2146410443, i32 1073205}
!33 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!34 = !{i64 4}
!35 = !{i64 8}
!36 = !{!"address", !"read_provenance"}
!37 = !{i64 -1, i64 -9223372036854775808}
!38 = !{i8 0, i8 3}
!39 = !{i64 -1, i64 -9223372036854775792}
!40 = !{i8 0, i8 2}
!41 = !{i64 0, i64 2}
!42 = !{!"branch_weights", i32 2002, i32 2000}
!43 = !{i64 0, i64 -9223372036854775808}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{i8 -1, i8 42}
!46 = !{!"branch_weights", i32 4001, i32 4000000}
!47 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!48 = !{i64 1, i64 536870913}
!49 = !{i32 -1, i32 1114112}
!50 = !{i8 0, i8 7}
!51 = !{i8 0, i8 23}
!52 = !{i32 0, i32 1114112}
!53 = !{!"llvm.loop.peeled.count", i32 1}
!54 = !{i8 -1, i8 3}
!55 = !{i32 0, i32 3}
!56 = !{!"branch_weights", i32 1, i32 4001}
!57 = !{i8 0, i8 6}
!58 = !{i64 1, i64 0}
!59 = !{i64 -1, i64 3}
!60 = !{i64 0, i64 4}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"branch_weights", i32 8, i32 24}
!64 = !{!"branch_weights", i32 -2147483648, i32 0}
!65 = !{!"branch_weights", i32 1, i32 1999}
!66 = !{!"branch_weights", i32 0, i32 1}
!67 = !{i32 -1, i32 1000000000}
!68 = !{i32 0, i32 2}
!69 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!70 = !{ptr @_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind}
!71 = !{i8 0, i8 44}
!72 = !{i64 -1, i64 5}
!73 = !{!"branch_weights", !"expected", i32 2145766842, i32 1716806}
!74 = !{i32 0, i32 -1}
!75 = !{!"branch_weights", i32 4000000, i32 4001}
!76 = !{i64 -2, i64 32}
end_hunk_1
