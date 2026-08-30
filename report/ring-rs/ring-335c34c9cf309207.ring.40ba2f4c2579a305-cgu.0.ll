Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvNtCs5yxAJGbRKSL_4ring8testutil15parse_test_case:bb.a

bb.an:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i
  %.sroa.010.1.i.i = phi i32 [ %i.dy, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i ], [ %i.do, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i ]
  %i.dz = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.ea = and i8 %i.df, 63
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dz, %i.eb
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i
  %.sroa.010.0.i.i = phi i32 [ %i.ec, %bb.an ], [ %i.dh, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i ] ; 4 uses
  %i.ed = icmp sgt i64 %i.cx, -1
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp samesign ult i32 %.sroa.010.0.i.i, 17408
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp samesign ult i32 %.sroa.010.0.i.i, 2
  br i1 %i.ef, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3pop.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = icmp samesign ult i32 %.sroa.010.0.i.i, 32
  br i1 %i.eg, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3pop.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eh = icmp samesign ult i32 %.sroa.010.0.i.i, 1024
  %..i = select i1 %i.eh, i64 -3, i64 -4
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3pop.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3pop.exit: ; preds = %.thread.i57, %bb.ao, %bb.ap, %bb.aq
  %.sroa.03.0.neg.i = phi i64 [ -2, %bb.ap ], [ %..i, %bb.aq ], [ -1, %bb.ao ], [ -1, %.thread.i57 ]
  %i.ei = add nsw i64 %.sroa.03.0.neg.i, %i.cx    ; 7 uses
  store i64 %i.ei, ptr %i.n, align 8, !alias.scope !4548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4554)
  %i.ej = icmp samesign eq i64 %i.ei, 0
  br i1 %i.ej, label %.loopexit201, label %bb.ar

bb.ar:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3pop.exit
  %i.ek = load i8, ptr %i.cv, align 1, !noalias !4557, !noundef !18 ; 4 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6remove.exit, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i: ; preds = %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.en = and i8 %i.ek, 31
  %i.eo = zext nneg i8 %i.en to i32               ; 3 uses
  %i.ep = icmp samesign ne i64 %i.ei, 1
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = load i8, ptr %i.em, align 1, !noalias !4557, !noundef !18
  %i.er = shl nuw nsw i32 %i.eo, 6
  %i.es = and i8 %i.eq, 63
  %i.et = zext nneg i8 %i.es to i32               ; 2 uses
  %i.eu = or disjoint i32 %i.er, %i.et
  %i.ev = icmp samesign ugt i8 %i.ek, -33
  br i1 %i.ev, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i, label %bb.as

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.ex = icmp samesign ne i64 %i.ei, 2
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load i8, ptr %i.ew, align 1, !noalias !4557, !noundef !18
  %i.ez = shl nuw nsw i32 %i.et, 6
  %i.fa = and i8 %i.ey, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb            ; 2 uses
  %i.fd = shl nuw nsw i32 %i.eo, 12
  %i.fe = or disjoint i32 %i.fc, %i.fd
  %i.ff = icmp samesign ugt i8 %i.ek, -17
  br i1 %i.ff, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i, label %bb.as

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.fh = icmp samesign ne i64 %i.ei, 3
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = load i8, ptr %i.fg, align 1, !noalias !4557, !noundef !18
  %i.fj = shl nuw nsw i32 %i.eo, 18
  %i.fk = and i32 %i.fj, 1835008
  %i.fl = shl nuw nsw i32 %i.fc, 6
  %i.fm = and i8 %i.fi, 63
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %i.fp = or disjoint i32 %i.fo, %i.fk
  br label %bb.as

bb.as:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.fe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i ], [ %i.fp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i ], [ %i.eu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i ] ; 4 uses
  %i.fq = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128
  br i1 %i.fr, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6remove.exit, label %bb.at

.loopexit201:                                     ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3pop.exit, %bb.al
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @69, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #41
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %.loopexit201
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.fs = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.fs, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6remove.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  %..i58 = select i1 %i.ft, i64 3, i64 4
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6remove.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6remove.exit: ; preds = %bb.ar, %bb.as, %bb.at, %bb.au
  %.sroa.01.0.i = phi i64 [ 2, %bb.at ], [ %..i58, %bb.au ], [ 1, %bb.as ], [ 1, %bb.ar ] ; 2 uses
  %i.fu = icmp sgt i64 %i.ei, -1
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.01.0.i
  %i.fw = sub nsw i64 %i.ei, %.sroa.01.0.i        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.fv, i64 %i.fw, i1 false), !noalias !4554
  store i64 %i.fw, ptr %i.n, align 8, !alias.scope !4554
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer356.backedge

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer356.backedge: ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6remove.exit, %bb.j
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer356

