Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEE13insert_uniqueB1F_:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 %1, ptr %i.cd, align 16, !noalias !8349
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i128 %2, ptr %i.ce, align 16, !noalias !8349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 160, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8354)
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEE15reserve_entriesB1F_.exit.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEEE8grow_oneB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.o unwind label %bb.k, !noalias !8355

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEEB11_(ptr noalias nofree noundef nonnull align 16 dereferenceable(192) %i.c)
          to label %.body.thread unwind label %bb.l, !noalias !8356

bb.l:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !8356
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.d) #32
          to label %.body.thread unwind label %bb.n, !noalias !8340

bb.n:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !8340
  unreachable

.sink.split:                                      ; preds = %bb.c, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEE15reserve_entriesB1F_.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8349
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 %1, ptr %i.cj, align 16, !noalias !8349
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i128 %2, ptr %i.ck, align 16, !noalias !8349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 160, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.j, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEE15reserve_entriesB1F_.exit.i
  %i.cl = load ptr, ptr %i.h, align 8, !alias.scope !8357, !noalias !8355, !nonnull !12, !noundef !12
  %i.cm = getelementptr inbounds nuw [192 x i8], ptr %i.cl, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.cm, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !8356
  %i.cn = add nuw nsw i64 %i.bg, 1                ; 2 uses
  store i64 %i.cn, ptr %i.j, align 8, !alias.scope !8357, !noalias !8355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp ugt i64 %i.g, %i.bg
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.cp = getelementptr inbounds nuw [192 x i8], ptr %i.co, i64 %i.g
  ret ptr %i.cp

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #36
  unreachable

bb.r:                                             ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEE0EB2u_.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl4q486LaARA_9typst_svg4text13RenderedGlyphEEB11_(ptr noalias nofree noundef align 8 dereferenceable(160) %3) #32
          to label %.body.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

.body.thread:                                     ; preds = %bb.m, %bb.k, %bb.r
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.cq, %bb.r ], [ %i.cf, %bb.k ], [ %i.ch, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val12 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val13 = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.c = add i64 %.val13, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val12, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.i = getelementptr inbounds nuw i8, ptr %.val12, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val12, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val12, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.l, align 8
  store i64 8, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val12, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.01.08.i, 32               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val12, i64 %.sroa.01.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.01.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.01.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.j
  %.sroa.04.06 = phi i64 [ %i.ae, %bb.j ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.04.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.04.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !12
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.04.06, -1
  %.neg10 = shl i64 %.neg, 3
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg10 ; 3 uses
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.04.06)
          to label %bb.e unwind label %bb.d       ; 3 uses

bb.d:                                             ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %.val11 = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %.sroa.0.07.i = and i64 %.val11, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !8363
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i15, label %._crit_edge.i14, !prof !16

._crit_edge.i14:                                  ; preds = %.lr.ph.i15, %bb.e
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.e ], [ %.sroa.0.0.i, %.lr.ph.i15 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.e ], [ %i.be, %.lr.ph.i15 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val11                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !12
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.f, label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !13

bb.f:                                             ; preds = %._crit_edge.i14
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i15:                                       ; preds = %bb.e, %.lr.ph.i15
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i15 ], [ %.sroa.0.07.i, %bb.e ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i15 ], [ 0, %bb.e ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val11           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !8363
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i15, label %._crit_edge.i14, !prof !17

_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.f, %._crit_edge.i14
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.f ], [ %i.ar, %._crit_edge.i14 ] ; 4 uses
  %i.bf = sub i64 %.sroa.04.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val11
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bj = lshr i64 %i.aj, 57
  %i.bk = trunc nuw nsw i64 %i.bj to i8           ; 2 uses
  %i.bl = add i64 %.sroa.04.06, -16
  %i.bm = and i64 %.val11, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.04.06
  store i8 %i.bk, ptr %i.bn, align 1
  %i.bo = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bm
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store i8 %i.bk, ptr %i.bq, align 1
  br label %bb.j

bb.h:                                             ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.br = shl i64 %.sroa.0.0.i5.i, 3
  %i.bs = sub nuw nsw i64 -8, %i.br
  %i.bt = getelementptr inbounds i8, ptr %.val, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !12
  %i.bw = lshr i64 %i.aj, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i8           ; 2 uses
  %i.by = add i64 %.sroa.0.0.i5.i, -16
  %i.bz = and i64 %i.by, %.val11
  store i8 %i.bx, ptr %i.bu, align 1
  %i.ca = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bz
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store i8 %i.bx, ptr %i.cc, align 1
  %i.cd = icmp eq i8 %i.bv, -1
  br i1 %i.cd, label %bb.i, label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ce = add i64 %.sroa.04.06, -16
  %i.cf = load i64, ptr %i.b, align 8, !noundef !12
  %i.cg = and i64 %i.cf, %i.ce
  %i.ch = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.06
  store i8 -1, ptr %i.ci, align 1
  %i.cj = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cg
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 -1, ptr %i.cl, align 1
  %i.cm = load i64, ptr %i.ai, align 1
  store i64 %i.cm, ptr %i.bt, align 1
  br label %bb.j

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit.loopexit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8365)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ai, align 1, !alias.scope !8364, !noalias !8365
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.bt, align 1, !alias.scope !8365, !noalias !8364
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.ai, align 1, !alias.scope !8364, !noalias !8365
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.bt, align 1, !alias.scope !8365, !noalias !8364
  br label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes.exit

