Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ninja_gen-192838193ab039e9.ninja_gen.f3b5859f88b4570d-cgu.15?download=true
inline.NumInlined: 108
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h4126761b39f53a30E:bb.a
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i19.i, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  %i.ao = shl nuw nsw i64 %.sroa.0.0.i19.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i, %.preheader28.i, %bb.n, %bb.j
  %.sroa.0.0.i25.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader28.i ], [ %.sroa.0.0.i515862.i, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i ]
  %i.aq = shl i64 %.sroa.0.0.i25.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.as = phi i64 [ %i.am, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i515862.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i515862.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.015.i.i.i = phi i64 [ %i.ay, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.015.i.i.i, -1
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.015.i.i.i
  %i.aw = getelementptr [24 x i8], ptr %i.at, i64 %i.au
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17ha750dd30d8e3a83fE(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 3)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i unwind label %bb.q, !noalias !32

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #15, !noalias !32
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.015.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i"
  %.sroa.0.0.i34 = phi i64 [ %i.ar, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i" ], [ %i.ap, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bb = sub i64 %factor, %i.az
  %i.bc = add i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit
  %.sroa.02.138 = phi i64 [ %i.bi, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !3 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.137 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.137
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl i64 %i.br, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef %i.bp, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h4a07ef6b86726049E(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, -1) %i.br, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i64 noundef %i.bp, ptr noalias noundef nonnull align 1 %5)
  %i.cf = shl i64 %i.br, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit

bb.x:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bp
  %i.ci = or i64 %i.bq, 1
  %i.cj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef %i.bq, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cg, %bb.w ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h8322d313862672a3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 1 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.de, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dc, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h52d41568c64b04dcE.exit
  %.sroa.021.0 = phi i8 [ %i.bv, %_ZN4core5slice4sort6stable5drift10create_run17h52d41568c64b04dcE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h52d41568c64b04dcE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw i64 %1, %.sroa.09.0              ; 12 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ult i64 %i.m, 2
  br i1 %i.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !54, !noalias !55, !nonnull !3, !align !4, !noundef !3 ; 5 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !54, !noalias !55, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.q = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11.i), !noalias !58
  switch i8 %i.q, label %.preheader.i [
    i8 2, label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit.i
    i8 0, label %.preheader40.i
  ]

.preheader.i:                                     ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit.i, %bb.k
  %.not53.i = icmp eq i64 %i.m, 2
  br i1 %.not53.i, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i, label %.lr.ph47.i

_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit.i: ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !56, !noalias !59, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 40
  %.val3.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !56, !noalias !59, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.val11.i, i64 32
  %.val4.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !57, !noalias !60, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 40
  %.val5.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !57, !noalias !60, !noundef !3
  %i.v = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val3.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i.i, i64 noundef %.val5.i.i.i.i), !noalias !58
  %i.w = icmp slt i8 %i.v, 0
  br i1 %i.w, label %.preheader.i, label %.preheader40.i

.preheader40.i:                                   ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit.i, %bb.k
  %.not52.i = icmp eq i64 %i.m, 2
  br i1 %.not52.i, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader40.i, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader40.i ] ; 3 uses
  %.sroa.01.0.i42.i = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader40.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i42.i
  %.val8.i = load ptr, ptr %i.x, align 8, !alias.scope !54, !noalias !55, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.y = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val9.i), !noalias !58
  switch i8 %i.y, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i [
    i8 2, label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit18.i
    i8 0, label %bb.l
  ]

_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit18.i: ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val8.i, i64 32
  %.val.i.i.i14.i = load ptr, ptr %i.z, align 8, !alias.scope !61, !noalias !63, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  %.val3.i.i.i15.i = load i64, ptr %i.aa, align 8, !alias.scope !61, !noalias !63, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32
  %.val4.i.i.i16.i = load ptr, ptr %i.ab, align 8, !alias.scope !62, !noalias !64, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9.i, i64 40
  %.val5.i.i.i17.i = load i64, ptr %i.ac, align 8, !alias.scope !62, !noalias !64, !noundef !3
  %i.ad = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i14.i, i64 noundef %.val3.i.i.i15.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i16.i, i64 noundef %.val5.i.i.i17.i), !noalias !58
  %i.ae = icmp slt i8 %i.ad, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit18.i, %.lr.ph.i
  %i.af = add nuw i64 %.sroa.01.0.i42.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i, label %.lr.ph.i