bb.av:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtBG_6string6StringB19_bEEECs5yxAJGbRKSL_4ring.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs5yxAJGbRKSL_4ring8testutil8from_hex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = and i64 %2, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = lshr exact i64 %2, 1                     ; 4 uses
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

.thread:                                          ; preds = %bb.b
  store i64 %i.j, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.m, align 8
  br label %._crit_edge

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4560
  %i.n = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, 9) 1) #36, !noalias !4560 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4563
  %i.p = tail call noundef dereferenceable_or_null(49) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 49, i64 noundef range(i64 1, 9) 1) #36, !noalias !4563 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.u, label %bb.v

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.j) #42
  unreachable

.lr.ph:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.j, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.45.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

.loopexit:                                        ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i67, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke116, %.invoke, %bb.n, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val52 = load i64, ptr %i.g, align 8           ; 2 uses
  %i.v = icmp eq i64 %.val52, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val53 = load ptr, ptr %i.r, align 8, !nonnull !18, !noundef !18
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53, i64 noundef %.val52, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit

bb.f:                                             ; preds = %.lr.ph, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring.exit
  %.sroa.0.0103 = phi ptr [ %1, %.lr.ph ], [ %i.w, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring.exit ] ; 3 uses
  %.sroa.6.0102 = phi i64 [ %2, %.lr.ph ], [ %i.x, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring.exit ] ; 3 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.6.0102, i64 2) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0103, i64 %..i.i
  %i.x = sub nuw nsw i64 %.sroa.6.0102, %..i.i    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = load i8, ptr %.sroa.0.0103, align 1, !noundef !18 ; 8 uses
  %.not.i.i = icmp ult i8 %i.y, 48
  br i1 %.not.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i

._crit_edge:                                      ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring.exit, %.thread
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %4

4:                                                ; preds = %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit76, %._crit_edge
  ret void

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i: ; preds = %bb.f
  %.not.i = icmp ugt i8 %i.y, 57
  br i1 %.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i, label %bb.g

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i
  %.not.i.1.i = icmp ult i8 %i.y, 97
  br i1 %.not.i.1.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i
  %.not.1.i = icmp ugt i8 %i.y, 102
  br i1 %.not.1.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i, label %bb.g

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i
  %i.z = add nsw i8 %i.y, -71
  %or.cond.i = icmp ult i8 %i.z, -6
  br i1 %or.cond.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i, label %bb.g

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4566
  %i.aa = zext i8 %i.y to i32
  store i32 %i.aa, ptr %i.d, align 4, !noalias !4566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4566
  store ptr %i.d, ptr %i.c, align 8, !noalias !4566
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !4566
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @192, ptr noundef nonnull %i.c)
          to label %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit unwind label %.loopexit