bb.j:                                             ; preds = %bb.g, %bb.i, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.06, %.val13
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.k:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.l:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #10 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !8368
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !12
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !13

bb.b:                                             ; preds = %._crit_edge
  %.val2.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val2.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !8368
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !17
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face13outline_glyph(ptr dead_on_unwind noalias nofree noundef nonnull writable align 2 captures(address) dereferenceable(10) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2776) %1, i16 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [10 x i8], align 2                ; 6 uses
  %i.b = alloca [96 x i8], align 16               ; 14 uses
  %i.c = alloca [10 x i8], align 2                ; 5 uses
  %i.d = alloca [10 x i8], align 2                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !26, !noundef !12
  %.not = icmp eq i64 %i.g, 2
  %i.h = load i64, ptr %1, align 8                ; 4 uses
  %.not10 = icmp eq i64 %i.h, 2                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.y, label %bb.g

bb.d:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  store i64 %i.h, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8387)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2768
  %i.j = load i8, ptr %i.i, align 8, !alias.scope !8388, !noundef !12 ; 2 uses
  %i.k = zext i8 %i.j to i64                      ; 2 uses
  %i.l = icmp ult i8 %i.j, 65
  br i1 %i.l, label %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #33, !noalias !8388
  unreachable

_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2640
  call void @_RNvMs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4gvarNtB5_5Table7outline(ptr noalias nofree noundef nonnull sret([10 x i8]) align 2 captures(address) dereferenceable(10) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.m, i64 noundef %i.k, i16 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %4)
  br label %_RNvMs9_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_5Table7outline.exit

bb.f:                                             ; preds = %bb.b
  store i16 0, ptr %0, align 2
  br label %_RNvMs9_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_5Table7outline.exit

_RNvMs9_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_5Table7outline.exit: ; preds = %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit, %bb.f, %bb.x, %bb.w, %bb.v, %bb.ah, %bb.af, %bb.ac
  ret void

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8391
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.n, align 16, !noalias !8391
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %4, ptr %i.o, align 8, !noalias !8391
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.p, align 16, !noalias !8391
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <2 x float> zeroinitializer, ptr %.sroa.7.0..sroa_idx.i, align 16, !noalias !8391
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i8 1, ptr %i.q, align 4, !noalias !8391
  store i128 -664613998047200450621976900532174849, ptr %i.b, align 16, !noalias !8391
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.r, align 8, !noalias !8391
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 0, ptr %i.s, align 4, !noalias !8391
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i32 0, ptr %i.t, align 16, !noalias !8391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8393)
  %i.u = icmp eq i16 %2, -1
  br i1 %i.u, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add nuw i16 %2, 1                        ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !8394, !noalias !8395 ; 7 uses
  %.sroa.0.0.in.v.i.i.i = add nuw nsw i64 %i.h, 1
  %.sroa.0.0.in.i.i.i = lshr i64 %i.x, %.sroa.0.0.in.v.i.i.i
  %.sroa.0.0.i.i.i = trunc i64 %.sroa.0.0.in.i.i.i to i16
  %.not.i.i.i = icmp ult i16 %i.v, %.sroa.0.0.i.i.i
  br i1 %.not.i.i.i, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.y = trunc nuw i64 %i.h to i1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !8394, !noalias !8395 ; 6 uses
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = lshr i64 %i.x, 2
  %i.ab = trunc i64 %i.aa to i16                  ; 2 uses
  %i.ac = icmp ult i16 %2, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ad = zext i16 %2 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i.i.i) ]
  %i.af = add nuw nsw i64 %i.ae, 4
  %.not.i.i.i.i = icmp ugt i64 %i.af, %i.x
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.ag = lshr i64 %i.x, 1
  %i.ah = trunc i64 %i.ag to i16                  ; 2 uses
  %i.ai = icmp ult i16 %2, %i.ah
  br i1 %i.ai, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.aj = zext i16 %2 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i.i.i) ]
  %i.al = add nuw nsw i64 %i.ak, 2
  %.not.i34.i.i.i = icmp ugt i64 %i.al, %i.x
  br i1 %.not.i34.i.i.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.val26.i.i.i, i64 %i.ak
  %.val.i35.i.i.i = load i16, ptr %i.am, align 1, !noalias !8396
  %i.an = tail call i16 @llvm.bswap.i16(i16 %.val.i35.i.i.i)
  %i.ao = icmp ult i16 %i.v, %i.ah
  br i1 %i.ao, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ap = zext i16 %i.v to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 2
  %.not.i38.i.i.i = icmp ugt i64 %i.ar, %i.x
  br i1 %.not.i38.i.i.i, label %bb.v, label %bb.p

end_hunk_0