.lr.ph47.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i46.i = phi i64 [ %i.ao, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i46.i
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !54, !noalias !55, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.ah = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7.i), !noalias !58
  switch i8 %i.ah, label %bb.m [
    i8 2, label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit25.i
    i8 0, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i
  ]

_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit25.i: ; preds = %.lr.ph47.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %.val.i.i.i21.i = load ptr, ptr %i.ai, align 8, !alias.scope !65, !noalias !67, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %.val3.i.i.i22.i = load i64, ptr %i.aj, align 8, !alias.scope !65, !noalias !67, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.val7.i, i64 32
  %.val4.i.i.i23.i = load ptr, ptr %i.ak, align 8, !alias.scope !66, !noalias !68, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %.val7.i, i64 40
  %.val5.i.i.i24.i = load i64, ptr %i.al, align 8, !alias.scope !66, !noalias !68, !noundef !3
  %i.am = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i21.i, i64 noundef %.val3.i.i.i22.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i23.i, i64 noundef %.val5.i.i.i24.i), !noalias !58
  %i.an = icmp slt i8 %i.am, 0
  br i1 %i.an, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i

bb.m:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit25.i, %.lr.ph47.i
  %i.ao = add nuw i64 %.sroa.01.1.i46.i, 1        ; 2 uses
  %exitcond57.not.i = icmp eq i64 %i.ao, %i.m
  br i1 %exitcond57.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i, label %.lr.ph47.i

_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i: ; preds = %bb.l, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit18.i, %.lr.ph.i, %bb.m, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit25.i, %.lr.ph47.i, %.preheader40.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ false, %.preheader40.i ], [ true, %bb.m ], [ true, %.lr.ph47.i ], [ true, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit25.i ], [ false, %.lr.ph.i ], [ false, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit18.i ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ 2, %.preheader40.i ], [ %i.m, %bb.m ], [ %.sroa.01.1.i46.i, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit25.i ], [ %.sroa.01.1.i46.i, %.lr.ph47.i ], [ %i.m, %bb.l ], [ %.sroa.01.0.i42.i, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit18.i ], [ %.sroa.01.0.i42.i, %.lr.ph.i ] ; 9 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hff15ebba9d1a5ef6E.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i"

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i26.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i26.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h52d41568c64b04dcE.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i27.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2eb46e2c2f9b4670E(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i27.i, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 1 %5)
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i27.i, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h52d41568c64b04dcE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i": ; preds = %.lr.ph.i.i.i, %middle.block, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i37.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i ]
  %i.at = shl i64 %.sroa.0.0.i37.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h52d41568c64b04dcE.exit