bb.g:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i
  %.sroa.0.0.ptr16.lcssa.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @190, i64 8), %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i ], [ @190, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i ], [ getelementptr inbounds nuw (i8, ptr @190, i64 4), %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr16.lcssa.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !4566, !noundef !18 ; 2 uses
  %i.ad = icmp ult i8 %i.y, %i.ac
  br i1 %i.ad, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = sub nuw nsw i8 %i.y, %i.ac              ; 2 uses
  %i.af = load i8, ptr %.sroa.0.0.ptr16.lcssa.i, align 1, !noalias !4566, !noundef !18
  %i.ag = add i8 %i.af, %i.ae                     ; 2 uses
  %i.ah = icmp ult i8 %i.ag, %i.ae
  br i1 %i.ah, label %.invoke116, label %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit.thread

.invoke:                                          ; preds = %bb.l, %bb.g
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.invoke116:                                       ; preds = %bb.m, %bb.h
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #41
          to label %.cont117 unwind label %.loopexit.split-lp

.cont117:                                         ; preds = %.invoke116
  unreachable

bb.i:                                             ; preds = %bb.r, %bb.n
  unreachable

_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4566
  %.pr = load i64, ptr %i.f, align 8              ; 2 uses
  %.not48 = icmp eq i64 %.pr, -1
  %.pre = load i8, ptr %i.t, align 8              ; 2 uses
  br i1 %.not48, label %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.531.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit.thread: ; preds = %bb.h, %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit
  %i.ai = phi i8 [ %.pre, %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit ], [ %i.ag, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not49 = icmp eq i64 %.sroa.6.0102, 1
  br i1 %.not49, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0103, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !18 ; 8 uses
  %.not.i.i59 = icmp ult i8 %i.ak, 48
  br i1 %.not.i.i59, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i67, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i60

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i60: ; preds = %bb.k
  %.not.i61 = icmp ugt i8 %i.ak, 57
  br i1 %.not.i61, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i63, label %bb.l

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i63: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i60
  %.not.i.1.i64 = icmp ult i8 %i.ak, 97
  br i1 %.not.i.1.i64, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i69, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i65

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i65: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i63
  %.not.1.i66 = icmp ugt i8 %i.ak, 102
  br i1 %.not.1.i66, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i67, label %bb.l

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i69: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.i63
  %i.al = add nsw i8 %i.ak, -71
  %or.cond.i70 = icmp ult i8 %i.al, -6
  br i1 %or.cond.i70, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i67, label %bb.l

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i67: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i69, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i65, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4569
  %i.am = zext i8 %i.ak to i32
  store i32 %i.am, ptr %i.b, align 4, !noalias !4569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4569
  store ptr %i.b, ptr %i.a, align 8, !noalias !4569
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i68, align 8, !noalias !4569
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @192, ptr noundef nonnull %i.a)
          to label %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74 unwind label %.loopexit

bb.l:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i69, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i65, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i60
  %.sroa.0.0.ptr16.lcssa.i62 = phi ptr [ getelementptr inbounds nuw (i8, ptr @190, i64 8), %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.1.i69 ], [ @190, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.i60 ], [ getelementptr inbounds nuw (i8, ptr @190, i64 4), %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.1.i65 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr16.lcssa.i62, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !noalias !4569, !noundef !18 ; 2 uses
  %i.ap = icmp ult i8 %i.ak, %i.ao
  br i1 %i.ap, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = sub nuw nsw i8 %i.ak, %i.ao             ; 2 uses
  %i.ar = load i8, ptr %.sroa.0.0.ptr16.lcssa.i62, align 1, !noalias !4569, !noundef !18
  %i.as = add i8 %i.ar, %i.aq                     ; 2 uses
  %i.at = icmp ult i8 %i.as, %i.aq
  br i1 %i.at, label %.invoke116, label %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74.thread

bb.n:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit.thread
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #42
          to label %bb.i unwind label %.loopexit.split-lp

_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs5yxAJGbRKSL_4ring.exit.thread.2.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4569
  %.pr100 = load i64, ptr %i.e, align 8           ; 2 uses
  %.not50 = icmp eq i64 %.pr100, -1
  %.pre104 = load i8, ptr %i.u, align 8           ; 2 uses
  br i1 %.not50, label %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74.thread, label %bb.o

bb.o:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.543.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.540.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74.thread: ; preds = %bb.m, %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74
  %i.au = phi i8 [ %.pre104, %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74 ], [ %i.as, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = icmp ugt i8 %i.ai, 15
  br i1 %i.av, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74.thread
  %i.aw = shl nuw i8 %i.ai, 4
  %i.ax = or i8 %i.au, %i.aw
  %i.ay = load i64, ptr %i.s, align 8, !alias.scope !4572, !noundef !18 ; 3 uses
  %i.az = load i64, ptr %i.g, align 8, !range !315, !alias.scope !4572, !noundef !18
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.q, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #39
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring.exit unwind label %.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.q, %bb.p
  %i.bb = load ptr, ptr %i.r, align 8, !alias.scope !4572, !nonnull !18, !noundef !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  store i8 %i.ax, ptr %i.bc, align 1
  %i.bd = add i64 %i.ay, 1
  store i64 %i.bd, ptr %i.s, align 8
  %i.be = icmp eq i64 %i.x, 0
  br i1 %i.be, label %._crit_edge, label %bb.f

bb.r:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring8testutil14from_hex_digit.exit74.thread
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #42
          to label %bb.i unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.o, %bb.j
  %.pr100.sink = phi i64 [ %.pr100, %bb.o ], [ %.pr, %bb.j ]
  %.pre104.sink = phi i8 [ %.pre104, %bb.o ], [ %.pre, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr100.sink, ptr %i.bf, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.pre104.sink, ptr %.sroa.442.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.bg = icmp eq i64 %.val, 0
  br i1 %i.bg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit76, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val51 = load ptr, ptr %i.r, align 8, !nonnull !18, !noundef !18
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit76

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit76: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %lpad.phi
end_hunk_0
