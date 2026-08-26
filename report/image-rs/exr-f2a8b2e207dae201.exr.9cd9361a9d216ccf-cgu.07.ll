Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.07?download=true
inline.NumInlined: 171
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEBJ_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsdsTQD3x2eOp_3exr.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rulesNtB2_4Rule7matches(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.b = load i8, ptr %i.a, align 2, !range !14, !noundef !4
  %i.c = icmp eq i8 %i.b, %3
  br i1 %i.c, label %bb.b, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i8, ptr %i.d, align 8, !range !15, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.c

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit: ; preds = %bb.h, %.lr.ph, %bb.g, %.loopexit.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit24.i, %._crit_edge.i, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %._crit_edge.i ], [ false, %bb.e ], [ false, %bb.a ], [ %i.h, %bb.d ], [ true, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit24.i ], [ false, %.loopexit.i ], [ true, %bb.g ], [ %i.v, %.lr.ph ], [ %i.v, %bb.h ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !4
  %i.g = icmp eq i64 %2, %.sroa.5.0
  br i1 %i.g, label %bb.d, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0 = load ptr, ptr %.sroa.02.0.in, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %.sroa.02.0, i64 %2)
  %i.h = icmp eq i32 %bcmp, 0
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.e:                                             ; preds = %bb.b
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !4
  %.not4 = icmp eq i64 %2, %.sroa.3.0
  br i1 %.not4, label %bb.f, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.f:                                             ; preds = %bb.e
  %i.i = icmp ugt i64 %2, 15
  br i1 %i.i, label %.lr.ph.i.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %.not15.i9 = icmp eq i64 %2, 0
  br i1 %.not15.i9, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13, i64 1
  %i.k = add nsw i64 %.sroa.5.0.i12, -1           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i11, i64 1
  %i.m = add nsw i64 %.sroa.58.0.i10, -1          ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  %.not15.i = icmp eq i64 %i.m, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not15.i
  br i1 %or.cond.i, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.0.0.i13 = phi ptr [ %i.j, %bb.h ], [ %1, %bb.g ] ; 2 uses
  %.sroa.5.0.i12 = phi i64 [ %i.k, %bb.h ], [ %2, %bb.g ]
  %.sroa.05.0.i11 = phi ptr [ %i.l, %bb.h ], [ %.sroa.01.0, %bb.g ] ; 2 uses
  %.sroa.58.0.i10 = phi i64 [ %i.m, %bb.h ], [ %2, %bb.g ]
  %i.n = load i8, ptr %.sroa.0.0.i13, align 1, !alias.scope !16, !noalias !19, !noundef !4 ; 2 uses
  %i.o = add i8 %i.n, -65
  %i.p = icmp ult i8 %i.o, 26
  %i.q = select i1 %i.p, i8 32, i8 0
  %.sroa.012.0.i = or i8 %i.q, %i.n
  %i.r = load i8, ptr %.sroa.05.0.i11, align 1, !alias.scope !19, !noalias !16, !noundef !4 ; 2 uses
  %i.s = add i8 %i.r, -65
  %i.t = icmp ult i8 %i.s, 26
  %i.u = select i1 %i.t, i8 32, i8 0
  %.sroa.013.0.i = or i8 %i.u, %i.r
  %i.v = icmp eq i8 %.sroa.012.0.i, %.sroa.013.0.i ; 3 uses
  br i1 %i.v, label %bb.h, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.w = and i64 %2, 15
  %i.x = lshr i64 %2, 4
  br label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.y = add nuw nsw i64 %.sroa.02.039.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.x
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit24.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit24.i: ; preds = %._crit_edge.i
  %i.aa = getelementptr i8, ptr %1, i64 %2
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr i8, ptr %.sroa.01.0, i64 %2
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.ae = load <16 x i8>, ptr %i.ab, align 1, !alias.scope !31, !noalias !32 ; 2 uses
  %i.af = add <16 x i8> %i.ae, splat (i8 -65)
  %i.ag = icmp ult <16 x i8> %i.af, splat (i8 26)
  %i.ah = select <16 x i1> %i.ag, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ai = or <16 x i8> %i.ah, %i.ae
  %i.aj = load <16 x i8>, ptr %i.ad, align 1, !alias.scope !32, !noalias !31 ; 2 uses
  %i.ak = add <16 x i8> %i.aj, splat (i8 -65)
  %i.al = icmp ult <16 x i8> %i.ak, splat (i8 26)
  %i.am = select <16 x i1> %i.al, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.an = or <16 x i8> %i.am, %i.aj
  %i.ao = icmp ne <16 x i8> %i.ai, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit24.i
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.02.039.i = phi i64 [ %i.y, %bb.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.02.039.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0, i64 %.sroa.02.039.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.at = load <16 x i8>, ptr %i.ar, align 1, !alias.scope !38, !noalias !39 ; 2 uses
  %i.au = add <16 x i8> %i.at, splat (i8 -65)
  %i.av = icmp ult <16 x i8> %i.au, splat (i8 26)
  %i.aw = select <16 x i1> %i.av, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ax = or <16 x i8> %i.aw, %i.at
  %i.ay = load <16 x i8>, ptr %i.as, align 1, !alias.scope !39, !noalias !38 ; 2 uses
  %i.az = add <16 x i8> %i.ay, splat (i8 -65)
  %i.ba = icmp ult <16 x i8> %i.az, splat (i8 26)
  %i.bb = select <16 x i1> %i.ba, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bc = or <16 x i8> %i.bb, %i.ay
  %i.bd = icmp ne <16 x i8> %i.ax, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.i, label %.loopexit.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22differences_to_samples(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !noundef !4    ; 3 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.d = and i64 %i.b, 1
  %i.e = and i64 %i.b, -2                         ; 4 uses
  %.not1016 = icmp eq i64 %i.e, 0
  br i1 %.not1016, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = add nsw i64 %1, -3                       ; 2 uses
  %i.g = and i64 %i.f, 2
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = add i64 %i.e, -2
  %i.j = load i8, ptr %i.c, align 1, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noundef !4
  %i.m = add i8 %i.j, %i.a                        ; 2 uses
  %i.n = xor i8 %i.m, -128
  %i.o = add i8 %i.l, %i.m                        ; 3 uses
  store i8 %i.n, ptr %i.c, align 1
  store i8 %i.o, ptr %i.k, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.sroa.05.0.in19.unr = phi i8 [ %i.a, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.sroa.4.018.unr = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.sroa.7.017.unr = phi i64 [ %i.e, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.p = icmp ult i64 %i.f, 2
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph23.preheader, %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.sroa.05.0.in.lcssa = phi i8 [ %i.a, %bb.b ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.aj, %.lr.ph ]
  %i.q = icmp samesign eq i64 %i.d, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph23.preheader

.lr.ph23.preheader:                               ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !noundef !4
  %i.t = add i8 %i.s, %.sroa.05.0.in.lcssa
  %i.u = xor i8 %i.t, -128
  store i8 %i.u, ptr %i.r, align 1
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.05.0.in19 = phi i8 [ %i.aj, %.lr.ph ], [ %.sroa.05.0.in19.unr, %.lr.ph.prol.loopexit ]
  %.sroa.4.018 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.4.018.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.sroa.7.017 = phi i64 [ %i.ad, %.lr.ph ], [ %.sroa.7.017.unr, %.lr.ph.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 2 ; 2 uses
  %i.w = load i8, ptr %.sroa.4.018, align 1, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !noundef !4
  %i.z = add i8 %i.w, %.sroa.05.0.in19            ; 2 uses
  %i.aa = xor i8 %i.z, -128
  %i.ab = add i8 %i.y, %i.z                       ; 2 uses
  store i8 %i.aa, ptr %.sroa.4.018, align 1
  store i8 %i.ab, ptr %i.x, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 4
  %i.ad = add i64 %.sroa.7.017, -4                ; 2 uses
  %i.ae = load i8, ptr %i.v, align 1, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 3 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !noundef !4
  %i.ah = add i8 %i.ae, %i.ab                     ; 2 uses
  %i.ai = xor i8 %i.ah, -128
  %i.aj = add i8 %i.ag, %i.ah                     ; 3 uses
  store i8 %i.ai, ptr %i.v, align 1
  store i8 %i.aj, ptr %i.af, align 1
  %.not10.1 = icmp eq i64 %i.ad, 0
  br i1 %.not10.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22interleave_byte_blocks(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !14, !noalias !40, !noundef !4
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i, !prof !43

_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i: ; preds = %bb.a
  %i.k = tail call noundef ptr @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE16get_or_init_slowCsdsTQD3x2eOp_3exr(ptr noundef nonnull align 8 %i.g), !noalias !40 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.u, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i, !prof !44

_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i, %bb.a
  %.sroa.0.0.i.i4.i.i.i = phi ptr [ %i.k, %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i ], [ %i.g, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i4.i.i.i, i64 24, i1 false), !noalias !40
  store i64 0, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !40
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !40
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !40, !noundef !4 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i64 %i.n, %1
  br i1 %i.p, label %bb.b, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i

_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i: ; preds = %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !40
  br label %bb.i

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 1, -9223372036854775808) %1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.q = load i64, ptr %i.d, align 8, !range !48, !noalias !45, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !49, !noalias !45, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %.noexc.i.i.i.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !45
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #20
          to label %.noexc5.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

.noexc5.i.i.i.i:                                  ; preds = %bb.c
  unreachable

.thread16.loopexit.i.i.i.i:                       ; preds = %bb.m
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i.i.i.i

.thread16.loopexit.split-lp.i.i.i.i:              ; preds = %.invoke.i.i.i.i, %bb.n, %.noexc9.i.i.i.i, %bb.l, %bb.k, %bb.j, %bb.c, %bb.b
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.w = load ptr, ptr %i.u, align 8, !noalias !45, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.f unwind label %bb.e, !noalias !40

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread.i.i.i.i unwind label %bb.g, !noalias !40

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread27.i.i.i.i unwind label %bb.h, !noalias !40

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !40
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.x, %bb.e ]
  store i64 %i.t, ptr %i.f, align 8, !noalias !40
  %.sroa.5.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx4.i.i.i.i, align 8, !noalias !40
  store i64 %1, ptr %i.m, align 8, !noalias !40
  br label %.thread16.i.i.i.i

.thread27.i.i.i.i:                                ; preds = %bb.f
  store i64 %i.t, ptr %i.f, align 8, !noalias !40
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !40
  store i64 %1, ptr %i.m, align 8, !noalias !40
  br label %bb.i

bb.i:                                             ; preds = %.thread27.i.i.i.i, %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i
  %i.aa = phi ptr [ %.pre.i.i.i, %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i ], [ %i.w, %.thread27.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.ab = add nuw i64 %1, 1
  %i.ac = lshr i64 %i.ab, 1                       ; 6 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ac, %1
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i, !prof !9

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
          to label %.noexc7.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

.noexc7.i.i.i.i:                                  ; preds = %bb.j
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac     ; 2 uses
  %i.ae = sub nuw nsw i64 %1, %i.ac               ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.af = getelementptr i8, ptr %i.ad, i64 -1     ; 2 uses
  %.not7.i.i.i.i.i = icmp samesign ugt i64 %i.ae, %i.ac
  br i1 %.not7.i.i.i.i.i, label %bb.k, label %bb.l, !prof !53

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17
          to label %.noexc8.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

.noexc8.i.i.i.i:                                  ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = getelementptr i8, ptr %0, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ah)
          to label %.noexc9.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

.noexc9.i.i.i.i:                                  ; preds = %bb.l
  %i.ai = and i64 %1, 1                           ; 2 uses
  %i.aj = and i64 %1, 9223372036854775806         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  store ptr %i.ak, ptr %i.a, align 8, !alias.scope !59, !noalias !63
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ai, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59, !noalias !63
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59, !noalias !63
  %.sroa.63.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.aj, ptr %.sroa.63.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59, !noalias !63
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 2, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !59, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EINtB13_14ChunksExactMuthEEINtB5_7ZipImplBW_B1x_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc10.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

.noexc10.i.i.i.i:                                 ; preds = %.noexc9.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !alias.scope !65, !noalias !68, !noundef !4 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !65, !noalias !68, !noundef !4
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %i.at = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.bk, %bb.q ] ; 3 uses
  %i.au = add nuw i64 %i.at, 1
  store i64 %i.au, ptr %i.al, align 8, !alias.scope !65, !noalias !68
  %i.av = load i64, ptr %i.aq, align 8, !alias.scope !70, !noalias !68, !noundef !4
  %i.aw = add i64 %i.av, %i.at                    ; 2 uses
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !70, !noalias !68, !nonnull !4, !noundef !4
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !70, !noalias !68, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.aw
  %i.ay = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.as, i64 noundef %i.at)
          to label %.noexc11.i.i.i.i unwind label %.thread16.loopexit.i.i.i.i, !noalias !40 ; 2 uses

.noexc11.i.i.i.i:                                 ; preds = %bb.m
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 3 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %.not12.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not12.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.p

._crit_edge.i.i.i.i.i:                            ; preds = %bb.q, %.noexc10.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !64
  %.not9.i.i.i.i.i = icmp eq i64 %i.ai, 0
  %.not1012.i.i.i.i.i = icmp eq ptr %i.af, null
  %.not10.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %.not1012.i.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not9.i.i.i.i.i, %.not10.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22interleave_byte_blocks0B7_.exit.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bb = load i8, ptr %i.af, align 1, !noalias !40, !noundef !4
  %i.bc = getelementptr i8, ptr %i.aa, i64 %1
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  store i8 %i.bb, ptr %i.bd, align 1, !alias.scope !50, !noalias !40
  br label %bb.n

bb.p:                                             ; preds = %.noexc11.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 %i.aw
  %i.bf = load i8, ptr %i.be, align 1, !noalias !40, !noundef !4
  store i8 %i.bf, ptr %i.az, align 1, !noalias !40
  %.not13.i.i.i.i.i = icmp eq i64 %i.ba, 1
  br i1 %.not13.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

.invoke.i.i.i.i:                                  ; preds = %bb.p, %.noexc11.i.i.i.i
  %i.bg = phi i64 [ 0, %.noexc11.i.i.i.i ], [ 1, %bb.p ] ; 2 uses
  %i.bh = phi ptr [ @8, %.noexc11.i.i.i.i ], [ @9, %bb.p ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh) #17
          to label %.cont.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !40

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bi = load i8, ptr %i.ax, align 1, !noalias !40, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !noalias !40
  %i.bk = load i64, ptr %i.al, align 8, !alias.scope !65, !noalias !68, !noundef !4 ; 2 uses
  %i.bl = load i64, ptr %i.am, align 8, !alias.scope !65, !noalias !68, !noundef !4
  %i.bm = icmp ult i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.m, label %._crit_edge.i.i.i.i.i

_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22interleave_byte_blocks0B7_.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i4.i.i.i, i64 24, i1 false), !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !40
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes18with_reused_bufferNCNvB2_22interleave_byte_blocks0EB6_.exit unwind label %bb.r, !noalias !40

bb.r:                                             ; preds = %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22interleave_byte_blocks0B7_.exit.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread13.i.i.i.i unwind label %bb.s, !noalias !40

bb.s:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !40
  unreachable

.thread13.i.i.i.i:                                ; preds = %.thread16.i.i.i.i, %bb.r
  %.pn11.i.i.i.i = phi { ptr, i32 } [ %.pn12.i.i.i.i, %.thread16.i.i.i.i ], [ %i.bn, %bb.r ]
  resume { ptr, i32 } %.pn11.i.i.i.i

.thread16.i.i.i.i:                                ; preds = %.thread.i.i.i.i, %.thread16.loopexit.split-lp.i.i.i.i, %.thread16.loopexit.i.i.i.i
  %.pn12.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.thread.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.thread16.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.thread16.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #18
          to label %.thread13.i.i.i.i unwind label %bb.t, !noalias !40

bb.t:                                             ; preds = %.thread16.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !40
  unreachable

bb.u:                                             ; preds = %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17, !noalias !40
  unreachable

_RINvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes18with_reused_bufferNCNvB2_22interleave_byte_blocks0EB6_.exit: ; preds = %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22interleave_byte_blocks0B7_.exit.i.i.i.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22samples_to_differences(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = and i64 %i.b, 15                         ; 3 uses
  %i.e = and i64 %i.b, -16                        ; 3 uses
  %.not922 = icmp eq i64 %i.e, 0
  br i1 %.not922, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph29.prol.loopexit, %.lr.ph29, %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.sroa.05.0.lcssa = phi i8 [ %i.a, %bb.b ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  %i.h = icmp samesign eq i64 %i.d, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %._crit_edge
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph29.prol.loopexit, label %.lr.ph29.prol

.lr.ph29.prol:                                    ; preds = %.lr.ph29.preheader, %.lr.ph29.prol
  %.sroa.02.027.prol = phi ptr [ %i.i, %.lr.ph29.prol ], [ %i.f, %.lr.ph29.preheader ] ; 3 uses
  %.sroa.05.126.prol = phi i8 [ %i.j, %.lr.ph29.prol ], [ %.sroa.05.0.lcssa, %.lr.ph29.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph29.prol ], [ 0, %.lr.ph29.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.027.prol, i64 1 ; 2 uses
  %i.j = load i8, ptr %.sroa.02.027.prol, align 1, !noundef !4 ; 3 uses
  %i.k = sub i8 %i.j, %.sroa.05.126.prol
  %i.l = xor i8 %i.k, -128
  store i8 %i.l, ptr %.sroa.02.027.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph29.prol.loopexit, label %.lr.ph29.prol, !llvm.loop !75

.lr.ph29.prol.loopexit:                           ; preds = %.lr.ph29.prol, %.lr.ph29.preheader
  %.sroa.02.027.unr = phi ptr [ %i.f, %.lr.ph29.preheader ], [ %i.i, %.lr.ph29.prol ]
  %.sroa.05.126.unr = phi i8 [ %.sroa.05.0.lcssa, %.lr.ph29.preheader ], [ %i.j, %.lr.ph29.prol ]
  %i.m = icmp samesign ult i64 %i.d, 4
  br i1 %i.m, label %.loopexit, label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.prol.loopexit, %.lr.ph29
  %.sroa.02.027 = phi ptr [ %i.z, %.lr.ph29 ], [ %.sroa.02.027.unr, %.lr.ph29.prol.loopexit ] ; 6 uses
  %.sroa.05.126 = phi i8 [ %i.aa, %.lr.ph29 ], [ %.sroa.05.126.unr, %.lr.ph29.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.027, i64 1 ; 2 uses
  %i.o = load i8, ptr %.sroa.02.027, align 1, !noundef !4 ; 2 uses
  %i.p = sub i8 %i.o, %.sroa.05.126
  %i.q = xor i8 %i.p, -128
  store i8 %i.q, ptr %.sroa.02.027, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.027, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.n, align 1, !noundef !4  ; 2 uses
  %i.t = sub i8 %i.s, %i.o
  %i.u = xor i8 %i.t, -128
  store i8 %i.u, ptr %i.n, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.027, i64 3 ; 2 uses
  %i.w = load i8, ptr %i.r, align 1, !noundef !4  ; 2 uses
  %i.x = sub i8 %i.w, %i.s
  %i.y = xor i8 %i.x, -128
  store i8 %i.y, ptr %i.r, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.027, i64 4 ; 2 uses
  %i.aa = load i8, ptr %i.v, align 1, !noundef !4 ; 2 uses
  %i.ab = sub i8 %i.aa, %i.w
  %i.ac = xor i8 %i.ab, -128
  store i8 %i.ac, ptr %i.v, align 1
  %i.ad = icmp eq ptr %i.z, %i.g
  br i1 %i.ad, label %.loopexit, label %.lr.ph29

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.05.025 = phi i8 [ %i.ah, %.lr.ph ], [ %i.a, %bb.b ]
  %.sroa.4.024 = phi ptr [ %i.ae, %.lr.ph ], [ %i.c, %bb.b ] ; 4 uses
  %.sroa.7.023 = phi i64 [ %i.af, %.lr.ph ], [ %i.e, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 16
  %i.af = add i64 %.sroa.7.023, -16               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 15
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4 ; 2 uses
  %i.ai = load <16 x i8>, ptr %.sroa.4.024, align 1 ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ak = insertelement <16 x i8> %i.aj, i8 %.sroa.05.025, i64 0
  %i.al = sub <16 x i8> %i.ai, %i.ak
  %i.am = xor <16 x i8> %i.al, splat (i8 -128)
  store <16 x i8> %i.am, ptr %.sroa.4.024, align 1
  %.not9 = icmp eq i64 %i.af, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes24separate_bytes_fragments(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !14, !noalias !77, !noundef !4
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i, !prof !43

_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i: ; preds = %bb.a
  %i.k = tail call noundef ptr @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE16get_or_init_slowCsdsTQD3x2eOp_3exr(ptr noundef nonnull align 8 %i.g), !noalias !77 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.u, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i, !prof !44

_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i, %bb.a
  %.sroa.0.0.i.i4.i.i.i = phi ptr [ %i.k, %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.i.i.i ], [ %i.g, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i4.i.i.i, i64 24, i1 false), !noalias !77
  store i64 0, ptr %.sroa.0.0.i.i4.i.i.i, align 8, !noalias !77
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !77
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !77, !noundef !4 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i64 %i.n, %1
  br i1 %i.p, label %bb.b, label %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i

_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i: ; preds = %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !77
  br label %bb.i

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !80
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 1, -9223372036854775808) %1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !77

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.q = load i64, ptr %i.d, align 8, !range !48, !noalias !80, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !49, !noalias !80, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %.noexc.i.i.i.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !80
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #20
          to label %.noexc5.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !77

.noexc5.i.i.i.i:                                  ; preds = %bb.c
  unreachable

.thread16.loopexit.i.i.i.i:                       ; preds = %bb.m
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i.i.i.i

.thread16.loopexit.split-lp.i.i.i.i:              ; preds = %.invoke.i.i.i.i, %bb.n, %.noexc9.i.i.i.i, %bb.l, %bb.k, %bb.j, %bb.c, %bb.b
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread16.i.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.w = load ptr, ptr %i.u, align 8, !noalias !80, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !80
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.f unwind label %bb.e, !noalias !77

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread.i.i.i.i unwind label %bb.g, !noalias !77

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread26.i.i.i.i unwind label %bb.h, !noalias !77

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !77
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.x, %bb.e ]
  store i64 %i.t, ptr %i.f, align 8, !noalias !77
  %.sroa.5.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx4.i.i.i.i, align 8, !noalias !77
  store i64 %1, ptr %i.m, align 8, !noalias !77
  br label %.thread16.i.i.i.i

.thread26.i.i.i.i:                                ; preds = %bb.f
  store i64 %i.t, ptr %i.f, align 8, !noalias !77
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !77
  store i64 %1, ptr %i.m, align 8, !noalias !77
  br label %bb.i

bb.i:                                             ; preds = %.thread26.i.i.i.i, %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i
  %i.aa = phi ptr [ %.pre.i.i.i, %_RNvYNCNKNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes13SCRATCH_SPACE00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEEEE9call_onceBc_.exit.thread._crit_edge.i.i.i ], [ %i.w, %.thread26.i.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.ab = add nuw i64 %1, 1
  %i.ac = lshr i64 %i.ab, 1                       ; 5 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ac, %1
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i, !prof !9

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17
          to label %.noexc7.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !77

.noexc7.i.i.i.i:                                  ; preds = %bb.j
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 %i.ac  ; 2 uses
  %i.ae = sub nuw nsw i64 %1, %i.ac               ; 3 uses
  %i.af = getelementptr i8, ptr %0, i64 %1
  %i.ag = getelementptr i8, ptr %i.af, i64 -1     ; 2 uses
  %.not7.i.i.i.i.i = icmp samesign ugt i64 %i.ae, %i.ac
  br i1 %.not7.i.i.i.i.i, label %bb.k, label %bb.l, !prof !53

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ae, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
          to label %.noexc8.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !77

.noexc8.i.i.i.i:                                  ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsdsTQD3x2eOp_3exr.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ai = getelementptr i8, ptr %i.aa, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai)
          to label %.noexc9.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !77

.noexc9.i.i.i.i:                                  ; preds = %bb.l
  %i.aj = and i64 %1, 9223372036854775806         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = and i64 %1, 1                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86
  store ptr %0, ptr %i.a, align 8, !alias.scope !91, !noalias !95
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aj, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !91, !noalias !95
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !91, !noalias !95
  %.sroa.63.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.al, ptr %.sroa.63.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !91, !noalias !95
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 2, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !91, !noalias !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EINtB13_11ChunksExacthEEINtB5_7ZipImplBW_B1A_E3newCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc10.i.i.i.i unwind label %.thread16.loopexit.split-lp.i.i.i.i, !noalias !77

.noexc10.i.i.i.i:                                 ; preds = %.noexc9.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !97, !noalias !100, !noundef !4 ; 2 uses
  %i.ap = load i64, ptr %i.an, align 8, !alias.scope !97, !noalias !100, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %i.au = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.bk, %bb.q ] ; 3 uses
  %i.av = add nuw i64 %i.au, 1
  store i64 %i.av, ptr %i.am, align 8, !alias.scope !97, !noalias !100
  %i.aw = load i64, ptr %i.ar, align 8, !alias.scope !102, !noalias !100, !noundef !4
  %i.ax = add i64 %i.aw, %i.au                    ; 2 uses
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !102, !noalias !100, !nonnull !4, !noundef !4
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !102, !noalias !100, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.ax
  %i.az = invoke { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at, i64 noundef %i.au)
          to label %.noexc11.i.i.i.i unwind label %.thread16.loopexit.i.i.i.i, !noalias !77 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle15pack_rle_tokens:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !4
  %.not41 = icmp ne i8 %i.am, %i.ar
  %i.as = sub nsw i64 %.sroa.0.258, %.sroa.020.066
  %i.at = icmp ult i64 %i.as, 127
  %or.cond = and i1 %i.at, %.not41
  br i1 %or.cond, label %bb.p, label %._crit_edge60

bb.o:                                             ; preds = %bb.m, %bb.l, %.lr.ph59
  %.old = sub nsw i64 %.sroa.0.258, %.sroa.020.066
  %.old43 = icmp ult i64 %.old, 127
  br i1 %.old43, label %bb.p, label %._crit_edge60

bb.p:                                             ; preds = %bb.n, %bb.o
  %exitcond72.not = icmp eq i64 %i.af, %2
  br i1 %exitcond72.not, label %._crit_edge60, label %.lr.ph59

bb.q:                                             ; preds = %._crit_edge60, %bb.k
  %i.au = load ptr, ptr %i.k, align 8, !alias.scope !111, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.m
  store i8 %i.ai, ptr %i.av, align 1
  %i.aw = add i64 %i.m, 1
  store i64 %i.aw, ptr %i.l, align 8, !alias.scope !111
  %i.ax = icmp ult i64 %.sroa.0.2.lcssa, %.sroa.020.066
  %.not42 = icmp ugt i64 %.sroa.0.2.lcssa, %2
  %or.cond44 = or i1 %i.ax, %.not42
  br i1 %or.cond44, label %bb.r, label %bb.s, !prof !53

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.020.066, i64 noundef %.sroa.0.2.lcssa, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
          to label %bb.e unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.066
  %gepdiff = sub nuw nsw i64 %.sroa.0.2.lcssa, %.sroa.020.066 ; 3 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff)
          to label %.noexc47 unwind label %.loopexit

.noexc47:                                         ; preds = %bb.s
  %i.az = load i64, ptr %i.l, align 8, !alias.scope !114, !noundef !4 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %.not.i = icmp eq i64 %.sroa.0.2.lcssa, %.sroa.020.066
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.noexc47
  %i.bb = load ptr, ptr %i.k, align 8, !alias.scope !114, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull readonly align 1 %i.ay, i64 %gepdiff, i1 false)
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !114
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc47
  %i.bd = phi i64 [ %.pre.i, %bb.t ], [ %i.az, %.noexc47 ]
  %i.be = add i64 %i.bd, %gepdiff                 ; 2 uses
  store i64 %i.be, ptr %i.l, align 8, !alias.scope !114
  %i.bf = add nuw i64 %.sroa.0.2.lcssa, 1
  br label %bb.v

bb.v:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsdsTQD3x2eOp_3exr.exit49, %bb.u
  %i.bg = phi i64 [ %i.be, %bb.u ], [ %i.br, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsdsTQD3x2eOp_3exr.exit49 ]
  %.sroa.020.1 = phi i64 [ %.sroa.0.2.lcssa, %bb.u ], [ %.sroa.0.1.lcssa, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsdsTQD3x2eOp_3exr.exit49 ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %i.bf, %bb.u ], [ %.sroa.0.1.lcssa, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsdsTQD3x2eOp_3exr.exit49 ]
  %i.bh = icmp ult i64 %.sroa.020.1, %2
  br i1 %i.bh, label %.preheader50, label %._crit_edge68

bb.w:                                             ; preds = %bb.i, %bb.j
  %i.bi = load ptr, ptr %i.k, align 8, !alias.scope !108, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.m
  store i8 %i.ac, ptr %i.bj, align 1
  %i.bk = add i64 %i.m, 1                         ; 3 uses
  store i64 %i.bk, ptr %i.l, align 8, !alias.scope !108
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.066
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !4
  %i.bn = load i64, ptr %i.b, align 8, !range !107, !alias.scope !117, !noundef !4
  %i.bo = icmp eq i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.x, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsdsTQD3x2eOp_3exr.exit49

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsdsTQD3x2eOp_3exr.exit49 unwind label %.loopexit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsdsTQD3x2eOp_3exr.exit49: ; preds = %bb.x, %bb.w
  %i.bp = load ptr, ptr %i.k, align 8, !alias.scope !117, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk
  store i8 %i.bm, ptr %i.bq, align 1
  %i.br = add i64 %i.m, 2                         ; 2 uses
  store i64 %i.br, ptr %i.l, align 8, !alias.scope !117
  br label %bb.v

bb.y:                                             ; preds = %bb.d
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle16decompress_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(352) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  invoke void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle17unpack_rle_tokens(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, i64 noundef %4, i1 noundef zeroext %5)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.j ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #18
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !range !120, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.h, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %i.j, %bb.f ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %.not.i = icmp eq i64 %i.n, 0
  %.pre = load ptr, ptr %i.l, align 8             ; 5 uses
  br i1 %.not.i, label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22differences_to_samples.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i8, ptr %.pre, align 1, !alias.scope !121, !noundef !4 ; 3 uses
  %i.p = add nsw i64 %i.n, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 4 uses
  %i.r = and i64 %i.p, 1
  %i.s = and i64 %i.p, -2                         ; 4 uses
  %.not1016.i = icmp eq i64 %i.s, 0
  br i1 %.not1016.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.t = add i64 %i.n, -3                         ; 2 uses
  %i.u = and i64 %i.t, 2
  %lcmp.mod.not.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 3
  %i.w = add i64 %i.s, -2
  %i.x = load i8, ptr %i.q, align 1, !alias.scope !121, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 2 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !121, !noundef !4
  %i.aa = add i8 %i.x, %i.o                       ; 2 uses
  %i.ab = xor i8 %i.aa, -128
  %i.ac = add i8 %i.z, %i.aa                      ; 3 uses
  store i8 %i.ab, ptr %i.q, align 1, !alias.scope !121
  store i8 %i.ac, ptr %i.y, align 1, !alias.scope !121
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i8 [ poison, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.sroa.05.0.in19.i.unr = phi i8 [ %i.o, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.sroa.4.018.i.unr = phi ptr [ %i.q, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %.sroa.7.017.i.unr = phi i64 [ %i.s, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.t, 2
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.i
  %.sroa.05.0.in.lcssa.i = phi i8 [ %i.o, %bb.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ax, %.lr.ph.i ]
  %i.ae = icmp samesign eq i64 %i.r, 0
  br i1 %i.ae, label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22differences_to_samples.exit, label %.lr.ph23.preheader.i

.lr.ph23.preheader.i:                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !121, !noundef !4
  %i.ah = add i8 %i.ag, %.sroa.05.0.in.lcssa.i
  %i.ai = xor i8 %i.ah, -128
  store i8 %i.ai, ptr %i.af, align 1, !alias.scope !121
  br label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22differences_to_samples.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.05.0.in19.i = phi i8 [ %i.ax, %.lr.ph.i ], [ %.sroa.05.0.in19.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.4.018.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.sroa.4.018.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.sroa.7.017.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %.sroa.7.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i, i64 2 ; 2 uses
  %i.ak = load i8, ptr %.sroa.4.018.i, align 1, !alias.scope !121, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !121, !noundef !4
  %i.an = add i8 %i.ak, %.sroa.05.0.in19.i        ; 2 uses
  %i.ao = xor i8 %i.an, -128
  %i.ap = add i8 %i.am, %i.an                     ; 2 uses
  store i8 %i.ao, ptr %.sroa.4.018.i, align 1, !alias.scope !121
  store i8 %i.ap, ptr %i.al, align 1, !alias.scope !121
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i, i64 4
  %i.ar = add i64 %.sroa.7.017.i, -4              ; 2 uses
  %i.as = load i8, ptr %i.aj, align 1, !alias.scope !121, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i, i64 3 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !121, !noundef !4
  %i.av = add i8 %i.as, %i.ap                     ; 2 uses
  %i.aw = xor i8 %i.av, -128
  %i.ax = add i8 %i.au, %i.av                     ; 3 uses
  store i8 %i.aw, ptr %i.aj, align 1, !alias.scope !121
  store i8 %i.ax, ptr %i.at, align 1, !alias.scope !121
  %.not10.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not10.i.1, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22differences_to_samples.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %bb.b unwind label %bb.n

_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22differences_to_samples.exit: ; preds = %.lr.ph23.preheader.i, %._crit_edge.i, %bb.h
  invoke void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22interleave_byte_blocks(ptr noalias nofree noundef nonnull %.pre, i64 noundef %i.n)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %_RNvNtNtCsdsTQD3x2eOp_3exr11compression14optimize_bytes22differences_to_samples.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.k, %bb.e
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.b
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle17unpack_rle_tokens(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 16384) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !48, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !49, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.j = icmp samesign ule i64 %..i, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store i64 0, ptr %i.l, align 8
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.0.0121 = phi ptr [ %.sroa.0.1, %bb.j ], [ %1, %bb.c ] ; 3 uses
  %.sroa.10.0120 = phi i64 [ %.sroa.10.1, %bb.j ], [ %2, %bb.c ] ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !noundef !4 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %.not = icmp eq i64 %i.n, %3
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  br i1 %4, label %bb.p, label %.thread

bb.e:                                             ; preds = %bb.k, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %common.resume unwind label %bb.o

bb.f:                                             ; preds = %.lr.ph
  %i.q = load i8, ptr %.sroa.0.0121, align 1, !noalias !124, !noundef !4 ; 2 uses
  %i.r = add i64 %.sroa.10.0120, -1               ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0121, i64 1 ; 3 uses
  %i.t = sext i8 %i.q to i32                      ; 2 uses
  %i.u = icmp slt i8 %i.q, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_1.exit77, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = sub nsw i32 0, %i.t
  %i.x = zext nneg i32 %i.w to i64                ; 6 uses
  %.not.i = icmp ult i64 %i.r, %i.x
  br i1 %.not.i, label %_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_n.exit, label %bb.k

_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_1.exit77: ; preds = %bb.g
  store i64 2, ptr %0, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 -1, ptr %.sroa.561.0..sroa_idx, align 1
  %.sroa.561.sroa.4.0..sroa.561.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @23, ptr %.sroa.561.sroa.4.0..sroa.561.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.s, align 1, !noalias !128, !noundef !4
  %i.z = add i64 %.sroa.10.0120, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0121, i64 2
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw i64 %i.n, 1
  %i.ad = add nuw i64 %i.ac, %i.ab
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ad, i8 noundef %i.y)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsdsTQD3x2eOp_3exr.exit, %bb.i
  %.sroa.10.1 = phi i64 [ %i.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsdsTQD3x2eOp_3exr.exit ], [ %i.z, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ag, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsdsTQD3x2eOp_3exr.exit ], [ %i.aa, %bb.i ]
  %i.ae = icmp eq i64 %.sroa.10.1, 0
  br i1 %i.ae, label %.thread, label %.lr.ph

_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_n.exit: ; preds = %bb.h
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @23 to i64), ptr %.sroa.551.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.x)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsdsTQD3x2eOp_3exr.exit unwind label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.k
  %i.af = sub nuw nsw i64 %i.r, %i.x
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %i.ah = load i64, ptr %i.l, align 8, !alias.scope !132, !noundef !4 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.k, align 8, !alias.scope !132, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.s, i64 %i.x, i1 false)
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !132
  %i.al = add i64 %.pre.i, %i.x
  store i64 %i.al, ptr %i.l, align 8, !alias.scope !132
  br label %bb.j

bb.l:                                             ; preds = %_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_n.exit, %_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_1.exit77, %bb.p
  %.sink = phi i64 [ 15, %_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_n.exit ], [ 15, %_RNvNtNtCsdsTQD3x2eOp_3exr11compression3rle6take_1.exit77 ], [ 11, %bb.p ]
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.652.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.p, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.l
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

.thread:                                          ; preds = %bb.j, %bb.c, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.d
  store i64 2, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @22, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.q:                                             ; preds = %.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules19parse_channel_rules(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 27, ptr %.sroa.678.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.014.0.copyload = load i16, ptr %i.j, align 1 ; 2 uses
  %i.k = icmp ult i16 %.sroa.014.0.copyload, 2
  br i1 %i.k, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit, %._crit_edge, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.l = add i64 %i.h, -2
  %i.m = zext i16 %.sroa.014.0.copyload to i64    ; 3 uses
  %i.n = add nsw i64 %i.m, -2                     ; 3 uses
  %i.o = icmp ugt i64 %i.n, %i.l
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  store i64 2, ptr %0, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.494.0..sroa_idx, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 27, ptr %.sroa.696.0..sroa_idx, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.p = sub i64 %i.h, %i.m
  %i.q = getelementptr i8, ptr %i.j, i64 %i.m
  store ptr %i.q, ptr %1, align 8, !captures !135
  store i64 %i.p, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.665.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.638.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.638.sroa.7.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.638.sroa.8.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.638.sroa.9.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.840.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i64 2, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 27, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.i:                                             ; preds = %.lr.ph, %bb.ao
  %.pn = phi ptr [ %i.j, %.lr.ph ], [ %i.as, %bb.ao ]
  %.sroa.35.0164 = phi i64 [ %i.n, %.lr.ph ], [ %i.at, %bb.ao ] ; 3 uses
  %.sroa.0.0166 = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0166, i64 %.sroa.35.0164
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.sroa.02.07.i.i = phi i64 [ %i.ac, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %i.z = phi ptr [ %i.ab, %bb.j ], [ %.sroa.0.0166, %bb.i ] ; 2 uses
  %.val.i.i = load i8, ptr %i.z, align 1, !noalias !136, !noundef !4
  %i.aa = icmp eq i8 %.val.i.i, 0
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ac = add nuw i64 %.sroa.02.07.i.i, 1
  %i.ad = icmp eq ptr %i.ab, %i.y
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ae = icmp ult i64 %.sroa.02.07.i.i, %.sroa.35.0164
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ugt i64 %.sroa.02.07.i.i, 128
  br i1 %i.af, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !142
  invoke void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0166, i64 noundef %.sroa.02.07.i.i)
          to label %.noexc unwind label %.loopexit160

.noexc:                                           ; preds = %bb.l
  %i.ag = load i64, ptr %i.c, align 8, !range !10, !noalias !142, !noundef !4
  %.not115.i = icmp eq i64 %i.ag, -1
  br i1 %.not115.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !142
  br label %bb.s

bb.n:                                             ; preds = %.noexc
  %i.ah = load ptr, ptr %i.u, align 8, !noalias !142, !nonnull !4, !noundef !4
  %i.ai = load i64, ptr %i.v, align 8, !noalias !142, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc109 unwind label %.loopexit160

.noexc109:                                        ; preds = %bb.n
  %i.aj = load i64, ptr %i.a, align 8, !range !48, !noalias !142, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = load i64, ptr %i.w, align 8, !range !49, !noalias !142, !noundef !4 ; 3 uses
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !9

bb.o:                                             ; preds = %.noexc109
  %i.am = load i64, ptr %i.x, align 8, !noalias !142
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.am) #20
          to label %.noexc110 unwind label %.loopexit.split-lp

.noexc110:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.noexc109
  %i.an = load ptr, ptr %i.x, align 8, !noalias !142, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = icmp ule i64 %i.ai, %i.al
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !142
  %.not116.i = icmp eq i64 %i.ai, 0
  br i1 %.not116.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.p
  store i64 %i.al, ptr %i.d, align 8, !noalias !142
  store ptr %i.an, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !142
  store i64 %i.ai, ptr %.sroa.665.0..sroa_idx.i, align 8, !noalias !142
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ah, i64 %i.ai, i1 false), !noalias !142
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !142
  %i.ap = add nuw nsw i64 %.sroa.02.07.i.i, 1     ; 2 uses
  %i.aq = sub nuw nsw i64 %.sroa.35.0164, %i.ap   ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1
  br i1 %i.ar, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0166, i64 %i.ap ; 3 uses
  %i.at = add nsw i64 %i.aq, -2                   ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !noalias !142, !noundef !4 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !noalias !142, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !142
  %i.ax = lshr i8 %i.au, 4                        ; 2 uses
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 4294967295
  %i.ba = icmp eq i8 %i.ax, 0
  br i1 %i.ba, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.v, !noalias !142

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.w, !noalias !142

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !142
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.loopexit.sink.split unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.t
  %i.bd = icmp ult i8 %i.au, 64
  br i1 %i.bd, label %bb.ad, label %bb.z

bb.y:                                             ; preds = %bb.ad, %bb.t
  %.sroa.040.0.i.a = phi i64 [ %i.bl, %bb.ad ], [ undef, %bb.t ]
  %.sroa.741.0.i = phi i64 [ 1, %bb.ad ], [ 0, %bb.t ]
  %i.be = lshr i8 %i.au, 2
  %i.bf = and i8 %i.be, 3                         ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 3
  %switch.i = icmp ult i8 %i.aw, 3
  %or.cond.i = and i1 %switch.i, %i.bg
  br i1 %or.cond.i, label %bb.ak, label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.bh = load i64, ptr %i.b, align 8, !range !10, !alias.scope !143, !noalias !142, !noundef !4
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %.loopexit.sink.split.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke unwind label %bb.ab, !noalias !142

bb.ab:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.ac, !noalias !142

bb.ac:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !142
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke: ; preds = %bb.af, %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.loopexit.sink.split.sink.split unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.x
  %i.bl = and i64 %i.az, 4294967295
  br label %bb.y

bb.ae:                                            ; preds = %bb.y
  %i.bm = load i64, ptr %i.b, align 8, !range !10, !alias.scope !146, !noalias !142, !noundef !4
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %.loopexit.sink.split.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke unwind label %bb.ag, !noalias !142

bb.ag:                                            ; preds = %bb.af
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.ah, !noalias !142

bb.ah:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !142
  unreachable

._crit_edge:                                      ; preds = %bb.ao, %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

.loopexit160:                                     ; preds = %bb.l, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke, %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit160, %.loopexit.split-lp, %bb.am, %bb.v, %bb.ab, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.ab ], [ %i.bb, %bb.v ], [ %i.bo, %bb.ag ], [ %i.bw, %bb.am ], [ %lpad.loopexit, %.loopexit160 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #18
          to label %common.resume unwind label %bb.ap

.loopexit.sink.split.sink.split:                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i.i.invoke, %bb.ae, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !142
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.j, %.loopexit.sink.split
  store i64 2, ptr %0, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4144.0..sroa_idx, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.5145.0..sroa_idx, align 8
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 24, ptr %.sroa.6146.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit unwind label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.ai ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.ak:                                            ; preds = %bb.y
  %.sroa.19.16.copyload = load i64, ptr %i.d, align 8, !noalias !149
  %.sroa.25.16.copyload = load ptr, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.30.16.copyload = load i64, ptr %.sroa.665.0..sroa_idx.i, align 8, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  %.sroa.35.40.insert.ext = zext nneg i8 %i.bf to i64
  %.sroa.35.41.insert.shift = shl nuw nsw i64 %.sroa.35.40.insert.ext, 8
  %2 = and i8 %i.au, 1
  %.sroa.35.41.insert.ext = zext nneg i8 %2 to i64
  %.sroa.35.41.insert.insert = or disjoint i64 %.sroa.35.41.insert.shift, %.sroa.35.41.insert.ext
  %.sroa.35.42.insert.ext = zext nneg i8 %i.aw to i64
  %.sroa.35.42.insert.shift = shl nuw nsw i64 %.sroa.35.42.insert.ext, 16
  %.sroa.35.42.insert.insert = or disjoint i64 %.sroa.35.41.insert.insert, %.sroa.35.42.insert.shift
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !142
  store i64 %.sroa.741.0.i, ptr %i.e, align 8
  store i64 %.sroa.040.0.i.a, ptr %.sroa.638.0..sroa_idx39, align 8
  store i64 %.sroa.19.16.copyload, ptr %.sroa.638.sroa.7.0..sroa.638.0..sroa_idx39.sroa_idx, align 8
  store ptr %.sroa.25.16.copyload, ptr %.sroa.638.sroa.8.0..sroa.638.0..sroa_idx39.sroa_idx, align 8
  store i64 %.sroa.30.16.copyload, ptr %.sroa.638.sroa.9.0..sroa.638.0..sroa_idx39.sroa_idx, align 8
  store i64 %.sroa.35.42.insert.insert, ptr %.sroa.840.0..sroa_idx41, align 8
  %i.bt = load i64, ptr %i.s, align 8, !alias.scope !150, !noalias !153, !noundef !4 ; 3 uses
  %i.bu = load i64, ptr %i.f, align 8, !range !107, !alias.scope !150, !noalias !153, !noundef !4
  %i.bv = icmp eq i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ao unwind label %bb.am, !noalias !153

bb.am:                                            ; preds = %bb.al
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #18
          to label %.body unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %i.by = load ptr, ptr %i.r, align 8, !alias.scope !150, !noalias !153, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.ca = add i64 %i.bt, 1
  store i64 %i.ca, ptr %i.s, align 8
  %i.cb = icmp eq i64 %i.at, 0
  br i1 %i.cb, label %._crit_edge, label %bb.i

bb.ap:                                            ; preds = %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules20legacy_channel_rules(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 16 uses
  %i.d = alloca [368 x i8], align 8               ; 43 uses
  %i.e = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 25, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.f = load i64, ptr %i.a, align 8, !range !48, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !49, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.i, 24
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr @25, ptr %.sroa.5214.0..sroa_idx, align 8
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6215.0..sroa_idx, align 8
  %.sroa.7216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %.sroa.7216.0..sroa_idx, align 8
  %.sroa.8217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %.sroa.8217.0..sroa_idx, align 8
  %.sroa.9218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr @26, ptr %.sroa.9218.0..sroa_idx, align 8
  %.sroa.10219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 3, ptr %.sroa.10219.0..sroa_idx, align 8
  %.sroa.11220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 1, ptr %.sroa.11220.0..sroa_idx, align 8
  %.sroa.12221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 0, ptr %.sroa.12221.0..sroa_idx, align 8
  %.sroa.13222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @27, ptr %.sroa.13222.0..sroa_idx, align 8
  %.sroa.14223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 1, ptr %.sroa.14223.0..sroa_idx, align 8
  %.sroa.15224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 1, ptr %.sroa.15224.0..sroa_idx, align 8
  %.sroa.16225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 1, ptr %.sroa.16225.0..sroa_idx, align 8
  %.sroa.17226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr @28, ptr %.sroa.17226.0..sroa_idx, align 8
  %.sroa.18227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 3, ptr %.sroa.18227.0..sroa_idx, align 8
  %.sroa.19228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i64 1, ptr %.sroa.19228.0..sroa_idx, align 8
  %.sroa.20229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 1, ptr %.sroa.20229.0..sroa_idx, align 8
  %.sroa.21230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr @29, ptr %.sroa.21230.0..sroa_idx, align 8
  %.sroa.22231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i64 5, ptr %.sroa.22231.0..sroa_idx, align 8
  %.sroa.23232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i64 1, ptr %.sroa.23232.0..sroa_idx, align 8
  %.sroa.24233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 1, ptr %.sroa.24233.0..sroa_idx, align 8
  %.sroa.25234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @30, ptr %.sroa.25234.0..sroa_idx, align 8
  %.sroa.26235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i64 1, ptr %.sroa.26235.0..sroa_idx, align 8
  %.sroa.27236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i64 1, ptr %.sroa.27236.0..sroa_idx, align 8
  %.sroa.28237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i64 2, ptr %.sroa.28237.0..sroa_idx, align 8
  %.sroa.29238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr @31, ptr %.sroa.29238.0..sroa_idx, align 8
  %.sroa.30239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i64 3, ptr %.sroa.30239.0..sroa_idx, align 8
  %.sroa.31240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store i64 1, ptr %.sroa.31240.0..sroa_idx, align 8
  %.sroa.32241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i64 2, ptr %.sroa.32241.0..sroa_idx, align 8
  %.sroa.33242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store ptr @32, ptr %.sroa.33242.0..sroa_idx, align 8
  %.sroa.34243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  store i64 4, ptr %.sroa.34243.0..sroa_idx, align 8
  %.sroa.35244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store i64 1, ptr %.sroa.35244.0..sroa_idx, align 8
  %.sroa.36245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store i64 2, ptr %.sroa.36245.0..sroa_idx, align 8
  %.sroa.37246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store ptr @33, ptr %.sroa.37246.0..sroa_idx, align 8
  %.sroa.38247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store i64 1, ptr %.sroa.38247.0..sroa_idx, align 8
  %.sroa.39248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store i64 0, ptr %.sroa.39248.0..sroa_idx, align 8
  %.sroa.41250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store ptr @34, ptr %.sroa.41250.0..sroa_idx, align 8
  %.sroa.42251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store i64 2, ptr %.sroa.42251.0..sroa_idx, align 8
  %.sroa.43252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  store i64 0, ptr %.sroa.43252.0..sroa_idx, align 8
  %.sroa.45254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store ptr @35, ptr %.sroa.45254.0..sroa_idx, align 8
  %.sroa.46255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store i64 2, ptr %.sroa.46255.0..sroa_idx, align 8
  %.sroa.47256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store i64 0, ptr %.sroa.47256.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 41 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br label %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReINtNtBb_6option6OptionjEEEE4nextCsdsTQD3x2eOp_3exr.exit

_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReINtNtBb_6option6OptionjEEEE4nextCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.c, %bb.s
  %i.u = phi ptr [ %i.l, %bb.c ], [ %i.bf, %bb.s ] ; 2 uses
  %i.v = phi i64 [ 0, %bb.c ], [ %i.bh, %bb.s ]   ; 5 uses
  %i.w = phi i64 [ 0, %bb.c ], [ %i.x, %bb.s ]    ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.5214.0..sroa_idx, i64 %i.w ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.y, align 8, !alias.scope !155 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !155 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !155 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !155 ; 2 uses
  %.not = icmp eq i64 %.sroa.6.0.copyload, 2
  %.pre348 = load i64, ptr %i.e, align 8, !range !107, !noalias !4 ; 3 uses
  br i1 %.not, label %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReINtNtBb_6option6OptionjEEEE4nextCsdsTQD3x2eOp_3exr.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReINtNtBb_6option6OptionjEEEE4nextCsdsTQD3x2eOp_3exr.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.p, align 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8
  store i8 1, ptr %i.q, align 1
  store i8 1, ptr %i.r, align 2
  store i64 %.sroa.6.0.copyload, ptr %i.c, align 8
  store i64 %.sroa.8.0.copyload, ptr %i.s, align 8
  store i8 1, ptr %i.t, align 8
  %i.z = icmp eq i64 %i.v, %.pre348
  br i1 %i.z, label %bb.n, label %bb.q

.body:                                            ; preds = %bb.o, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #18
end_hunk_1