bb.q:                                             ; preds = %bb.n
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %.not15.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i.i ; 2 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.av, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = xor i64 %index, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.az = getelementptr [8 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !71, !noalias !72
  %wide.load56 = load <2 x ptr>, ptr %i.ba, align 8, !alias.scope !71, !noalias !72
  %i.bb = getelementptr i8, ptr %i.az, i64 -8
  %i.bc = getelementptr i8, ptr %i.az, i64 -24
  %wide.load57 = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !73, !noalias !74
  %wide.load58 = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !73, !noalias !74
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x i64> %reverse, ptr %i.ay, align 8, !alias.scope !71, !noalias !72
  store <2 x i64> %reverse59, ptr %i.bd, align 8, !alias.scope !71, !noalias !72
  %i.be = getelementptr i8, ptr %i.az, i64 -8
  %i.bf = getelementptr i8, ptr %i.az, i64 -24
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.be, align 8, !alias.scope !73, !noalias !74
  store <2 x ptr> %reverse61, ptr %i.bf, align 8, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.sroa.0.014.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.014.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i ], [ %.sroa.0.014.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bh = xor i64 %.sroa.0.014.i.i.i, -1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.014.i.i.i ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.aw, i64 %i.bh ; 2 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !alias.scope !71, !noalias !72, !nonnull !3, !align !4, !noundef !3
  %i.bl = load i64, ptr %i.bj, align 8, !alias.scope !73, !noalias !74
  store i64 %i.bl, ptr %i.bi, align 8, !alias.scope !71, !noalias !72
  store ptr %i.bk, ptr %i.bj, align 8, !alias.scope !73, !noalias !74
  %i.bm = add nuw nsw i64 %.sroa.0.014.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bm, %i.av
  br i1 %exitcond.not.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i", label %.lr.ph.i.i.i, !llvm.loop !53

_ZN4core5slice4sort6stable5drift10create_run17h52d41568c64b04dcE.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h125f4ab315ac9721E.exit.i" ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
  %i.bn = lshr i64 %.sroa.023.0, 1
  %i.bo = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bp = sub i64 %factor, %i.bn
  %i.bq = add i64 %i.bo, %factor
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bt, i1 false)
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit
  %.sroa.02.138 = phi i64 [ %i.bw, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bw = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.by, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ca, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bw
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !3 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1                       ; 5 uses
  %i.ce = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cf = add nuw i64 %i.cd, %i.ce                ; 5 uses
  %i.cg = sub i64 %.sroa.09.0, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg ; 3 uses
  %i.ci = icmp ugt i64 %i.cf, %3
  %i.cj = trunc i64 %.sroa.023.137 to i1
  %i.ck = or i64 %i.cc, %.sroa.023.137
  %i.cl = trunc i64 %i.ck to i1
  %or.cond3.i = or i1 %i.ci, %i.cl
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = trunc i64 %i.cc to i1
  br i1 %i.cm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cn = shl i64 %i.cf, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cj, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.co = or i64 %i.cd, 1
  %i.cp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2eb46e2c2f9b4670E(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef %i.cd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h65851bc80a23c66eE(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, -1) %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i64 noundef %i.cd, ptr noalias noundef nonnull align 1 %5)
  %i.ct = shl i64 %i.cf, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit

bb.x:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cd
  %i.cw = or i64 %i.ce, 1
  %i.cx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2eb46e2c2f9b4670E(ptr noalias noundef nonnull align 8 %i.cv, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17h2b29a2e62af6201dE.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.w ], [ %i.cn, %bb.t ] ; 2 uses
  %i.db = icmp ugt i64 %i.bw, 1
  br i1 %i.db, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dc = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dd = lshr i64 %.sroa.018.0, 1
  %i.de = add i64 %i.dd, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.df = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.df, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = or i64 %1, 1
  %i.dh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 1
  %i.dk = xor i32 %i.dj, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2eb46e2c2f9b4670E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17hab49ca4f3b2b5ee0E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 1 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.di, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dg, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17ha976b87a71f317a4E.exit
  %.sroa.021.0 = phi i8 [ %i.bz, %_ZN4core5slice4sort6stable5drift10create_run17ha976b87a71f317a4E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17ha976b87a71f317a4E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw i64 %1, %.sroa.09.0              ; 12 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ult i64 %i.m, 2
  br i1 %i.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !86, !noalias !87, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 24
  %.val15.i = load ptr, ptr %i.q, align 8, !alias.scope !86, !noalias !87 ; 5 uses
  %.val16.i = load ptr, ptr %i.n, align 8, !alias.scope !86, !noalias !87, !nonnull !3, !align !4, !noundef !3
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val17.i = load ptr, ptr %i.r, align 8, !alias.scope !86, !noalias !87 ; 3 uses
  %i.s = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val14.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val16.i), !noalias !88
  switch i8 %i.s, label %.preheader.i [
    i8 2, label %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit.i
    i8 0, label %.preheader46.i
  ]

.preheader.i:                                     ; preds = %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit.i, %bb.k
  %.not59.i = icmp eq i64 %i.m, 2
  br i1 %.not59.i, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i, label %.lr.ph53.i

_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ]
  %i.t = getelementptr i8, ptr %.val15.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !88, !nonnull !3, !noundef !3
  %i.u = getelementptr i8, ptr %.val15.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !88, !noundef !3
  %i.v = getelementptr i8, ptr %.val17.i, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !88, !nonnull !3, !noundef !3
  %i.w = getelementptr i8, ptr %.val17.i, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !88, !noundef !3
  %i.x = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h579cf045ce4f4e4cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i.i.i.i, i64 noundef %.val3.i.i.i.i), !noalias !88
  %i.y = icmp slt i8 %i.x, 0
  br i1 %i.y, label %.preheader.i, label %.preheader46.i

.preheader46.i:                                   ; preds = %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit.i, %bb.k
  %.not58.i = icmp eq i64 %i.m, 2
  br i1 %.not58.i, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader46.i, %bb.l
  %.val13.i = phi ptr [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader46.i ] ; 3 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader46.i ]
  %.sroa.01.0.i48.i = phi i64 [ %i.ai, %bb.l ], [ 2, %.preheader46.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i48.i ; 2 uses
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !86, !noalias !87, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val11.i = load ptr, ptr %i.aa, align 8, !alias.scope !86, !noalias !87 ; 4 uses
  %i.ab = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val12.i), !noalias !88
  switch i8 %i.ab, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i [
    i8 2, label %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit24.i
    i8 0, label %bb.l
  ]

_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit24.i: ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.ac = getelementptr i8, ptr %.val11.i, i64 8
  %.val.i.i.i20.i = load ptr, ptr %i.ac, align 8, !noalias !88, !nonnull !3, !noundef !3
  %i.ad = getelementptr i8, ptr %.val11.i, i64 16
  %.val1.i.i.i21.i = load i64, ptr %i.ad, align 8, !noalias !88, !noundef !3
  %i.ae = getelementptr i8, ptr %.val13.i, i64 8
  %.val2.i.i.i22.i = load ptr, ptr %i.ae, align 8, !noalias !88, !nonnull !3, !noundef !3
  %i.af = getelementptr i8, ptr %.val13.i, i64 16
  %.val3.i.i.i23.i = load i64, ptr %i.af, align 8, !noalias !88, !noundef !3
  %i.ag = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h579cf045ce4f4e4cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i20.i, i64 noundef %.val1.i.i.i21.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i.i.i22.i, i64 noundef %.val3.i.i.i23.i), !noalias !88
  %i.ah = icmp slt i8 %i.ag, 0
  br i1 %i.ah, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit24.i, %.lr.ph.i
  %i.ai = add nuw i64 %.sroa.01.0.i48.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.m
  br i1 %exitcond.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i, label %.lr.ph.i

.lr.ph53.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi ptr [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 3 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.1.i52.i = phi i64 [ %i.as, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i52.i ; 2 uses
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !86, !noalias !87, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val7.i = load ptr, ptr %i.ak, align 8, !alias.scope !86, !noalias !87 ; 4 uses
  %i.al = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val8.i), !noalias !88
  switch i8 %i.al, label %bb.m [
    i8 2, label %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit31.i
    i8 0, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i
  ]

_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit31.i: ; preds = %.lr.ph53.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.am = getelementptr i8, ptr %.val7.i, i64 8
  %.val.i.i.i27.i = load ptr, ptr %i.am, align 8, !noalias !88, !nonnull !3, !noundef !3
  %i.an = getelementptr i8, ptr %.val7.i, i64 16
  %.val1.i.i.i28.i = load i64, ptr %i.an, align 8, !noalias !88, !noundef !3
  %i.ao = getelementptr i8, ptr %.val9.i, i64 8
  %.val2.i.i.i29.i = load ptr, ptr %i.ao, align 8, !noalias !88, !nonnull !3, !noundef !3
  %i.ap = getelementptr i8, ptr %.val9.i, i64 16
  %.val3.i.i.i30.i = load i64, ptr %i.ap, align 8, !noalias !88, !noundef !3
  %i.aq = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h579cf045ce4f4e4cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i.i27.i, i64 noundef %.val1.i.i.i28.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2.i.i.i29.i, i64 noundef %.val3.i.i.i30.i), !noalias !88
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i

bb.m:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit31.i, %.lr.ph53.i
  %i.as = add nuw i64 %.sroa.01.1.i52.i, 1        ; 2 uses
  %exitcond63.not.i = icmp eq i64 %i.as, %i.m
  br i1 %exitcond63.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i, label %.lr.ph53.i

_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i: ; preds = %bb.l, %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit24.i, %.lr.ph.i, %bb.m, %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit31.i, %.lr.ph53.i, %.preheader46.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ false, %.preheader46.i ], [ true, %bb.m ], [ true, %.lr.ph53.i ], [ true, %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit31.i ], [ false, %.lr.ph.i ], [ false, %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit24.i ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ 2, %.preheader46.i ], [ %i.m, %bb.m ], [ %.sroa.01.1.i52.i, %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit31.i ], [ %.sroa.01.1.i52.i, %.lr.ph53.i ], [ %i.m, %bb.l ], [ %.sroa.01.0.i48.i, %_ZN4core3ops8function5FnMut8call_mut17h561ad18d8a24e609E.exit24.i ], [ %.sroa.01.0.i48.i, %.lr.ph.i ] ; 9 uses
  %i.at = icmp ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.at)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf5a796e4b29ad8acE.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i"

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.01.0)
  %i.au = shl i64 %.sroa.0.0.i32.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha976b87a71f317a4E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i33.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h662096c3e8335e92E(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i33.i, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 1 %5)
  %i.av = shl nuw nsw i64 %.sroa.0.0.i33.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha976b87a71f317a4E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i
  %i.ax = and i64 %.sroa.0.0.i.i, 2
  %lcmp.mod.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i", label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i.loopexit.unr-lcssa", %.lr.ph.preheader.i.i.i
  %.sroa.0.014.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.bq, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod58 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ay = xor i64 %.sroa.0.014.i.i.i.epil.init, -1
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.014.i.i.i.epil.init ; 2 uses
  %i.ba = getelementptr [16 x i8], ptr %i.bf, i64 %i.ay ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !alias.scope !89, !noalias !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !91, !noalias !87
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !alias.scope !92, !noalias !93
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i": ; preds = %.lr.ph.i.i.i.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i.loopexit.unr-lcssa", %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i43.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.epil.preheader ]
  %i.bc = shl i64 %.sroa.0.0.i43.i, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha976b87a71f317a4E.exit

bb.q:                                             ; preds = %bb.n
  %i.be = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %.not15.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not15.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i ; 3 uses
  %i.bg = icmp eq i64 %i.be, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.be, 9223372036854775806
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.sroa.0.014.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.bq, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.bh = xor i64 %.sroa.0.014.i.i.i, -1
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.014.i.i.i ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.bf, i64 %i.bh ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !alias.scope !89, !noalias !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !91, !noalias !87
  store <2 x ptr> %i.bk, ptr %i.bj, align 8, !alias.scope !92, !noalias !93
  %i.bl = xor i64 %.sroa.0.014.i.i.i, -2
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.014.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = getelementptr [16 x i8], ptr %i.bf, i64 %i.bl ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !89, !noalias !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !91, !noalias !87
  store <2 x ptr> %i.bp, ptr %i.bo, align 8, !alias.scope !92, !noalias !93
  %i.bq = add nuw nsw i64 %.sroa.0.014.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i

_ZN4core5slice4sort6stable5drift10create_run17ha976b87a71f317a4E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i"
  %.sroa.0.0.i34 = phi i64 [ %i.bd, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1b21d94e1d003caaE.exit.i" ], [ %i.aw, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.br = lshr i64 %.sroa.023.0, 1
  %i.bs = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bt = sub i64 %factor, %i.br
  %i.bu = add i64 %i.bs, %factor
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = mul i64 %i.bu, %.sroa.0.0
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 false)
  %i.bz = trunc nuw nsw i64 %i.by to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit
  %.sroa.02.138 = phi i64 [ %i.ca, %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ca = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.cc, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ce, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !3 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 5 uses
  %i.ci = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 5 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 3 uses
  %i.cm = icmp ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.023.137 to i1
  %i.co = or i64 %i.cg, %.sroa.023.137
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cr = shl i64 %i.cj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cn, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.cs = or i64 %i.ch, 1
  %i.ct = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h662096c3e8335e92E(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_ZN4core5slice4sort6stable5merge5merge17hfaa2b659d2858acdE(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, -1) %i.cj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i64 noundef %i.ch, ptr noalias noundef nonnull align 1 %5)
  %i.cx = shl i64 %i.cj, 1
  %i.cy = or disjoint i64 %i.cx, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit

bb.x:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.da = or i64 %i.ci, 1
  %i.db = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h662096c3e8335e92E(ptr noalias noundef nonnull align 8 %i.cz, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17h3bc2297fd5790febE.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cy, %bb.w ], [ %i.cr, %bb.t ] ; 2 uses
  %i.df = icmp ugt i64 %i.ca, 1
  br i1 %i.df, label %.lr.ph, label %._crit_edge

end_hunk_0
