Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.05?download=true
inline.NumInlined: 1810
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 206
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0EB4_:bb.a

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit, %bb.a
  ret void, !dbg !60657

.lr.ph:                                           ; preds = %bb.a, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.ch, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !60658
  %i.b = load i16, ptr %i.a, align 2, !dbg !60659, !noundef !403 ; 6 uses
  %i.c = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !60660 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !60661
  br i1 %i.d, label %.split.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, !dbg !60661, !prof !414

.split.i.i:                                       ; preds = %.lr.ph
  %i.e = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !60662
  %i.f = and i128 %i.e, 36028797018963968, !dbg !60663
  %.not7.i.i = icmp eq i128 %i.f, 0, !dbg !60663
  br i1 %.not7.i.i, label %bb.b, label %bb.k, !dbg !60664

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i: ; preds = %.lr.ph
  %i.g = and i64 %i.c, 36028797018963968, !dbg !60665
  %.not.i.i = icmp eq i64 %i.g, 0, !dbg !60665
  br i1 %.not.i.i, label %bb.b, label %bb.k, !dbg !60664

bb.b:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.h = and i16 %i.b, 32767, !dbg !60666
  %i.i = icmp eq i16 %i.h, 0, !dbg !60666
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !60666

bb.c:                                             ; preds = %bb.b
  %i.j = zext i16 %i.b to i32, !dbg !60667
  %i.k = shl nuw i32 %i.j, 16, !dbg !60667
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !60668

bb.d:                                             ; preds = %bb.b
  %i.l = and i16 %i.b, -32768, !dbg !60669
  %i.m = zext i16 %i.l to i32, !dbg !60669        ; 2 uses
  %i.n = and i16 %i.b, 31744, !dbg !60670         ; 3 uses
  %i.o = and i16 %i.b, 1023, !dbg !60671          ; 3 uses
  %i.p = zext nneg i16 %i.o to i32, !dbg !60671   ; 3 uses
  %i.q = icmp eq i16 %i.n, 31744, !dbg !60672
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !60672

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i16 %i.o, 0, !dbg !60673
  %i.s = shl nuw i32 %i.m, 16, !dbg !60674        ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h, !dbg !60673

bb.f:                                             ; preds = %bb.d
  %i.t = shl nuw i32 %i.m, 16, !dbg !60675        ; 2 uses
  %i.u = icmp eq i16 %i.n, 0, !dbg !60676
  br i1 %i.u, label %bb.i, label %bb.j, !dbg !60676

bb.g:                                             ; preds = %bb.e
  %i.v = or disjoint i32 %i.s, 2139095040, !dbg !60677
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !60678

bb.h:                                             ; preds = %bb.e
  %i.w = shl nuw nsw i32 %i.p, 13, !dbg !60679
  %i.x = or disjoint i32 %i.s, %i.w, !dbg !60680
  %i.y = or i32 %i.x, 2143289344, !dbg !60680
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !60681

bb.i:                                             ; preds = %bb.f
  %i.z = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.o, i1 false), !dbg !60682
  %i.aa = zext nneg i16 %i.z to i32, !dbg !60682  ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 8, !dbg !60683
  %i.ac = shl i32 %i.p, %i.ab, !dbg !60684
  %i.ad = and i32 %i.ac, 8388607, !dbg !60684
  %reass.sub.i.i.i = or disjoint i32 %i.t, 989855744, !dbg !60685
  %i.ae = shl nuw nsw i32 %i.aa, 23, !dbg !60685
  %i.af = sub nuw nsw i32 %reass.sub.i.i.i, %i.ae, !dbg !60685
  %i.ag = or disjoint i32 %i.ad, %i.af, !dbg !60685
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !60686

bb.j:                                             ; preds = %bb.f
  %i.ah = lshr exact i16 %i.n, 10, !dbg !60687
  %narrow.i.i.i = add nuw nsw i16 %i.ah, 112, !dbg !60688
  %i.ai = zext nneg i16 %narrow.i.i.i to i32, !dbg !60688
  %i.aj = shl nuw nsw i32 %i.ai, 23, !dbg !60689
  %i.ak = shl nuw nsw i32 %i.p, 13, !dbg !60690
  %i.al = or disjoint i32 %i.aj, %i.ak, !dbg !60691
  %i.am = or disjoint i32 %i.al, %i.t, !dbg !60691
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !60692

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c
  %.sroa.0.0.i.i.i = phi i32 [ %i.k, %bb.c ], [ %i.v, %bb.g ], [ %i.y, %bb.h ], [ %i.ag, %bb.i ], [ %i.am, %bb.j ], !dbg !60693
  %i.an = bitcast i32 %.sroa.0.0.i.i.i to float, !dbg !60692
  br label %bb.l, !dbg !60694

bb.k:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.ao = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.b), !dbg !60695
  br label %bb.l, !dbg !60695

bb.l:                                             ; preds = %bb.k, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i
  %.sroa.0.0.i.i = phi float [ %i.ao, %bb.k ], [ %i.an, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i ], !dbg !60696
  %i.ap = tail call float @llvm.fabs.f32(float %.sroa.0.0.i.i), !dbg !60697 ; 2 uses
  %i.aq = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !60698 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !60699
  br i1 %i.ar, label %.split6.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i, !dbg !60699, !prof !414

.split6.i.i:                                      ; preds = %bb.l
  %i.as = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !60700
  %i.at = and i128 %i.as, 36028797018963968, !dbg !60701
  %.not9.i.i = icmp eq i128 %i.at, 0, !dbg !60701
  br i1 %.not9.i.i, label %bb.m, label %bb.v, !dbg !60702

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i: ; preds = %bb.l
  %i.au = and i64 %i.aq, 36028797018963968, !dbg !60703
  %.not8.i.i = icmp eq i64 %i.au, 0, !dbg !60703
  br i1 %.not8.i.i, label %bb.m, label %bb.v, !dbg !60702

bb.m:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i, %.split6.i.i
  %i.av = bitcast float %i.ap to i32, !dbg !60704 ; 7 uses
  %i.aw = and i32 %i.av, 2139095040, !dbg !60705  ; 3 uses
  %i.ax = and i32 %i.av, 8388607, !dbg !60706     ; 4 uses
  %i.ay = icmp eq i32 %i.aw, 2139095040, !dbg !60707
  br i1 %i.ay, label %bb.n, label %bb.o, !dbg !60707

bb.n:                                             ; preds = %bb.m
  %i.az = icmp eq i32 %i.ax, 0, !dbg !60708
  %..i.i.i = select i1 %i.az, i32 0, i32 512, !dbg !60709
  %i.ba = lshr i32 %i.ax, 13, !dbg !60710
  %i.bb = or i32 %..i.i.i, %i.ba, !dbg !60711
  %i.bc = trunc nuw nsw i32 %i.bb to i16, !dbg !60711
  %i.bd = or disjoint i16 %i.bc, 31744, !dbg !60711
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit, !dbg !60712

bb.o:                                             ; preds = %bb.m
  %i.be = lshr i32 %i.av, 23, !dbg !60713         ; 2 uses
  %i.bf = icmp samesign ugt i32 %i.aw, 1191182336, !dbg !60714
  br i1 %i.bf, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit, label %bb.p, !dbg !60714

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp samesign ult i32 %i.av, 947912704, !dbg !60715
  br i1 %i.bg, label %bb.r, label %bb.q, !dbg !60715

bb.q:                                             ; preds = %bb.p
  %i.bh = lshr exact i32 %i.aw, 13, !dbg !60716
  %i.bi = add nuw nsw i32 %i.bh, 16384, !dbg !60716
  %i.bj = lshr i32 %i.ax, 13, !dbg !60717
  %i.bk = and i32 %i.av, 4096, !dbg !60718
  %i.bl = icmp ne i32 %i.bk, 0, !dbg !60718
  %i.bm = and i32 %i.av, 12287
  %i.bn = icmp ne i32 %i.bm, 0
  %or.cond.not.i.i.i = and i1 %i.bl, %i.bn, !dbg !60719
  %i.bo = or disjoint i32 %i.bi, %i.bj, !dbg !60719
  %i.bp = trunc i32 %i.bo to i16, !dbg !60719
  %i.bq = zext i1 %or.cond.not.i.i.i to i16, !dbg !60718
  %spec.select7.i.i.i = add i16 %i.bp, %i.bq, !dbg !60718
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit, !dbg !60718

bb.r:                                             ; preds = %bb.p
  %i.br = icmp samesign ult i32 %i.av, 855638016, !dbg !60720
  br i1 %i.br, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit, label %bb.s, !dbg !60720

bb.s:                                             ; preds = %bb.r
  %i.bs = sub nsw i32 126, %i.be, !dbg !60720
  %i.bt = or disjoint i32 %i.ax, 8388608, !dbg !60721 ; 3 uses
  %i.bu = lshr i32 %i.bt, %i.bs, !dbg !60722      ; 2 uses
  %i.bv = sub nsw i32 29, %i.be, !dbg !60723
  %i.bw = and i32 %i.bv, 31, !dbg !60724          ; 2 uses
  %i.bx = shl nuw i32 1, %i.bw, !dbg !60724
  %i.by = and i32 %i.bx, %i.bt, !dbg !60725
  %i.bz = icmp eq i32 %i.by, 0, !dbg !60725
  br i1 %i.bz, label %bb.u, label %bb.t, !dbg !60725

bb.t:                                             ; preds = %bb.s
  %i.ca = shl i32 3, %i.bw, !dbg !60726
  %i.cb = add nuw i32 %i.ca, 16777215, !dbg !60727
  %i.cc = and i32 %i.cb, %i.bt, !dbg !60728
  %i.cd = icmp ne i32 %i.cc, 0, !dbg !60728
  %i.ce = zext i1 %i.cd to i32, !dbg !60728
  %spec.select.i.i.i = add nuw nsw i32 %i.bu, %i.ce, !dbg !60728
  br label %bb.u, !dbg !60728

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.03.0.i.i.i = phi i32 [ %i.bu, %bb.s ], [ %spec.select.i.i.i, %bb.t ], !dbg !60729
  %i.cf = trunc nuw i32 %.sroa.03.0.i.i.i to i16, !dbg !60730
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit, !dbg !60731

bb.v:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i, %.split6.i.i
  %i.cg = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.ap), !dbg !60732
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit, !dbg !60732

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic5floatNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0B8_.exit: ; preds = %bb.n, %bb.o, %bb.q, %bb.r, %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i16 [ %i.cg, %bb.v ], [ %i.bd, %bb.n ], [ %spec.select7.i.i.i, %bb.q ], [ 31744, %bb.o ], [ %i.cf, %bb.u ], [ 0, %bb.r ], !dbg !60733
  %i.ch = add nuw i64 %.sroa.01.05, 1, !dbg !60734 ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !60735
  store i16 %.sroa.01.0.i.i, ptr %i.ci, align 2, !dbg !60736
  %exitcond.not = icmp eq i64 %i.ch, %2, !dbg !60656
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !60644
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl17prim_wrapping_neg0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !60737 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !60778
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !60766

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !60778
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !60778
  %min.iters.check = icmp ult i64 %2, 4, !dbg !60766
  %i.c = sub i64 %i.b, %i.a, !dbg !60766
  %diff.check = icmp ugt i64 %i.c, -32, !dbg !60766
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !60766
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !60766

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !60766
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !60766

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body, !dbg !60766

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !60779 ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !60780 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !60781
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !dbg !60781
  %wide.load7 = load <8 x i16>, ptr %i.f, align 2, !dbg !60781
  %i.g = xor <8 x i16> %wide.load, splat (i16 -32768), !dbg !60782
  %i.h = xor <8 x i16> %wide.load7, splat (i16 -32768), !dbg !60782
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !60783 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !60784
  store <8 x i16> %i.g, ptr %i.i, align 2, !dbg !60784
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !60784
  %index.next = add nuw i64 %index, 16, !dbg !60779 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !60766
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !60766, !llvm.loop !60759

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !60766
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !60766

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !60779 ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index9, !dbg !60780
  %wide.load10 = load <4 x i16>, ptr %i.l, align 2, !dbg !60781
  %i.m = xor <4 x i16> %wide.load10, splat (i16 -32768), !dbg !60782
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index9, !dbg !60783
  store <4 x i16> %i.m, ptr %i.n, align 2, !dbg !60784
  %index.next11 = add nuw i64 %index9, 4, !dbg !60779 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec8, !dbg !60766
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !60766, !llvm.loop !60760

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8, !dbg !60766
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader, !dbg !60766

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !60766          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !60766
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !60766

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !60780
  %i.q = load i16, ptr %i.p, align 2, !dbg !60781, !noundef !403
  %i.r = xor i16 %i.q, -32768, !dbg !60782
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !60779 ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !60783
  store i16 %i.r, ptr %i.t, align 2, !dbg !60784
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !60766 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !60766
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !60766, !llvm.loop !60761

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !60766
  %i.v = icmp ugt i64 %i.u, -4, !dbg !60766
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !60766

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !60785

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.ao, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !60780
  %i.x = load i16, ptr %i.w, align 2, !dbg !60781, !noundef !403
  %i.y = xor i16 %i.x, -32768, !dbg !60782
  %i.z = add nuw i64 %.sroa.01.05, 1, !dbg !60779 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !60783
  store i16 %i.y, ptr %i.aa, align 2, !dbg !60784
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z, !dbg !60780
  %i.ac = load i16, ptr %i.ab, align 2, !dbg !60781, !noundef !403
  %i.ad = xor i16 %i.ac, -32768, !dbg !60782
  %i.ae = add nuw i64 %.sroa.01.05, 2, !dbg !60779 ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.z, !dbg !60783
  store i16 %i.ad, ptr %i.af, align 2, !dbg !60784
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ae, !dbg !60780
  %i.ah = load i16, ptr %i.ag, align 2, !dbg !60781, !noundef !403
  %i.ai = xor i16 %i.ah, -32768, !dbg !60782
  %i.aj = add nuw i64 %.sroa.01.05, 3, !dbg !60779 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae, !dbg !60783
  store i16 %i.ai, ptr %i.ak, align 2, !dbg !60784
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj, !dbg !60780
  %i.am = load i16, ptr %i.al, align 2, !dbg !60781, !noundef !403
  %i.an = xor i16 %i.am, -32768, !dbg !60782
  %i.ao = add nuw i64 %.sroa.01.05, 4, !dbg !60779 ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj, !dbg !60783
  store i16 %i.an, ptr %i.ap, align 2, !dbg !60784
  %exitcond.not.3 = icmp eq i64 %i.ao, %2, !dbg !60778
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !60766, !llvm.loop !60762
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl24prim_true_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !60786 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !60823
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !60813

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !60813

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !60824

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !60825
  %i.c = load i16, ptr %i.b, align 2, !dbg !60826, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.a, i16 noundef %i.c) #25, !dbg !60827
  %i.e = add nuw i64 %.sroa.01.05, 1, !dbg !60828 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !60829
  store i16 %i.d, ptr %i.f, align 2, !dbg !60830
  %exitcond.not = icmp eq i64 %i.e, %2, !dbg !60823
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !60813
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl24prim_wrapping_add_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !60831 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !60868
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !60858

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !60858

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !60869

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !60870
  %i.c = load i16, ptr %i.b, align 2, !dbg !60871, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %i.c, i16 noundef %i.a) #25, !dbg !60872
  %i.e = add nuw i64 %.sroa.01.05, 1, !dbg !60873 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !60874
  store i16 %i.d, ptr %i.f, align 2, !dbg !60875
  %exitcond.not = icmp eq i64 %i.e, %2, !dbg !60868
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !60858
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !60876 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !60929
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !60916

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  %i.b = load i16, ptr %4, align 2, !noundef !403
  br label %bb.b, !dbg !60916

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !60930

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.06 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.06, !dbg !60931
  %i.d = load i16, ptr %i.c, align 2, !dbg !60932, !noundef !403 ; 2 uses
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.d, i16 noundef %i.b) #25, !dbg !60933
  %i.f = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.e) #25, !dbg !60934
  %i.g = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.a, i16 noundef %i.f) #25, !dbg !60935
  %i.h = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21subtract_f16_fallback(i16 noundef %i.d, i16 noundef %i.g) #25, !dbg !60936
  %i.i = add nuw i64 %.sroa.01.06, 1, !dbg !60937 ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.06, !dbg !60938
  store i16 %i.h, ptr %i.j, align 2, !dbg !60939
  %exitcond.not = icmp eq i64 %i.i, %2, !dbg !60929
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !60916
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !60940 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !60977
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !60967

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !60967

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !60978

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !60979
  %i.c = load i16, ptr %i.b, align 2, !dbg !60980, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.c, i16 noundef %i.a) #25, !dbg !60981
  %i.e = add nuw i64 %.sroa.01.05, 1, !dbg !60982 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !60983
  store i16 %i.d, ptr %i.f, align 2, !dbg !60984
  %exitcond.not = icmp eq i64 %i.e, %2, !dbg !60977
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !60967
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !60985 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61040
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61028

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403 ; 2 uses
  br label %bb.b, !dbg !61028

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !61041

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !61042
  %i.c = load i16, ptr %i.b, align 2, !dbg !61043, !noundef !403 ; 2 uses
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.a, i16 noundef %i.c) #25, !dbg !61044
  %i.e = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.d) #25, !dbg !61045
  %i.f = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.c, i16 noundef %i.e) #25, !dbg !61046
  %i.g = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21subtract_f16_fallback(i16 noundef %i.a, i16 noundef %i.f) #25, !dbg !61047
  %i.h = add nuw i64 %.sroa.01.05, 1, !dbg !61048 ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !61049
  store i16 %i.g, ptr %i.i, align 2, !dbg !61050
  %exitcond.not = icmp eq i64 %i.h, %2, !dbg !61040
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !61028
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl28prim_wrapping_sub_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !61051 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61088
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61078

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !61078

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !61089

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !61090
  %i.c = load i16, ptr %i.b, align 2, !dbg !61091, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21subtract_f16_fallback(i16 noundef %i.a, i16 noundef %i.c) #25, !dbg !61092
  %i.e = add nuw i64 %.sroa.01.05, 1, !dbg !61093 ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !61094
  store i16 %i.d, ptr %i.f, align 2, !dbg !61095
  %exitcond.not = icmp eq i64 %i.e, %2, !dbg !61088
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !61078
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !61096 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61137
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61127

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !61127

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !61138

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !61139
  %i.c = load i16, ptr %i.b, align 2, !dbg !61140, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.c, i16 noundef %i.a) #25, !dbg !61141
  %i.e = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.d) #25, !dbg !61142
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !61143 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !61144
  store i16 %i.e, ptr %i.g, align 2, !dbg !61145
  %exitcond.not = icmp eq i64 %i.f, %2, !dbg !61137
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !61127
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !61146 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61187
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61177

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !61177

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !61188

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !61189
  %i.c = load i16, ptr %i.b, align 2, !dbg !61190, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.c, i16 noundef %i.a) #25, !dbg !61191
  %i.e = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5trunc(i16 noundef %i.d) #25, !dbg !61192
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !61193 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !61194
  store i16 %i.e, ptr %i.g, align 2, !dbg !61195
  %exitcond.not = icmp eq i64 %i.f, %2, !dbg !61187
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !61177
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !61196 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61237
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61227

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !61227

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !61238

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !61239
  %i.c = load i16, ptr %i.b, align 2, !dbg !61240, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.a, i16 noundef %i.c) #25, !dbg !61241
  %i.e = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.d) #25, !dbg !61242
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !61243 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !61244
  store i16 %i.e, ptr %i.g, align 2, !dbg !61245
  %exitcond.not = icmp eq i64 %i.f, %2, !dbg !61237
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !61227
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_NCNvXNtNtB4_10arithmetic5floatB12_NtB1W_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !61246 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61287
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61277

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  br label %bb.b, !dbg !61277

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !61288

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !61289
  %i.c = load i16, ptr %i.b, align 2, !dbg !61290, !noundef !403
  %i.d = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.a, i16 noundef %i.c) #25, !dbg !61291
  %i.e = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5trunc(i16 noundef %i.d) #25, !dbg !61292
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !61293 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !61294
  store i16 %i.e, ptr %i.g, align 2, !dbg !61295
  %exitcond.not = icmp eq i64 %i.f, %2, !dbg !61287
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !61277
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61296 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61332
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61322

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61332
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61332
  %min.iters.check = icmp ult i64 %2, 4, !dbg !61322
  %i.c = sub i64 %i.b, %i.a, !dbg !61322
  %diff.check = icmp ugt i64 %i.c, -32, !dbg !61322
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61322
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !61322

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !61322
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !61322

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body, !dbg !61322

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61333 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61334 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !61335
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !dbg !61335
  %wide.load7 = load <16 x i8>, ptr %i.f, align 1, !dbg !61335
  %i.g = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load, i1 false), !dbg !61336
  %i.h = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load7, i1 false), !dbg !61336
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61337 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !61338
  store <16 x i8> %i.g, ptr %i.i, align 1, !dbg !61338
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !61338
  %index.next = add nuw i64 %index, 32, !dbg !61333 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !61322
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !61322, !llvm.loop !61316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61322
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61322

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !61333 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index9, !dbg !61334
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !61335
  %i.m = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load10, i1 false), !dbg !61336
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index9, !dbg !61337
  store <4 x i8> %i.m, ptr %i.n, align 1, !dbg !61338
  %index.next11 = add nuw i64 %index9, 4, !dbg !61333 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec8, !dbg !61322
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61322, !llvm.loop !61317

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8, !dbg !61322
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader, !dbg !61322

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !61322
  %xtraiter = and i64 %2, 1, !dbg !61322
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61322
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !61322

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !61334
  %i.q = load i8, ptr %i.p, align 1, !dbg !61335, !noundef !403
  %.sroa.0.0.i.prol = tail call noundef range(i8 0, -127) i8 @llvm.abs.i8(i8 %i.q, i1 false), !dbg !61336
  %i.r = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !61333
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !61337
  store i8 %.sroa.0.0.i.prol, ptr %i.s, align 1, !dbg !61338
  br label %.lr.ph.prol.loopexit, !dbg !61322

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.t = icmp eq i64 %2, %.neg, !dbg !61322
  br i1 %i.t, label %._crit_edge, label %.lr.ph, !dbg !61322

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61339

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.aa, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61334
  %i.v = load i8, ptr %i.u, align 1, !dbg !61335, !noundef !403
  %.sroa.0.0.i = tail call noundef range(i8 0, -127) i8 @llvm.abs.i8(i8 %i.v, i1 false), !dbg !61336
  %i.w = add nuw i64 %.sroa.01.05, 1, !dbg !61333 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61337
  store i8 %.sroa.0.0.i, ptr %i.x, align 1, !dbg !61338
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.w, !dbg !61334
  %i.z = load i8, ptr %i.y, align 1, !dbg !61335, !noundef !403
  %.sroa.0.0.i.1 = tail call noundef range(i8 0, -127) i8 @llvm.abs.i8(i8 %i.z, i1 false), !dbg !61336
  %i.aa = add nuw i64 %.sroa.01.05, 2, !dbg !61333 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.w, !dbg !61337
  store i8 %.sroa.0.0.i.1, ptr %i.ab, align 1, !dbg !61338
  %exitcond.not.1 = icmp eq i64 %i.aa, %2, !dbg !61332
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !61322, !llvm.loop !61318
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl17prim_wrapping_neg0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61340 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61379
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61369

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61379
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61379
  %min.iters.check = icmp ult i64 %2, 4, !dbg !61369
  %i.c = sub i64 %i.b, %i.a, !dbg !61369
  %diff.check = icmp ugt i64 %i.c, -32, !dbg !61369
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61369
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !61369

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !61369
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !61369

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body, !dbg !61369

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61380 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61381 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !61382
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !dbg !61382
  %wide.load7 = load <16 x i8>, ptr %i.f, align 1, !dbg !61382
  %i.g = sub <16 x i8> zeroinitializer, %wide.load, !dbg !61383
  %i.h = sub <16 x i8> zeroinitializer, %wide.load7, !dbg !61383
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61384 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !61385
  store <16 x i8> %i.g, ptr %i.i, align 1, !dbg !61385
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !61385
  %index.next = add nuw i64 %index, 32, !dbg !61380 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !61369
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !61369, !llvm.loop !61362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61369
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61369

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !61380 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index9, !dbg !61381
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !61382
  %i.m = sub <4 x i8> zeroinitializer, %wide.load10, !dbg !61383
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index9, !dbg !61384
  store <4 x i8> %i.m, ptr %i.n, align 1, !dbg !61385
  %index.next11 = add nuw i64 %index9, 4, !dbg !61380 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec8, !dbg !61369
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61369, !llvm.loop !61363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8, !dbg !61369
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader, !dbg !61369

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !61369          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61369
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !61369

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !61381
  %i.q = load i8, ptr %i.p, align 1, !dbg !61382, !noundef !403
  %i.r = sub i8 0, %i.q, !dbg !61383
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !61380 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !61384
  store i8 %i.r, ptr %i.t, align 1, !dbg !61385
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61369 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61369
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !61369, !llvm.loop !61364

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !61369
  %i.v = icmp ugt i64 %i.u, -4, !dbg !61369
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !61369

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61386

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.ao, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61381
  %i.x = load i8, ptr %i.w, align 1, !dbg !61382, !noundef !403
  %i.y = sub i8 0, %i.x, !dbg !61383
  %i.z = add nuw i64 %.sroa.01.05, 1, !dbg !61380 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61384
  store i8 %i.y, ptr %i.aa, align 1, !dbg !61385
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.z, !dbg !61381
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !61382, !noundef !403
  %i.ad = sub i8 0, %i.ac, !dbg !61383
  %i.ae = add nuw i64 %.sroa.01.05, 2, !dbg !61380 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.z, !dbg !61384
  store i8 %i.ad, ptr %i.af, align 1, !dbg !61385
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae, !dbg !61381
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !61382, !noundef !403
  %i.ai = sub i8 0, %i.ah, !dbg !61383
  %i.aj = add nuw i64 %.sroa.01.05, 3, !dbg !61380 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae, !dbg !61384
  store i8 %i.ai, ptr %i.ak, align 1, !dbg !61385
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj, !dbg !61381
  %i.am = load i8, ptr %i.al, align 1, !dbg !61382, !noundef !403
  %i.an = sub i8 0, %i.am, !dbg !61383
  %i.ao = add nuw i64 %.sroa.01.05, 4, !dbg !61380 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj, !dbg !61384
  store i8 %i.an, ptr %i.ap, align 1, !dbg !61385
  %exitcond.not.3 = icmp eq i64 %i.ao, %2, !dbg !61379
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !61369, !llvm.loop !61365
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_add_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61387 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61424
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61414

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61424
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61424
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !61414
  %i.d = sub i64 %i.b, %i.a, !dbg !61414
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !61414
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61414
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61414

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !61414
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !61414

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61414

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61425 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61426 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !61427
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !61427
  %wide.load7 = load <16 x i8>, ptr %i.g, align 1, !dbg !61427
  %i.h = add <16 x i8> %broadcast.splat, %wide.load, !dbg !61428
  %i.i = add <16 x i8> %broadcast.splat, %wide.load7, !dbg !61428
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61429 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !61430
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !61430
  store <16 x i8> %i.i, ptr %i.k, align 1, !dbg !61430
  %index.next = add nuw i64 %index, 32, !dbg !61425 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !61414
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !61414, !llvm.loop !61407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61414
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61414

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i8> %broadcast.splatinsert9, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !61425 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !61426
  %wide.load12 = load <4 x i8>, ptr %i.m, align 1, !dbg !61427
  %i.n = add <4 x i8> %broadcast.splat10, %wide.load12, !dbg !61428
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !61429
  store <4 x i8> %i.n, ptr %i.o, align 1, !dbg !61430
  %index.next13 = add nuw i64 %index11, 4, !dbg !61425 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !61414
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61414, !llvm.loop !61408

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !61414
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !61414

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !61414          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61414
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61414

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !61426
  %i.r = load i8, ptr %i.q, align 1, !dbg !61427, !noundef !403
  %i.s = add i8 %i.c, %i.r, !dbg !61428
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !61425 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !61429
  store i8 %i.s, ptr %i.u, align 1, !dbg !61430
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61414 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61414
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61414, !llvm.loop !61409

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !61414
  %i.w = icmp ugt i64 %i.v, -4, !dbg !61414
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61414

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61431

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61426
  %i.y = load i8, ptr %i.x, align 1, !dbg !61427, !noundef !403
  %i.z = add i8 %i.c, %i.y, !dbg !61428
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !61425 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61429
  store i8 %i.z, ptr %i.ab, align 1, !dbg !61430
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !61426
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !61427, !noundef !403
  %i.ae = add i8 %i.c, %i.ad, !dbg !61428
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !61425 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !61429
  store i8 %i.ae, ptr %i.ag, align 1, !dbg !61430
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af, !dbg !61426
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !61427, !noundef !403
  %i.aj = add i8 %i.c, %i.ai, !dbg !61428
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !61425 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.af, !dbg !61429
  store i8 %i.aj, ptr %i.al, align 1, !dbg !61430
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak, !dbg !61426
  %i.an = load i8, ptr %i.am, align 1, !dbg !61427, !noundef !403
  %i.ao = add i8 %i.c, %i.an, !dbg !61428
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !61425 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak, !dbg !61429
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !61430
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !61424
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61414, !llvm.loop !61410
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !61432 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61478
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61467

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !alias.scope !61468, !nonnull !403, !align !558, !noundef !403 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !61468
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !403
  br label %bb.b, !dbg !61467

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit, %bb.a
  ret void, !dbg !61479

bb.b:                                             ; preds = %.lr.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.z, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61480
  %i.f = load i8, ptr %i.e, align 1, !dbg !61481, !noundef !403 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61468), !dbg !61482
  %.sroa.05.0.i = tail call i8 @llvm.abs.i8(i8 %i.f, i1 false), !dbg !61483 ; 2 uses
  %i.g = load i16, ptr %i.a, align 2, !dbg !61484, !noalias !61468, !noundef !403 ; 2 uses
  %i.h = load i8, ptr %i.b, align 2, !dbg !61484, !noalias !61468, !noundef !403 ; 2 uses
  %i.i = icmp eq i16 %i.g, 0, !dbg !61485
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !61485

bb.c:                                             ; preds = %bb.b
  %i.j = add i8 %i.h, -1, !dbg !61486
  %i.k = and i8 %i.j, %.sroa.05.0.i, !dbg !61487
  br label %bb.e, !dbg !61488

bb.d:                                             ; preds = %bb.b
  %i.l = zext i8 %.sroa.05.0.i to i16, !dbg !61489
  %i.m = mul i16 %i.g, %i.l, !dbg !61490
  %i.n = zext i16 %i.m to i32, !dbg !61491
  %i.o = zext i8 %i.h to i32, !dbg !61492
  %i.p = mul nuw nsw i32 %i.n, %i.o, !dbg !61493
  %i.q = lshr i32 %i.p, 16, !dbg !61493
  %i.r = trunc nuw i32 %i.q to i8, !dbg !61494
  br label %bb.e, !dbg !61488

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.k, %bb.c ], [ %i.r, %bb.d ], !dbg !61495 ; 3 uses
  %i.s = icmp eq i8 %.sroa.01.0.i, 0, !dbg !61496
  %.pre7.i = load i8, ptr %.pre.i, align 1, !dbg !61497, !noalias !61468 ; 2 uses
  br i1 %i.s, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit, label %bb.f, !dbg !61496

bb.f:                                             ; preds = %bb.e
  %i.t = xor i8 %.pre7.i, %i.f, !dbg !61498
  %i.u = icmp slt i8 %i.t, 0, !dbg !61498
  br i1 %i.u, label %bb.g, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit, !dbg !61498

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.d, align 1, !dbg !61499, !noalias !61468, !noundef !403
  %i.w = sub i8 %i.v, %.sroa.01.0.i, !dbg !61500
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit, !dbg !61501

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.f ], [ %i.w, %bb.g ], [ 0, %bb.e ], !dbg !61502 ; 2 uses
  %i.x = icmp slt i8 %.pre7.i, 0, !dbg !61503
  %i.y = sub i8 0, %.sroa.01.1.i, !dbg !61503
  %.sroa.0.0.i = select i1 %i.x, i8 %i.y, i8 %.sroa.01.1.i, !dbg !61503
  %i.z = add nuw i64 %.sroa.01.05, 1, !dbg !61504 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61505
  store i8 %.sroa.0.0.i, ptr %i.aa, align 1, !dbg !61506
  %exitcond.not = icmp eq i64 %i.z, %2, !dbg !61478
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !61467
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61507 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61541
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61532

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61541
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61541
  %i.c = load i32, ptr %3, align 4, !noundef !403
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 7                           ; 7 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !61532
  %i.f = sub i64 %i.b, %i.a, !dbg !61532
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !61532
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61532
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61532

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !61532
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !61532

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61532

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61542 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61543 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !61544
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !dbg !61544
  %wide.load7 = load <16 x i8>, ptr %i.i, align 1, !dbg !61544
  %i.j = shl <16 x i8> %wide.load, %broadcast.splat, !dbg !61545
  %i.k = shl <16 x i8> %wide.load7, %broadcast.splat, !dbg !61545
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61546 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !61547
  store <16 x i8> %i.j, ptr %i.l, align 1, !dbg !61547
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !61547
  %index.next = add nuw i64 %index, 32, !dbg !61542 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !61532
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !61532, !llvm.loop !61525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61532
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61532

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <8 x i8> poison, i8 %i.e, i64 0
  %broadcast.splat10 = shufflevector <8 x i8> %broadcast.splatinsert9, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !61542 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !61543
  %wide.load12 = load <8 x i8>, ptr %i.o, align 1, !dbg !61544
  %i.p = shl <8 x i8> %wide.load12, %broadcast.splat10, !dbg !61545
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !61546
  store <8 x i8> %i.p, ptr %i.q, align 1, !dbg !61547
  %index.next13 = add nuw i64 %index11, 8, !dbg !61542 ; 2 uses
  %i.r = icmp eq i64 %index.next13, %n.vec8, !dbg !61532
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61532, !llvm.loop !61526

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !61532
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !61532

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !61532          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61532
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61532

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.v, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !61543
  %i.t = load i8, ptr %i.s, align 1, !dbg !61544, !noundef !403
  %i.u = shl i8 %i.t, %i.e, !dbg !61545
  %i.v = add nuw i64 %.sroa.01.05.prol, 1, !dbg !61542 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !61546
  store i8 %i.u, ptr %i.w, align 1, !dbg !61547
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61532 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61532
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61532, !llvm.loop !61527

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.v, %vec.epilog.scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.05.ph, %2, !dbg !61532
  %i.y = icmp ugt i64 %i.x, -4, !dbg !61532
  br i1 %i.y, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61532

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61548

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61543
  %i.aa = load i8, ptr %i.z, align 1, !dbg !61544, !noundef !403
  %i.ab = shl i8 %i.aa, %i.e, !dbg !61545
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !61542 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61546
  store i8 %i.ab, ptr %i.ad, align 1, !dbg !61547
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac, !dbg !61543
  %i.af = load i8, ptr %i.ae, align 1, !dbg !61544, !noundef !403
  %i.ag = shl i8 %i.af, %i.e, !dbg !61545
  %i.ah = add nuw i64 %.sroa.01.05, 2, !dbg !61542 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac, !dbg !61546
  store i8 %i.ag, ptr %i.ai, align 1, !dbg !61547
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah, !dbg !61543
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !61544, !noundef !403
  %i.al = shl i8 %i.ak, %i.e, !dbg !61545
  %i.am = add nuw i64 %.sroa.01.05, 3, !dbg !61542 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah, !dbg !61546
  store i8 %i.al, ptr %i.an, align 1, !dbg !61547
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.am, !dbg !61543
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !61544, !noundef !403
  %i.aq = shl i8 %i.ap, %i.e, !dbg !61545
  %i.ar = add nuw i64 %.sroa.01.05, 4, !dbg !61542 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.am, !dbg !61546
  store i8 %i.aq, ptr %i.as, align 1, !dbg !61547
  %exitcond.not.3 = icmp eq i64 %i.ar, %2, !dbg !61541
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61532, !llvm.loop !61528
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalars0_0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61549 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61585
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61576

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61585
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61585
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 7 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !61576
  %i.d = sub i64 %i.b, %i.a, !dbg !61576
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !61576
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61576
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61576

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !61576
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !61576

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61576

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61586 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61587 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !61588
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !61588
  %wide.load7 = load <16 x i8>, ptr %i.g, align 1, !dbg !61588
  %i.h = mul <16 x i8> %broadcast.splat, %wide.load, !dbg !61589
  %i.i = mul <16 x i8> %broadcast.splat, %wide.load7, !dbg !61589
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61590 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !61591
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !61591
  store <16 x i8> %i.i, ptr %i.k, align 1, !dbg !61591
  %index.next = add nuw i64 %index, 32, !dbg !61586 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !61576
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !61576, !llvm.loop !61569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61576
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61576

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <8 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat10 = shufflevector <8 x i8> %broadcast.splatinsert9, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !61586 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !61587
  %wide.load12 = load <8 x i8>, ptr %i.m, align 1, !dbg !61588
  %i.n = mul <8 x i8> %broadcast.splat10, %wide.load12, !dbg !61589
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !61590
  store <8 x i8> %i.n, ptr %i.o, align 1, !dbg !61591
  %index.next13 = add nuw i64 %index11, 8, !dbg !61586 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !61576
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61576, !llvm.loop !61570

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !61576
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !61576

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !61576          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61576
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61576

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !61587
  %i.r = load i8, ptr %i.q, align 1, !dbg !61588, !noundef !403
  %i.s = mul i8 %i.c, %i.r, !dbg !61589
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !61586 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !61590
  store i8 %i.s, ptr %i.u, align 1, !dbg !61591
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61576 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61576
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61576, !llvm.loop !61571

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !61576
  %i.w = icmp ugt i64 %i.v, -4, !dbg !61576
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61576

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61592

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61587
  %i.y = load i8, ptr %i.x, align 1, !dbg !61588, !noundef !403
  %i.z = mul i8 %i.c, %i.y, !dbg !61589
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !61586 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61590
  store i8 %i.z, ptr %i.ab, align 1, !dbg !61591
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !61587
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !61588, !noundef !403
  %i.ae = mul i8 %i.c, %i.ad, !dbg !61589
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !61586 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !61590
  store i8 %i.ae, ptr %i.ag, align 1, !dbg !61591
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af, !dbg !61587
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !61588, !noundef !403
  %i.aj = mul i8 %i.c, %i.ai, !dbg !61589
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !61586 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.af, !dbg !61590
  store i8 %i.aj, ptr %i.al, align 1, !dbg !61591
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak, !dbg !61587
  %i.an = load i8, ptr %i.am, align 1, !dbg !61588, !noundef !403
  %i.ao = mul i8 %i.c, %i.an, !dbg !61589
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !61586 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak, !dbg !61590
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !61591
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !61585
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61576, !llvm.loop !61572
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalars_0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61593 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61631
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61622

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61631
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61631
  %i.c = load i32, ptr %3, align 4, !noundef !403
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 7                           ; 7 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !61622
  %i.f = sub i64 %i.b, %i.a, !dbg !61622
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !61622
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61622
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61622

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !61622
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !61622

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61622

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61632 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61633 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !61634
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !dbg !61634
  %wide.load7 = load <16 x i8>, ptr %i.i, align 1, !dbg !61634
  %i.j = shl <16 x i8> %wide.load, %broadcast.splat, !dbg !61635
  %i.k = shl <16 x i8> %wide.load7, %broadcast.splat, !dbg !61635
  %i.l = sub <16 x i8> zeroinitializer, %i.j, !dbg !61636
  %i.m = sub <16 x i8> zeroinitializer, %i.k, !dbg !61636
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61637 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !61638
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !61638
  store <16 x i8> %i.m, ptr %i.o, align 1, !dbg !61638
  %index.next = add nuw i64 %index, 32, !dbg !61632 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !61622
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !61622, !llvm.loop !61615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61622
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61622

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <8 x i8> poison, i8 %i.e, i64 0
  %broadcast.splat10 = shufflevector <8 x i8> %broadcast.splatinsert9, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !61632 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !61633
  %wide.load12 = load <8 x i8>, ptr %i.q, align 1, !dbg !61634
  %i.r = shl <8 x i8> %wide.load12, %broadcast.splat10, !dbg !61635
  %i.s = sub <8 x i8> zeroinitializer, %i.r, !dbg !61636
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !61637
  store <8 x i8> %i.s, ptr %i.t, align 1, !dbg !61638
  %index.next13 = add nuw i64 %index11, 8, !dbg !61632 ; 2 uses
  %i.u = icmp eq i64 %index.next13, %n.vec8, !dbg !61622
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61622, !llvm.loop !61616

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !61622
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !61622

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !61622          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61622
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61622

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !61633
  %i.w = load i8, ptr %i.v, align 1, !dbg !61634, !noundef !403
  %i.x = shl i8 %i.w, %i.e, !dbg !61635
  %i.y = sub i8 0, %i.x, !dbg !61636
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !61632 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !61637
  store i8 %i.y, ptr %i.aa, align 1, !dbg !61638
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61622 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61622
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61622, !llvm.loop !61617

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %2, !dbg !61622
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !61622
  br i1 %i.ac, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61622

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61639

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.az, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61633
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !61634, !noundef !403
  %i.af = shl i8 %i.ae, %i.e, !dbg !61635
  %i.ag = sub i8 0, %i.af, !dbg !61636
  %i.ah = add nuw i64 %.sroa.01.05, 1, !dbg !61632 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61637
  store i8 %i.ag, ptr %i.ai, align 1, !dbg !61638
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah, !dbg !61633
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !61634, !noundef !403
  %i.al = shl i8 %i.ak, %i.e, !dbg !61635
  %i.am = sub i8 0, %i.al, !dbg !61636
  %i.an = add nuw i64 %.sroa.01.05, 2, !dbg !61632 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah, !dbg !61637
  store i8 %i.am, ptr %i.ao, align 1, !dbg !61638
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.an, !dbg !61633
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !61634, !noundef !403
  %i.ar = shl i8 %i.aq, %i.e, !dbg !61635
  %i.as = sub i8 0, %i.ar, !dbg !61636
  %i.at = add nuw i64 %.sroa.01.05, 3, !dbg !61632 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.an, !dbg !61637
  store i8 %i.as, ptr %i.au, align 1, !dbg !61638
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.at, !dbg !61633
  %i.aw = load i8, ptr %i.av, align 1, !dbg !61634, !noundef !403
  %i.ax = shl i8 %i.aw, %i.e, !dbg !61635
  %i.ay = sub i8 0, %i.ax, !dbg !61636
  %i.az = add nuw i64 %.sroa.01.05, 4, !dbg !61632 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.at, !dbg !61637
  store i8 %i.ay, ptr %i.ba, align 1, !dbg !61638
  %exitcond.not.3 = icmp eq i64 %i.az, %2, !dbg !61631
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61622, !llvm.loop !61618
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61640 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61677
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61667

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61677
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61677
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 4 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !61667
  %i.d = sub i64 %i.b, %i.a, !dbg !61667
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !61667
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61667
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61667

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %2, 16, !dbg !61667
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !61667

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 8
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61667

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61678 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61679
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !61680 ; 4 uses
  %i.g = add <16 x i8> %wide.load, splat (i8 -1), !dbg !61681
  %i.h = icmp ult <16 x i8> %i.g, splat (i8 -2), !dbg !61681 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.masked.srem.v16i8(<16 x i8> %broadcast.splat, <16 x i8> %wide.load, <16 x i1> %i.h), !dbg !61682 ; 2 uses
  %i.j = icmp ne <16 x i8> %i.i, zeroinitializer, !dbg !61683
  %i.k = select <16 x i1> %i.h, <16 x i1> %i.j, <16 x i1> zeroinitializer, !dbg !61683
  %i.l = xor <16 x i8> %broadcast.splat, %wide.load, !dbg !61684
  %i.m = icmp slt <16 x i8> %i.l, zeroinitializer, !dbg !61684
  %i.n = select <16 x i1> %i.m, <16 x i8> %wide.load, <16 x i8> zeroinitializer, !dbg !61684
  %i.o = add <16 x i8> %i.i, %i.n, !dbg !61684
  %predphi = select <16 x i1> %i.k, <16 x i8> %i.o, <16 x i8> zeroinitializer, !dbg !61685
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61686
  store <16 x i8> %predphi, ptr %i.p, align 1, !dbg !61687
  %index.next = add nuw i64 %index, 16, !dbg !61678 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !61667
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !61667, !llvm.loop !61661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61667
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61667

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert10 = insertelement <8 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat11 = shufflevector <8 x i8> %broadcast.splatinsert10, <8 x i8> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !61678 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !61679
  %wide.load13 = load <8 x i8>, ptr %i.r, align 1, !dbg !61680 ; 4 uses
  %i.s = add <8 x i8> %wide.load13, splat (i8 -1), !dbg !61681
  %i.t = icmp ult <8 x i8> %i.s, splat (i8 -2), !dbg !61681 ; 2 uses
  %i.u = tail call <8 x i8> @llvm.masked.srem.v8i8(<8 x i8> %broadcast.splat11, <8 x i8> %wide.load13, <8 x i1> %i.t), !dbg !61682 ; 2 uses
  %i.v = icmp ne <8 x i8> %i.u, zeroinitializer, !dbg !61683
  %i.w = select <8 x i1> %i.t, <8 x i1> %i.v, <8 x i1> zeroinitializer, !dbg !61683
  %i.x = xor <8 x i8> %broadcast.splat11, %wide.load13, !dbg !61684
  %i.y = icmp slt <8 x i8> %i.x, zeroinitializer, !dbg !61684
  %i.z = select <8 x i1> %i.y, <8 x i8> %wide.load13, <8 x i8> zeroinitializer, !dbg !61684
  %i.aa = add <8 x i8> %i.u, %i.z, !dbg !61684
  %predphi14 = select <8 x i1> %i.w, <8 x i8> %i.aa, <8 x i8> zeroinitializer, !dbg !61685
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !61686
  store <8 x i8> %predphi14, ptr %i.ab, align 1, !dbg !61687
  %index.next15 = add nuw i64 %index12, 8, !dbg !61678 ; 2 uses
  %i.ac = icmp eq i64 %index.next15, %n.vec9, !dbg !61667
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61667, !llvm.loop !61662

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %2, %n.vec9, !dbg !61667
  br i1 %cmp.n16, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !61667

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !61681

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61688

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.aj, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61679
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !61680, !noundef !403 ; 4 uses
  %.off.i = add i8 %i.ae, -1, !dbg !61681
  %switch.i = icmp ult i8 %.off.i, -2, !dbg !61681
  br i1 %switch.i, label %bb.b, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit, !dbg !61681, !prof !568

bb.b:                                             ; preds = %vec.epilog.scalar.ph
  %i.af = srem i8 %i.c, %i.ae, !dbg !61682        ; 2 uses
  %.not.i.i = icmp eq i8 %i.af, 0, !dbg !61683
  br i1 %.not.i.i, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit, label %bb.c, !dbg !61683

bb.c:                                             ; preds = %bb.b
  %i.ag = xor i8 %i.c, %i.ae, !dbg !61684
  %i.ah = icmp slt i8 %i.ag, 0, !dbg !61684
  %i.ai = select i1 %i.ah, i8 %i.ae, i8 0, !dbg !61684
  %spec.select.i = add i8 %i.af, %i.ai, !dbg !61684
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit, !dbg !61684

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit: ; preds = %vec.epilog.scalar.ph, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi i8 [ %spec.select.i, %bb.c ], [ 0, %bb.b ], [ 0, %vec.epilog.scalar.ph ], !dbg !61685
  %i.aj = add nuw i64 %.sroa.01.05, 1, !dbg !61678 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61686
  store i8 %.sroa.3.0.i.i, ptr %i.ak, align 1, !dbg !61687
  %exitcond.not = icmp eq i64 %i.aj, %2, !dbg !61677
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61667, !llvm.loop !61663
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl28prim_wrapping_sub_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61689 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61726
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !61716

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61726
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61726
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !61716
  %i.d = sub i64 %i.b, %i.a, !dbg !61716
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !61716
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61716
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !61716

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !61716
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !61716

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !61716

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61727 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61728 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !61729
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !61729
  %wide.load7 = load <16 x i8>, ptr %i.g, align 1, !dbg !61729
  %i.h = sub <16 x i8> %broadcast.splat, %wide.load, !dbg !61730
  %i.i = sub <16 x i8> %broadcast.splat, %wide.load7, !dbg !61730
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61731 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !61732
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !61732
  store <16 x i8> %i.i, ptr %i.k, align 1, !dbg !61732
  %index.next = add nuw i64 %index, 32, !dbg !61727 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !61716
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !61716, !llvm.loop !61709

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61716
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61716

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i8> %broadcast.splatinsert9, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !61727 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !61728
  %wide.load12 = load <4 x i8>, ptr %i.m, align 1, !dbg !61729
  %i.n = sub <4 x i8> %broadcast.splat10, %wide.load12, !dbg !61730
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !61731
  store <4 x i8> %i.n, ptr %i.o, align 1, !dbg !61732
  %index.next13 = add nuw i64 %index11, 4, !dbg !61727 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !61716
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61716, !llvm.loop !61710

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !61716
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !61716

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !61716          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61716
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61716

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !61728
  %i.r = load i8, ptr %i.q, align 1, !dbg !61729, !noundef !403
  %i.s = sub i8 %i.c, %i.r, !dbg !61730
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !61727 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !61731
  store i8 %i.s, ptr %i.u, align 1, !dbg !61732
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !61716 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !61716
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !61716, !llvm.loop !61711

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !61716
  %i.w = icmp ugt i64 %i.v, -4, !dbg !61716
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61716

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !61733

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61728
  %i.y = load i8, ptr %i.x, align 1, !dbg !61729, !noundef !403
  %i.z = sub i8 %i.c, %i.y, !dbg !61730
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !61727 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61731
  store i8 %i.z, ptr %i.ab, align 1, !dbg !61732
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !61728
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !61729, !noundef !403
  %i.ae = sub i8 %i.c, %i.ad, !dbg !61730
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !61727 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !61731
  store i8 %i.ae, ptr %i.ag, align 1, !dbg !61732
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af, !dbg !61728
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !61729, !noundef !403
  %i.aj = sub i8 %i.c, %i.ai, !dbg !61730
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !61727 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.af, !dbg !61731
  store i8 %i.aj, ptr %i.al, align 1, !dbg !61732
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak, !dbg !61728
  %i.an = load i8, ptr %i.am, align 1, !dbg !61729, !noundef !403
  %i.ao = sub i8 %i.c, %i.an, !dbg !61730
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !61727 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak, !dbg !61731
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !61732
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !61726
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !61716, !llvm.loop !61712
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %3, ptr noalias noundef readonly captures(none) dereferenceable(1) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61734 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !61791     ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64, !dbg !61791     ; 2 uses
  %.not = icmp eq i64 %2, 0, !dbg !61791
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61780

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i8, ptr %i.d, align 2, !noundef !403 ; 3 uses
  %i.f = icmp eq i16 %i.c, 0
  %i.g = lshr i16 %i.c, 8                         ; 3 uses
  %i.h = and i16 %i.c, 255                        ; 3 uses
  %i.i = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.e, i1 false)
  %i.j = zext nneg i8 %i.i to i16                 ; 3 uses
  %i.k = add i8 %i.e, -1                          ; 3 uses
  %i.l = load i8, ptr %4, align 1, !noundef !403  ; 6 uses
  br i1 %i.f, label %iter.check56, label %iter.check

iter.check56:                                     ; preds = %.lr.ph
  %min.iters.check38 = icmp ult i64 %2, 4, !dbg !61780
  %i.m = sub i64 %i.a, %i.b, !dbg !61780
  %diff.check37 = icmp ugt i64 %i.m, -16, !dbg !61780
  %or.cond = or i1 %min.iters.check38, %diff.check37, !dbg !61780
  br i1 %or.cond, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, label %vector.main.loop.iter.check39, !dbg !61780

vector.main.loop.iter.check39:                    ; preds = %iter.check56
  %min.iters.check40 = icmp ult i64 %2, 16, !dbg !61780
  br i1 %min.iters.check40, label %vec.epilog.ph60, label %vector.ph41, !dbg !61780

vector.ph41:                                      ; preds = %vector.main.loop.iter.check39
  %i.n = and i64 %2, 12
  %n.vec42 = and i64 %2, -16                      ; 4 uses
  %broadcast.splatinsert43 = insertelement <16 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat44 = shufflevector <16 x i16> %broadcast.splatinsert43, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %broadcast.splat46 = shufflevector <16 x i8> %broadcast.splatinsert45, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %broadcast.splat48 = shufflevector <16 x i8> %broadcast.splatinsert47, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body49, !dbg !61780

vector.body49:                                    ; preds = %vector.ph41, %vector.body49
  %index50 = phi i64 [ 0, %vector.ph41 ], [ %index.next52, %vector.body49 ], !dbg !61792 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index50, !dbg !61793
  %wide.load51 = load <16 x i8>, ptr %i.o, align 1, !dbg !61794 ; 2 uses
  %i.p = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load51, i1 false), !dbg !61795 ; 2 uses
  %i.q = zext <16 x i8> %i.p to <16 x i16>, !dbg !61796
  %i.r = lshr <16 x i16> %i.q, %broadcast.splat44, !dbg !61797
  %i.s = and <16 x i8> %broadcast.splat46, %i.p, !dbg !61798
  %i.t = trunc nuw <16 x i16> %i.r to <16 x i8>, !dbg !61796 ; 2 uses
  %i.u = xor <16 x i8> %broadcast.splat48, %wide.load51, !dbg !61799
  %i.v = icmp slt <16 x i8> %i.u, zeroinitializer, !dbg !61799
  %i.w = icmp ne <16 x i8> %i.s, zeroinitializer, !dbg !61799
  %i.x = sext <16 x i1> %i.w to <16 x i8>, !dbg !61799
  %i.y = sub <16 x i8> %i.x, %i.t, !dbg !61799
  %i.z = select <16 x i1> %i.v, <16 x i8> %i.y, <16 x i8> %i.t, !dbg !61799
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index50, !dbg !61800
  store <16 x i8> %i.z, ptr %i.aa, align 1, !dbg !61801
  %index.next52 = add nuw i64 %index50, 16, !dbg !61792 ; 2 uses
  %i.ab = icmp eq i64 %index.next52, %n.vec42, !dbg !61780
  br i1 %i.ab, label %middle.block53, label %vector.body49, !dbg !61780, !llvm.loop !61764

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %2, %n.vec42, !dbg !61780
  br i1 %cmp.n54, label %._crit_edge, label %vec.epilog.iter.check58, !dbg !61780

vec.epilog.iter.check58:                          ; preds = %middle.block53
  %min.epilog.iters.check59 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check59, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, label %vec.epilog.ph60, !prof !542

vec.epilog.ph60:                                  ; preds = %vector.main.loop.iter.check39, %vec.epilog.iter.check58
  %vec.epilog.resume.val55 = phi i64 [ %n.vec42, %vec.epilog.iter.check58 ], [ 0, %vector.main.loop.iter.check39 ]
  %n.vec61 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert62 = insertelement <4 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat63 = shufflevector <4 x i16> %broadcast.splatinsert62, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <4 x i8> poison, i8 %i.k, i64 0
  %broadcast.splat65 = shufflevector <4 x i8> %broadcast.splatinsert64, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <4 x i8> poison, i8 %i.l, i64 0
  %broadcast.splat67 = shufflevector <4 x i8> %broadcast.splatinsert66, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph60
  %index69 = phi i64 [ %vec.epilog.resume.val55, %vec.epilog.ph60 ], [ %index.next71, %vec.epilog.vector.body68 ], !dbg !61792 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index69, !dbg !61793
  %wide.load70 = load <4 x i8>, ptr %i.ac, align 1, !dbg !61794 ; 2 uses
  %i.ad = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load70, i1 false), !dbg !61795 ; 2 uses
  %i.ae = zext <4 x i8> %i.ad to <4 x i16>, !dbg !61796
  %i.af = lshr <4 x i16> %i.ae, %broadcast.splat63, !dbg !61797
  %i.ag = and <4 x i8> %broadcast.splat65, %i.ad, !dbg !61798
  %i.ah = trunc nuw <4 x i16> %i.af to <4 x i8>, !dbg !61796 ; 2 uses
  %i.ai = xor <4 x i8> %broadcast.splat67, %wide.load70, !dbg !61799
  %i.aj = icmp slt <4 x i8> %i.ai, zeroinitializer, !dbg !61799
  %i.ak = icmp ne <4 x i8> %i.ag, zeroinitializer, !dbg !61799
  %i.al = sext <4 x i1> %i.ak to <4 x i8>, !dbg !61799
  %i.am = sub <4 x i8> %i.al, %i.ah, !dbg !61799
  %i.an = select <4 x i1> %i.aj, <4 x i8> %i.am, <4 x i8> %i.ah, !dbg !61799
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %index69, !dbg !61800
  store <4 x i8> %i.an, ptr %i.ao, align 1, !dbg !61801
  %index.next71 = add nuw i64 %index69, 4, !dbg !61792 ; 2 uses
  %i.ap = icmp eq i64 %index.next71, %n.vec61, !dbg !61780
  br i1 %i.ap, label %vec.epilog.middle.block72, label %vec.epilog.vector.body68, !dbg !61780, !llvm.loop !61765

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body68
  %cmp.n73 = icmp eq i64 %2, %n.vec61, !dbg !61780
  br i1 %cmp.n73, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, !dbg !61780

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader: ; preds = %iter.check56, %vec.epilog.iter.check58, %vec.epilog.middle.block72
  %.sroa.01.06.us.ph = phi i64 [ 0, %iter.check56 ], [ %n.vec42, %vec.epilog.iter.check58 ], [ %n.vec61, %vec.epilog.middle.block72 ]
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, !dbg !61780

iter.check:                                       ; preds = %.lr.ph
  %i.aq = zext i8 %i.e to i16                     ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !61780
  %i.ar = sub i64 %i.a, %i.b, !dbg !61780
  %diff.check = icmp ugt i64 %i.ar, -16, !dbg !61780
  %or.cond75 = or i1 %min.iters.check, %diff.check, !dbg !61780
  br i1 %or.cond75, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, label %vector.main.loop.iter.check, !dbg !61780

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %2, 16, !dbg !61780
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !61780

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <16 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat14 = shufflevector <16 x i16> %broadcast.splatinsert13, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <16 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat16 = shufflevector <16 x i16> %broadcast.splatinsert15, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <16 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat18 = shufflevector <16 x i16> %broadcast.splatinsert17, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %broadcast.splat20 = shufflevector <16 x i8> %broadcast.splatinsert19, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body, !dbg !61780

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61792 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61793
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !dbg !61794 ; 2 uses
  %i.au = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load, i1 false), !dbg !61795
  %i.av = zext <16 x i8> %i.au to <16 x i16>, !dbg !61796 ; 3 uses
  %i.aw = mul nuw nsw <16 x i16> %broadcast.splat14, %i.av, !dbg !61802
  %i.ax = mul nuw nsw <16 x i16> %broadcast.splat16, %i.av, !dbg !61803
  %i.ay = lshr <16 x i16> %i.ax, splat (i16 8), !dbg !61803
  %i.az = add nuw nsw <16 x i16> %i.ay, %i.aw, !dbg !61804
  %i.ba = lshr <16 x i16> %i.az, splat (i16 8), !dbg !61805
  %i.bb = mul <16 x i16> %broadcast.splat18, %i.av, !dbg !61806
  %i.bc = tail call { <16 x i16>, <16 x i1> } @llvm.umul.with.overflow.v16i16(<16 x i16> %i.bb, <16 x i16> %broadcast.splat), !dbg !61807
  %i.bd = extractvalue { <16 x i16>, <16 x i1> } %i.bc, 1, !dbg !61807
  %i.be = trunc nuw nsw <16 x i16> %i.ba to <16 x i8>, !dbg !61796 ; 2 uses
  %i.bf = xor <16 x i8> %broadcast.splat20, %wide.load, !dbg !61799
  %i.bg = icmp slt <16 x i8> %i.bf, zeroinitializer, !dbg !61799
  %i.bh = sext <16 x i1> %i.bd to <16 x i8>, !dbg !61799
  %i.bi = sub nsw <16 x i8> %i.bh, %i.be, !dbg !61799
  %i.bj = select <16 x i1> %i.bg, <16 x i8> %i.bi, <16 x i8> %i.be, !dbg !61799
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61800
  store <16 x i8> %i.bj, ptr %i.bk, align 1, !dbg !61801
  %index.next = add nuw i64 %index, 16, !dbg !61792 ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec, !dbg !61780
  br i1 %i.bl, label %middle.block, label %vector.body, !dbg !61780, !llvm.loop !61773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61780
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61780

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert22 = insertelement <4 x i16> poison, i16 %i.aq, i64 0
  %broadcast.splat23 = shufflevector <4 x i16> %broadcast.splatinsert22, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat25 = shufflevector <4 x i16> %broadcast.splatinsert24, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <4 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat27 = shufflevector <4 x i16> %broadcast.splatinsert26, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat29 = shufflevector <4 x i16> %broadcast.splatinsert28, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <4 x i8> poison, i8 %i.l, i64 0
  %broadcast.splat31 = shufflevector <4 x i8> %broadcast.splatinsert30, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ], !dbg !61792 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %index32, !dbg !61793
  %wide.load33 = load <4 x i8>, ptr %i.bm, align 1, !dbg !61794 ; 2 uses
  %i.bn = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load33, i1 false), !dbg !61795
  %i.bo = zext <4 x i8> %i.bn to <4 x i16>, !dbg !61796 ; 3 uses
  %i.bp = mul nuw nsw <4 x i16> %broadcast.splat25, %i.bo, !dbg !61802
  %i.bq = mul nuw nsw <4 x i16> %broadcast.splat27, %i.bo, !dbg !61803
  %i.br = lshr <4 x i16> %i.bq, splat (i16 8), !dbg !61803
  %i.bs = add nuw nsw <4 x i16> %i.br, %i.bp, !dbg !61804
  %i.bt = lshr <4 x i16> %i.bs, splat (i16 8), !dbg !61805
  %i.bu = mul <4 x i16> %broadcast.splat29, %i.bo, !dbg !61806
  %i.bv = tail call { <4 x i16>, <4 x i1> } @llvm.umul.with.overflow.v4i16(<4 x i16> %i.bu, <4 x i16> %broadcast.splat23), !dbg !61807
  %i.bw = extractvalue { <4 x i16>, <4 x i1> } %i.bv, 1, !dbg !61807
  %i.bx = trunc nuw nsw <4 x i16> %i.bt to <4 x i8>, !dbg !61796 ; 2 uses
  %i.by = xor <4 x i8> %broadcast.splat31, %wide.load33, !dbg !61799
  %i.bz = icmp slt <4 x i8> %i.by, zeroinitializer, !dbg !61799
  %i.ca = sext <4 x i1> %i.bw to <4 x i8>, !dbg !61799
  %i.cb = sub nsw <4 x i8> %i.ca, %i.bx, !dbg !61799
  %i.cc = select <4 x i1> %i.bz, <4 x i8> %i.cb, <4 x i8> %i.bx, !dbg !61799
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %index32, !dbg !61800
  store <4 x i8> %i.cc, ptr %i.cd, align 1, !dbg !61801
  %index.next34 = add nuw i64 %index32, 4, !dbg !61792 ; 2 uses
  %i.ce = icmp eq i64 %index.next34, %n.vec21, !dbg !61780
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61780, !llvm.loop !61774

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %2, %n.vec21, !dbg !61780
  br i1 %cmp.n35, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, !dbg !61780

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.06.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, !dbg !61780

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us
  %.sroa.01.06.us = phi i64 [ %i.co, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us ], [ %.sroa.01.06.us.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06.us, !dbg !61793
  %i.cg = load i8, ptr %i.cf, align 1, !dbg !61794, !noundef !403 ; 2 uses
  %.sroa.02.0.i.us = tail call i8 @llvm.abs.i8(i8 %i.cg, i1 false), !dbg !61795 ; 2 uses
  %i.ch = zext i8 %.sroa.02.0.i.us to i16, !dbg !61796
  %i.ci = lshr i16 %i.ch, %i.j, !dbg !61797
  %i.cj = and i8 %i.k, %.sroa.02.0.i.us, !dbg !61798
  %.sroa.0.0.i.i.us = trunc nuw i16 %i.ci to i8, !dbg !61796 ; 2 uses
  %i.ck = xor i8 %i.l, %i.cg, !dbg !61799
  %i.cl = icmp slt i8 %i.ck, 0, !dbg !61799
  %i.cm = icmp ne i8 %i.cj, 0, !dbg !61799
  %i.cn = sext i1 %i.cm to i8, !dbg !61799
  %spec.select.i.us = sub i8 %i.cn, %.sroa.0.0.i.i.us, !dbg !61799
  %.sroa.0.0.i.us = select i1 %i.cl, i8 %spec.select.i.us, i8 %.sroa.0.0.i.i.us, !dbg !61799
  %i.co = add nuw i64 %.sroa.01.06.us, 1, !dbg !61792 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06.us, !dbg !61800
  store i8 %.sroa.0.0.i.us, ptr %i.cp, align 1, !dbg !61801
  %exitcond8.not = icmp eq i64 %i.co, %2, !dbg !61791
  br i1 %exitcond8.not, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, !dbg !61780, !llvm.loop !61775

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, %middle.block, %vec.epilog.middle.block, %middle.block53, %vec.epilog.middle.block72, %bb.a
  ret void, !dbg !61808

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit
  %.sroa.01.06 = phi i64 [ %i.dc, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit ], [ %.sroa.01.06.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06, !dbg !61793
  %i.cr = load i8, ptr %i.cq, align 1, !dbg !61794, !noundef !403 ; 2 uses
  %.sroa.02.0.i = tail call i8 @llvm.abs.i8(i8 %i.cr, i1 false), !dbg !61795
  %i.cs = zext i8 %.sroa.02.0.i to i16, !dbg !61796 ; 3 uses
  %i.ct = mul nuw nsw i16 %i.g, %i.cs, !dbg !61802
  %i.cu = mul nuw nsw i16 %i.h, %i.cs, !dbg !61803
  %i.cv = lshr i16 %i.cu, 8, !dbg !61803
  %i.cw = add nuw nsw i16 %i.cv, %i.ct, !dbg !61804
  %i.cx = lshr i16 %i.cw, 8, !dbg !61805
  %i.cy = mul i16 %i.c, %i.cs, !dbg !61806
  %umul = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %i.cy, i16 %i.aq), !dbg !61807
  %umul.overflow = extractvalue { i16, i1 } %umul, 1, !dbg !61807
  %.sroa.0.0.i.i = trunc nuw nsw i16 %i.cx to i8, !dbg !61796 ; 2 uses
  %i.cz = xor i8 %i.l, %i.cr, !dbg !61799
  %i.da = icmp slt i8 %i.cz, 0, !dbg !61799
  %i.db = sext i1 %umul.overflow to i8, !dbg !61799
  %spec.select.i = sub nsw i8 %i.db, %.sroa.0.0.i.i, !dbg !61799
  %.sroa.0.0.i = select i1 %i.da, i8 %spec.select.i, i8 %.sroa.0.0.i.i, !dbg !61799
  %i.dc = add nuw i64 %.sroa.01.06, 1, !dbg !61792 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06, !dbg !61800
  store i8 %.sroa.0.0.i, ptr %i.dd, align 1, !dbg !61801
  %exitcond.not = icmp eq i64 %i.dc, %2, !dbg !61791
  br i1 %exitcond.not, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, !dbg !61780, !llvm.loop !61776
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %3, ptr noalias noundef readonly captures(none) dereferenceable(1) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61809 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61856
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61846

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61856
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61856
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 3 uses
  %i.d = icmp eq i16 %i.c, 0
  %i.e = lshr i16 %i.c, 8                         ; 3 uses
  %i.f = and i16 %i.c, 255                        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i8, ptr %i.g, align 2
  %i.i = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.h, i1 false)
  %i.j = zext nneg i8 %i.i to i16                 ; 3 uses
  %i.k = load i8, ptr %4, align 1, !noundef !403  ; 6 uses
  %i.l = sub i64 %i.b, %i.a, !dbg !61846          ; 2 uses
  br i1 %i.d, label %iter.check46, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 4, !dbg !61846
  %diff.check = icmp ugt i64 %i.l, -16, !dbg !61846
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !61846
  br i1 %or.cond, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.preheader, label %vector.main.loop.iter.check, !dbg !61846

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %2, 16, !dbg !61846
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph, !dbg !61846

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <16 x i16> poison, i16 %i.f, i64 0
  %broadcast.splat13 = shufflevector <16 x i16> %broadcast.splatinsert12, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %broadcast.splat15 = shufflevector <16 x i8> %broadcast.splatinsert14, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body, !dbg !61846

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61857 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61858
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !dbg !61859 ; 2 uses
  %i.o = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load, i1 false), !dbg !61860
  %i.p = zext <16 x i8> %i.o to <16 x i16>, !dbg !61861 ; 2 uses
  %i.q = mul nuw nsw <16 x i16> %broadcast.splat, %i.p, !dbg !61862
  %i.r = mul nuw nsw <16 x i16> %broadcast.splat13, %i.p, !dbg !61863
  %i.s = lshr <16 x i16> %i.r, splat (i16 8), !dbg !61863
  %i.t = add nuw nsw <16 x i16> %i.s, %i.q, !dbg !61864
  %i.u = lshr <16 x i16> %i.t, splat (i16 8), !dbg !61865
  %i.v = trunc nuw nsw <16 x i16> %i.u to <16 x i8>, !dbg !61866 ; 2 uses
  %i.w = xor <16 x i8> %broadcast.splat15, %wide.load, !dbg !61867
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer, !dbg !61867
  %i.y = sub nsw <16 x i8> zeroinitializer, %i.v, !dbg !61867
  %i.z = select <16 x i1> %i.x, <16 x i8> %i.y, <16 x i8> %i.v, !dbg !61867
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61868
  store <16 x i8> %i.z, ptr %i.aa, align 1, !dbg !61869
  %index.next = add nuw i64 %index, 16, !dbg !61857 ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec, !dbg !61846
  br i1 %i.ab, label %middle.block, label %vector.body, !dbg !61846, !llvm.loop !61837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61846
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61846

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <4 x i16> poison, i16 %i.f, i64 0
  %broadcast.splat20 = shufflevector <4 x i16> %broadcast.splatinsert19, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <4 x i8> poison, i8 %i.k, i64 0
  %broadcast.splat22 = shufflevector <4 x i8> %broadcast.splatinsert21, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ], !dbg !61857 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index23, !dbg !61858
  %wide.load24 = load <4 x i8>, ptr %i.ac, align 1, !dbg !61859 ; 2 uses
  %i.ad = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load24, i1 false), !dbg !61860
  %i.ae = zext <4 x i8> %i.ad to <4 x i16>, !dbg !61861 ; 2 uses
  %i.af = mul nuw nsw <4 x i16> %broadcast.splat18, %i.ae, !dbg !61862
  %i.ag = mul nuw nsw <4 x i16> %broadcast.splat20, %i.ae, !dbg !61863
  %i.ah = lshr <4 x i16> %i.ag, splat (i16 8), !dbg !61863
  %i.ai = add nuw nsw <4 x i16> %i.ah, %i.af, !dbg !61864
  %i.aj = lshr <4 x i16> %i.ai, splat (i16 8), !dbg !61865
  %i.ak = trunc nuw nsw <4 x i16> %i.aj to <4 x i8>, !dbg !61866 ; 2 uses
  %i.al = xor <4 x i8> %broadcast.splat22, %wide.load24, !dbg !61867
  %i.am = icmp slt <4 x i8> %i.al, zeroinitializer, !dbg !61867
  %i.an = sub nsw <4 x i8> zeroinitializer, %i.ak, !dbg !61867
  %i.ao = select <4 x i1> %i.am, <4 x i8> %i.an, <4 x i8> %i.ak, !dbg !61867
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %index23, !dbg !61868
  store <4 x i8> %i.ao, ptr %i.ap, align 1, !dbg !61869
  %index.next25 = add nuw i64 %index23, 4, !dbg !61857 ; 2 uses
  %i.aq = icmp eq i64 %index.next25, %n.vec16, !dbg !61846
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61846, !llvm.loop !61838

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %2, %n.vec16, !dbg !61846
  br i1 %cmp.n26, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.preheader, !dbg !61846

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.06.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit, !dbg !61846

iter.check46:                                     ; preds = %.lr.ph
  %min.iters.check29 = icmp ult i64 %2, 8, !dbg !61846
  %diff.check28 = icmp ugt i64 %i.l, -32, !dbg !61846
  %or.cond63 = or i1 %min.iters.check29, %diff.check28, !dbg !61846
  br i1 %or.cond63, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us.preheader, label %vector.main.loop.iter.check30, !dbg !61846

vector.main.loop.iter.check30:                    ; preds = %iter.check46
  %min.iters.check31 = icmp ult i64 %2, 32, !dbg !61846
  br i1 %min.iters.check31, label %vec.epilog.ph50, label %vector.ph32, !dbg !61846

vector.ph32:                                      ; preds = %vector.main.loop.iter.check30
  %i.ar = and i64 %2, 24
  %n.vec33 = and i64 %2, -32                      ; 4 uses
  %broadcast.splatinsert34 = insertelement <16 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat35 = shufflevector <16 x i16> %broadcast.splatinsert34, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert36 = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %broadcast.splat37 = shufflevector <16 x i8> %broadcast.splatinsert36, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body38, !dbg !61846

vector.body38:                                    ; preds = %vector.ph32, %vector.body38
  %index39 = phi i64 [ 0, %vector.ph32 ], [ %index.next42, %vector.body38 ], !dbg !61857 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %index39, !dbg !61858 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !61859
  %wide.load40 = load <16 x i8>, ptr %i.as, align 1, !dbg !61859 ; 2 uses
  %wide.load41 = load <16 x i8>, ptr %i.at, align 1, !dbg !61859 ; 2 uses
  %i.au = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load40, i1 false), !dbg !61860
  %i.av = tail call <16 x i8> @llvm.abs.v16i8(<16 x i8> %wide.load41, i1 false), !dbg !61860
  %i.aw = zext <16 x i8> %i.au to <16 x i16>, !dbg !61870
  %i.ax = zext <16 x i8> %i.av to <16 x i16>, !dbg !61870
  %i.ay = lshr <16 x i16> %i.aw, %broadcast.splat35, !dbg !61871
  %i.az = lshr <16 x i16> %i.ax, %broadcast.splat35, !dbg !61871
  %i.ba = trunc nuw <16 x i16> %i.ay to <16 x i8>, !dbg !61866 ; 2 uses
  %i.bb = trunc nuw <16 x i16> %i.az to <16 x i8>, !dbg !61866 ; 2 uses
  %i.bc = xor <16 x i8> %broadcast.splat37, %wide.load40, !dbg !61867
  %i.bd = xor <16 x i8> %broadcast.splat37, %wide.load41, !dbg !61867
  %i.be = icmp slt <16 x i8> %i.bc, zeroinitializer, !dbg !61867
  %i.bf = icmp slt <16 x i8> %i.bd, zeroinitializer, !dbg !61867
  %i.bg = sub <16 x i8> zeroinitializer, %i.ba, !dbg !61867
  %i.bh = sub <16 x i8> zeroinitializer, %i.bb, !dbg !61867
  %i.bi = select <16 x i1> %i.be, <16 x i8> %i.bg, <16 x i8> %i.ba, !dbg !61867
  %i.bj = select <16 x i1> %i.bf, <16 x i8> %i.bh, <16 x i8> %i.bb, !dbg !61867
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %index39, !dbg !61868 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16, !dbg !61869
  store <16 x i8> %i.bi, ptr %i.bk, align 1, !dbg !61869
  store <16 x i8> %i.bj, ptr %i.bl, align 1, !dbg !61869
  %index.next42 = add nuw i64 %index39, 32, !dbg !61857 ; 2 uses
  %i.bm = icmp eq i64 %index.next42, %n.vec33, !dbg !61846
  br i1 %i.bm, label %middle.block43, label %vector.body38, !dbg !61846, !llvm.loop !61839

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %2, %n.vec33, !dbg !61846
  br i1 %cmp.n44, label %._crit_edge, label %vec.epilog.iter.check48, !dbg !61846

vec.epilog.iter.check48:                          ; preds = %middle.block43
  %min.epilog.iters.check49 = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check49, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us.preheader, label %vec.epilog.ph50, !prof !563

vec.epilog.ph50:                                  ; preds = %vector.main.loop.iter.check30, %vec.epilog.iter.check48
  %vec.epilog.resume.val45 = phi i64 [ %n.vec33, %vec.epilog.iter.check48 ], [ 0, %vector.main.loop.iter.check30 ]
  %n.vec51 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert52 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat53 = shufflevector <8 x i16> %broadcast.splatinsert52, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <8 x i8> poison, i8 %i.k, i64 0
  %broadcast.splat55 = shufflevector <8 x i8> %broadcast.splatinsert54, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body56

vec.epilog.vector.body56:                         ; preds = %vec.epilog.vector.body56, %vec.epilog.ph50
  %index57 = phi i64 [ %vec.epilog.resume.val45, %vec.epilog.ph50 ], [ %index.next59, %vec.epilog.vector.body56 ], !dbg !61857 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %index57, !dbg !61858
  %wide.load58 = load <8 x i8>, ptr %i.bn, align 1, !dbg !61859 ; 2 uses
  %i.bo = tail call <8 x i8> @llvm.abs.v8i8(<8 x i8> %wide.load58, i1 false), !dbg !61860
  %i.bp = zext <8 x i8> %i.bo to <8 x i16>, !dbg !61870
  %i.bq = lshr <8 x i16> %i.bp, %broadcast.splat53, !dbg !61871
  %i.br = trunc nuw <8 x i16> %i.bq to <8 x i8>, !dbg !61866 ; 2 uses
  %i.bs = xor <8 x i8> %broadcast.splat55, %wide.load58, !dbg !61867
  %i.bt = icmp slt <8 x i8> %i.bs, zeroinitializer, !dbg !61867
  %i.bu = sub <8 x i8> zeroinitializer, %i.br, !dbg !61867
  %i.bv = select <8 x i1> %i.bt, <8 x i8> %i.bu, <8 x i8> %i.br, !dbg !61867
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %index57, !dbg !61868
  store <8 x i8> %i.bv, ptr %i.bw, align 1, !dbg !61869
  %index.next59 = add nuw i64 %index57, 8, !dbg !61857 ; 2 uses
  %i.bx = icmp eq i64 %index.next59, %n.vec51, !dbg !61846
  br i1 %i.bx, label %vec.epilog.middle.block60, label %vec.epilog.vector.body56, !dbg !61846, !llvm.loop !61840

vec.epilog.middle.block60:                        ; preds = %vec.epilog.vector.body56
  %cmp.n61 = icmp eq i64 %2, %n.vec51, !dbg !61846
  br i1 %cmp.n61, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us.preheader, !dbg !61846

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us.preheader: ; preds = %iter.check46, %vec.epilog.iter.check48, %vec.epilog.middle.block60
  %.sroa.01.06.us.ph = phi i64 [ 0, %iter.check46 ], [ %n.vec33, %vec.epilog.iter.check48 ], [ %n.vec51, %vec.epilog.middle.block60 ]
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us, !dbg !61846

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us
  %.sroa.01.06.us = phi i64 [ %i.cf, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us ], [ %.sroa.01.06.us.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06.us, !dbg !61858
  %i.bz = load i8, ptr %i.by, align 1, !dbg !61859, !noundef !403 ; 2 uses
  %.sroa.03.0.i.us = tail call i8 @llvm.abs.i8(i8 %i.bz, i1 false), !dbg !61860
  %i.ca = zext i8 %.sroa.03.0.i.us to i16, !dbg !61870
  %i.cb = lshr i16 %i.ca, %i.j, !dbg !61871
  %.sroa.01.0.i.us = trunc nuw i16 %i.cb to i8, !dbg !61866 ; 2 uses
  %i.cc = xor i8 %i.k, %i.bz, !dbg !61867
  %i.cd = icmp slt i8 %i.cc, 0, !dbg !61867
  %i.ce = sub i8 0, %.sroa.01.0.i.us, !dbg !61867
  %.sroa.0.0.i.us = select i1 %i.cd, i8 %i.ce, i8 %.sroa.01.0.i.us, !dbg !61867
  %i.cf = add nuw i64 %.sroa.01.06.us, 1, !dbg !61857 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06.us, !dbg !61868
  store i8 %.sroa.0.0.i.us, ptr %i.cg, align 1, !dbg !61869
  %exitcond8.not = icmp eq i64 %i.cf, %2, !dbg !61856
  br i1 %exitcond8.not, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us, !dbg !61846, !llvm.loop !61841

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.us, %middle.block, %vec.epilog.middle.block, %middle.block43, %vec.epilog.middle.block60, %bb.a
  ret void, !dbg !61872

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit
  %.sroa.01.06 = phi i64 [ %i.cs, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit ], [ %.sroa.01.06.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06, !dbg !61858
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !61859, !noundef !403 ; 2 uses
  %.sroa.03.0.i = tail call i8 @llvm.abs.i8(i8 %i.ci, i1 false), !dbg !61860
  %i.cj = zext i8 %.sroa.03.0.i to i16, !dbg !61861 ; 2 uses
  %i.ck = mul nuw nsw i16 %i.e, %i.cj, !dbg !61862
  %i.cl = mul nuw nsw i16 %i.f, %i.cj, !dbg !61863
  %i.cm = lshr i16 %i.cl, 8, !dbg !61863
  %i.cn = add nuw nsw i16 %i.cm, %i.ck, !dbg !61864
  %i.co = lshr i16 %i.cn, 8, !dbg !61865
  %.sroa.01.0.i = trunc nuw nsw i16 %i.co to i8, !dbg !61866 ; 2 uses
  %i.cp = xor i8 %i.k, %i.ci, !dbg !61867
  %i.cq = icmp slt i8 %i.cp, 0, !dbg !61867
  %i.cr = sub nsw i8 0, %.sroa.01.0.i, !dbg !61867
  %.sroa.0.0.i = select i1 %i.cq, i8 %i.cr, i8 %.sroa.01.0.i, !dbg !61867
  %i.cs = add nuw i64 %.sroa.01.06, 1, !dbg !61857 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06, !dbg !61868
  store i8 %.sroa.0.0.i, ptr %i.ct, align 1, !dbg !61869
  %exitcond.not = icmp eq i64 %i.cs, %2, !dbg !61856
  br i1 %exitcond.not, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_trunc_div_scalar0B8_.exit, !dbg !61846, !llvm.loop !61842
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61873 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61916
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61906

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61916
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61916
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 6 uses
  %i.d = icmp eq i8 %i.c, -128
  %min.iters.check27 = icmp ult i64 %2, 8, !dbg !61917
  %i.e = sub i64 %i.b, %i.a, !dbg !61917
  %diff.check26 = icmp ugt i64 %i.e, -16, !dbg !61917
  %or.cond57 = or i1 %min.iters.check27, %diff.check26, !dbg !61917 ; 2 uses
  br i1 %i.d, label %iter.check41, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  br i1 %or.cond57, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check, !dbg !61917

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %2, 16, !dbg !61917
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph, !dbg !61917

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %2, 8
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  br label %vector.body, !dbg !61917

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61918 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61919
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !61920 ; 5 uses
  %i.h = icmp ne <16 x i8> %wide.load, zeroinitializer, !dbg !61917 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> %broadcast.splat, <16 x i8> %wide.load, <16 x i1> %i.h), !dbg !61921
  %i.j = add <16 x i8> %wide.load, splat (i8 -1), !dbg !61922
  %i.k = icmp ult <16 x i8> %i.j, splat (i8 -2), !dbg !61922 ; 2 uses
  %i.l = tail call <16 x i8> @llvm.masked.srem.v16i8(<16 x i8> %broadcast.splat, <16 x i8> %wide.load, <16 x i1> %i.k), !dbg !61923
  %i.m = icmp ne <16 x i8> %i.l, zeroinitializer, !dbg !61924
  %i.n = xor <16 x i8> %broadcast.splat, %wide.load
  %i.o = icmp slt <16 x i8> %i.n, zeroinitializer
  %i.p = and <16 x i1> %i.o, %i.m, !dbg !61924
  %narrow = select <16 x i1> %i.k, <16 x i1> %i.p, <16 x i1> zeroinitializer, !dbg !61925
  %i.q = sext <16 x i1> %narrow to <16 x i8>, !dbg !61925
  %predphi = add nsw <16 x i8> %i.i, %i.q, !dbg !61925
  %predphi15 = select <16 x i1> %i.h, <16 x i8> %predphi, <16 x i8> zeroinitializer, !dbg !61925
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61926
  store <16 x i8> %predphi15, ptr %i.r, align 1, !dbg !61927
  %index.next = add nuw i64 %index, 16, !dbg !61918 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !61906
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !61906, !llvm.loop !61897

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61906
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61906

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert17 = insertelement <8 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat18 = shufflevector <8 x i8> %broadcast.splatinsert17, <8 x i8> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ], !dbg !61918 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index19, !dbg !61919
  %wide.load20 = load <8 x i8>, ptr %i.t, align 1, !dbg !61920 ; 5 uses
  %i.u = icmp ne <8 x i8> %wide.load20, zeroinitializer, !dbg !61917 ; 2 uses
  %i.v = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> %broadcast.splat18, <8 x i8> %wide.load20, <8 x i1> %i.u), !dbg !61921
  %i.w = add <8 x i8> %wide.load20, splat (i8 -1), !dbg !61922
  %i.x = icmp ult <8 x i8> %i.w, splat (i8 -2), !dbg !61922 ; 2 uses
  %i.y = tail call <8 x i8> @llvm.masked.srem.v8i8(<8 x i8> %broadcast.splat18, <8 x i8> %wide.load20, <8 x i1> %i.x), !dbg !61923
  %i.z = icmp ne <8 x i8> %i.y, zeroinitializer, !dbg !61924
  %i.aa = xor <8 x i8> %broadcast.splat18, %wide.load20
  %i.ab = icmp slt <8 x i8> %i.aa, zeroinitializer
  %i.ac = and <8 x i1> %i.ab, %i.z, !dbg !61924
  %narrow56 = select <8 x i1> %i.x, <8 x i1> %i.ac, <8 x i1> zeroinitializer, !dbg !61925
  %i.ad = sext <8 x i1> %narrow56 to <8 x i8>, !dbg !61925
  %predphi21 = add nsw <8 x i8> %i.v, %i.ad, !dbg !61925
  %predphi22 = select <8 x i1> %i.u, <8 x i8> %predphi21, <8 x i8> zeroinitializer, !dbg !61925
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index19, !dbg !61926
  store <8 x i8> %predphi22, ptr %i.ae, align 1, !dbg !61927
  %index.next23 = add nuw i64 %index19, 8, !dbg !61918 ; 2 uses
  %i.af = icmp eq i64 %index.next23, %n.vec16, !dbg !61906
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61906, !llvm.loop !61898

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %2, %n.vec16, !dbg !61906
  br i1 %cmp.n24, label %._crit_edge, label %.lr.ph.split.us.preheader, !dbg !61906

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us, !dbg !61917

iter.check41:                                     ; preds = %.lr.ph
  br i1 %or.cond57, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check28, !dbg !61917

vector.main.loop.iter.check28:                    ; preds = %iter.check41
  %min.iters.check29 = icmp ult i64 %2, 16, !dbg !61917
  br i1 %min.iters.check29, label %vec.epilog.ph45, label %vector.ph30, !dbg !61917

vector.ph30:                                      ; preds = %vector.main.loop.iter.check28
  %i.ag = and i64 %2, 8
  %n.vec31 = and i64 %2, -16                      ; 4 uses
  br label %vector.body32, !dbg !61917

vector.body32:                                    ; preds = %vector.ph30, %vector.body32
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body32 ], !dbg !61918 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index33, !dbg !61919
  %wide.load34 = load <16 x i8>, ptr %i.ah, align 1, !dbg !61920 ; 5 uses
  %i.ai = icmp eq <16 x i8> %wide.load34, splat (i8 -1)
  %i.aj = add <16 x i8> %wide.load34, splat (i8 -1)
  %i.ak = icmp ult <16 x i8> %i.aj, splat (i8 -2) ; 3 uses
  %i.al = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> splat (i8 -128), <16 x i8> %wide.load34, <16 x i1> %i.ak), !dbg !61921
  %i.am = tail call <16 x i8> @llvm.masked.srem.v16i8(<16 x i8> splat (i8 -128), <16 x i8> %wide.load34, <16 x i1> %i.ak), !dbg !61923
  %i.an = icmp ne <16 x i8> %i.am, zeroinitializer, !dbg !61924
  %i.ao = icmp sgt <16 x i8> %wide.load34, splat (i8 -1)
  %i.ap = and <16 x i1> %i.ao, %i.an, !dbg !61924
  %i.aq = sext <16 x i1> %i.ap to <16 x i8>, !dbg !61924
  %i.ar = add <16 x i8> %i.al, %i.aq, !dbg !61924
  %predphi35 = select <16 x i1> %i.ai, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer, !dbg !61925
  %predphi36 = select <16 x i1> %i.ak, <16 x i8> %i.ar, <16 x i8> %predphi35, !dbg !61925
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %index33, !dbg !61926
  store <16 x i8> %predphi36, ptr %i.as, align 1, !dbg !61927
  %index.next37 = add nuw i64 %index33, 16, !dbg !61918 ; 2 uses
  %i.at = icmp eq i64 %index.next37, %n.vec31, !dbg !61906
  br i1 %i.at, label %middle.block38, label %vector.body32, !dbg !61906, !llvm.loop !61899

middle.block38:                                   ; preds = %vector.body32
  %cmp.n39 = icmp eq i64 %2, %n.vec31, !dbg !61906
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.iter.check43, !dbg !61906

vec.epilog.iter.check43:                          ; preds = %middle.block38
  %min.epilog.iters.check44.not.not = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check44.not.not, label %.lr.ph.split.preheader, label %vec.epilog.ph45, !prof !567

vec.epilog.ph45:                                  ; preds = %vector.main.loop.iter.check28, %vec.epilog.iter.check43
  %vec.epilog.resume.val40 = phi i64 [ %n.vec31, %vec.epilog.iter.check43 ], [ 0, %vector.main.loop.iter.check28 ]
  %n.vec46 = and i64 %2, -8                       ; 3 uses
  br label %vec.epilog.vector.body47

vec.epilog.vector.body47:                         ; preds = %vec.epilog.vector.body47, %vec.epilog.ph45
  %index48 = phi i64 [ %vec.epilog.resume.val40, %vec.epilog.ph45 ], [ %index.next52, %vec.epilog.vector.body47 ], !dbg !61918 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %index48, !dbg !61919
  %wide.load49 = load <8 x i8>, ptr %i.au, align 1, !dbg !61920 ; 5 uses
  %i.av = icmp eq <8 x i8> %wide.load49, splat (i8 -1)
  %i.aw = add <8 x i8> %wide.load49, splat (i8 -1)
  %i.ax = icmp ult <8 x i8> %i.aw, splat (i8 -2)  ; 3 uses
  %i.ay = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> splat (i8 -128), <8 x i8> %wide.load49, <8 x i1> %i.ax), !dbg !61921
  %i.az = tail call <8 x i8> @llvm.masked.srem.v8i8(<8 x i8> splat (i8 -128), <8 x i8> %wide.load49, <8 x i1> %i.ax), !dbg !61923
  %i.ba = icmp ne <8 x i8> %i.az, zeroinitializer, !dbg !61924
  %i.bb = icmp sgt <8 x i8> %wide.load49, splat (i8 -1)
  %i.bc = and <8 x i1> %i.bb, %i.ba, !dbg !61924
  %i.bd = sext <8 x i1> %i.bc to <8 x i8>, !dbg !61924
  %i.be = add <8 x i8> %i.ay, %i.bd, !dbg !61924
  %predphi50 = select <8 x i1> %i.av, <8 x i8> splat (i8 -128), <8 x i8> zeroinitializer, !dbg !61925
  %predphi51 = select <8 x i1> %i.ax, <8 x i8> %i.be, <8 x i8> %predphi50, !dbg !61925
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %index48, !dbg !61926
  store <8 x i8> %predphi51, ptr %i.bf, align 1, !dbg !61927
  %index.next52 = add nuw i64 %index48, 8, !dbg !61918 ; 2 uses
  %i.bg = icmp eq i64 %index.next52, %n.vec46, !dbg !61906
  br i1 %i.bg, label %vec.epilog.middle.block53, label %vec.epilog.vector.body47, !dbg !61906, !llvm.loop !61900

vec.epilog.middle.block53:                        ; preds = %vec.epilog.vector.body47
  %cmp.n54 = icmp eq i64 %2, %n.vec46, !dbg !61906
  br i1 %cmp.n54, label %._crit_edge, label %.lr.ph.split.preheader, !dbg !61906

.lr.ph.split.preheader:                           ; preds = %iter.check41, %vec.epilog.iter.check43, %vec.epilog.middle.block53
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check41 ], [ %n.vec31, %vec.epilog.iter.check43 ], [ %n.vec46, %vec.epilog.middle.block53 ]
  br label %.lr.ph.split, !dbg !61917

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.us
  %.sroa.01.05.us = phi i64 [ %i.bq, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.us ], [ %.sroa.01.05.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.us, !dbg !61919
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !61920, !noundef !403 ; 5 uses
  %i.bj = icmp eq i8 %i.bi, 0, !dbg !61917
  br i1 %i.bj, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.us, label %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i.us, !dbg !61917

_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i.us: ; preds = %.lr.ph.split.us
  %i.bk = icmp eq i8 %i.bi, -1, !dbg !61928
  %i.bl = sdiv i8 %i.c, %i.bi, !dbg !61921        ; 2 uses
  %i.bm = srem i8 %i.c, %i.bi, !dbg !61923
  br i1 %i.bk, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.us, label %bb.b, !dbg !61922, !prof !572

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i.us
  %.not.i.i.us = icmp ne i8 %i.bm, 0, !dbg !61924
  %i.bn = xor i8 %i.c, %i.bi
  %i.bo = icmp slt i8 %i.bn, 0
  %or.cond.i.us = and i1 %i.bo, %.not.i.i.us, !dbg !61924
  %i.bp = sext i1 %or.cond.i.us to i8, !dbg !61924
  %spec.select.i.us = add nsw i8 %i.bl, %i.bp, !dbg !61924
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.us, !dbg !61924

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.us: ; preds = %bb.b, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i.us, %.lr.ph.split.us
  %.sroa.0.0.i.i.us = phi i8 [ 0, %.lr.ph.split.us ], [ %spec.select.i.us, %bb.b ], [ %i.bl, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i.us ], !dbg !61925
  %i.bq = add nuw i64 %.sroa.01.05.us, 1, !dbg !61918 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.us, !dbg !61926
  store i8 %.sroa.0.0.i.i.us, ptr %i.br, align 1, !dbg !61927
  %exitcond.not = icmp eq i64 %i.bq, %2, !dbg !61916
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !dbg !61906, !llvm.loop !61901

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.us, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit, %middle.block, %vec.epilog.middle.block, %middle.block38, %vec.epilog.middle.block53, %bb.a
  ret void, !dbg !61929

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.by, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit ], [ %.sroa.01.05.ph, %.lr.ph.split.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !61919
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !61920, !noundef !403 ; 5 uses
  switch i8 %i.bt, label %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i [
    i8 0, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit
    i8 -1, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.fold.split
  ], !dbg !61917, !prof !573

_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i: ; preds = %.lr.ph.split
  %i.bu = sdiv i8 -128, %i.bt, !dbg !61921
  %i.bv = srem i8 -128, %i.bt, !dbg !61923
  %.not.i.i = icmp ne i8 %i.bv, 0, !dbg !61924
  %i.bw = icmp sgt i8 %i.bt, -1
  %or.cond.i = and i1 %i.bw, %.not.i.i, !dbg !61924
  %i.bx = sext i1 %or.cond.i to i8, !dbg !61924
  %spec.select.i = add i8 %i.bu, %i.bx, !dbg !61924
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit, !dbg !61924

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.fold.split: ; preds = %.lr.ph.split
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit, !dbg !61918

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit: ; preds = %.lr.ph.split, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.fold.split, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.bt, %.lr.ph.split ], [ %spec.select.i, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i ], [ -128, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.fold.split ], !dbg !61925
  %i.by = add nuw i64 %.sroa.01.05, 1, !dbg !61918 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !61926
  store i8 %.sroa.0.0.i.i, ptr %i.bz, align 1, !dbg !61927
  %exitcond7.not = icmp eq i64 %i.by, %2, !dbg !61916
  br i1 %exitcond7.not, label %._crit_edge, label %.lr.ph.split, !dbg !61906, !llvm.loop !61902
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !61930 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !61970
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !61960

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !61970
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !61970
  %i.c = load i8, ptr %3, align 1
  %.fr6 = freeze i8 %i.c                          ; 6 uses
  %i.d = icmp eq i8 %.fr6, -128
  %min.iters.check25 = icmp ult i64 %2, 8, !dbg !61971
  %i.e = sub i64 %i.b, %i.a, !dbg !61971
  %diff.check24 = icmp ugt i64 %i.e, -16, !dbg !61971
  %or.cond54 = or i1 %min.iters.check25, %diff.check24, !dbg !61971 ; 2 uses
  br i1 %i.d, label %iter.check39, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  br i1 %or.cond54, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check, !dbg !61971

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %2, 16, !dbg !61971
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph, !dbg !61971

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %2, 8
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.fr6, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body, !dbg !61971

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !61972 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !61973
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !61974 ; 2 uses
  %i.h = icmp ne <16 x i8> %wide.load, zeroinitializer, !dbg !61971 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> %broadcast.splat, <16 x i8> %wide.load, <16 x i1> %i.h), !dbg !61975
  %predphi = select <16 x i1> %i.h, <16 x i8> %i.i, <16 x i8> zeroinitializer, !dbg !61976
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61977
  store <16 x i8> %predphi, ptr %i.j, align 1, !dbg !61978
  %index.next = add nuw i64 %index, 16, !dbg !61972 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !61960
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !61960, !llvm.loop !61951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !61960
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !61960

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert16 = insertelement <8 x i8> poison, i8 %.fr6, i64 0
  %broadcast.splat17 = shufflevector <8 x i8> %broadcast.splatinsert16, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !61972 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index18, !dbg !61973
  %wide.load19 = load <8 x i8>, ptr %i.l, align 1, !dbg !61974 ; 2 uses
  %i.m = icmp ne <8 x i8> %wide.load19, zeroinitializer, !dbg !61971 ; 2 uses
  %i.n = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> %broadcast.splat17, <8 x i8> %wide.load19, <8 x i1> %i.m), !dbg !61975
  %predphi20 = select <8 x i1> %i.m, <8 x i8> %i.n, <8 x i8> zeroinitializer, !dbg !61976
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index18, !dbg !61977
  store <8 x i8> %predphi20, ptr %i.o, align 1, !dbg !61978
  %index.next21 = add nuw i64 %index18, 8, !dbg !61972 ; 2 uses
  %i.p = icmp eq i64 %index.next21, %n.vec15, !dbg !61960
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61960, !llvm.loop !61952

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %2, %n.vec15, !dbg !61960
  br i1 %cmp.n22, label %._crit_edge, label %.lr.ph.split.us.preheader, !dbg !61960

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.us.ph, 1, !dbg !61971
  %xtraiter = and i64 %2, 1, !dbg !61971
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !61971
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !dbg !61971

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.us.ph, !dbg !61973
  %i.r = load i8, ptr %i.q, align 1, !dbg !61974, !noundef !403 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0, !dbg !61971
  br i1 %i.s, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us.prol, label %bb.b, !dbg !61971

bb.b:                                             ; preds = %.lr.ph.split.us.prol
  %i.t = sdiv i8 %.fr6, %i.r, !dbg !61975
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us.prol, !dbg !61979

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us.prol: ; preds = %bb.b, %.lr.ph.split.us.prol
  %.sroa.0.0.i.us.prol = phi i8 [ 0, %.lr.ph.split.us.prol ], [ %i.t, %bb.b ], !dbg !61976
  %i.u = or disjoint i64 %.sroa.01.05.us.ph, 1, !dbg !61972
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.us.ph, !dbg !61977
  store i8 %.sroa.0.0.i.us.prol, ptr %i.v, align 1, !dbg !61978
  br label %.lr.ph.split.us.prol.loopexit, !dbg !61971

.lr.ph.split.us.prol.loopexit:                    ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us.prol, %.lr.ph.split.us.preheader
  %.sroa.01.05.us.unr = phi i64 [ %.sroa.01.05.us.ph, %.lr.ph.split.us.preheader ], [ %i.u, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us.prol ]
  %i.w = icmp eq i64 %2, %.neg, !dbg !61971
  br i1 %i.w, label %._crit_edge, label %.lr.ph.split.us, !dbg !61971

iter.check39:                                     ; preds = %.lr.ph
  br i1 %or.cond54, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check26, !dbg !61971

vector.main.loop.iter.check26:                    ; preds = %iter.check39
  %min.iters.check27 = icmp ult i64 %2, 16, !dbg !61971
  br i1 %min.iters.check27, label %vec.epilog.ph43, label %vector.ph28, !dbg !61971

vector.ph28:                                      ; preds = %vector.main.loop.iter.check26
  %i.x = and i64 %2, 8
  %n.vec29 = and i64 %2, -16                      ; 4 uses
  br label %vector.body30, !dbg !61971

vector.body30:                                    ; preds = %vector.ph28, %vector.body30
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next35, %vector.body30 ], !dbg !61972 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index31, !dbg !61973
  %wide.load32 = load <16 x i8>, ptr %i.y, align 1, !dbg !61974 ; 3 uses
  %i.z = icmp eq <16 x i8> %wide.load32, splat (i8 -1)
  %i.aa = add <16 x i8> %wide.load32, splat (i8 -1)
  %i.ab = icmp ult <16 x i8> %i.aa, splat (i8 -2) ; 2 uses
  %i.ac = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> splat (i8 -128), <16 x i8> %wide.load32, <16 x i1> %i.ab), !dbg !61975
  %predphi33 = select <16 x i1> %i.z, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer, !dbg !61976
  %predphi34 = select <16 x i1> %i.ab, <16 x i8> %i.ac, <16 x i8> %predphi33, !dbg !61976
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %index31, !dbg !61977
  store <16 x i8> %predphi34, ptr %i.ad, align 1, !dbg !61978
  %index.next35 = add nuw i64 %index31, 16, !dbg !61972 ; 2 uses
  %i.ae = icmp eq i64 %index.next35, %n.vec29, !dbg !61960
  br i1 %i.ae, label %middle.block36, label %vector.body30, !dbg !61960, !llvm.loop !61953

middle.block36:                                   ; preds = %vector.body30
  %cmp.n37 = icmp eq i64 %2, %n.vec29, !dbg !61960
  br i1 %cmp.n37, label %._crit_edge, label %vec.epilog.iter.check41, !dbg !61960

vec.epilog.iter.check41:                          ; preds = %middle.block36
  %min.epilog.iters.check42.not.not = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check42.not.not, label %.lr.ph.split.preheader, label %vec.epilog.ph43, !prof !567

vec.epilog.ph43:                                  ; preds = %vector.main.loop.iter.check26, %vec.epilog.iter.check41
  %vec.epilog.resume.val38 = phi i64 [ %n.vec29, %vec.epilog.iter.check41 ], [ 0, %vector.main.loop.iter.check26 ]
  %n.vec44 = and i64 %2, -8                       ; 3 uses
  br label %vec.epilog.vector.body45

vec.epilog.vector.body45:                         ; preds = %vec.epilog.vector.body45, %vec.epilog.ph43
  %index46 = phi i64 [ %vec.epilog.resume.val38, %vec.epilog.ph43 ], [ %index.next50, %vec.epilog.vector.body45 ], !dbg !61972 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index46, !dbg !61973
  %wide.load47 = load <8 x i8>, ptr %i.af, align 1, !dbg !61974 ; 3 uses
  %i.ag = icmp eq <8 x i8> %wide.load47, splat (i8 -1)
  %i.ah = add <8 x i8> %wide.load47, splat (i8 -1)
  %i.ai = icmp ult <8 x i8> %i.ah, splat (i8 -2)  ; 2 uses
  %i.aj = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> splat (i8 -128), <8 x i8> %wide.load47, <8 x i1> %i.ai), !dbg !61975
  %predphi48 = select <8 x i1> %i.ag, <8 x i8> splat (i8 -128), <8 x i8> zeroinitializer, !dbg !61976
  %predphi49 = select <8 x i1> %i.ai, <8 x i8> %i.aj, <8 x i8> %predphi48, !dbg !61976
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %index46, !dbg !61977
  store <8 x i8> %predphi49, ptr %i.ak, align 1, !dbg !61978
  %index.next50 = add nuw i64 %index46, 8, !dbg !61972 ; 2 uses
  %i.al = icmp eq i64 %index.next50, %n.vec44, !dbg !61960
  br i1 %i.al, label %vec.epilog.middle.block51, label %vec.epilog.vector.body45, !dbg !61960, !llvm.loop !61954

vec.epilog.middle.block51:                        ; preds = %vec.epilog.vector.body45
  %cmp.n52 = icmp eq i64 %2, %n.vec44, !dbg !61960
  br i1 %cmp.n52, label %._crit_edge, label %.lr.ph.split.preheader, !dbg !61960

.lr.ph.split.preheader:                           ; preds = %iter.check39, %vec.epilog.iter.check41, %vec.epilog.middle.block51
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check39 ], [ %n.vec29, %vec.epilog.iter.check41 ], [ %n.vec44, %vec.epilog.middle.block51 ] ; 5 uses
  %.neg58 = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !61971
  %xtraiter56 = and i64 %2, 1, !dbg !61971
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0, !dbg !61971
  br i1 %lcmp.mod57.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !dbg !61971

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !61973
  %i.an = load i8, ptr %i.am, align 1, !dbg !61974, !noundef !403 ; 3 uses
  switch i8 %i.an, label %bb.c [
    i8 0, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.prol
    i8 -1, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.fold.split.prol
  ], !dbg !61971, !prof !573

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.fold.split.prol: ; preds = %.lr.ph.split.prol
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.prol, !dbg !61972

bb.c:                                             ; preds = %.lr.ph.split.prol
  %i.ao = sdiv i8 -128, %i.an, !dbg !61975
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.prol, !dbg !61979

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.prol: ; preds = %bb.c, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.fold.split.prol, %.lr.ph.split.prol
  %.sroa.0.0.i.prol = phi i8 [ %i.an, %.lr.ph.split.prol ], [ %i.ao, %bb.c ], [ -128, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.fold.split.prol ], !dbg !61976
  %i.ap = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !61972
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !61977
  store i8 %.sroa.0.0.i.prol, ptr %i.aq, align 1, !dbg !61978
  br label %.lr.ph.split.prol.loopexit, !dbg !61971

.lr.ph.split.prol.loopexit:                       ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.prol, %.lr.ph.split.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.split.preheader ], [ %i.ap, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.prol ]
  %i.ar = icmp eq i64 %2, %.neg58, !dbg !61971
  br i1 %i.ar, label %._crit_edge, label %.lr.ph.split, !dbg !61971

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us.1
  %.sroa.01.05.us = phi i64 [ %i.bc, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us.1 ], [ %.sroa.01.05.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.us, !dbg !61973
  %i.at = load i8, ptr %i.as, align 1, !dbg !61974, !noundef !403 ; 2 uses
  %i.au = icmp eq i8 %i.at, 0, !dbg !61971
  br i1 %i.au, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us, label %bb.d, !dbg !61971

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.av = sdiv i8 %.fr6, %i.at, !dbg !61975
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us, !dbg !61979

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_trunc_div_scalar_lhs0B8_.exit.us: ; preds = %bb.d, %.lr.ph.split.us
  %.sroa.0.0.i.us = phi i8 [ 0, %.lr.ph.split.us ], [ %i.av, %bb.d ], !dbg !61976
end_hunk_0
begin_hunk_1_@_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhdNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl20prim_true_div_scalar0EB4_:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63193 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63194 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !63195
  %wide.load = load <2 x i8>, ptr %i.e, align 1, !dbg !63195, !alias.scope !63186
  %wide.load7 = load <2 x i8>, ptr %i.f, align 1, !dbg !63195, !alias.scope !63186
  %i.g = uitofp <2 x i8> %wide.load to <2 x double>, !dbg !63196
  %i.h = uitofp <2 x i8> %wide.load7 to <2 x double>, !dbg !63196
  %i.i = fmul <2 x double> %broadcast.splat, %i.g, !dbg !63196
  %i.j = fmul <2 x double> %broadcast.splat, %i.h, !dbg !63196
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !63197 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !63198
  store <2 x double> %i.i, ptr %i.k, align 8, !dbg !63198, !alias.scope !63191, !noalias !63186
  store <2 x double> %i.j, ptr %i.l, align 8, !dbg !63198, !alias.scope !63191, !noalias !63186
  %index.next = add nuw i64 %index, 4, !dbg !63193 ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec, !dbg !63180
  br i1 %i.m, label %middle.block, label %vector.body, !dbg !63180, !llvm.loop !63174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63180
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !63180

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !63180          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63180
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63180

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.r, %scalar.ph.prol ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !63194
  %i.o = load i8, ptr %i.n, align 1, !dbg !63195, !noundef !403
  %i.p = uitofp i8 %i.o to double, !dbg !63196
  %i.q = fmul double %i.a, %i.p, !dbg !63196
  %i.r = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63193 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !63197
  store double %i.q, ptr %i.s, align 8, !dbg !63198
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63180 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63180
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63180, !llvm.loop !63175

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %i.t = sub i64 %.sroa.01.05.ph, %2, !dbg !63180
  %i.u = icmp ugt i64 %i.t, -4, !dbg !63180
  br i1 %i.u, label %._crit_edge, label %scalar.ph, !dbg !63180

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void, !dbg !63199

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.05.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63194
  %i.w = load i8, ptr %i.v, align 1, !dbg !63195, !noundef !403
  %i.x = uitofp i8 %i.w to double, !dbg !63196
  %i.y = fmul double %i.a, %i.x, !dbg !63196
  %i.z = add nuw i64 %.sroa.01.05, 1, !dbg !63193 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !63197
  store double %i.y, ptr %i.aa, align 8, !dbg !63198
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.z, !dbg !63194
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !63195, !noundef !403
  %i.ad = uitofp i8 %i.ac to double, !dbg !63196
  %i.ae = fmul double %i.a, %i.ad, !dbg !63196
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !63193 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z, !dbg !63197
  store double %i.ae, ptr %i.ag, align 8, !dbg !63198
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af, !dbg !63194
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !63195, !noundef !403
  %i.aj = uitofp i8 %i.ai to double, !dbg !63196
  %i.ak = fmul double %i.a, %i.aj, !dbg !63196
  %i.al = add nuw i64 %.sroa.01.05, 3, !dbg !63193 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af, !dbg !63197
  store double %i.ak, ptr %i.am, align 8, !dbg !63198
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.al, !dbg !63194
  %i.ao = load i8, ptr %i.an, align 1, !dbg !63195, !noundef !403
  %i.ap = uitofp i8 %i.ao to double, !dbg !63196
  %i.aq = fmul double %i.a, %i.ap, !dbg !63196
  %i.ar = add nuw i64 %.sroa.01.05, 4, !dbg !63193 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.al, !dbg !63197
  store double %i.aq, ptr %i.as, align 8, !dbg !63198
  %exitcond.not.3 = icmp eq i64 %i.ar, %2, !dbg !63192
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !dbg !63180, !llvm.loop !63176
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhdNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl24prim_true_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63200 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63239
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !63227

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1, !noundef !403
  %i.b = uitofp i8 %i.a to double                 ; 6 uses
  %min.iters.check = icmp eq i64 %2, 1, !dbg !63227
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !63227

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %2, 3, !dbg !63227
  %i.d = getelementptr i8, ptr %1, i64 %i.c, !dbg !63227
  %i.e = getelementptr i8, ptr %0, i64 %2, !dbg !63227
  %bound0 = icmp ult ptr %1, %i.e, !dbg !63227
  %bound1 = icmp ult ptr %0, %i.d, !dbg !63227
  %found.conflict = and i1 %bound0, %bound1, !dbg !63227
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !63240

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -2                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body, !dbg !63240

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63240 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63241
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !dbg !63242, !alias.scope !63231
  %i.g = uitofp <2 x i8> %wide.load to <2 x double>, !dbg !63243
  %i.h = fdiv <2 x double> %broadcast.splat, %i.g, !dbg !63244
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !63245
  store <2 x double> %i.h, ptr %i.i, align 8, !dbg !63246, !alias.scope !63236, !noalias !63231
  %index.next = add nuw i64 %index, 2, !dbg !63240 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !63227
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !63227, !llvm.loop !63221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63227
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !63227

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.k = sub i64 %2, %.sroa.01.05.ph, !dbg !63227
  %xtraiter = and i64 %i.k, 3, !dbg !63227        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63227
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63227

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.p, %scalar.ph.prol ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !63241
  %i.m = load i8, ptr %i.l, align 1, !dbg !63242, !noundef !403
  %i.n = uitofp i8 %i.m to double, !dbg !63243
  %i.o = fdiv double %i.b, %i.n, !dbg !63244
  %i.p = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63240 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !63245
  store double %i.o, ptr %i.q, align 8, !dbg !63246
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63227 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63227
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63227, !llvm.loop !63222

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.p, %scalar.ph.prol ]
  %i.r = sub i64 %.sroa.01.05.ph, %2, !dbg !63227
  %i.s = icmp ugt i64 %i.r, -4, !dbg !63227
  br i1 %i.s, label %._crit_edge, label %scalar.ph, !dbg !63227

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void, !dbg !63247

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %scalar.ph ], [ %.sroa.01.05.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63241
  %i.u = load i8, ptr %i.t, align 1, !dbg !63242, !noundef !403
  %i.v = uitofp i8 %i.u to double, !dbg !63243
  %i.w = fdiv double %i.b, %i.v, !dbg !63244
  %i.x = add nuw i64 %.sroa.01.05, 1, !dbg !63240 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !63245
  store double %i.w, ptr %i.y, align 8, !dbg !63246
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.x, !dbg !63241
  %i.aa = load i8, ptr %i.z, align 1, !dbg !63242, !noundef !403
  %i.ab = uitofp i8 %i.aa to double, !dbg !63243
  %i.ac = fdiv double %i.b, %i.ab, !dbg !63244
  %i.ad = add nuw i64 %.sroa.01.05, 2, !dbg !63240 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.x, !dbg !63245
  store double %i.ac, ptr %i.ae, align 8, !dbg !63246
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad, !dbg !63241
  %i.ag = load i8, ptr %i.af, align 1, !dbg !63242, !noundef !403
  %i.ah = uitofp i8 %i.ag to double, !dbg !63243
  %i.ai = fdiv double %i.b, %i.ah, !dbg !63244
  %i.aj = add nuw i64 %.sroa.01.05, 3, !dbg !63240 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad, !dbg !63245
  store double %i.ai, ptr %i.ak, align 8, !dbg !63246
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj, !dbg !63241
  %i.am = load i8, ptr %i.al, align 1, !dbg !63242, !noundef !403
  %i.an = uitofp i8 %i.am to double, !dbg !63243
  %i.ao = fdiv double %i.b, %i.an, !dbg !63244
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !63240 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aj, !dbg !63245
  store double %i.ao, ptr %i.aq, align 8, !dbg !63246
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !63239
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !dbg !63227, !llvm.loop !63223
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl17prim_wrapping_neg0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63248 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63287
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !63277

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63287
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63287
  %min.iters.check = icmp ult i64 %2, 4, !dbg !63277
  %i.c = sub i64 %i.b, %i.a, !dbg !63277
  %diff.check = icmp ugt i64 %i.c, -32, !dbg !63277
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !63277
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !63277

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !63277
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !63277

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body, !dbg !63277

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63288 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63289 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !63290
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !dbg !63290
  %wide.load7 = load <16 x i8>, ptr %i.f, align 1, !dbg !63290
  %i.g = sub <16 x i8> zeroinitializer, %wide.load, !dbg !63291
  %i.h = sub <16 x i8> zeroinitializer, %wide.load7, !dbg !63291
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63292 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !63293
  store <16 x i8> %i.g, ptr %i.i, align 1, !dbg !63293
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !63293
  %index.next = add nuw i64 %index, 32, !dbg !63288 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !63277
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !63277, !llvm.loop !63270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63277
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63277

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !63288 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index9, !dbg !63289
  %wide.load10 = load <4 x i8>, ptr %i.l, align 1, !dbg !63290
  %i.m = sub <4 x i8> zeroinitializer, %wide.load10, !dbg !63291
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index9, !dbg !63292
  store <4 x i8> %i.m, ptr %i.n, align 1, !dbg !63293
  %index.next11 = add nuw i64 %index9, 4, !dbg !63288 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec8, !dbg !63277
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63277, !llvm.loop !63271

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8, !dbg !63277
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader, !dbg !63277

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !63277          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63277
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !63277

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !63289
  %i.q = load i8, ptr %i.p, align 1, !dbg !63290, !noundef !403
  %i.r = sub i8 0, %i.q, !dbg !63291
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63288 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !63292
  store i8 %i.r, ptr %i.t, align 1, !dbg !63293
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63277 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63277
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !63277, !llvm.loop !63272

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !63277
  %i.v = icmp ugt i64 %i.u, -4, !dbg !63277
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !63277

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !63294

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.ao, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63289
  %i.x = load i8, ptr %i.w, align 1, !dbg !63290, !noundef !403
  %i.y = sub i8 0, %i.x, !dbg !63291
  %i.z = add nuw i64 %.sroa.01.05, 1, !dbg !63288 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63292
  store i8 %i.y, ptr %i.aa, align 1, !dbg !63293
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.z, !dbg !63289
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !63290, !noundef !403
  %i.ad = sub i8 0, %i.ac, !dbg !63291
  %i.ae = add nuw i64 %.sroa.01.05, 2, !dbg !63288 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.z, !dbg !63292
  store i8 %i.ad, ptr %i.af, align 1, !dbg !63293
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae, !dbg !63289
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !63290, !noundef !403
  %i.ai = sub i8 0, %i.ah, !dbg !63291
  %i.aj = add nuw i64 %.sroa.01.05, 3, !dbg !63288 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae, !dbg !63292
  store i8 %i.ai, ptr %i.ak, align 1, !dbg !63293
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj, !dbg !63289
  %i.am = load i8, ptr %i.al, align 1, !dbg !63290, !noundef !403
  %i.an = sub i8 0, %i.am, !dbg !63291
  %i.ao = add nuw i64 %.sroa.01.05, 4, !dbg !63288 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj, !dbg !63292
  store i8 %i.an, ptr %i.ap, align 1, !dbg !63293
  %exitcond.not.3 = icmp eq i64 %i.ao, %2, !dbg !63287
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !63277, !llvm.loop !63273
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_add_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63295 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63332
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !63322

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63332
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63332
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !63322
  %i.d = sub i64 %i.b, %i.a, !dbg !63322
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !63322
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !63322
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !63322

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !63322
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !63322

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63322

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63333 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63334 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !63335
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !63335
  %wide.load7 = load <16 x i8>, ptr %i.g, align 1, !dbg !63335
  %i.h = add <16 x i8> %broadcast.splat, %wide.load, !dbg !63336
  %i.i = add <16 x i8> %broadcast.splat, %wide.load7, !dbg !63336
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63337 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !63338
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !63338
  store <16 x i8> %i.i, ptr %i.k, align 1, !dbg !63338
  %index.next = add nuw i64 %index, 32, !dbg !63333 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !63322
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !63322, !llvm.loop !63315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63322
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63322

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i8> %broadcast.splatinsert9, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !63333 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !63334
  %wide.load12 = load <4 x i8>, ptr %i.m, align 1, !dbg !63335
  %i.n = add <4 x i8> %broadcast.splat10, %wide.load12, !dbg !63336
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !63337
  store <4 x i8> %i.n, ptr %i.o, align 1, !dbg !63338
  %index.next13 = add nuw i64 %index11, 4, !dbg !63333 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !63322
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63322, !llvm.loop !63316

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !63322
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !63322

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !63322          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63322
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63322

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !63334
  %i.r = load i8, ptr %i.q, align 1, !dbg !63335, !noundef !403
  %i.s = add i8 %i.c, %i.r, !dbg !63336
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63333 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !63337
  store i8 %i.s, ptr %i.u, align 1, !dbg !63338
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63322 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63322
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63322, !llvm.loop !63317

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !63322
  %i.w = icmp ugt i64 %i.v, -4, !dbg !63322
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63322

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !63339

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63334
  %i.y = load i8, ptr %i.x, align 1, !dbg !63335, !noundef !403
  %i.z = add i8 %i.c, %i.y, !dbg !63336
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !63333 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63337
  store i8 %i.z, ptr %i.ab, align 1, !dbg !63338
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !63334
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !63335, !noundef !403
  %i.ae = add i8 %i.c, %i.ad, !dbg !63336
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !63333 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !63337
  store i8 %i.ae, ptr %i.ag, align 1, !dbg !63338
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af, !dbg !63334
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !63335, !noundef !403
  %i.aj = add i8 %i.c, %i.ai, !dbg !63336
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !63333 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.af, !dbg !63337
  store i8 %i.aj, ptr %i.al, align 1, !dbg !63338
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak, !dbg !63334
  %i.an = load i8, ptr %i.am, align 1, !dbg !63335, !noundef !403
  %i.ao = add i8 %i.c, %i.an, !dbg !63336
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !63333 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak, !dbg !63337
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !63338
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !63332
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63322, !llvm.loop !63318
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63340 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63385
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !63375

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63385
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63385
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i8, ptr %i.d, align 2, !noundef !403 ; 2 uses
  %i.f = icmp eq i16 %i.c, 0
  %i.g = zext i8 %i.e to i32                      ; 5 uses
  %i.h = add i8 %i.e, -1                          ; 7 uses
  %min.iters.check25 = icmp ult i64 %2, 4, !dbg !63375 ; 2 uses
  %i.i = sub i64 %i.b, %i.a, !dbg !63375          ; 2 uses
  br i1 %i.f, label %iter.check40, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  %diff.check = icmp ugt i64 %i.i, -16, !dbg !63375
  %or.cond = or i1 %min.iters.check25, %diff.check, !dbg !63375
  br i1 %or.cond, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.preheader, label %vector.main.loop.iter.check, !dbg !63375

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %2, 16, !dbg !63375
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph, !dbg !63375

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <16 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat13 = shufflevector <16 x i32> %broadcast.splatinsert12, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body, !dbg !63375

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63386 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63387
  %wide.load = load <16 x i8>, ptr %i.k, align 1, !dbg !63388
  %i.l = zext <16 x i8> %wide.load to <16 x i16>, !dbg !63389
  %i.m = mul <16 x i16> %broadcast.splat, %i.l, !dbg !63390
  %i.n = zext <16 x i16> %i.m to <16 x i32>, !dbg !63391
  %i.o = mul nuw nsw <16 x i32> %broadcast.splat13, %i.n, !dbg !63392
  %i.p = lshr <16 x i32> %i.o, splat (i32 16), !dbg !63392
  %i.q = trunc nuw <16 x i32> %i.p to <16 x i8>, !dbg !63393
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63394
  store <16 x i8> %i.q, ptr %i.r, align 1, !dbg !63395
  %index.next = add nuw i64 %index, 16, !dbg !63386 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !63375
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !63375, !llvm.loop !63365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63375
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63375

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert15 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat16 = shufflevector <4 x i16> %broadcast.splatinsert15, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat18 = shufflevector <4 x i32> %broadcast.splatinsert17, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !63386 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index19, !dbg !63387
  %wide.load20 = load <4 x i8>, ptr %i.t, align 1, !dbg !63388
  %i.u = zext <4 x i8> %wide.load20 to <4 x i16>, !dbg !63389
  %i.v = mul <4 x i16> %broadcast.splat16, %i.u, !dbg !63390
  %i.w = zext <4 x i16> %i.v to <4 x i32>, !dbg !63391
  %i.x = mul nuw nsw <4 x i32> %broadcast.splat18, %i.w, !dbg !63392
  %i.y = lshr <4 x i32> %i.x, splat (i32 16), !dbg !63392
  %i.z = trunc nuw <4 x i32> %i.y to <4 x i8>, !dbg !63393
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index19, !dbg !63394
  store <4 x i8> %i.z, ptr %i.aa, align 1, !dbg !63395
  %index.next21 = add nuw i64 %index19, 4, !dbg !63386 ; 2 uses
  %i.ab = icmp eq i64 %index.next21, %n.vec14, !dbg !63375
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63375, !llvm.loop !63366

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %2, %n.vec14, !dbg !63375
  br i1 %cmp.n22, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.preheader, !dbg !63375

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63375
  %xtraiter = and i64 %2, 1, !dbg !63375
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63375
  br i1 %lcmp.mod.not, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol.loopexit, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol, !dbg !63375

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !63387
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !63388, !noundef !403
  %i.ae = zext i8 %i.ad to i16, !dbg !63389
  %i.af = mul i16 %i.c, %i.ae, !dbg !63390
  %i.ag = zext i16 %i.af to i32, !dbg !63391
  %i.ah = mul nuw nsw i32 %i.ag, %i.g, !dbg !63392
  %i.ai = lshr i32 %i.ah, 16, !dbg !63392
  %i.aj = trunc nuw i32 %i.ai to i8, !dbg !63393
  %i.ak = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63386
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !63394
  store i8 %i.aj, ptr %i.al, align 1, !dbg !63395
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol.loopexit, !dbg !63375

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol.loopexit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.preheader ], [ %i.ak, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol ]
  %i.am = icmp eq i64 %2, %.neg, !dbg !63375
  br i1 %i.am, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit, !dbg !63375

iter.check40:                                     ; preds = %.lr.ph
  %diff.check24 = icmp ugt i64 %i.i, -32, !dbg !63375
  %or.cond55 = or i1 %min.iters.check25, %diff.check24, !dbg !63375
  br i1 %or.cond55, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader, label %vector.main.loop.iter.check26, !dbg !63375

vector.main.loop.iter.check26:                    ; preds = %iter.check40
  %min.iters.check27 = icmp ult i64 %2, 32, !dbg !63375
  br i1 %min.iters.check27, label %vec.epilog.ph44, label %vector.ph28, !dbg !63375

vector.ph28:                                      ; preds = %vector.main.loop.iter.check26
  %i.an = and i64 %2, 28
  %n.vec29 = and i64 %2, -32                      ; 4 uses
  %broadcast.splatinsert30 = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat31 = shufflevector <16 x i8> %broadcast.splatinsert30, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body32, !dbg !63375

vector.body32:                                    ; preds = %vector.ph28, %vector.body32
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body32 ], !dbg !63386 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %index33, !dbg !63387 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !63388
  %wide.load34 = load <16 x i8>, ptr %i.ao, align 1, !dbg !63388
  %wide.load35 = load <16 x i8>, ptr %i.ap, align 1, !dbg !63388
  %i.aq = and <16 x i8> %broadcast.splat31, %wide.load34, !dbg !63396
  %i.ar = and <16 x i8> %broadcast.splat31, %wide.load35, !dbg !63396
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %index33, !dbg !63394 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !63395
  store <16 x i8> %i.aq, ptr %i.as, align 1, !dbg !63395
  store <16 x i8> %i.ar, ptr %i.at, align 1, !dbg !63395
  %index.next36 = add nuw i64 %index33, 32, !dbg !63386 ; 2 uses
  %i.au = icmp eq i64 %index.next36, %n.vec29, !dbg !63375
  br i1 %i.au, label %middle.block37, label %vector.body32, !dbg !63375, !llvm.loop !63367

middle.block37:                                   ; preds = %vector.body32
  %cmp.n38 = icmp eq i64 %2, %n.vec29, !dbg !63375
  br i1 %cmp.n38, label %._crit_edge, label %vec.epilog.iter.check42, !dbg !63375

vec.epilog.iter.check42:                          ; preds = %middle.block37
  %min.epilog.iters.check43 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check43, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader, label %vec.epilog.ph44, !prof !557

vec.epilog.ph44:                                  ; preds = %vector.main.loop.iter.check26, %vec.epilog.iter.check42
  %vec.epilog.resume.val39 = phi i64 [ %n.vec29, %vec.epilog.iter.check42 ], [ 0, %vector.main.loop.iter.check26 ]
  %n.vec45 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert46 = insertelement <4 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat47 = shufflevector <4 x i8> %broadcast.splatinsert46, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body48

vec.epilog.vector.body48:                         ; preds = %vec.epilog.vector.body48, %vec.epilog.ph44
  %index49 = phi i64 [ %vec.epilog.resume.val39, %vec.epilog.ph44 ], [ %index.next51, %vec.epilog.vector.body48 ], !dbg !63386 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %index49, !dbg !63387
  %wide.load50 = load <4 x i8>, ptr %i.av, align 1, !dbg !63388
  %i.aw = and <4 x i8> %broadcast.splat47, %wide.load50, !dbg !63396
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %index49, !dbg !63394
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !dbg !63395
  %index.next51 = add nuw i64 %index49, 4, !dbg !63386 ; 2 uses
  %i.ay = icmp eq i64 %index.next51, %n.vec45, !dbg !63375
  br i1 %i.ay, label %vec.epilog.middle.block52, label %vec.epilog.vector.body48, !dbg !63375, !llvm.loop !63368

vec.epilog.middle.block52:                        ; preds = %vec.epilog.vector.body48
  %cmp.n53 = icmp eq i64 %2, %n.vec45, !dbg !63375
  br i1 %cmp.n53, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader, !dbg !63375

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader: ; preds = %iter.check40, %vec.epilog.iter.check42, %vec.epilog.middle.block52
  %.sroa.01.05.us.ph = phi i64 [ 0, %iter.check40 ], [ %n.vec29, %vec.epilog.iter.check42 ], [ %n.vec45, %vec.epilog.middle.block52 ] ; 3 uses
  %xtraiter57 = and i64 %2, 3, !dbg !63375        ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0, !dbg !63375
  br i1 %lcmp.mod58.not, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol.loopexit, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol, !dbg !63375

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol
  %.sroa.01.05.us.prol = phi i64 [ %i.bc, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol ], [ %.sroa.01.05.us.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol ], [ 0, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.us.prol, !dbg !63387
  %i.ba = load i8, ptr %i.az, align 1, !dbg !63388, !noundef !403
  %i.bb = and i8 %i.h, %i.ba, !dbg !63396
  %i.bc = add nuw i64 %.sroa.01.05.us.prol, 1, !dbg !63386 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.us.prol, !dbg !63394
  store i8 %i.bb, ptr %i.bd, align 1, !dbg !63395
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63375 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter57, !dbg !63375
  br i1 %prol.iter.cmp.not, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol.loopexit, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol, !dbg !63375, !llvm.loop !63369

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol.loopexit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader
  %.sroa.01.05.us.unr = phi i64 [ %.sroa.01.05.us.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.preheader ], [ %i.bc, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol ]
  %i.be = sub i64 %.sroa.01.05.us.ph, %2, !dbg !63375
  %i.bf = icmp ugt i64 %i.be, -4, !dbg !63375
  br i1 %i.bf, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us, !dbg !63375

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us
  %.sroa.01.05.us = phi i64 [ %i.by, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us ], [ %.sroa.01.05.us.unr, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.us, !dbg !63387
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !63388, !noundef !403
  %i.bi = and i8 %i.h, %i.bh, !dbg !63396
  %i.bj = add nuw i64 %.sroa.01.05.us, 1, !dbg !63386 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.us, !dbg !63394
  store i8 %i.bi, ptr %i.bk, align 1, !dbg !63395
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj, !dbg !63387
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !63388, !noundef !403
  %i.bn = and i8 %i.h, %i.bm, !dbg !63396
  %i.bo = add nuw i64 %.sroa.01.05.us, 2, !dbg !63386 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj, !dbg !63394
  store i8 %i.bn, ptr %i.bp, align 1, !dbg !63395
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo, !dbg !63387
  %i.br = load i8, ptr %i.bq, align 1, !dbg !63388, !noundef !403
  %i.bs = and i8 %i.h, %i.br, !dbg !63396
  %i.bt = add nuw i64 %.sroa.01.05.us, 3, !dbg !63386 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo, !dbg !63394
  store i8 %i.bs, ptr %i.bu, align 1, !dbg !63395
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt, !dbg !63387
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !63388, !noundef !403
  %i.bx = and i8 %i.h, %i.bw, !dbg !63396
  %i.by = add nuw i64 %.sroa.01.05.us, 4, !dbg !63386 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt, !dbg !63394
  store i8 %i.bx, ptr %i.bz, align 1, !dbg !63395
  %exitcond7.not.3 = icmp eq i64 %i.by, %2, !dbg !63385
  br i1 %exitcond7.not.3, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us, !dbg !63375, !llvm.loop !63370

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.us, %middle.block, %vec.epilog.middle.block, %middle.block37, %vec.epilog.middle.block52, %bb.a
  ret void, !dbg !63397

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.cs, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit ], [ %.sroa.01.05.unr, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit.prol.loopexit ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63387
  %i.cb = load i8, ptr %i.ca, align 1, !dbg !63388, !noundef !403
  %i.cc = zext i8 %i.cb to i16, !dbg !63389
  %i.cd = mul i16 %i.c, %i.cc, !dbg !63390
  %i.ce = zext i16 %i.cd to i32, !dbg !63391
  %i.cf = mul nuw nsw i32 %i.ce, %i.g, !dbg !63392
  %i.cg = lshr i32 %i.cf, 16, !dbg !63392
  %i.ch = trunc nuw i32 %i.cg to i8, !dbg !63393
  %i.ci = add nuw i64 %.sroa.01.05, 1, !dbg !63386 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63394
  store i8 %i.ch, ptr %i.cj, align 1, !dbg !63395
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci, !dbg !63387
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !63388, !noundef !403
  %i.cm = zext i8 %i.cl to i16, !dbg !63389
  %i.cn = mul i16 %i.c, %i.cm, !dbg !63390
  %i.co = zext i16 %i.cn to i32, !dbg !63391
  %i.cp = mul nuw nsw i32 %i.co, %i.g, !dbg !63392
  %i.cq = lshr i32 %i.cp, 16, !dbg !63392
  %i.cr = trunc nuw i32 %i.cq to i8, !dbg !63393
  %i.cs = add nuw i64 %.sroa.01.05, 2, !dbg !63386 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci, !dbg !63394
  store i8 %i.cr, ptr %i.ct, align 1, !dbg !63395
  %exitcond.not.1 = icmp eq i64 %i.cs, %2, !dbg !63385
  br i1 %exitcond.not.1, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0B8_.exit, !dbg !63375, !llvm.loop !63371
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63398 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63432
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !63423

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63432
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63432
  %i.c = load i32, ptr %3, align 4, !noundef !403
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 7                           ; 7 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !63423
  %i.f = sub i64 %i.b, %i.a, !dbg !63423
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !63423
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !63423
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !63423

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !63423
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !63423

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63423

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63433 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63434 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !63435
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !dbg !63435
  %wide.load7 = load <16 x i8>, ptr %i.i, align 1, !dbg !63435
  %i.j = shl <16 x i8> %wide.load, %broadcast.splat, !dbg !63436
  %i.k = shl <16 x i8> %wide.load7, %broadcast.splat, !dbg !63436
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63437 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !63438
  store <16 x i8> %i.j, ptr %i.l, align 1, !dbg !63438
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !63438
  %index.next = add nuw i64 %index, 32, !dbg !63433 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !63423
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !63423, !llvm.loop !63416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63423
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63423

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <8 x i8> poison, i8 %i.e, i64 0
  %broadcast.splat10 = shufflevector <8 x i8> %broadcast.splatinsert9, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !63433 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !63434
  %wide.load12 = load <8 x i8>, ptr %i.o, align 1, !dbg !63435
  %i.p = shl <8 x i8> %wide.load12, %broadcast.splat10, !dbg !63436
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !63437
  store <8 x i8> %i.p, ptr %i.q, align 1, !dbg !63438
  %index.next13 = add nuw i64 %index11, 8, !dbg !63433 ; 2 uses
  %i.r = icmp eq i64 %index.next13, %n.vec8, !dbg !63423
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63423, !llvm.loop !63417

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !63423
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !63423

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !63423          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63423
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63423

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.v, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !63434
  %i.t = load i8, ptr %i.s, align 1, !dbg !63435, !noundef !403
  %i.u = shl i8 %i.t, %i.e, !dbg !63436
  %i.v = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63433 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !63437
  store i8 %i.u, ptr %i.w, align 1, !dbg !63438
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63423 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63423
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63423, !llvm.loop !63418

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.v, %vec.epilog.scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.05.ph, %2, !dbg !63423
  %i.y = icmp ugt i64 %i.x, -4, !dbg !63423
  br i1 %i.y, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63423

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !63439

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63434
  %i.aa = load i8, ptr %i.z, align 1, !dbg !63435, !noundef !403
  %i.ab = shl i8 %i.aa, %i.e, !dbg !63436
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !63433 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63437
  store i8 %i.ab, ptr %i.ad, align 1, !dbg !63438
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac, !dbg !63434
  %i.af = load i8, ptr %i.ae, align 1, !dbg !63435, !noundef !403
  %i.ag = shl i8 %i.af, %i.e, !dbg !63436
  %i.ah = add nuw i64 %.sroa.01.05, 2, !dbg !63433 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac, !dbg !63437
  store i8 %i.ag, ptr %i.ai, align 1, !dbg !63438
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah, !dbg !63434
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !63435, !noundef !403
  %i.al = shl i8 %i.ak, %i.e, !dbg !63436
  %i.am = add nuw i64 %.sroa.01.05, 3, !dbg !63433 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah, !dbg !63437
  store i8 %i.al, ptr %i.an, align 1, !dbg !63438
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.am, !dbg !63434
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !63435, !noundef !403
  %i.aq = shl i8 %i.ap, %i.e, !dbg !63436
  %i.ar = add nuw i64 %.sroa.01.05, 4, !dbg !63433 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.am, !dbg !63437
  store i8 %i.aq, ptr %i.as, align 1, !dbg !63438
  %exitcond.not.3 = icmp eq i64 %i.ar, %2, !dbg !63432
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63423, !llvm.loop !63419
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalars_0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63440 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63476
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !63467

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63476
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63476
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 7 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !63467
  %i.d = sub i64 %i.b, %i.a, !dbg !63467
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !63467
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !63467
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !63467

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !63467
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !63467

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63467

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63477 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63478 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !63479
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !63479
  %wide.load7 = load <16 x i8>, ptr %i.g, align 1, !dbg !63479
  %i.h = mul <16 x i8> %broadcast.splat, %wide.load, !dbg !63480
  %i.i = mul <16 x i8> %broadcast.splat, %wide.load7, !dbg !63480
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63481 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !63482
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !63482
  store <16 x i8> %i.i, ptr %i.k, align 1, !dbg !63482
  %index.next = add nuw i64 %index, 32, !dbg !63477 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !63467
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !63467, !llvm.loop !63460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63467
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63467

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <8 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat10 = shufflevector <8 x i8> %broadcast.splatinsert9, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !63477 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !63478
  %wide.load12 = load <8 x i8>, ptr %i.m, align 1, !dbg !63479
  %i.n = mul <8 x i8> %broadcast.splat10, %wide.load12, !dbg !63480
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !63481
  store <8 x i8> %i.n, ptr %i.o, align 1, !dbg !63482
  %index.next13 = add nuw i64 %index11, 8, !dbg !63477 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !63467
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63467, !llvm.loop !63461

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !63467
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !63467

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !63467          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63467
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63467

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !63478
  %i.r = load i8, ptr %i.q, align 1, !dbg !63479, !noundef !403
  %i.s = mul i8 %i.c, %i.r, !dbg !63480
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63477 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !63481
  store i8 %i.s, ptr %i.u, align 1, !dbg !63482
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63467 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63467
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63467, !llvm.loop !63462

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !63467
  %i.w = icmp ugt i64 %i.v, -4, !dbg !63467
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63467

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !63483

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63478
  %i.y = load i8, ptr %i.x, align 1, !dbg !63479, !noundef !403
  %i.z = mul i8 %i.c, %i.y, !dbg !63480
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !63477 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63481
  store i8 %i.z, ptr %i.ab, align 1, !dbg !63482
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !63478
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !63479, !noundef !403
  %i.ae = mul i8 %i.c, %i.ad, !dbg !63480
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !63477 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !63481
  store i8 %i.ae, ptr %i.ag, align 1, !dbg !63482
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af, !dbg !63478
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !63479, !noundef !403
  %i.aj = mul i8 %i.c, %i.ai, !dbg !63480
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !63477 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.af, !dbg !63481
  store i8 %i.aj, ptr %i.al, align 1, !dbg !63482
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak, !dbg !63478
  %i.an = load i8, ptr %i.am, align 1, !dbg !63479, !noundef !403
  %i.ao = mul i8 %i.c, %i.an, !dbg !63480
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !63477 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak, !dbg !63481
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !63482
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !63476
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63467, !llvm.loop !63463
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63484 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63518
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !63508

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63518
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63518
  %i.c = load i8, ptr %3, align 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !63508
  %i.d = sub i64 %i.b, %i.a, !dbg !63508
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !63508
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !63508
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !63508

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %2, 16, !dbg !63508
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !63508

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 8
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body, !dbg !63508

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63519 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63520
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !63521 ; 2 uses
  %i.g = icmp ne <16 x i8> %wide.load, zeroinitializer, !dbg !63522 ; 2 uses
  %i.h = tail call <16 x i8> @llvm.masked.urem.v16i8(<16 x i8> %broadcast.splat, <16 x i8> %wide.load, <16 x i1> %i.g), !dbg !63523
  %predphi = select <16 x i1> %i.g, <16 x i8> %i.h, <16 x i8> zeroinitializer, !dbg !63524
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63525
  store <16 x i8> %predphi, ptr %i.i, align 1, !dbg !63526
  %index.next = add nuw i64 %index, 16, !dbg !63519 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !63508
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !63508, !llvm.loop !63502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63508
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63508

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert10 = insertelement <8 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat11 = shufflevector <8 x i8> %broadcast.splatinsert10, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !63519 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !63520
  %wide.load13 = load <8 x i8>, ptr %i.k, align 1, !dbg !63521 ; 2 uses
  %i.l = icmp ne <8 x i8> %wide.load13, zeroinitializer, !dbg !63522 ; 2 uses
  %i.m = tail call <8 x i8> @llvm.masked.urem.v8i8(<8 x i8> %broadcast.splat11, <8 x i8> %wide.load13, <8 x i1> %i.l), !dbg !63523
  %predphi14 = select <8 x i1> %i.l, <8 x i8> %i.m, <8 x i8> zeroinitializer, !dbg !63524
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !63525
  store <8 x i8> %predphi14, ptr %i.n, align 1, !dbg !63526
  %index.next15 = add nuw i64 %index12, 8, !dbg !63519 ; 2 uses
  %i.o = icmp eq i64 %index.next15, %n.vec9, !dbg !63508
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63508, !llvm.loop !63503

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %2, %n.vec9, !dbg !63508
  br i1 %cmp.n16, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !63508

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63522
  %xtraiter = and i64 %2, 1, !dbg !63522
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63522
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63522

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !63520
  %i.q = load i8, ptr %i.p, align 1, !dbg !63521, !noundef !403 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0, !dbg !63522
  br i1 %i.r, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.prol, label %bb.b, !dbg !63522

bb.b:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.s = urem i8 %i.c, %i.q, !dbg !63523
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.prol, !dbg !63527

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.prol: ; preds = %bb.b, %vec.epilog.scalar.ph.prol
  %.sroa.0.0.i.prol = phi i8 [ %i.s, %bb.b ], [ 0, %vec.epilog.scalar.ph.prol ], !dbg !63524
  %i.t = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63519
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !63525
  store i8 %.sroa.0.0.i.prol, ptr %i.u, align 1, !dbg !63526
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !63522

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.prol ]
  %i.v = icmp eq i64 %2, %.neg, !dbg !63522
  br i1 %i.v, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63522

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.1, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !63528

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.1
  %.sroa.01.05 = phi i64 [ %i.ag, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.1 ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63520
  %i.x = load i8, ptr %i.w, align 1, !dbg !63521, !noundef !403 ; 2 uses
  %i.y = icmp eq i8 %i.x, 0, !dbg !63522
  br i1 %i.y, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit, label %bb.c, !dbg !63522

bb.c:                                             ; preds = %vec.epilog.scalar.ph
  %i.z = urem i8 %i.c, %i.x, !dbg !63523
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit, !dbg !63527

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit: ; preds = %vec.epilog.scalar.ph, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.z, %bb.c ], [ 0, %vec.epilog.scalar.ph ], !dbg !63524
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !63519 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63525
  store i8 %.sroa.0.0.i, ptr %i.ab, align 1, !dbg !63526
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !63520
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !63521, !noundef !403 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0, !dbg !63522
  br i1 %i.ae, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.1, label %bb.d, !dbg !63522

bb.d:                                             ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit
  %i.af = urem i8 %i.c, %i.ad, !dbg !63523
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.1, !dbg !63527

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit.1: ; preds = %bb.d, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit
  %.sroa.0.0.i.1 = phi i8 [ %i.af, %bb.d ], [ 0, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0B8_.exit ], !dbg !63524
  %i.ag = add nuw i64 %.sroa.01.05, 2, !dbg !63519 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !63525
  store i8 %.sroa.0.0.i.1, ptr %i.ah, align 1, !dbg !63526
  %exitcond.not.1 = icmp eq i64 %i.ag, %2, !dbg !63518
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63508, !llvm.loop !63504
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl28prim_wrapping_sub_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63529 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63566
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !63556

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63566
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63566
  %i.c = load i8, ptr %3, align 1, !noundef !403  ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !63556
  %i.d = sub i64 %i.b, %i.a, !dbg !63556
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !63556
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !63556
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !63556

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 32, !dbg !63556
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !63556

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63556

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63567 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63568 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !63569
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !63569
  %wide.load7 = load <16 x i8>, ptr %i.g, align 1, !dbg !63569
  %i.h = sub <16 x i8> %broadcast.splat, %wide.load, !dbg !63570
  %i.i = sub <16 x i8> %broadcast.splat, %wide.load7, !dbg !63570
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63571 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !63572
  store <16 x i8> %i.h, ptr %i.j, align 1, !dbg !63572
  store <16 x i8> %i.i, ptr %i.k, align 1, !dbg !63572
  %index.next = add nuw i64 %index, 32, !dbg !63567 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !63556
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !63556, !llvm.loop !63549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63556
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63556

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i8> %broadcast.splatinsert9, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !63567 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index11, !dbg !63568
  %wide.load12 = load <4 x i8>, ptr %i.m, align 1, !dbg !63569
  %i.n = sub <4 x i8> %broadcast.splat10, %wide.load12, !dbg !63570
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index11, !dbg !63571
  store <4 x i8> %i.n, ptr %i.o, align 1, !dbg !63572
  %index.next13 = add nuw i64 %index11, 4, !dbg !63567 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !63556
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63556, !llvm.loop !63550

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !63556
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !63556

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !63556          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63556
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63556

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !63568
  %i.r = load i8, ptr %i.q, align 1, !dbg !63569, !noundef !403
  %i.s = sub i8 %i.c, %i.r, !dbg !63570
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63567 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !63571
  store i8 %i.s, ptr %i.u, align 1, !dbg !63572
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63556 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63556
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63556, !llvm.loop !63551

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !63556
  %i.w = icmp ugt i64 %i.v, -4, !dbg !63556
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63556

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !63573

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63568
  %i.y = load i8, ptr %i.x, align 1, !dbg !63569, !noundef !403
  %i.z = sub i8 %i.c, %i.y, !dbg !63570
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !63567 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63571
  store i8 %i.z, ptr %i.ab, align 1, !dbg !63572
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !63568
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !63569, !noundef !403
  %i.ae = sub i8 %i.c, %i.ad, !dbg !63570
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !63567 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !63571
  store i8 %i.ae, ptr %i.ag, align 1, !dbg !63572
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af, !dbg !63568
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !63569, !noundef !403
  %i.aj = sub i8 %i.c, %i.ai, !dbg !63570
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !63567 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.af, !dbg !63571
  store i8 %i.aj, ptr %i.al, align 1, !dbg !63572
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak, !dbg !63568
  %i.an = load i8, ptr %i.am, align 1, !dbg !63569, !noundef !403
  %i.ao = sub i8 %i.c, %i.an, !dbg !63570
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !63567 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak, !dbg !63571
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !63572
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !63566
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63556, !llvm.loop !63552
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63574 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63617
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !63607

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63617
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63617
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 3 uses
  %i.d = icmp eq i16 %i.c, 0
  %i.e = lshr i16 %i.c, 8                         ; 5 uses
  %i.f = and i16 %i.c, 255                        ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i8, ptr %i.g, align 2
  %i.i = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.h, i1 false)
  %i.j = zext nneg i8 %i.i to i16                 ; 7 uses
  %min.iters.check25 = icmp ult i64 %2, 8, !dbg !63607
  %i.k = sub i64 %i.b, %i.a, !dbg !63607
  %diff.check24 = icmp ugt i64 %i.k, -32, !dbg !63607
  %or.cond55 = or i1 %min.iters.check25, %diff.check24, !dbg !63607 ; 2 uses
  br i1 %i.d, label %iter.check40, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  br i1 %or.cond55, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, label %vector.main.loop.iter.check, !dbg !63607

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %2, 32, !dbg !63607
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph, !dbg !63607

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <16 x i16> poison, i16 %i.f, i64 0
  %broadcast.splat12 = shufflevector <16 x i16> %broadcast.splatinsert11, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63607

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63618 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63619 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !63620
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !dbg !63620
  %wide.load13 = load <16 x i8>, ptr %i.n, align 1, !dbg !63620
  %i.o = zext <16 x i8> %wide.load to <16 x i16>, !dbg !63621 ; 2 uses
  %i.p = zext <16 x i8> %wide.load13 to <16 x i16>, !dbg !63621 ; 2 uses
  %i.q = mul nuw <16 x i16> %broadcast.splat, %i.o, !dbg !63622
  %i.r = mul nuw <16 x i16> %broadcast.splat, %i.p, !dbg !63622
  %i.s = mul nuw <16 x i16> %broadcast.splat12, %i.o, !dbg !63623
  %i.t = mul nuw <16 x i16> %broadcast.splat12, %i.p, !dbg !63623
  %i.u = lshr <16 x i16> %i.s, splat (i16 8), !dbg !63623
  %i.v = lshr <16 x i16> %i.t, splat (i16 8), !dbg !63623
  %i.w = add nuw <16 x i16> %i.u, %i.q, !dbg !63624
  %i.x = add nuw <16 x i16> %i.v, %i.r, !dbg !63624
  %i.y = lshr <16 x i16> %i.w, splat (i16 8), !dbg !63625
  %i.z = lshr <16 x i16> %i.x, splat (i16 8), !dbg !63625
  %i.aa = trunc nuw <16 x i16> %i.y to <16 x i8>, !dbg !63626
  %i.ab = trunc nuw <16 x i16> %i.z to <16 x i8>, !dbg !63626
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63627 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !63628
  store <16 x i8> %i.aa, ptr %i.ac, align 1, !dbg !63628
  store <16 x i8> %i.ab, ptr %i.ad, align 1, !dbg !63628
  %index.next = add nuw i64 %index, 32, !dbg !63618 ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec, !dbg !63607
  br i1 %i.ae, label %middle.block, label %vector.body, !dbg !63607, !llvm.loop !63597

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63607
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63607

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert15 = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat16 = shufflevector <8 x i16> %broadcast.splatinsert15, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x i16> poison, i16 %i.f, i64 0
  %broadcast.splat18 = shufflevector <8 x i16> %broadcast.splatinsert17, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !63618 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index19, !dbg !63619
  %wide.load20 = load <8 x i8>, ptr %i.af, align 1, !dbg !63620
  %i.ag = zext <8 x i8> %wide.load20 to <8 x i16>, !dbg !63621 ; 2 uses
  %i.ah = mul nuw <8 x i16> %broadcast.splat16, %i.ag, !dbg !63622
  %i.ai = mul nuw <8 x i16> %broadcast.splat18, %i.ag, !dbg !63623
  %i.aj = lshr <8 x i16> %i.ai, splat (i16 8), !dbg !63623
  %i.ak = add nuw <8 x i16> %i.aj, %i.ah, !dbg !63624
  %i.al = lshr <8 x i16> %i.ak, splat (i16 8), !dbg !63625
  %i.am = trunc nuw <8 x i16> %i.al to <8 x i8>, !dbg !63626
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %index19, !dbg !63627
  store <8 x i8> %i.am, ptr %i.an, align 1, !dbg !63628
  %index.next21 = add nuw i64 %index19, 8, !dbg !63618 ; 2 uses
  %i.ao = icmp eq i64 %index.next21, %n.vec14, !dbg !63607
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63607, !llvm.loop !63598

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %2, %n.vec14, !dbg !63607
  br i1 %cmp.n22, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, !dbg !63607

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63607
  %xtraiter = and i64 %2, 1, !dbg !63607
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63607
  br i1 %lcmp.mod.not, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol.loopexit, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol, !dbg !63607

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !63619
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !63620, !noundef !403
  %i.ar = zext i8 %i.aq to i16, !dbg !63621       ; 2 uses
  %i.as = mul nuw i16 %i.e, %i.ar, !dbg !63622
  %i.at = mul nuw i16 %i.f, %i.ar, !dbg !63623
  %i.au = lshr i16 %i.at, 8, !dbg !63623
  %i.av = add nuw i16 %i.au, %i.as, !dbg !63624
  %i.aw = lshr i16 %i.av, 8, !dbg !63625
  %.sroa.0.0.i.prol = trunc nuw i16 %i.aw to i8, !dbg !63626
  %i.ax = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63618
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !63627
  store i8 %.sroa.0.0.i.prol, ptr %i.ay, align 1, !dbg !63628
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol.loopexit, !dbg !63607

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol.loopexit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader ], [ %i.ax, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol ]
  %i.az = icmp eq i64 %2, %.neg, !dbg !63607
  br i1 %i.az, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, !dbg !63607

iter.check40:                                     ; preds = %.lr.ph
  br i1 %or.cond55, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, label %vector.main.loop.iter.check26, !dbg !63607

vector.main.loop.iter.check26:                    ; preds = %iter.check40
  %min.iters.check27 = icmp ult i64 %2, 32, !dbg !63607
  br i1 %min.iters.check27, label %vec.epilog.ph44, label %vector.ph28, !dbg !63607

vector.ph28:                                      ; preds = %vector.main.loop.iter.check26
  %i.ba = and i64 %2, 24
  %n.vec29 = and i64 %2, -32                      ; 4 uses
  %broadcast.splatinsert30 = insertelement <16 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat31 = shufflevector <16 x i16> %broadcast.splatinsert30, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body32, !dbg !63607

vector.body32:                                    ; preds = %vector.ph28, %vector.body32
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body32 ], !dbg !63618 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %index33, !dbg !63619 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !63620
  %wide.load34 = load <16 x i8>, ptr %i.bb, align 1, !dbg !63620
  %wide.load35 = load <16 x i8>, ptr %i.bc, align 1, !dbg !63620
  %i.bd = zext <16 x i8> %wide.load34 to <16 x i16>, !dbg !63629
  %i.be = zext <16 x i8> %wide.load35 to <16 x i16>, !dbg !63629
  %i.bf = lshr <16 x i16> %i.bd, %broadcast.splat31, !dbg !63630
  %i.bg = lshr <16 x i16> %i.be, %broadcast.splat31, !dbg !63630
  %i.bh = trunc nuw <16 x i16> %i.bf to <16 x i8>, !dbg !63626
  %i.bi = trunc nuw <16 x i16> %i.bg to <16 x i8>, !dbg !63626
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %index33, !dbg !63627 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !63628
  store <16 x i8> %i.bh, ptr %i.bj, align 1, !dbg !63628
  store <16 x i8> %i.bi, ptr %i.bk, align 1, !dbg !63628
  %index.next36 = add nuw i64 %index33, 32, !dbg !63618 ; 2 uses
  %i.bl = icmp eq i64 %index.next36, %n.vec29, !dbg !63607
  br i1 %i.bl, label %middle.block37, label %vector.body32, !dbg !63607, !llvm.loop !63599

middle.block37:                                   ; preds = %vector.body32
  %cmp.n38 = icmp eq i64 %2, %n.vec29, !dbg !63607
  br i1 %cmp.n38, label %._crit_edge, label %vec.epilog.iter.check42, !dbg !63607

vec.epilog.iter.check42:                          ; preds = %middle.block37
  %min.epilog.iters.check43 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check43, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, label %vec.epilog.ph44, !prof !563

vec.epilog.ph44:                                  ; preds = %vector.main.loop.iter.check26, %vec.epilog.iter.check42
  %vec.epilog.resume.val39 = phi i64 [ %n.vec29, %vec.epilog.iter.check42 ], [ 0, %vector.main.loop.iter.check26 ]
  %n.vec45 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert46 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat47 = shufflevector <8 x i16> %broadcast.splatinsert46, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body48

vec.epilog.vector.body48:                         ; preds = %vec.epilog.vector.body48, %vec.epilog.ph44
  %index49 = phi i64 [ %vec.epilog.resume.val39, %vec.epilog.ph44 ], [ %index.next51, %vec.epilog.vector.body48 ], !dbg !63618 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %index49, !dbg !63619
  %wide.load50 = load <8 x i8>, ptr %i.bm, align 1, !dbg !63620
  %i.bn = zext <8 x i8> %wide.load50 to <8 x i16>, !dbg !63629
  %i.bo = lshr <8 x i16> %i.bn, %broadcast.splat47, !dbg !63630
  %i.bp = trunc nuw <8 x i16> %i.bo to <8 x i8>, !dbg !63626
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %index49, !dbg !63627
  store <8 x i8> %i.bp, ptr %i.bq, align 1, !dbg !63628
  %index.next51 = add nuw i64 %index49, 8, !dbg !63618 ; 2 uses
  %i.br = icmp eq i64 %index.next51, %n.vec45, !dbg !63607
  br i1 %i.br, label %vec.epilog.middle.block52, label %vec.epilog.vector.body48, !dbg !63607, !llvm.loop !63600

vec.epilog.middle.block52:                        ; preds = %vec.epilog.vector.body48
  %cmp.n53 = icmp eq i64 %2, %n.vec45, !dbg !63607
  br i1 %cmp.n53, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, !dbg !63607

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader: ; preds = %iter.check40, %vec.epilog.iter.check42, %vec.epilog.middle.block52
  %.sroa.01.05.us.ph = phi i64 [ 0, %iter.check40 ], [ %n.vec29, %vec.epilog.iter.check42 ], [ %n.vec45, %vec.epilog.middle.block52 ] ; 3 uses
  %xtraiter57 = and i64 %2, 3, !dbg !63607        ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0, !dbg !63607
  br i1 %lcmp.mod58.not, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol.loopexit, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol, !dbg !63607

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol
  %.sroa.01.05.us.prol = phi i64 [ %i.bw, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol ], [ %.sroa.01.05.us.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol ], [ 0, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.us.prol, !dbg !63619
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !63620, !noundef !403
  %i.bu = zext i8 %i.bt to i16, !dbg !63629
  %i.bv = lshr i16 %i.bu, %i.j, !dbg !63630
  %.sroa.0.0.i.us.prol = trunc nuw i16 %i.bv to i8, !dbg !63626
  %i.bw = add nuw i64 %.sroa.01.05.us.prol, 1, !dbg !63618 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.us.prol, !dbg !63627
  store i8 %.sroa.0.0.i.us.prol, ptr %i.bx, align 1, !dbg !63628
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63607 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter57, !dbg !63607
  br i1 %prol.iter.cmp.not, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol.loopexit, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol, !dbg !63607, !llvm.loop !63601

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol.loopexit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader
  %.sroa.01.05.us.unr = phi i64 [ %.sroa.01.05.us.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader ], [ %i.bw, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol ]
  %i.by = sub i64 %.sroa.01.05.us.ph, %2, !dbg !63607
  %i.bz = icmp ugt i64 %i.by, -4, !dbg !63607
  br i1 %i.bz, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, !dbg !63607

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us
  %.sroa.01.05.us = phi i64 [ %i.cw, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us ], [ %.sroa.01.05.us.unr, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.us, !dbg !63619
  %i.cb = load i8, ptr %i.ca, align 1, !dbg !63620, !noundef !403
  %i.cc = zext i8 %i.cb to i16, !dbg !63629
  %i.cd = lshr i16 %i.cc, %i.j, !dbg !63630
  %.sroa.0.0.i.us = trunc nuw i16 %i.cd to i8, !dbg !63626
  %i.ce = add nuw i64 %.sroa.01.05.us, 1, !dbg !63618 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.us, !dbg !63627
  store i8 %.sroa.0.0.i.us, ptr %i.cf, align 1, !dbg !63628
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce, !dbg !63619
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !63620, !noundef !403
  %i.ci = zext i8 %i.ch to i16, !dbg !63629
  %i.cj = lshr i16 %i.ci, %i.j, !dbg !63630
  %.sroa.0.0.i.us.1 = trunc nuw i16 %i.cj to i8, !dbg !63626
  %i.ck = add nuw i64 %.sroa.01.05.us, 2, !dbg !63618 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce, !dbg !63627
  store i8 %.sroa.0.0.i.us.1, ptr %i.cl, align 1, !dbg !63628
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck, !dbg !63619
  %i.cn = load i8, ptr %i.cm, align 1, !dbg !63620, !noundef !403
  %i.co = zext i8 %i.cn to i16, !dbg !63629
  %i.cp = lshr i16 %i.co, %i.j, !dbg !63630
  %.sroa.0.0.i.us.2 = trunc nuw i16 %i.cp to i8, !dbg !63626
  %i.cq = add nuw i64 %.sroa.01.05.us, 3, !dbg !63618 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck, !dbg !63627
  store i8 %.sroa.0.0.i.us.2, ptr %i.cr, align 1, !dbg !63628
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq, !dbg !63619
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !63620, !noundef !403
  %i.cu = zext i8 %i.ct to i16, !dbg !63629
  %i.cv = lshr i16 %i.cu, %i.j, !dbg !63630
  %.sroa.0.0.i.us.3 = trunc nuw i16 %i.cv to i8, !dbg !63626
  %i.cw = add nuw i64 %.sroa.01.05.us, 4, !dbg !63618 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq, !dbg !63627
  store i8 %.sroa.0.0.i.us.3, ptr %i.cx, align 1, !dbg !63628
  %exitcond7.not.3 = icmp eq i64 %i.cw, %2, !dbg !63617
  br i1 %exitcond7.not.3, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, !dbg !63607, !llvm.loop !63602

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, %middle.block, %vec.epilog.middle.block, %middle.block37, %vec.epilog.middle.block52, %bb.a
  ret void, !dbg !63631

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.dq, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit ], [ %.sroa.01.05.unr, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.prol.loopexit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63619
  %i.cz = load i8, ptr %i.cy, align 1, !dbg !63620, !noundef !403
  %i.da = zext i8 %i.cz to i16, !dbg !63621       ; 2 uses
  %i.db = mul nuw i16 %i.e, %i.da, !dbg !63622
  %i.dc = mul nuw i16 %i.f, %i.da, !dbg !63623
  %i.dd = lshr i16 %i.dc, 8, !dbg !63623
  %i.de = add nuw i16 %i.dd, %i.db, !dbg !63624
  %i.df = lshr i16 %i.de, 8, !dbg !63625
  %.sroa.0.0.i = trunc nuw i16 %i.df to i8, !dbg !63626
  %i.dg = add nuw i64 %.sroa.01.05, 1, !dbg !63618 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63627
  store i8 %.sroa.0.0.i, ptr %i.dh, align 1, !dbg !63628
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg, !dbg !63619
  %i.dj = load i8, ptr %i.di, align 1, !dbg !63620, !noundef !403
  %i.dk = zext i8 %i.dj to i16, !dbg !63621       ; 2 uses
  %i.dl = mul nuw i16 %i.e, %i.dk, !dbg !63622
  %i.dm = mul nuw i16 %i.f, %i.dk, !dbg !63623
  %i.dn = lshr i16 %i.dm, 8, !dbg !63623
  %i.do = add nuw i16 %i.dn, %i.dl, !dbg !63624
  %i.dp = lshr i16 %i.do, 8, !dbg !63625
  %.sroa.0.0.i.1 = trunc nuw i16 %i.dp to i8, !dbg !63626
  %i.dq = add nuw i64 %.sroa.01.05, 2, !dbg !63618 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg, !dbg !63627
  store i8 %.sroa.0.0.i.1, ptr %i.dr, align 1, !dbg !63628
  %exitcond.not.1 = icmp eq i64 %i.dq, %2, !dbg !63617
  br i1 %exitcond.not.1, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, !dbg !63607, !llvm.loop !63603
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1b_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63632 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63666
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !63656

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !63666
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !63666
  %i.c = load i8, ptr %3, align 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !63656
  %i.d = sub i64 %i.b, %i.a, !dbg !63656
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !63656
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !63656
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !63656

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %2, 16, !dbg !63656
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph, !dbg !63656

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 8
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body, !dbg !63656

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63667 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !63668
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !63669 ; 2 uses
  %i.g = icmp ne <16 x i8> %wide.load, zeroinitializer, !dbg !63670 ; 2 uses
  %i.h = tail call <16 x i8> @llvm.masked.udiv.v16i8(<16 x i8> %broadcast.splat, <16 x i8> %wide.load, <16 x i1> %i.g), !dbg !63671
  %predphi = select <16 x i1> %i.g, <16 x i8> %i.h, <16 x i8> zeroinitializer, !dbg !63672
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !63673
  store <16 x i8> %predphi, ptr %i.i, align 1, !dbg !63674
  %index.next = add nuw i64 %index, 16, !dbg !63667 ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !63656
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !63656, !llvm.loop !63650

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63656
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !63656

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %2, -8                        ; 3 uses
  %broadcast.splatinsert10 = insertelement <8 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat11 = shufflevector <8 x i8> %broadcast.splatinsert10, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !63667 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !63668
  %wide.load13 = load <8 x i8>, ptr %i.k, align 1, !dbg !63669 ; 2 uses
  %i.l = icmp ne <8 x i8> %wide.load13, zeroinitializer, !dbg !63670 ; 2 uses
  %i.m = tail call <8 x i8> @llvm.masked.udiv.v8i8(<8 x i8> %broadcast.splat11, <8 x i8> %wide.load13, <8 x i1> %i.l), !dbg !63671
  %predphi14 = select <8 x i1> %i.l, <8 x i8> %i.m, <8 x i8> zeroinitializer, !dbg !63672
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !63673
  store <8 x i8> %predphi14, ptr %i.n, align 1, !dbg !63674
  %index.next15 = add nuw i64 %index12, 8, !dbg !63667 ; 2 uses
  %i.o = icmp eq i64 %index.next15, %n.vec9, !dbg !63656
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !63656, !llvm.loop !63651

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %2, %n.vec9, !dbg !63656
  br i1 %cmp.n16, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !63656

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63670
  %xtraiter = and i64 %2, 1, !dbg !63670
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63670
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !63670

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !63668
  %i.q = load i8, ptr %i.p, align 1, !dbg !63669, !noundef !403 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0, !dbg !63670
  br i1 %i.r, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.prol, label %bb.b, !dbg !63670

bb.b:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.s = udiv i8 %i.c, %i.q, !dbg !63671
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.prol, !dbg !63675

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.prol: ; preds = %bb.b, %vec.epilog.scalar.ph.prol
  %.sroa.0.0.i.prol = phi i8 [ %i.s, %bb.b ], [ 0, %vec.epilog.scalar.ph.prol ], !dbg !63672
  %i.t = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !63667
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !63673
  store i8 %.sroa.0.0.i.prol, ptr %i.u, align 1, !dbg !63674
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !63670

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.prol ]
  %i.v = icmp eq i64 %2, %.neg, !dbg !63670
  br i1 %i.v, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63670

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.1, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !63676

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.1
  %.sroa.01.05 = phi i64 [ %i.ag, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.1 ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !63668
  %i.x = load i8, ptr %i.w, align 1, !dbg !63669, !noundef !403 ; 2 uses
  %i.y = icmp eq i8 %i.x, 0, !dbg !63670
  br i1 %i.y, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit, label %bb.c, !dbg !63670

bb.c:                                             ; preds = %vec.epilog.scalar.ph
  %i.z = udiv i8 %i.c, %i.x, !dbg !63671
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit, !dbg !63675

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit: ; preds = %vec.epilog.scalar.ph, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.z, %bb.c ], [ 0, %vec.epilog.scalar.ph ], !dbg !63672
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !63667 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !63673
  store i8 %.sroa.0.0.i, ptr %i.ab, align 1, !dbg !63674
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !63668
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !63669, !noundef !403 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0, !dbg !63670
  br i1 %i.ae, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.1, label %bb.d, !dbg !63670

bb.d:                                             ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit
  %i.af = udiv i8 %i.c, %i.ad, !dbg !63671
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.1, !dbg !63675

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit.1: ; preds = %bb.d, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit
  %.sroa.0.0.i.1 = phi i8 [ %i.af, %bb.d ], [ 0, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0B8_.exit ], !dbg !63672
  %i.ag = add nuw i64 %.sroa.01.05, 2, !dbg !63667 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa, !dbg !63673
  store i8 %.sroa.0.0.i.1, ptr %i.ah, align 1, !dbg !63674
  %exitcond.not.1 = icmp eq i64 %i.ag, %2, !dbg !63666
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !63656, !llvm.loop !63652
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelldNCNvXs0_NtNtB4_10arithmetic6signedlNtB1e_29PrimitiveArithmeticKernelImpl20prim_true_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !63677 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !63716
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !63704

.lr.ph:                                           ; preds = %bb.a
  %i.a = load double, ptr %3, align 8, !noundef !403 ; 6 uses
  %min.iters.check = icmp ult i64 %2, 6, !dbg !63704
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !63704

vector.memcheck:                                  ; preds = %.lr.ph
  %i.b = shl i64 %2, 3, !dbg !63704
  %i.c = getelementptr i8, ptr %1, i64 %i.b, !dbg !63704
  %i.d = shl i64 %2, 2, !dbg !63704
  %i.e = getelementptr i8, ptr %0, i64 %i.d, !dbg !63704
  %bound0 = icmp ult ptr %1, %i.e, !dbg !63704
  %bound1 = icmp ult ptr %0, %i.c, !dbg !63704
  %found.conflict = and i1 %bound0, %bound1, !dbg !63704
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !63717

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !63717

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !63717 ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !63718 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !63719
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !dbg !63719, !alias.scope !63710
  %wide.load7 = load <2 x i32>, ptr %i.g, align 4, !dbg !63719, !alias.scope !63710
  %i.h = sitofp <2 x i32> %wide.load to <2 x double>, !dbg !63720
  %i.i = sitofp <2 x i32> %wide.load7 to <2 x double>, !dbg !63720
  %i.j = fmul <2 x double> %broadcast.splat, %i.h, !dbg !63720
  %i.k = fmul <2 x double> %broadcast.splat, %i.i, !dbg !63720
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !63721 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !63722
  store <2 x double> %i.j, ptr %i.l, align 8, !dbg !63722, !alias.scope !63715, !noalias !63710
  store <2 x double> %i.k, ptr %i.m, align 8, !dbg !63722, !alias.scope !63715, !noalias !63710
  %index.next = add nuw i64 %index, 4, !dbg !63717 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !63704
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !63704, !llvm.loop !63698

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !63704
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !63704

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !63704          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !63704
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63704

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %scalar.ph.prol ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !63718
  %i.p = load i32, ptr %i.o, align 4, !dbg !63719, !noundef !403
  %i.q = sitofp i32 %i.p to double, !dbg !63720
  %i.r = fmul double %i.a, %i.q, !dbg !63720
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !63717 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !63721
  store double %i.r, ptr %i.t, align 8, !dbg !63722
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !63704 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !63704
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !63704, !llvm.loop !63699

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !63704
  %i.v = icmp ugt i64 %i.u, -4, !dbg !63704
  br i1 %i.v, label %._crit_edge, label %scalar.ph, !dbg !63704
end_hunk_1
begin_hunk_2_@_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelsdNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl20prim_true_div_scalar0EB4_:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66116 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66117 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !66118
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !dbg !66118, !alias.scope !66109
  %wide.load7 = load <2 x i16>, ptr %i.g, align 2, !dbg !66118, !alias.scope !66109
  %i.h = sitofp <2 x i16> %wide.load to <2 x double>, !dbg !66119
  %i.i = sitofp <2 x i16> %wide.load7 to <2 x double>, !dbg !66119
  %i.j = fmul <2 x double> %broadcast.splat, %i.h, !dbg !66119
  %i.k = fmul <2 x double> %broadcast.splat, %i.i, !dbg !66119
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !66120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !66121
  store <2 x double> %i.j, ptr %i.l, align 8, !dbg !66121, !alias.scope !66114, !noalias !66109
  store <2 x double> %i.k, ptr %i.m, align 8, !dbg !66121, !alias.scope !66114, !noalias !66109
  %index.next = add nuw i64 %index, 4, !dbg !66116 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !66103
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !66103, !llvm.loop !66097

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66103
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !66103

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66103          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66103
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66103

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %scalar.ph.prol ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66117
  %i.p = load i16, ptr %i.o, align 2, !dbg !66118, !noundef !403
  %i.q = sitofp i16 %i.p to double, !dbg !66119
  %i.r = fmul double %i.a, %i.q, !dbg !66119
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66116 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66120
  store double %i.r, ptr %i.t, align 8, !dbg !66121
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66103 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66103
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66103, !llvm.loop !66098

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !66103
  %i.v = icmp ugt i64 %i.u, -4, !dbg !66103
  br i1 %i.v, label %._crit_edge, label %scalar.ph, !dbg !66103

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void, !dbg !66122

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.01.05 = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.05.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66117
  %i.x = load i16, ptr %i.w, align 2, !dbg !66118, !noundef !403
  %i.y = sitofp i16 %i.x to double, !dbg !66119
  %i.z = fmul double %i.a, %i.y, !dbg !66119
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !66116 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66120
  store double %i.z, ptr %i.ab, align 8, !dbg !66121
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !66117
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !66118, !noundef !403
  %i.ae = sitofp i16 %i.ad to double, !dbg !66119
  %i.af = fmul double %i.a, %i.ae, !dbg !66119
  %i.ag = add nuw i64 %.sroa.01.05, 2, !dbg !66116 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa, !dbg !66120
  store double %i.af, ptr %i.ah, align 8, !dbg !66121
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ag, !dbg !66117
  %i.aj = load i16, ptr %i.ai, align 2, !dbg !66118, !noundef !403
  %i.ak = sitofp i16 %i.aj to double, !dbg !66119
  %i.al = fmul double %i.a, %i.ak, !dbg !66119
  %i.am = add nuw i64 %.sroa.01.05, 3, !dbg !66116 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ag, !dbg !66120
  store double %i.al, ptr %i.an, align 8, !dbg !66121
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am, !dbg !66117
  %i.ap = load i16, ptr %i.ao, align 2, !dbg !66118, !noundef !403
  %i.aq = sitofp i16 %i.ap to double, !dbg !66119
  %i.ar = fmul double %i.a, %i.aq, !dbg !66119
  %i.as = add nuw i64 %.sroa.01.05, 4, !dbg !66116 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am, !dbg !66120
  store double %i.ar, ptr %i.at, align 8, !dbg !66121
  %exitcond.not.3 = icmp eq i64 %i.as, %2, !dbg !66115
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !dbg !66103, !llvm.loop !66099
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelsdNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl24prim_true_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66123 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66162
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !66150

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  %i.b = sitofp i16 %i.a to double                ; 6 uses
  %min.iters.check = icmp eq i64 %2, 1, !dbg !66150
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !66150

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %2, 3, !dbg !66150
  %i.d = getelementptr i8, ptr %1, i64 %i.c, !dbg !66150
  %i.e = shl i64 %2, 1, !dbg !66150
  %i.f = getelementptr i8, ptr %0, i64 %i.e, !dbg !66150
  %bound0 = icmp ult ptr %1, %i.f, !dbg !66150
  %bound1 = icmp ult ptr %0, %i.d, !dbg !66150
  %found.conflict = and i1 %bound0, %bound1, !dbg !66150
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !66163

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -2                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body, !dbg !66163

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66163 ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66164
  %wide.load = load <2 x i16>, ptr %i.g, align 2, !dbg !66165, !alias.scope !66154
  %i.h = sitofp <2 x i16> %wide.load to <2 x double>, !dbg !66166
  %i.i = fdiv <2 x double> %broadcast.splat, %i.h, !dbg !66167
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !66168
  store <2 x double> %i.i, ptr %i.j, align 8, !dbg !66169, !alias.scope !66159, !noalias !66154
  %index.next = add nuw i64 %index, 2, !dbg !66163 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !66150
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !66150, !llvm.loop !66144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66150
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !66150

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.l = sub i64 %2, %.sroa.01.05.ph, !dbg !66150
  %xtraiter = and i64 %i.l, 3, !dbg !66150        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66150
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66150

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.q, %scalar.ph.prol ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66164
  %i.n = load i16, ptr %i.m, align 2, !dbg !66165, !noundef !403
  %i.o = sitofp i16 %i.n to double, !dbg !66166
  %i.p = fdiv double %i.b, %i.o, !dbg !66167
  %i.q = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66163 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66168
  store double %i.p, ptr %i.r, align 8, !dbg !66169
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66150 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66150
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66150, !llvm.loop !66145

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.q, %scalar.ph.prol ]
  %i.s = sub i64 %.sroa.01.05.ph, %2, !dbg !66150
  %i.t = icmp ugt i64 %i.s, -4, !dbg !66150
  br i1 %i.t, label %._crit_edge, label %scalar.ph, !dbg !66150

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void, !dbg !66170

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.01.05 = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.05.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66164
  %i.v = load i16, ptr %i.u, align 2, !dbg !66165, !noundef !403
  %i.w = sitofp i16 %i.v to double, !dbg !66166
  %i.x = fdiv double %i.b, %i.w, !dbg !66167
  %i.y = add nuw i64 %.sroa.01.05, 1, !dbg !66163 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66168
  store double %i.x, ptr %i.z, align 8, !dbg !66169
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.y, !dbg !66164
  %i.ab = load i16, ptr %i.aa, align 2, !dbg !66165, !noundef !403
  %i.ac = sitofp i16 %i.ab to double, !dbg !66166
  %i.ad = fdiv double %i.b, %i.ac, !dbg !66167
  %i.ae = add nuw i64 %.sroa.01.05, 2, !dbg !66163 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y, !dbg !66168
  store double %i.ad, ptr %i.af, align 8, !dbg !66169
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ae, !dbg !66164
  %i.ah = load i16, ptr %i.ag, align 2, !dbg !66165, !noundef !403
  %i.ai = sitofp i16 %i.ah to double, !dbg !66166
  %i.aj = fdiv double %i.b, %i.ai, !dbg !66167
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !66163 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae, !dbg !66168
  store double %i.aj, ptr %i.al, align 8, !dbg !66169
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !66164
  %i.an = load i16, ptr %i.am, align 2, !dbg !66165, !noundef !403
  %i.ao = sitofp i16 %i.an to double, !dbg !66166
  %i.ap = fdiv double %i.b, %i.ao, !dbg !66167
  %i.aq = add nuw i64 %.sroa.01.05, 4, !dbg !66163 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak, !dbg !66168
  store double %i.ap, ptr %i.ar, align 8, !dbg !66169
  %exitcond.not.3 = icmp eq i64 %i.aq, %2, !dbg !66162
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !dbg !66150, !llvm.loop !66146
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_abs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66171 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66207
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66197

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66207
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66207
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66197
  %i.c = sub i64 %i.b, %i.a, !dbg !66197
  %diff.check = icmp ugt i64 %i.c, -32, !dbg !66197
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66197
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !66197

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66197
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66197

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body, !dbg !66197

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66208 ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66209 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !66210
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !dbg !66210
  %wide.load7 = load <8 x i16>, ptr %i.f, align 2, !dbg !66210
  %i.g = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load, i1 false), !dbg !66211
  %i.h = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load7, i1 false), !dbg !66211
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66212 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !66213
  store <8 x i16> %i.g, ptr %i.i, align 2, !dbg !66213
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !66213
  %index.next = add nuw i64 %index, 16, !dbg !66208 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !66197
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !66197, !llvm.loop !66191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66197
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66197

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !66208 ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index9, !dbg !66209
  %wide.load10 = load <4 x i16>, ptr %i.l, align 2, !dbg !66210
  %i.m = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load10, i1 false), !dbg !66211
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index9, !dbg !66212
  store <4 x i16> %i.m, ptr %i.n, align 2, !dbg !66213
  %index.next11 = add nuw i64 %index9, 4, !dbg !66208 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec8, !dbg !66197
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66197, !llvm.loop !66192

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8, !dbg !66197
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader, !dbg !66197

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !66197
  %xtraiter = and i64 %2, 1, !dbg !66197
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66197
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !66197

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !66209
  %i.q = load i16, ptr %i.p, align 2, !dbg !66210, !noundef !403
  %.sroa.0.0.i.prol = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %i.q, i1 false), !dbg !66211
  %i.r = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !66208
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !66212
  store i16 %.sroa.0.0.i.prol, ptr %i.s, align 2, !dbg !66213
  br label %.lr.ph.prol.loopexit, !dbg !66197

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.t = icmp eq i64 %2, %.neg, !dbg !66197
  br i1 %i.t, label %._crit_edge, label %.lr.ph, !dbg !66197

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66214

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.aa, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66209
  %i.v = load i16, ptr %i.u, align 2, !dbg !66210, !noundef !403
  %.sroa.0.0.i = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %i.v, i1 false), !dbg !66211
  %i.w = add nuw i64 %.sroa.01.05, 1, !dbg !66208 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66212
  store i16 %.sroa.0.0.i, ptr %i.x, align 2, !dbg !66213
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.w, !dbg !66209
  %i.z = load i16, ptr %i.y, align 2, !dbg !66210, !noundef !403
  %.sroa.0.0.i.1 = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %i.z, i1 false), !dbg !66211
  %i.aa = add nuw i64 %.sroa.01.05, 2, !dbg !66208 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w, !dbg !66212
  store i16 %.sroa.0.0.i.1, ptr %i.ab, align 2, !dbg !66213
  %exitcond.not.1 = icmp eq i64 %i.aa, %2, !dbg !66207
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !66197, !llvm.loop !66193
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_neg0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66215 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66254
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66244

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66254
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66254
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66244
  %i.c = sub i64 %i.b, %i.a, !dbg !66244
  %diff.check = icmp ugt i64 %i.c, -32, !dbg !66244
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66244
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !66244

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66244
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66244

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body, !dbg !66244

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66255 ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66256 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !66257
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !dbg !66257
  %wide.load7 = load <8 x i16>, ptr %i.f, align 2, !dbg !66257
  %i.g = sub <8 x i16> zeroinitializer, %wide.load, !dbg !66258
  %i.h = sub <8 x i16> zeroinitializer, %wide.load7, !dbg !66258
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66259 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !66260
  store <8 x i16> %i.g, ptr %i.i, align 2, !dbg !66260
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !66260
  %index.next = add nuw i64 %index, 16, !dbg !66255 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !66244
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !66244, !llvm.loop !66237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66244
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66244

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !66255 ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index9, !dbg !66256
  %wide.load10 = load <4 x i16>, ptr %i.l, align 2, !dbg !66257
  %i.m = sub <4 x i16> zeroinitializer, %wide.load10, !dbg !66258
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index9, !dbg !66259
  store <4 x i16> %i.m, ptr %i.n, align 2, !dbg !66260
  %index.next11 = add nuw i64 %index9, 4, !dbg !66255 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec8, !dbg !66244
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66244, !llvm.loop !66238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8, !dbg !66244
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader, !dbg !66244

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66244          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66244
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !66244

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66256
  %i.q = load i16, ptr %i.p, align 2, !dbg !66257, !noundef !403
  %i.r = sub i16 0, %i.q, !dbg !66258
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66255 ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66259
  store i16 %i.r, ptr %i.t, align 2, !dbg !66260
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66244 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66244
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !66244, !llvm.loop !66239

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !66244
  %i.v = icmp ugt i64 %i.u, -4, !dbg !66244
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !66244

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66261

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.ao, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66256
  %i.x = load i16, ptr %i.w, align 2, !dbg !66257, !noundef !403
  %i.y = sub i16 0, %i.x, !dbg !66258
  %i.z = add nuw i64 %.sroa.01.05, 1, !dbg !66255 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66259
  store i16 %i.y, ptr %i.aa, align 2, !dbg !66260
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z, !dbg !66256
  %i.ac = load i16, ptr %i.ab, align 2, !dbg !66257, !noundef !403
  %i.ad = sub i16 0, %i.ac, !dbg !66258
  %i.ae = add nuw i64 %.sroa.01.05, 2, !dbg !66255 ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.z, !dbg !66259
  store i16 %i.ad, ptr %i.af, align 2, !dbg !66260
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ae, !dbg !66256
  %i.ah = load i16, ptr %i.ag, align 2, !dbg !66257, !noundef !403
  %i.ai = sub i16 0, %i.ah, !dbg !66258
  %i.aj = add nuw i64 %.sroa.01.05, 3, !dbg !66255 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae, !dbg !66259
  store i16 %i.ai, ptr %i.ak, align 2, !dbg !66260
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj, !dbg !66256
  %i.am = load i16, ptr %i.al, align 2, !dbg !66257, !noundef !403
  %i.an = sub i16 0, %i.am, !dbg !66258
  %i.ao = add nuw i64 %.sroa.01.05, 4, !dbg !66255 ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj, !dbg !66259
  store i16 %i.an, ptr %i.ap, align 2, !dbg !66260
  %exitcond.not.3 = icmp eq i64 %i.ao, %2, !dbg !66254
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !66244, !llvm.loop !66240
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_add_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66262 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66299
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66289

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66299
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66299
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66289
  %i.d = sub i64 %i.b, %i.a, !dbg !66289
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !66289
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66289
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !66289

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66289
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66289

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66289

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66300 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66301 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !66302
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !66302
  %wide.load7 = load <8 x i16>, ptr %i.g, align 2, !dbg !66302
  %i.h = add <8 x i16> %broadcast.splat, %wide.load, !dbg !66303
  %i.i = add <8 x i16> %broadcast.splat, %wide.load7, !dbg !66303
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66304 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !66305
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !66305
  store <8 x i16> %i.i, ptr %i.k, align 2, !dbg !66305
  %index.next = add nuw i64 %index, 16, !dbg !66300 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !66289
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !66289, !llvm.loop !66282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66289
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66289

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !66300 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !66301
  %wide.load12 = load <4 x i16>, ptr %i.m, align 2, !dbg !66302
  %i.n = add <4 x i16> %broadcast.splat10, %wide.load12, !dbg !66303
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !66304
  store <4 x i16> %i.n, ptr %i.o, align 2, !dbg !66305
  %index.next13 = add nuw i64 %index11, 4, !dbg !66300 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !66289
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66289, !llvm.loop !66283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !66289
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !66289

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66289          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66289
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66289

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66301
  %i.r = load i16, ptr %i.q, align 2, !dbg !66302, !noundef !403
  %i.s = add i16 %i.c, %i.r, !dbg !66303
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66300 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66304
  store i16 %i.s, ptr %i.u, align 2, !dbg !66305
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66289 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66289
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66289, !llvm.loop !66284

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !66289
  %i.w = icmp ugt i64 %i.v, -4, !dbg !66289
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66289

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66306

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66301
  %i.y = load i16, ptr %i.x, align 2, !dbg !66302, !noundef !403
  %i.z = add i16 %i.c, %i.y, !dbg !66303
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !66300 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66304
  store i16 %i.z, ptr %i.ab, align 2, !dbg !66305
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !66301
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !66302, !noundef !403
  %i.ae = add i16 %i.c, %i.ad, !dbg !66303
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !66300 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa, !dbg !66304
  store i16 %i.ae, ptr %i.ag, align 2, !dbg !66305
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af, !dbg !66301
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !66302, !noundef !403
  %i.aj = add i16 %i.c, %i.ai, !dbg !66303
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !66300 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af, !dbg !66304
  store i16 %i.aj, ptr %i.al, align 2, !dbg !66305
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !66301
  %i.an = load i16, ptr %i.am, align 2, !dbg !66302, !noundef !403
  %i.ao = add i16 %i.c, %i.an, !dbg !66303
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !66300 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ak, !dbg !66304
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !66305
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !66299
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66289, !llvm.loop !66285
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !66307 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66354
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !66343

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !alias.scope !66344, !nonnull !403, !align !595, !noundef !403 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !66344
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !403, !align !558
  br label %bb.b, !dbg !66343

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit, %bb.a
  ret void, !dbg !66355

bb.b:                                             ; preds = %.lr.ph, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66356
  %i.f = load i16, ptr %i.e, align 2, !dbg !66357, !noundef !403 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66344), !dbg !66358
  %.sroa.05.0.i = tail call i16 @llvm.abs.i16(i16 %i.f, i1 false), !dbg !66359 ; 3 uses
  %i.g = load i32, ptr %i.a, align 4, !dbg !66360, !noalias !66344, !noundef !403 ; 3 uses
  %i.h = load i16, ptr %i.b, align 4, !dbg !66360, !noalias !66344, !noundef !403 ; 2 uses
  %i.i = icmp eq i32 %i.g, 0, !dbg !66361
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !66361

bb.c:                                             ; preds = %bb.b
  %i.j = add i16 %i.h, -1, !dbg !66362
  %i.k = and i16 %i.j, %.sroa.05.0.i, !dbg !66363
  br label %bb.e, !dbg !66364

bb.d:                                             ; preds = %bb.b
  %i.l = zext i16 %.sroa.05.0.i to i32, !dbg !66365 ; 2 uses
  %i.m = lshr i32 %i.g, 16, !dbg !66366
  %i.n = mul nuw nsw i32 %i.m, %i.l, !dbg !66367
  %i.o = and i32 %i.g, 65535, !dbg !66368
  %i.p = mul nuw nsw i32 %i.o, %i.l, !dbg !66369
  %i.q = lshr i32 %i.p, 16, !dbg !66369
  %i.r = add nuw nsw i32 %i.q, %i.n, !dbg !66370
  %i.s = lshr i32 %i.r, 16, !dbg !66371
  %i.t = trunc nuw nsw i32 %i.s to i16, !dbg !66371
  %i.u = mul i16 %i.h, %i.t, !dbg !66372
  %i.v = sub i16 %.sroa.05.0.i, %i.u, !dbg !66373
  br label %bb.e, !dbg !66364

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i16 [ %i.k, %bb.c ], [ %i.v, %bb.d ], !dbg !66374 ; 3 uses
  %i.w = icmp eq i16 %.sroa.01.0.i, 0, !dbg !66375
  %.pre7.i = load i16, ptr %.pre.i, align 2, !dbg !66376, !noalias !66344 ; 2 uses
  br i1 %i.w, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit, label %bb.f, !dbg !66375

bb.f:                                             ; preds = %bb.e
  %i.x = xor i16 %.pre7.i, %i.f, !dbg !66377
  %i.y = icmp slt i16 %i.x, 0, !dbg !66377
  br i1 %i.y, label %bb.g, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit, !dbg !66377

bb.g:                                             ; preds = %bb.f
  %i.z = load i16, ptr %i.d, align 2, !dbg !66378, !noalias !66344, !noundef !403
  %i.aa = sub i16 %i.z, %.sroa.01.0.i, !dbg !66379
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit, !dbg !66380

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.01.1.i = phi i16 [ %.sroa.01.0.i, %bb.f ], [ %i.aa, %bb.g ], [ 0, %bb.e ], !dbg !66381 ; 2 uses
  %i.ab = icmp slt i16 %.pre7.i, 0, !dbg !66382
  %i.ac = sub i16 0, %.sroa.01.1.i, !dbg !66382
  %.sroa.0.0.i = select i1 %i.ab, i16 %i.ac, i16 %.sroa.01.1.i, !dbg !66382
  %i.ad = add nuw i64 %.sroa.01.05, 1, !dbg !66383 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66384
  store i16 %.sroa.0.0.i, ptr %i.ae, align 2, !dbg !66385
  %exitcond.not = icmp eq i64 %i.ad, %2, !dbg !66354
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !66343
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66386 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66420
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66411

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66420
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66420
  %i.c = load i32, ptr %3, align 4, !noundef !403
  %i.d = trunc i32 %i.c to i16
  %i.e = and i16 %i.d, 15                         ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66411
  %i.f = sub i64 %i.b, %i.a, !dbg !66411
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !66411
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66411
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !66411

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66411
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66411

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66411

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66421 ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66422 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !66423
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !dbg !66423
  %wide.load7 = load <8 x i16>, ptr %i.i, align 2, !dbg !66423
  %i.j = shl <8 x i16> %wide.load, %broadcast.splat, !dbg !66424
  %i.k = shl <8 x i16> %wide.load7, %broadcast.splat, !dbg !66424
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66425 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !66426
  store <8 x i16> %i.j, ptr %i.l, align 2, !dbg !66426
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !66426
  %index.next = add nuw i64 %index, 16, !dbg !66421 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !66411
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !66411, !llvm.loop !66404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66411
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66411

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !66421 ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !66422
  %wide.load12 = load <4 x i16>, ptr %i.o, align 2, !dbg !66423
  %i.p = shl <4 x i16> %wide.load12, %broadcast.splat10, !dbg !66424
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !66425
  store <4 x i16> %i.p, ptr %i.q, align 2, !dbg !66426
  %index.next13 = add nuw i64 %index11, 4, !dbg !66421 ; 2 uses
  %i.r = icmp eq i64 %index.next13, %n.vec8, !dbg !66411
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66411, !llvm.loop !66405

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !66411
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !66411

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66411          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66411
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66411

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.v, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66422
  %i.t = load i16, ptr %i.s, align 2, !dbg !66423, !noundef !403
  %i.u = shl i16 %i.t, %i.e, !dbg !66424
  %i.v = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66421 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66425
  store i16 %i.u, ptr %i.w, align 2, !dbg !66426
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66411 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66411
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66411, !llvm.loop !66406

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.v, %vec.epilog.scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.05.ph, %2, !dbg !66411
  %i.y = icmp ugt i64 %i.x, -4, !dbg !66411
  br i1 %i.y, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66411

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66427

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66422
  %i.aa = load i16, ptr %i.z, align 2, !dbg !66423, !noundef !403
  %i.ab = shl i16 %i.aa, %i.e, !dbg !66424
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !66421 ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66425
  store i16 %i.ab, ptr %i.ad, align 2, !dbg !66426
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac, !dbg !66422
  %i.af = load i16, ptr %i.ae, align 2, !dbg !66423, !noundef !403
  %i.ag = shl i16 %i.af, %i.e, !dbg !66424
  %i.ah = add nuw i64 %.sroa.01.05, 2, !dbg !66421 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac, !dbg !66425
  store i16 %i.ag, ptr %i.ai, align 2, !dbg !66426
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah, !dbg !66422
  %i.ak = load i16, ptr %i.aj, align 2, !dbg !66423, !noundef !403
  %i.al = shl i16 %i.ak, %i.e, !dbg !66424
  %i.am = add nuw i64 %.sroa.01.05, 3, !dbg !66421 ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah, !dbg !66425
  store i16 %i.al, ptr %i.an, align 2, !dbg !66426
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am, !dbg !66422
  %i.ap = load i16, ptr %i.ao, align 2, !dbg !66423, !noundef !403
  %i.aq = shl i16 %i.ap, %i.e, !dbg !66424
  %i.ar = add nuw i64 %.sroa.01.05, 4, !dbg !66421 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am, !dbg !66425
  store i16 %i.aq, ptr %i.as, align 2, !dbg !66426
  %exitcond.not.3 = icmp eq i64 %i.ar, %2, !dbg !66420
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66411, !llvm.loop !66407
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalars0_0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66428 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66464
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66455

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66464
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66464
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66455
  %i.d = sub i64 %i.b, %i.a, !dbg !66455
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !66455
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66455
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !66455

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66455
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66455

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66455

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66465 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66466 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !66467
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !66467
  %wide.load7 = load <8 x i16>, ptr %i.g, align 2, !dbg !66467
  %i.h = mul <8 x i16> %broadcast.splat, %wide.load, !dbg !66468
  %i.i = mul <8 x i16> %broadcast.splat, %wide.load7, !dbg !66468
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66469 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !66470
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !66470
  store <8 x i16> %i.i, ptr %i.k, align 2, !dbg !66470
  %index.next = add nuw i64 %index, 16, !dbg !66465 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !66455
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !66455, !llvm.loop !66448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66455
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66455

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !66465 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !66466
  %wide.load12 = load <4 x i16>, ptr %i.m, align 2, !dbg !66467
  %i.n = mul <4 x i16> %broadcast.splat10, %wide.load12, !dbg !66468
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !66469
  store <4 x i16> %i.n, ptr %i.o, align 2, !dbg !66470
  %index.next13 = add nuw i64 %index11, 4, !dbg !66465 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !66455
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66455, !llvm.loop !66449

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !66455
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !66455

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66455          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66455
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66455

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66466
  %i.r = load i16, ptr %i.q, align 2, !dbg !66467, !noundef !403
  %i.s = mul i16 %i.c, %i.r, !dbg !66468
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66465 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66469
  store i16 %i.s, ptr %i.u, align 2, !dbg !66470
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66455 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66455
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66455, !llvm.loop !66450

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !66455
  %i.w = icmp ugt i64 %i.v, -4, !dbg !66455
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66455

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66471

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66466
  %i.y = load i16, ptr %i.x, align 2, !dbg !66467, !noundef !403
  %i.z = mul i16 %i.c, %i.y, !dbg !66468
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !66465 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66469
  store i16 %i.z, ptr %i.ab, align 2, !dbg !66470
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !66466
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !66467, !noundef !403
  %i.ae = mul i16 %i.c, %i.ad, !dbg !66468
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !66465 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa, !dbg !66469
  store i16 %i.ae, ptr %i.ag, align 2, !dbg !66470
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af, !dbg !66466
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !66467, !noundef !403
  %i.aj = mul i16 %i.c, %i.ai, !dbg !66468
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !66465 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af, !dbg !66469
  store i16 %i.aj, ptr %i.al, align 2, !dbg !66470
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !66466
  %i.an = load i16, ptr %i.am, align 2, !dbg !66467, !noundef !403
  %i.ao = mul i16 %i.c, %i.an, !dbg !66468
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !66465 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ak, !dbg !66469
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !66470
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !66464
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66455, !llvm.loop !66451
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalars_0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66472 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66510
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66501

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66510
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66510
  %i.c = load i32, ptr %3, align 4, !noundef !403
  %i.d = trunc i32 %i.c to i16
  %i.e = and i16 %i.d, 15                         ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66501
  %i.f = sub i64 %i.b, %i.a, !dbg !66501
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !66501
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66501
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !66501

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66501
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66501

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66501

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66511 ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66512 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !66513
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !dbg !66513
  %wide.load7 = load <8 x i16>, ptr %i.i, align 2, !dbg !66513
  %i.j = shl <8 x i16> %wide.load, %broadcast.splat, !dbg !66514
  %i.k = shl <8 x i16> %wide.load7, %broadcast.splat, !dbg !66514
  %i.l = sub <8 x i16> zeroinitializer, %i.j, !dbg !66515
  %i.m = sub <8 x i16> zeroinitializer, %i.k, !dbg !66515
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66516 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !66517
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !66517
  store <8 x i16> %i.m, ptr %i.o, align 2, !dbg !66517
  %index.next = add nuw i64 %index, 16, !dbg !66511 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !66501
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !66501, !llvm.loop !66494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66501
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66501

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !66511 ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !66512
  %wide.load12 = load <4 x i16>, ptr %i.q, align 2, !dbg !66513
  %i.r = shl <4 x i16> %wide.load12, %broadcast.splat10, !dbg !66514
  %i.s = sub <4 x i16> zeroinitializer, %i.r, !dbg !66515
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !66516
  store <4 x i16> %i.s, ptr %i.t, align 2, !dbg !66517
  %index.next13 = add nuw i64 %index11, 4, !dbg !66511 ; 2 uses
  %i.u = icmp eq i64 %index.next13, %n.vec8, !dbg !66501
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66501, !llvm.loop !66495

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !66501
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !66501

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66501          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66501
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66501

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66512
  %i.w = load i16, ptr %i.v, align 2, !dbg !66513, !noundef !403
  %i.x = shl i16 %i.w, %i.e, !dbg !66514
  %i.y = sub i16 0, %i.x, !dbg !66515
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66511 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66516
  store i16 %i.y, ptr %i.aa, align 2, !dbg !66517
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66501 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66501
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66501, !llvm.loop !66496

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %2, !dbg !66501
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !66501
  br i1 %i.ac, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66501

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66518

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.az, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66512
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !66513, !noundef !403
  %i.af = shl i16 %i.ae, %i.e, !dbg !66514
  %i.ag = sub i16 0, %i.af, !dbg !66515
  %i.ah = add nuw i64 %.sroa.01.05, 1, !dbg !66511 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66516
  store i16 %i.ag, ptr %i.ai, align 2, !dbg !66517
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah, !dbg !66512
  %i.ak = load i16, ptr %i.aj, align 2, !dbg !66513, !noundef !403
  %i.al = shl i16 %i.ak, %i.e, !dbg !66514
  %i.am = sub i16 0, %i.al, !dbg !66515
  %i.an = add nuw i64 %.sroa.01.05, 2, !dbg !66511 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah, !dbg !66516
  store i16 %i.am, ptr %i.ao, align 2, !dbg !66517
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.an, !dbg !66512
  %i.aq = load i16, ptr %i.ap, align 2, !dbg !66513, !noundef !403
  %i.ar = shl i16 %i.aq, %i.e, !dbg !66514
  %i.as = sub i16 0, %i.ar, !dbg !66515
  %i.at = add nuw i64 %.sroa.01.05, 3, !dbg !66511 ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.an, !dbg !66516
  store i16 %i.as, ptr %i.au, align 2, !dbg !66517
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.at, !dbg !66512
  %i.aw = load i16, ptr %i.av, align 2, !dbg !66513, !noundef !403
  %i.ax = shl i16 %i.aw, %i.e, !dbg !66514
  %i.ay = sub i16 0, %i.ax, !dbg !66515
  %i.az = add nuw i64 %.sroa.01.05, 4, !dbg !66511 ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.at, !dbg !66516
  store i16 %i.ay, ptr %i.ba, align 2, !dbg !66517
  %exitcond.not.3 = icmp eq i64 %i.az, %2, !dbg !66510
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66501, !llvm.loop !66497
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66519 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66555
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !66545

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66555
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66555
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 3 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !66545
  %i.d = sub i64 %i.b, %i.a, !dbg !66545
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !66545
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66545
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !66545

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66556

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66556 ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66557
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !dbg !66558 ; 4 uses
  %i.f = add <8 x i16> %wide.load, splat (i16 -1), !dbg !66559
  %i.g = icmp ult <8 x i16> %i.f, splat (i16 -2), !dbg !66559 ; 2 uses
  %i.h = tail call <8 x i16> @llvm.masked.srem.v8i16(<8 x i16> %broadcast.splat, <8 x i16> %wide.load, <8 x i1> %i.g), !dbg !66560 ; 2 uses
  %i.i = icmp ne <8 x i16> %i.h, zeroinitializer, !dbg !66561
  %i.j = select <8 x i1> %i.g, <8 x i1> %i.i, <8 x i1> zeroinitializer, !dbg !66561
  %i.k = xor <8 x i16> %broadcast.splat, %wide.load, !dbg !66562
  %i.l = icmp slt <8 x i16> %i.k, zeroinitializer, !dbg !66562
  %i.m = select <8 x i1> %i.l, <8 x i16> %wide.load, <8 x i16> zeroinitializer, !dbg !66562
  %i.n = add <8 x i16> %i.h, %i.m, !dbg !66562
  %predphi = select <8 x i1> %i.j, <8 x i16> %i.n, <8 x i16> zeroinitializer, !dbg !66563
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66564
  store <8 x i16> %predphi, ptr %i.o, align 2, !dbg !66565
  %index.next = add nuw i64 %index, 8, !dbg !66556 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !66545
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !66545, !llvm.loop !66540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66545
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !66545

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !66559

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit, %middle.block, %bb.a
  ret void, !dbg !66566

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit
  %.sroa.01.05 = phi i64 [ %i.w, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66557
  %i.r = load i16, ptr %i.q, align 2, !dbg !66558, !noundef !403 ; 4 uses
  %.off.i = add i16 %i.r, -1, !dbg !66559
  %switch.i = icmp ult i16 %.off.i, -2, !dbg !66559
  br i1 %switch.i, label %bb.b, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit, !dbg !66559, !prof !568

bb.b:                                             ; preds = %scalar.ph
  %i.s = srem i16 %i.c, %i.r, !dbg !66560         ; 2 uses
  %.not.i.i = icmp eq i16 %i.s, 0, !dbg !66561
  br i1 %.not.i.i, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit, label %bb.c, !dbg !66561

bb.c:                                             ; preds = %bb.b
  %i.t = xor i16 %i.c, %i.r, !dbg !66562
  %i.u = icmp slt i16 %i.t, 0, !dbg !66562
  %i.v = select i1 %i.u, i16 %i.r, i16 0, !dbg !66562
  %spec.select.i = add i16 %i.s, %i.v, !dbg !66562
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit, !dbg !66562

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit: ; preds = %scalar.ph, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi i16 [ %spec.select.i, %bb.c ], [ 0, %bb.b ], [ 0, %scalar.ph ], !dbg !66563
  %i.w = add nuw i64 %.sroa.01.05, 1, !dbg !66556 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66564
  store i16 %.sroa.3.0.i.i, ptr %i.x, align 2, !dbg !66565
  %exitcond.not = icmp eq i64 %i.w, %2, !dbg !66555
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !dbg !66545, !llvm.loop !66541
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl28prim_wrapping_sub_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66567 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66604
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66594

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66604
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66604
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66594
  %i.d = sub i64 %i.b, %i.a, !dbg !66594
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !66594
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66594
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !66594

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66594
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66594

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !66594

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66605 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66606 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !66607
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !66607
  %wide.load7 = load <8 x i16>, ptr %i.g, align 2, !dbg !66607
  %i.h = sub <8 x i16> %broadcast.splat, %wide.load, !dbg !66608
  %i.i = sub <8 x i16> %broadcast.splat, %wide.load7, !dbg !66608
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66609 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !66610
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !66610
  store <8 x i16> %i.i, ptr %i.k, align 2, !dbg !66610
  %index.next = add nuw i64 %index, 16, !dbg !66605 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !66594
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !66594, !llvm.loop !66587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66594
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66594

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !66605 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !66606
  %wide.load12 = load <4 x i16>, ptr %i.m, align 2, !dbg !66607
  %i.n = sub <4 x i16> %broadcast.splat10, %wide.load12, !dbg !66608
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !66609
  store <4 x i16> %i.n, ptr %i.o, align 2, !dbg !66610
  %index.next13 = add nuw i64 %index11, 4, !dbg !66605 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !66594
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66594, !llvm.loop !66588

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !66594
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !66594

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66594          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66594
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66594

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66606
  %i.r = load i16, ptr %i.q, align 2, !dbg !66607, !noundef !403
  %i.s = sub i16 %i.c, %i.r, !dbg !66608
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66605 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66609
  store i16 %i.s, ptr %i.u, align 2, !dbg !66610
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66594 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66594
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !66594, !llvm.loop !66589

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !66594
  %i.w = icmp ugt i64 %i.v, -4, !dbg !66594
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66594

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66611

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66606
  %i.y = load i16, ptr %i.x, align 2, !dbg !66607, !noundef !403
  %i.z = sub i16 %i.c, %i.y, !dbg !66608
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !66605 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66609
  store i16 %i.z, ptr %i.ab, align 2, !dbg !66610
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !66606
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !66607, !noundef !403
  %i.ae = sub i16 %i.c, %i.ad, !dbg !66608
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !66605 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa, !dbg !66609
  store i16 %i.ae, ptr %i.ag, align 2, !dbg !66610
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af, !dbg !66606
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !66607, !noundef !403
  %i.aj = sub i16 %i.c, %i.ai, !dbg !66608
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !66605 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af, !dbg !66609
  store i16 %i.aj, ptr %i.al, align 2, !dbg !66610
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !66606
  %i.an = load i16, ptr %i.am, align 2, !dbg !66607, !noundef !403
  %i.ao = sub i16 %i.c, %i.an, !dbg !66608
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !66605 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ak, !dbg !66609
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !66610
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !66604
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !66594, !llvm.loop !66590
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelssNCNvXs_NtNtB4_10arithmetic6signedsNtB1d_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %3, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66612 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66661
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !66650

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66661
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66661
  %i.c = load i32, ptr %3, align 4, !noundef !403 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load i16, ptr %i.d, align 4, !noundef !403 ; 6 uses
  %i.f = icmp eq i32 %i.c, 0
  %i.g = lshr i32 %i.c, 16                        ; 2 uses
  %i.h = and i32 %i.c, 65535                      ; 2 uses
  %i.i = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.e, i1 false)
  %i.j = and i16 %i.i, 15                         ; 3 uses
  %i.k = load i16, ptr %4, align 2, !noundef !403 ; 5 uses
  %i.l = sub i64 %i.b, %i.a, !dbg !66650          ; 2 uses
  br i1 %i.f, label %iter.check, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader: ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 8, !dbg !66650
  %diff.check = icmp ugt i64 %i.l, -16, !dbg !66650
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66650
  br i1 %or.cond, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader50, label %vector.ph, !dbg !66650

vector.ph:                                        ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat12 = shufflevector <8 x i32> %broadcast.splatinsert11, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x i16> poison, i16 %i.k, i64 0
  %broadcast.splat14 = shufflevector <8 x i16> %broadcast.splatinsert13, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat16 = shufflevector <8 x i16> %broadcast.splatinsert15, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body, !dbg !66662

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66662 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66663
  %wide.load = load <8 x i16>, ptr %i.m, align 2, !dbg !66664 ; 2 uses
  %i.n = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %wide.load, i1 false), !dbg !66665 ; 2 uses
  %i.o = zext <8 x i16> %i.n to <8 x i32>, !dbg !66666 ; 2 uses
  %i.p = mul nuw nsw <8 x i32> %broadcast.splat, %i.o, !dbg !66667
  %i.q = mul nuw nsw <8 x i32> %broadcast.splat12, %i.o, !dbg !66668
  %i.r = lshr <8 x i32> %i.q, splat (i32 16), !dbg !66668
  %i.s = add nuw nsw <8 x i32> %i.r, %i.p, !dbg !66669
  %i.t = lshr <8 x i32> %i.s, splat (i32 16), !dbg !66670
  %i.u = trunc nuw nsw <8 x i32> %i.t to <8 x i16>, !dbg !66670 ; 3 uses
  %i.v = xor <8 x i16> %broadcast.splat14, %wide.load, !dbg !66671
  %i.w = icmp slt <8 x i16> %i.v, zeroinitializer, !dbg !66671
  %i.x = mul <8 x i16> %broadcast.splat16, %i.u, !dbg !66671
  %i.y = icmp ne <8 x i16> %i.n, %i.x, !dbg !66671
  %i.z = sext <8 x i1> %i.y to <8 x i16>, !dbg !66671
  %i.aa = sub nsw <8 x i16> %i.z, %i.u, !dbg !66671
  %i.ab = select <8 x i1> %i.w, <8 x i16> %i.aa, <8 x i16> %i.u, !dbg !66671
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66672
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !dbg !66673
  %index.next = add nuw i64 %index, 8, !dbg !66662 ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec, !dbg !66650
  br i1 %i.ad, label %middle.block, label %vector.body, !dbg !66650, !llvm.loop !66642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66650
  br i1 %cmp.n, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader50, !dbg !66650

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader50: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader, %middle.block
  %.sroa.01.06.ph = phi i64 [ 0, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader ], [ %n.vec, %middle.block ]
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit, !dbg !66650

iter.check:                                       ; preds = %.lr.ph
  %min.iters.check20 = icmp ult i64 %2, 4, !dbg !66650
  %diff.check18 = icmp ugt i64 %i.l, -32, !dbg !66650
  %or.cond49 = or i1 %min.iters.check20, %diff.check18, !dbg !66650
  br i1 %or.cond49, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.us.preheader, label %vector.main.loop.iter.check, !dbg !66650

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i64 %2, 16, !dbg !66650
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph22, !dbg !66650
end_hunk_2
begin_hunk_3_@_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kerneltdNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl20prim_true_div_scalar0EB4_:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66881 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66882 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !66883
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !dbg !66883, !alias.scope !66874
  %wide.load7 = load <2 x i16>, ptr %i.g, align 2, !dbg !66883, !alias.scope !66874
  %i.h = uitofp <2 x i16> %wide.load to <2 x double>, !dbg !66884
  %i.i = uitofp <2 x i16> %wide.load7 to <2 x double>, !dbg !66884
  %i.j = fmul <2 x double> %broadcast.splat, %i.h, !dbg !66884
  %i.k = fmul <2 x double> %broadcast.splat, %i.i, !dbg !66884
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !66885 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !66886
  store <2 x double> %i.j, ptr %i.l, align 8, !dbg !66886, !alias.scope !66879, !noalias !66874
  store <2 x double> %i.k, ptr %i.m, align 8, !dbg !66886, !alias.scope !66879, !noalias !66874
  %index.next = add nuw i64 %index, 4, !dbg !66881 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !66868
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !66868, !llvm.loop !66862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66868
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !66868

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66868          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66868
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66868

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %scalar.ph.prol ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66882
  %i.p = load i16, ptr %i.o, align 2, !dbg !66883, !noundef !403
  %i.q = uitofp i16 %i.p to double, !dbg !66884
  %i.r = fmul double %i.a, %i.q, !dbg !66884
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66881 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66885
  store double %i.r, ptr %i.t, align 8, !dbg !66886
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66868 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66868
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66868, !llvm.loop !66863

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !66868
  %i.v = icmp ugt i64 %i.u, -4, !dbg !66868
  br i1 %i.v, label %._crit_edge, label %scalar.ph, !dbg !66868

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void, !dbg !66887

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.01.05 = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.05.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66882
  %i.x = load i16, ptr %i.w, align 2, !dbg !66883, !noundef !403
  %i.y = uitofp i16 %i.x to double, !dbg !66884
  %i.z = fmul double %i.a, %i.y, !dbg !66884
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !66881 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66885
  store double %i.z, ptr %i.ab, align 8, !dbg !66886
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !66882
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !66883, !noundef !403
  %i.ae = uitofp i16 %i.ad to double, !dbg !66884
  %i.af = fmul double %i.a, %i.ae, !dbg !66884
  %i.ag = add nuw i64 %.sroa.01.05, 2, !dbg !66881 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa, !dbg !66885
  store double %i.af, ptr %i.ah, align 8, !dbg !66886
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ag, !dbg !66882
  %i.aj = load i16, ptr %i.ai, align 2, !dbg !66883, !noundef !403
  %i.ak = uitofp i16 %i.aj to double, !dbg !66884
  %i.al = fmul double %i.a, %i.ak, !dbg !66884
  %i.am = add nuw i64 %.sroa.01.05, 3, !dbg !66881 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ag, !dbg !66885
  store double %i.al, ptr %i.an, align 8, !dbg !66886
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am, !dbg !66882
  %i.ap = load i16, ptr %i.ao, align 2, !dbg !66883, !noundef !403
  %i.aq = uitofp i16 %i.ap to double, !dbg !66884
  %i.ar = fmul double %i.a, %i.aq, !dbg !66884
  %i.as = add nuw i64 %.sroa.01.05, 4, !dbg !66881 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am, !dbg !66885
  store double %i.ar, ptr %i.at, align 8, !dbg !66886
  %exitcond.not.3 = icmp eq i64 %i.as, %2, !dbg !66880
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !dbg !66868, !llvm.loop !66864
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kerneltdNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl24prim_true_div_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66888 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66927
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !66915

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i16, ptr %3, align 2, !noundef !403
  %i.b = uitofp i16 %i.a to double                ; 6 uses
  %min.iters.check = icmp eq i64 %2, 1, !dbg !66915
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !66915

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %2, 3, !dbg !66915
  %i.d = getelementptr i8, ptr %1, i64 %i.c, !dbg !66915
  %i.e = shl i64 %2, 1, !dbg !66915
  %i.f = getelementptr i8, ptr %0, i64 %i.e, !dbg !66915
  %bound0 = icmp ult ptr %1, %i.f, !dbg !66915
  %bound1 = icmp ult ptr %0, %i.d, !dbg !66915
  %found.conflict = and i1 %bound0, %bound1, !dbg !66915
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !66928

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -2                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body, !dbg !66928

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66928 ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66929
  %wide.load = load <2 x i16>, ptr %i.g, align 2, !dbg !66930, !alias.scope !66919
  %i.h = uitofp <2 x i16> %wide.load to <2 x double>, !dbg !66931
  %i.i = fdiv <2 x double> %broadcast.splat, %i.h, !dbg !66932
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !66933
  store <2 x double> %i.i, ptr %i.j, align 8, !dbg !66934, !alias.scope !66924, !noalias !66919
  %index.next = add nuw i64 %index, 2, !dbg !66928 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !66915
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !66915, !llvm.loop !66909

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66915
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !66915

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.l = sub i64 %2, %.sroa.01.05.ph, !dbg !66915
  %xtraiter = and i64 %i.l, 3, !dbg !66915        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66915
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66915

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.q, %scalar.ph.prol ], [ %.sroa.01.05.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66929
  %i.n = load i16, ptr %i.m, align 2, !dbg !66930, !noundef !403
  %i.o = uitofp i16 %i.n to double, !dbg !66931
  %i.p = fdiv double %i.b, %i.o, !dbg !66932
  %i.q = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66928 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66933
  store double %i.p, ptr %i.r, align 8, !dbg !66934
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66915 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66915
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !66915, !llvm.loop !66910

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.q, %scalar.ph.prol ]
  %i.s = sub i64 %.sroa.01.05.ph, %2, !dbg !66915
  %i.t = icmp ugt i64 %i.s, -4, !dbg !66915
  br i1 %i.t, label %._crit_edge, label %scalar.ph, !dbg !66915

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void, !dbg !66935

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.01.05 = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.05.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66929
  %i.v = load i16, ptr %i.u, align 2, !dbg !66930, !noundef !403
  %i.w = uitofp i16 %i.v to double, !dbg !66931
  %i.x = fdiv double %i.b, %i.w, !dbg !66932
  %i.y = add nuw i64 %.sroa.01.05, 1, !dbg !66928 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66933
  store double %i.x, ptr %i.z, align 8, !dbg !66934
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.y, !dbg !66929
  %i.ab = load i16, ptr %i.aa, align 2, !dbg !66930, !noundef !403
  %i.ac = uitofp i16 %i.ab to double, !dbg !66931
  %i.ad = fdiv double %i.b, %i.ac, !dbg !66932
  %i.ae = add nuw i64 %.sroa.01.05, 2, !dbg !66928 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y, !dbg !66933
  store double %i.ad, ptr %i.af, align 8, !dbg !66934
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ae, !dbg !66929
  %i.ah = load i16, ptr %i.ag, align 2, !dbg !66930, !noundef !403
  %i.ai = uitofp i16 %i.ah to double, !dbg !66931
  %i.aj = fdiv double %i.b, %i.ai, !dbg !66932
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !66928 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae, !dbg !66933
  store double %i.aj, ptr %i.al, align 8, !dbg !66934
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !66929
  %i.an = load i16, ptr %i.am, align 2, !dbg !66930, !noundef !403
  %i.ao = uitofp i16 %i.an to double, !dbg !66931
  %i.ap = fdiv double %i.b, %i.ao, !dbg !66932
  %i.aq = add nuw i64 %.sroa.01.05, 4, !dbg !66928 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak, !dbg !66933
  store double %i.ap, ptr %i.ar, align 8, !dbg !66934
  %exitcond.not.3 = icmp eq i64 %i.aq, %2, !dbg !66927
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !dbg !66915, !llvm.loop !66911
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_neg0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66936 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !66975
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !66965

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !66975
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !66975
  %min.iters.check = icmp ult i64 %2, 4, !dbg !66965
  %i.c = sub i64 %i.b, %i.a, !dbg !66965
  %diff.check = icmp ugt i64 %i.c, -32, !dbg !66965
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !66965
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !66965

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !66965
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !66965

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body, !dbg !66965

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !66976 ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !66977 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !66978
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !dbg !66978
  %wide.load7 = load <8 x i16>, ptr %i.f, align 2, !dbg !66978
  %i.g = sub <8 x i16> zeroinitializer, %wide.load, !dbg !66979
  %i.h = sub <8 x i16> zeroinitializer, %wide.load7, !dbg !66979
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !66980 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !66981
  store <8 x i16> %i.g, ptr %i.i, align 2, !dbg !66981
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !66981
  %index.next = add nuw i64 %index, 16, !dbg !66976 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !66965
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !66965, !llvm.loop !66958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !66965
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !66965

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ], !dbg !66976 ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index9, !dbg !66977
  %wide.load10 = load <4 x i16>, ptr %i.l, align 2, !dbg !66978
  %i.m = sub <4 x i16> zeroinitializer, %wide.load10, !dbg !66979
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index9, !dbg !66980
  store <4 x i16> %i.m, ptr %i.n, align 2, !dbg !66981
  %index.next11 = add nuw i64 %index9, 4, !dbg !66976 ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec8, !dbg !66965
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !66965, !llvm.loop !66959

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %2, %n.vec8, !dbg !66965
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader, !dbg !66965

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !66965          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !66965
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !66965

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !66977
  %i.q = load i16, ptr %i.p, align 2, !dbg !66978, !noundef !403
  %i.r = sub i16 0, %i.q, !dbg !66979
  %i.s = add nuw i64 %.sroa.01.05.prol, 1, !dbg !66976 ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !66980
  store i16 %i.r, ptr %i.t, align 2, !dbg !66981
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !66965 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !66965
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !66965, !llvm.loop !66960

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = sub i64 %.sroa.01.05.ph, %2, !dbg !66965
  %i.v = icmp ugt i64 %i.u, -4, !dbg !66965
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !66965

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !66982

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.ao, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !66977
  %i.x = load i16, ptr %i.w, align 2, !dbg !66978, !noundef !403
  %i.y = sub i16 0, %i.x, !dbg !66979
  %i.z = add nuw i64 %.sroa.01.05, 1, !dbg !66976 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !66980
  store i16 %i.y, ptr %i.aa, align 2, !dbg !66981
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z, !dbg !66977
  %i.ac = load i16, ptr %i.ab, align 2, !dbg !66978, !noundef !403
  %i.ad = sub i16 0, %i.ac, !dbg !66979
  %i.ae = add nuw i64 %.sroa.01.05, 2, !dbg !66976 ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.z, !dbg !66980
  store i16 %i.ad, ptr %i.af, align 2, !dbg !66981
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ae, !dbg !66977
  %i.ah = load i16, ptr %i.ag, align 2, !dbg !66978, !noundef !403
  %i.ai = sub i16 0, %i.ah, !dbg !66979
  %i.aj = add nuw i64 %.sroa.01.05, 3, !dbg !66976 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae, !dbg !66980
  store i16 %i.ai, ptr %i.ak, align 2, !dbg !66981
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj, !dbg !66977
  %i.am = load i16, ptr %i.al, align 2, !dbg !66978, !noundef !403
  %i.an = sub i16 0, %i.am, !dbg !66979
  %i.ao = add nuw i64 %.sroa.01.05, 4, !dbg !66976 ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj, !dbg !66980
  store i16 %i.an, ptr %i.ap, align 2, !dbg !66981
  %exitcond.not.3 = icmp eq i64 %i.ao, %2, !dbg !66975
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !66965, !llvm.loop !66961
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_add_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !66983 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !67020
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !67010

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !67020
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !67020
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !67010
  %i.d = sub i64 %i.b, %i.a, !dbg !67010
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !67010
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !67010
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !67010

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !67010
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !67010

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !67010

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67021 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !67022 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !67023
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !67023
  %wide.load7 = load <8 x i16>, ptr %i.g, align 2, !dbg !67023
  %i.h = add <8 x i16> %broadcast.splat, %wide.load, !dbg !67024
  %i.i = add <8 x i16> %broadcast.splat, %wide.load7, !dbg !67024
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !67025 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !67026
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !67026
  store <8 x i16> %i.i, ptr %i.k, align 2, !dbg !67026
  %index.next = add nuw i64 %index, 16, !dbg !67021 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !67010
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !67010, !llvm.loop !67003

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !67010
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !67010

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !67021 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !67022
  %wide.load12 = load <4 x i16>, ptr %i.m, align 2, !dbg !67023
  %i.n = add <4 x i16> %broadcast.splat10, %wide.load12, !dbg !67024
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !67025
  store <4 x i16> %i.n, ptr %i.o, align 2, !dbg !67026
  %index.next13 = add nuw i64 %index11, 4, !dbg !67021 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !67010
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67010, !llvm.loop !67004

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !67010
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !67010

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !67010          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67010
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67010

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !67022
  %i.r = load i16, ptr %i.q, align 2, !dbg !67023, !noundef !403
  %i.s = add i16 %i.c, %i.r, !dbg !67024
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !67021 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !67025
  store i16 %i.s, ptr %i.u, align 2, !dbg !67026
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !67010 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !67010
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67010, !llvm.loop !67005

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !67010
  %i.w = icmp ugt i64 %i.v, -4, !dbg !67010
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67010

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !67027

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !67022
  %i.y = load i16, ptr %i.x, align 2, !dbg !67023, !noundef !403
  %i.z = add i16 %i.c, %i.y, !dbg !67024
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !67021 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !67025
  store i16 %i.z, ptr %i.ab, align 2, !dbg !67026
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !67022
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !67023, !noundef !403
  %i.ae = add i16 %i.c, %i.ad, !dbg !67024
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !67021 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa, !dbg !67025
  store i16 %i.ae, ptr %i.ag, align 2, !dbg !67026
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af, !dbg !67022
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !67023, !noundef !403
  %i.aj = add i16 %i.c, %i.ai, !dbg !67024
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !67021 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af, !dbg !67025
  store i16 %i.aj, ptr %i.al, align 2, !dbg !67026
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !67022
  %i.an = load i16, ptr %i.am, align 2, !dbg !67023, !noundef !403
  %i.ao = add i16 %i.c, %i.an, !dbg !67024
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !67021 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ak, !dbg !67025
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !67026
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !67020
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67010, !llvm.loop !67006
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !67028 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !67073
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !67063

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !67073
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !67073
  %i.c = load i32, ptr %3, align 4, !noundef !403 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load i16, ptr %i.d, align 4, !noundef !403 ; 5 uses
  %i.f = icmp eq i32 %i.c, 0
  %i.g = lshr i32 %i.c, 16                        ; 4 uses
  %i.h = and i32 %i.c, 65535                      ; 4 uses
  %i.i = add i16 %i.e, -1                         ; 7 uses
  %i.j = sub i64 %i.b, %i.a, !dbg !67063          ; 2 uses
  br i1 %i.f, label %iter.check, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader: ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 8, !dbg !67063
  %diff.check = icmp ugt i64 %i.j, -16, !dbg !67063
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !67063
  br i1 %or.cond, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader39, label %vector.ph, !dbg !67063

vector.ph:                                        ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert12 = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat13 = shufflevector <8 x i16> %broadcast.splatinsert12, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body, !dbg !67074

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67074 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !67075
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !67076 ; 2 uses
  %i.l = zext <8 x i16> %wide.load to <8 x i32>, !dbg !67077 ; 2 uses
  %i.m = mul nuw <8 x i32> %broadcast.splat, %i.l, !dbg !67078
  %i.n = mul nuw <8 x i32> %broadcast.splat11, %i.l, !dbg !67079
  %i.o = lshr <8 x i32> %i.n, splat (i32 16), !dbg !67079
  %i.p = add nuw <8 x i32> %i.o, %i.m, !dbg !67080
  %i.q = lshr <8 x i32> %i.p, splat (i32 16), !dbg !67081
  %i.r = trunc nuw <8 x i32> %i.q to <8 x i16>, !dbg !67081
  %i.s = mul <8 x i16> %broadcast.splat13, %i.r, !dbg !67082
  %i.t = sub <8 x i16> %wide.load, %i.s, !dbg !67083
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !67084
  store <8 x i16> %i.t, ptr %i.u, align 2, !dbg !67085
  %index.next = add nuw i64 %index, 8, !dbg !67074 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !67063
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !67063, !llvm.loop !67054

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !67063
  br i1 %cmp.n, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader39, !dbg !67063

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader39: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !67063
  %xtraiter = and i64 %2, 1, !dbg !67063
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67063
  br i1 %lcmp.mod.not, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol.loopexit, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol, !dbg !67063

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader39
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !67075
  %i.x = load i16, ptr %i.w, align 2, !dbg !67076, !noundef !403 ; 2 uses
  %i.y = zext i16 %i.x to i32, !dbg !67077        ; 2 uses
  %i.z = mul nuw i32 %i.g, %i.y, !dbg !67078
  %i.aa = mul nuw i32 %i.h, %i.y, !dbg !67079
  %i.ab = lshr i32 %i.aa, 16, !dbg !67079
  %i.ac = add nuw i32 %i.ab, %i.z, !dbg !67080
  %i.ad = lshr i32 %i.ac, 16, !dbg !67081
  %i.ae = trunc nuw i32 %i.ad to i16, !dbg !67081
  %i.af = mul i16 %i.e, %i.ae, !dbg !67082
  %i.ag = sub i16 %i.x, %i.af, !dbg !67083
  %i.ah = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !67074
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !67084
  store i16 %i.ag, ptr %i.ai, align 2, !dbg !67085
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol.loopexit, !dbg !67063

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol.loopexit: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader39
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.preheader39 ], [ %i.ah, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol ]
  %i.aj = icmp eq i64 %2, %.neg, !dbg !67063
  br i1 %i.aj, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit, !dbg !67063

iter.check:                                       ; preds = %.lr.ph
  %min.iters.check17 = icmp ult i64 %2, 4, !dbg !67063
  %diff.check15 = icmp ugt i64 %i.j, -32, !dbg !67063
  %or.cond38 = or i1 %min.iters.check17, %diff.check15, !dbg !67063
  br i1 %or.cond38, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader, label %vector.main.loop.iter.check, !dbg !67063

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %2, 16, !dbg !67063
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph19, !dbg !67063

vector.ph19:                                      ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %2, 12
  %n.vec20 = and i64 %2, -16                      ; 4 uses
  %broadcast.splatinsert21 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat22 = shufflevector <8 x i16> %broadcast.splatinsert21, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body23, !dbg !67063

vector.body23:                                    ; preds = %vector.ph19, %vector.body23
  %index24 = phi i64 [ 0, %vector.ph19 ], [ %index.next27, %vector.body23 ], !dbg !67074 ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index24, !dbg !67075 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !67076
  %wide.load25 = load <8 x i16>, ptr %i.al, align 2, !dbg !67076
  %wide.load26 = load <8 x i16>, ptr %i.am, align 2, !dbg !67076
  %i.an = and <8 x i16> %broadcast.splat22, %wide.load25, !dbg !67086
  %i.ao = and <8 x i16> %broadcast.splat22, %wide.load26, !dbg !67086
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index24, !dbg !67084 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !67085
  store <8 x i16> %i.an, ptr %i.ap, align 2, !dbg !67085
  store <8 x i16> %i.ao, ptr %i.aq, align 2, !dbg !67085
  %index.next27 = add nuw i64 %index24, 16, !dbg !67074 ; 2 uses
  %i.ar = icmp eq i64 %index.next27, %n.vec20, !dbg !67063
  br i1 %i.ar, label %middle.block28, label %vector.body23, !dbg !67063, !llvm.loop !67055

middle.block28:                                   ; preds = %vector.body23
  %cmp.n29 = icmp eq i64 %2, %n.vec20, !dbg !67063
  br i1 %cmp.n29, label %._crit_edge, label %vec.epilog.iter.check, !dbg !67063

vec.epilog.iter.check:                            ; preds = %middle.block28
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec20, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert31 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat32 = shufflevector <4 x i16> %broadcast.splatinsert31, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ], !dbg !67074 ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index33, !dbg !67075
  %wide.load34 = load <4 x i16>, ptr %i.as, align 2, !dbg !67076
  %i.at = and <4 x i16> %broadcast.splat32, %wide.load34, !dbg !67086
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index33, !dbg !67084
  store <4 x i16> %i.at, ptr %i.au, align 2, !dbg !67085
  %index.next35 = add nuw i64 %index33, 4, !dbg !67074 ; 2 uses
  %i.av = icmp eq i64 %index.next35, %n.vec30, !dbg !67063
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67063, !llvm.loop !67056

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %2, %n.vec30, !dbg !67063
  br i1 %cmp.n36, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader, !dbg !67063

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec20, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter41 = and i64 %2, 3, !dbg !67063        ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0, !dbg !67063
  br i1 %lcmp.mod42.not, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol.loopexit, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol, !dbg !67063

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol
  %.sroa.01.05.us.prol = phi i64 [ %i.az, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol ], [ %.sroa.01.05.us.ph, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol ], [ 0, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.us.prol, !dbg !67075
  %i.ax = load i16, ptr %i.aw, align 2, !dbg !67076, !noundef !403
  %i.ay = and i16 %i.i, %i.ax, !dbg !67086
  %i.az = add nuw i64 %.sroa.01.05.us.prol, 1, !dbg !67074 ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.us.prol, !dbg !67084
  store i16 %i.ay, ptr %i.ba, align 2, !dbg !67085
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !67063 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter41, !dbg !67063
  br i1 %prol.iter.cmp.not, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol.loopexit, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol, !dbg !67063, !llvm.loop !67057

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol.loopexit: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader
  %.sroa.01.05.us.unr = phi i64 [ %.sroa.01.05.us.ph, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.preheader ], [ %i.az, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol ]
  %i.bb = sub i64 %.sroa.01.05.us.ph, %2, !dbg !67063
  %i.bc = icmp ugt i64 %i.bb, -4, !dbg !67063
  br i1 %i.bc, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us, !dbg !67063

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol.loopexit, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us
  %.sroa.01.05.us = phi i64 [ %i.bv, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us ], [ %.sroa.01.05.us.unr, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.us, !dbg !67075
  %i.be = load i16, ptr %i.bd, align 2, !dbg !67076, !noundef !403
  %i.bf = and i16 %i.i, %i.be, !dbg !67086
  %i.bg = add nuw i64 %.sroa.01.05.us, 1, !dbg !67074 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.us, !dbg !67084
  store i16 %i.bf, ptr %i.bh, align 2, !dbg !67085
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bg, !dbg !67075
  %i.bj = load i16, ptr %i.bi, align 2, !dbg !67076, !noundef !403
  %i.bk = and i16 %i.i, %i.bj, !dbg !67086
  %i.bl = add nuw i64 %.sroa.01.05.us, 2, !dbg !67074 ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bg, !dbg !67084
  store i16 %i.bk, ptr %i.bm, align 2, !dbg !67085
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bl, !dbg !67075
  %i.bo = load i16, ptr %i.bn, align 2, !dbg !67076, !noundef !403
  %i.bp = and i16 %i.i, %i.bo, !dbg !67086
  %i.bq = add nuw i64 %.sroa.01.05.us, 3, !dbg !67074 ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bl, !dbg !67084
  store i16 %i.bp, ptr %i.br, align 2, !dbg !67085
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq, !dbg !67075
  %i.bt = load i16, ptr %i.bs, align 2, !dbg !67076, !noundef !403
  %i.bu = and i16 %i.i, %i.bt, !dbg !67086
  %i.bv = add nuw i64 %.sroa.01.05.us, 4, !dbg !67074 ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bq, !dbg !67084
  store i16 %i.bu, ptr %i.bw, align 2, !dbg !67085
  %exitcond7.not.3 = icmp eq i64 %i.bv, %2, !dbg !67073
  br i1 %exitcond7.not.3, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us, !dbg !67063, !llvm.loop !67058

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol.loopexit, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us.prol.loopexit, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.us, %middle.block, %middle.block28, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !67087

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol.loopexit, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit
  %.sroa.01.05 = phi i64 [ %i.cv, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit ], [ %.sroa.01.05.unr, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit.prol.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !67075
  %i.by = load i16, ptr %i.bx, align 2, !dbg !67076, !noundef !403 ; 2 uses
  %i.bz = zext i16 %i.by to i32, !dbg !67077      ; 2 uses
  %i.ca = mul nuw i32 %i.g, %i.bz, !dbg !67078
  %i.cb = mul nuw i32 %i.h, %i.bz, !dbg !67079
  %i.cc = lshr i32 %i.cb, 16, !dbg !67079
  %i.cd = add nuw i32 %i.cc, %i.ca, !dbg !67080
  %i.ce = lshr i32 %i.cd, 16, !dbg !67081
  %i.cf = trunc nuw i32 %i.ce to i16, !dbg !67081
  %i.cg = mul i16 %i.e, %i.cf, !dbg !67082
  %i.ch = sub i16 %i.by, %i.cg, !dbg !67083
  %i.ci = add nuw i64 %.sroa.01.05, 1, !dbg !67074 ; 2 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !67084
  store i16 %i.ch, ptr %i.cj, align 2, !dbg !67085
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ci, !dbg !67075
  %i.cl = load i16, ptr %i.ck, align 2, !dbg !67076, !noundef !403 ; 2 uses
  %i.cm = zext i16 %i.cl to i32, !dbg !67077      ; 2 uses
  %i.cn = mul nuw i32 %i.g, %i.cm, !dbg !67078
  %i.co = mul nuw i32 %i.h, %i.cm, !dbg !67079
  %i.cp = lshr i32 %i.co, 16, !dbg !67079
  %i.cq = add nuw i32 %i.cp, %i.cn, !dbg !67080
  %i.cr = lshr i32 %i.cq, 16, !dbg !67081
  %i.cs = trunc nuw i32 %i.cr to i16, !dbg !67081
  %i.ct = mul i16 %i.e, %i.cs, !dbg !67082
  %i.cu = sub i16 %i.cl, %i.ct, !dbg !67083
  %i.cv = add nuw i64 %.sroa.01.05, 2, !dbg !67074 ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ci, !dbg !67084
  store i16 %i.cu, ptr %i.cw, align 2, !dbg !67085
  %exitcond.not.1 = icmp eq i64 %i.cv, %2, !dbg !67073
  br i1 %exitcond.not.1, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl24prim_wrapping_mod_scalar0Ba_.exit, !dbg !67063, !llvm.loop !67059
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !67088 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !67122
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !67113

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !67122
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !67122
  %i.c = load i32, ptr %3, align 4, !noundef !403
  %i.d = trunc i32 %i.c to i16
  %i.e = and i16 %i.d, 15                         ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !67113
  %i.f = sub i64 %i.b, %i.a, !dbg !67113
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !67113
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !67113
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !67113

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !67113
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !67113

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !67113

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67123 ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !67124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !67125
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !dbg !67125
  %wide.load7 = load <8 x i16>, ptr %i.i, align 2, !dbg !67125
  %i.j = shl <8 x i16> %wide.load, %broadcast.splat, !dbg !67126
  %i.k = shl <8 x i16> %wide.load7, %broadcast.splat, !dbg !67126
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !67127 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !67128
  store <8 x i16> %i.j, ptr %i.l, align 2, !dbg !67128
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !67128
  %index.next = add nuw i64 %index, 16, !dbg !67123 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !67113
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !67113, !llvm.loop !67106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !67113
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !67113

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.e, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !67123 ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !67124
  %wide.load12 = load <4 x i16>, ptr %i.o, align 2, !dbg !67125
  %i.p = shl <4 x i16> %wide.load12, %broadcast.splat10, !dbg !67126
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !67127
  store <4 x i16> %i.p, ptr %i.q, align 2, !dbg !67128
  %index.next13 = add nuw i64 %index11, 4, !dbg !67123 ; 2 uses
  %i.r = icmp eq i64 %index.next13, %n.vec8, !dbg !67113
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67113, !llvm.loop !67107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !67113
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !67113

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !67113          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67113
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67113

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.v, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !67124
  %i.t = load i16, ptr %i.s, align 2, !dbg !67125, !noundef !403
  %i.u = shl i16 %i.t, %i.e, !dbg !67126
  %i.v = add nuw i64 %.sroa.01.05.prol, 1, !dbg !67123 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !67127
  store i16 %i.u, ptr %i.w, align 2, !dbg !67128
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !67113 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !67113
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67113, !llvm.loop !67108

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.v, %vec.epilog.scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.05.ph, %2, !dbg !67113
  %i.y = icmp ugt i64 %i.x, -4, !dbg !67113
  br i1 %i.y, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67113

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !67129

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !67124
  %i.aa = load i16, ptr %i.z, align 2, !dbg !67125, !noundef !403
  %i.ab = shl i16 %i.aa, %i.e, !dbg !67126
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !67123 ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !67127
  store i16 %i.ab, ptr %i.ad, align 2, !dbg !67128
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac, !dbg !67124
  %i.af = load i16, ptr %i.ae, align 2, !dbg !67125, !noundef !403
  %i.ag = shl i16 %i.af, %i.e, !dbg !67126
  %i.ah = add nuw i64 %.sroa.01.05, 2, !dbg !67123 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac, !dbg !67127
  store i16 %i.ag, ptr %i.ai, align 2, !dbg !67128
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah, !dbg !67124
  %i.ak = load i16, ptr %i.aj, align 2, !dbg !67125, !noundef !403
  %i.al = shl i16 %i.ak, %i.e, !dbg !67126
  %i.am = add nuw i64 %.sroa.01.05, 3, !dbg !67123 ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah, !dbg !67127
  store i16 %i.al, ptr %i.an, align 2, !dbg !67128
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am, !dbg !67124
  %i.ap = load i16, ptr %i.ao, align 2, !dbg !67125, !noundef !403
  %i.aq = shl i16 %i.ap, %i.e, !dbg !67126
  %i.ar = add nuw i64 %.sroa.01.05, 4, !dbg !67123 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am, !dbg !67127
  store i16 %i.aq, ptr %i.as, align 2, !dbg !67128
  %exitcond.not.3 = icmp eq i64 %i.ar, %2, !dbg !67122
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67113, !llvm.loop !67109
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl24prim_wrapping_mul_scalars_0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !67130 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !67166
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !67157

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !67166
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !67166
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !67157
  %i.d = sub i64 %i.b, %i.a, !dbg !67157
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !67157
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !67157
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !67157

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !67157
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !67157

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !67157

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67167 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !67168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !67169
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !67169
  %wide.load7 = load <8 x i16>, ptr %i.g, align 2, !dbg !67169
  %i.h = mul <8 x i16> %broadcast.splat, %wide.load, !dbg !67170
  %i.i = mul <8 x i16> %broadcast.splat, %wide.load7, !dbg !67170
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !67171 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !67172
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !67172
  store <8 x i16> %i.i, ptr %i.k, align 2, !dbg !67172
  %index.next = add nuw i64 %index, 16, !dbg !67167 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !67157
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !67157, !llvm.loop !67150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !67157
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !67157

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !67167 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !67168
  %wide.load12 = load <4 x i16>, ptr %i.m, align 2, !dbg !67169
  %i.n = mul <4 x i16> %broadcast.splat10, %wide.load12, !dbg !67170
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !67171
  store <4 x i16> %i.n, ptr %i.o, align 2, !dbg !67172
  %index.next13 = add nuw i64 %index11, 4, !dbg !67167 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !67157
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67157, !llvm.loop !67151

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !67157
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !67157

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !67157          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67157
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67157

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !67168
  %i.r = load i16, ptr %i.q, align 2, !dbg !67169, !noundef !403
  %i.s = mul i16 %i.c, %i.r, !dbg !67170
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !67167 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !67171
  store i16 %i.s, ptr %i.u, align 2, !dbg !67172
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !67157 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !67157
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67157, !llvm.loop !67152

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !67157
  %i.w = icmp ugt i64 %i.v, -4, !dbg !67157
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67157

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !67173

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !67168
  %i.y = load i16, ptr %i.x, align 2, !dbg !67169, !noundef !403
  %i.z = mul i16 %i.c, %i.y, !dbg !67170
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !67167 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !67171
  store i16 %i.z, ptr %i.ab, align 2, !dbg !67172
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !67168
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !67169, !noundef !403
  %i.ae = mul i16 %i.c, %i.ad, !dbg !67170
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !67167 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa, !dbg !67171
  store i16 %i.ae, ptr %i.ag, align 2, !dbg !67172
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af, !dbg !67168
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !67169, !noundef !403
  %i.aj = mul i16 %i.c, %i.ai, !dbg !67170
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !67167 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af, !dbg !67171
  store i16 %i.aj, ptr %i.al, align 2, !dbg !67172
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !67168
  %i.an = load i16, ptr %i.am, align 2, !dbg !67169, !noundef !403
  %i.ao = mul i16 %i.c, %i.an, !dbg !67170
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !67167 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ak, !dbg !67171
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !67172
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !67166
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67157, !llvm.loop !67153
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !67174 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !67207
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !67197

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !67207
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !67207
  %i.c = load i16, ptr %3, align 2                ; 4 uses
  %min.iters.check = icmp ult i64 %2, 8, !dbg !67197
  %i.d = sub i64 %i.b, %i.a, !dbg !67197
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !67197
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !67197
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph, !dbg !67197

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body, !dbg !67208

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67208 ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !67209
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !dbg !67210 ; 2 uses
  %i.f = icmp ne <8 x i16> %wide.load, zeroinitializer, !dbg !67211 ; 2 uses
  %i.g = tail call <8 x i16> @llvm.masked.urem.v8i16(<8 x i16> %broadcast.splat, <8 x i16> %wide.load, <8 x i1> %i.f), !dbg !67212
  %predphi = select <8 x i1> %i.f, <8 x i16> %i.g, <8 x i16> zeroinitializer, !dbg !67213
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !67214
  store <8 x i16> %predphi, ptr %i.h, align 2, !dbg !67215
  %index.next = add nuw i64 %index, 8, !dbg !67208 ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec, !dbg !67197
  br i1 %i.i, label %middle.block, label %vector.body, !dbg !67197, !llvm.loop !67192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !67197
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !67197

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !67211
  %xtraiter = and i64 %2, 1, !dbg !67211
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67211
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !67211

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !67209
  %i.k = load i16, ptr %i.j, align 2, !dbg !67210, !noundef !403 ; 2 uses
  %i.l = icmp eq i16 %i.k, 0, !dbg !67211
  br i1 %i.l, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.prol, label %bb.b, !dbg !67211

bb.b:                                             ; preds = %scalar.ph.prol
  %i.m = urem i16 %i.c, %i.k, !dbg !67212
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.prol, !dbg !67216

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.prol: ; preds = %bb.b, %scalar.ph.prol
  %.sroa.0.0.i.prol = phi i16 [ %i.m, %bb.b ], [ 0, %scalar.ph.prol ], !dbg !67213
  %i.n = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !67208
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !67214
  store i16 %.sroa.0.0.i.prol, ptr %i.o, align 2, !dbg !67215
  br label %scalar.ph.prol.loopexit, !dbg !67211

scalar.ph.prol.loopexit:                          ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.prol, %scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %scalar.ph.preheader ], [ %i.n, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.prol ]
  %i.p = icmp eq i64 %2, %.neg, !dbg !67211
  br i1 %i.p, label %._crit_edge, label %scalar.ph, !dbg !67211

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.1, %middle.block, %bb.a
  ret void, !dbg !67217

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.1
  %.sroa.01.05 = phi i64 [ %i.aa, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.1 ], [ %.sroa.01.05.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !67209
  %i.r = load i16, ptr %i.q, align 2, !dbg !67210, !noundef !403 ; 2 uses
  %i.s = icmp eq i16 %i.r, 0, !dbg !67211
  br i1 %i.s, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit, label %bb.c, !dbg !67211

bb.c:                                             ; preds = %scalar.ph
  %i.t = urem i16 %i.c, %i.r, !dbg !67212
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit, !dbg !67216

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit: ; preds = %scalar.ph, %bb.c
  %.sroa.0.0.i = phi i16 [ %i.t, %bb.c ], [ 0, %scalar.ph ], !dbg !67213
  %i.u = add nuw i64 %.sroa.01.05, 1, !dbg !67208 ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !67214
  store i16 %.sroa.0.0.i, ptr %i.v, align 2, !dbg !67215
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u, !dbg !67209
  %i.x = load i16, ptr %i.w, align 2, !dbg !67210, !noundef !403 ; 2 uses
  %i.y = icmp eq i16 %i.x, 0, !dbg !67211
  br i1 %i.y, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.1, label %bb.d, !dbg !67211

bb.d:                                             ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit
  %i.z = urem i16 %i.c, %i.x, !dbg !67212
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.1, !dbg !67216

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit.1: ; preds = %bb.d, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit
  %.sroa.0.0.i.1 = phi i16 [ %i.z, %bb.d ], [ 0, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl28prim_wrapping_mod_scalar_lhs0Ba_.exit ], !dbg !67213
  %i.aa = add nuw i64 %.sroa.01.05, 2, !dbg !67208 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.u, !dbg !67214
  store i16 %.sroa.0.0.i.1, ptr %i.ab, align 2, !dbg !67215
  %exitcond.not.1 = icmp eq i64 %i.aa, %2, !dbg !67207
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !dbg !67197, !llvm.loop !67193
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl28prim_wrapping_sub_scalar_lhs0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !67218 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !67255
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !67245

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !67255
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !67255
  %i.c = load i16, ptr %3, align 2, !noundef !403 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4, !dbg !67245
  %i.d = sub i64 %i.b, %i.a, !dbg !67245
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !67245
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !67245
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !67245

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %2, 16, !dbg !67245
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph, !dbg !67245

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !67245

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67256 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !67257 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !67258
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !67258
  %wide.load7 = load <8 x i16>, ptr %i.g, align 2, !dbg !67258
  %i.h = sub <8 x i16> %broadcast.splat, %wide.load, !dbg !67259
  %i.i = sub <8 x i16> %broadcast.splat, %wide.load7, !dbg !67259
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !67260 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !67261
  store <8 x i16> %i.h, ptr %i.j, align 2, !dbg !67261
  store <8 x i16> %i.i, ptr %i.k, align 2, !dbg !67261
  %index.next = add nuw i64 %index, 16, !dbg !67256 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !67245
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !67245, !llvm.loop !67238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !67245
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !67245

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %2, -4                        ; 3 uses
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ], !dbg !67256 ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11, !dbg !67257
  %wide.load12 = load <4 x i16>, ptr %i.m, align 2, !dbg !67258
  %i.n = sub <4 x i16> %broadcast.splat10, %wide.load12, !dbg !67259
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11, !dbg !67260
  store <4 x i16> %i.n, ptr %i.o, align 2, !dbg !67261
  %index.next13 = add nuw i64 %index11, 4, !dbg !67256 ; 2 uses
  %i.p = icmp eq i64 %index.next13, %n.vec8, !dbg !67245
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !67245, !llvm.loop !67239

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec8, !dbg !67245
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader, !dbg !67245

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3, !dbg !67245          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67245
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67245

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !67257
  %i.r = load i16, ptr %i.q, align 2, !dbg !67258, !noundef !403
  %i.s = sub i16 %i.c, %i.r, !dbg !67259
  %i.t = add nuw i64 %.sroa.01.05.prol, 1, !dbg !67256 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !67260
  store i16 %i.s, ptr %i.u, align 2, !dbg !67261
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !67245 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !67245
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !67245, !llvm.loop !67240

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.sroa.01.05.ph, %2, !dbg !67245
  %i.w = icmp ugt i64 %i.v, -4, !dbg !67245
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67245

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !67262

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.01.05 = phi i64 [ %i.ap, %vec.epilog.scalar.ph ], [ %.sroa.01.05.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !67257
  %i.y = load i16, ptr %i.x, align 2, !dbg !67258, !noundef !403
  %i.z = sub i16 %i.c, %i.y, !dbg !67259
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !67256 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !67260
  store i16 %i.z, ptr %i.ab, align 2, !dbg !67261
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa, !dbg !67257
  %i.ad = load i16, ptr %i.ac, align 2, !dbg !67258, !noundef !403
  %i.ae = sub i16 %i.c, %i.ad, !dbg !67259
  %i.af = add nuw i64 %.sroa.01.05, 2, !dbg !67256 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa, !dbg !67260
  store i16 %i.ae, ptr %i.ag, align 2, !dbg !67261
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af, !dbg !67257
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !67258, !noundef !403
  %i.aj = sub i16 %i.c, %i.ai, !dbg !67259
  %i.ak = add nuw i64 %.sroa.01.05, 3, !dbg !67256 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af, !dbg !67260
  store i16 %i.aj, ptr %i.al, align 2, !dbg !67261
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak, !dbg !67257
  %i.an = load i16, ptr %i.am, align 2, !dbg !67258, !noundef !403
  %i.ao = sub i16 %i.c, %i.an, !dbg !67259
  %i.ap = add nuw i64 %.sroa.01.05, 4, !dbg !67256 ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ak, !dbg !67260
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !67261
  %exitcond.not.3 = icmp eq i64 %i.ap, %2, !dbg !67255
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !dbg !67245, !llvm.loop !67241
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1d_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !67263 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !67305
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !67295

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !67305
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !67305
  %i.c = load i32, ptr %3, align 4, !noundef !403 ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = lshr i32 %i.c, 16                        ; 4 uses
  %i.f = and i32 %i.c, 65535                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i16, ptr %i.g, align 4
  %i.i = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.h, i1 false)
  %i.j = and i16 %i.i, 15                         ; 7 uses
  %i.k = sub i64 %i.b, %i.a, !dbg !67295          ; 2 uses
  br i1 %i.d, label %iter.check, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader: ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 8, !dbg !67295
  %diff.check = icmp ugt i64 %i.k, -16, !dbg !67295
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !67295
  br i1 %or.cond, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader37, label %vector.ph, !dbg !67295

vector.ph:                                        ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat11 = shufflevector <8 x i32> %broadcast.splatinsert10, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body, !dbg !67306

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !67306 ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !67307
  %wide.load = load <8 x i16>, ptr %i.l, align 2, !dbg !67308
  %i.m = zext <8 x i16> %wide.load to <8 x i32>, !dbg !67309 ; 2 uses
  %i.n = mul nuw <8 x i32> %broadcast.splat, %i.m, !dbg !67310
  %i.o = mul nuw <8 x i32> %broadcast.splat11, %i.m, !dbg !67311
  %i.p = lshr <8 x i32> %i.o, splat (i32 16), !dbg !67311
  %i.q = add nuw <8 x i32> %i.p, %i.n, !dbg !67312
  %i.r = lshr <8 x i32> %i.q, splat (i32 16), !dbg !67313
  %i.s = trunc nuw <8 x i32> %i.r to <8 x i16>, !dbg !67313
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !67314
  store <8 x i16> %i.s, ptr %i.t, align 2, !dbg !67315
  %index.next = add nuw i64 %index, 8, !dbg !67306 ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec, !dbg !67295
  br i1 %i.u, label %middle.block, label %vector.body, !dbg !67295, !llvm.loop !67286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !67295
  br i1 %cmp.n, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader37, !dbg !67295

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader37: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !67295
  %xtraiter = and i64 %2, 1, !dbg !67295
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !67295
  br i1 %lcmp.mod.not, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.prol.loopexit, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.prol, !dbg !67295

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.prol: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader37
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !67307
  %i.w = load i16, ptr %i.v, align 2, !dbg !67308, !noundef !403
  %i.x = zext i16 %i.w to i32, !dbg !67309        ; 2 uses
  %i.y = mul nuw i32 %i.e, %i.x, !dbg !67310
  %i.z = mul nuw i32 %i.f, %i.x, !dbg !67311
  %i.aa = lshr i32 %i.z, 16, !dbg !67311
  %i.ab = add nuw i32 %i.aa, %i.y, !dbg !67312
  %i.ac = lshr i32 %i.ab, 16, !dbg !67313
  %i.ad = trunc nuw i32 %i.ac to i16, !dbg !67313
  %i.ae = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !67306
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !67314
  store i16 %i.ad, ptr %i.af, align 2, !dbg !67315
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.prol.loopexit, !dbg !67295

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.prol.loopexit: ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.prol, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader37
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.preheader37 ], [ %i.ae, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit.prol ]
  %i.ag = icmp eq i64 %2, %.neg, !dbg !67295
  br i1 %i.ag, label %._crit_edge, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0Ba_.exit, !dbg !67295
end_hunk_3
begin_hunk_4_@_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelyyNCNvXs1_NtNtB4_10arithmetic8unsignedyNtB1e_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0EB4_:bb.a
  %i.j = icmp eq i64 %i.i, 0, !dbg !68583
  br i1 %i.j, label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit, label %bb.d, !dbg !68583

bb.d:                                             ; preds = %bb.c
  %i.k = udiv i64 %i.a, %i.i, !dbg !68586
  br label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit, !dbg !68587

_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ], !dbg !68588
  %i.l = or disjoint i64 %.sroa.01.05, 1, !dbg !68592 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68589
  store i64 %.sroa.0.0.i, ptr %i.m, align 8, !dbg !68590
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l, !dbg !68584
  %i.o = load i64, ptr %i.n, align 8, !dbg !68585, !noundef !403 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !68583
  br i1 %i.p, label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit.1, label %bb.e, !dbg !68583

bb.e:                                             ; preds = %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit
  %i.q = udiv i64 %i.a, %i.o, !dbg !68586
  br label %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit.1, !dbg !68587

_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit.1: ; preds = %bb.e, %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit
  %.sroa.0.0.i.1 = phi i64 [ %i.q, %bb.e ], [ 0, %_RNCNvXs1_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedyNtB9_29PrimitiveArithmeticKernelImpl34prim_wrapping_floor_div_scalar_lhs0Bb_.exit ], !dbg !68588
  %i.r = add nuw i64 %.sroa.01.05, 2, !dbg !68592 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l, !dbg !68589
  store i64 %.sroa.0.0.i.1, ptr %i.s, align 8, !dbg !68590
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !68572 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !68572
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !dbg !68572
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68593 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68634
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68620

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68635

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68636
  %i.b = load i16, ptr %i.a, align 2, !dbg !68637, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68638
  %i.d = load i16, ptr %i.c, align 2, !dbg !68639, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68640
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68641 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68642
  store i16 %i.e, ptr %i.g, align 2, !dbg !68643
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68634
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68620
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68644 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68685
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68671

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68686

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68687
  %i.b = load i16, ptr %i.a, align 2, !dbg !68688, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68689
  %i.d = load i16, ptr %i.c, align 2, !dbg !68690, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68691
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68692 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68693
  store i16 %i.e, ptr %i.g, align 2, !dbg !68694
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68685
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68671
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68695 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68754
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68738

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68755

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68756
  %i.b = load i16, ptr %i.a, align 2, !dbg !68757, !noundef !403 ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68758
  %i.d = load i16, ptr %i.c, align 2, !dbg !68759, !noundef !403 ; 2 uses
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68760
  %i.f = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.e) #25, !dbg !68761
  %i.g = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.d, i16 noundef %i.f) #25, !dbg !68762
  %i.h = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21subtract_f16_fallback(i16 noundef %i.b, i16 noundef %i.g) #25, !dbg !68763
  %i.i = add nuw i64 %.sroa.01.05, 1, !dbg !68764 ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68765
  store i16 %i.h, ptr %i.j, align 2, !dbg !68766
  %exitcond.not = icmp eq i64 %i.i, %3, !dbg !68754
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68738
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68767 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68808
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68794

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68809

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68810
  %i.b = load i16, ptr %i.a, align 2, !dbg !68811, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68812
  %i.d = load i16, ptr %i.c, align 2, !dbg !68813, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21multiply_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68814
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68815 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68816
  store i16 %i.e, ptr %i.g, align 2, !dbg !68817
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68808
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68794
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68818 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68859
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68845

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68860

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68861
  %i.b = load i16, ptr %i.a, align 2, !dbg !68862, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68863
  %i.d = load i16, ptr %i.c, align 2, !dbg !68864, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch21subtract_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68865
  %i.f = add nuw i64 %.sroa.01.05, 1, !dbg !68866 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68867
  store i16 %i.e, ptr %i.g, align 2, !dbg !68868
  %exitcond.not = icmp eq i64 %i.f, %3, !dbg !68859
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68845
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68869 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68914
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68900

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68915

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68916
  %i.b = load i16, ptr %i.a, align 2, !dbg !68917, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68918
  %i.d = load i16, ptr %i.c, align 2, !dbg !68919, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68920
  %i.f = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5floor(i16 noundef %i.e) #25, !dbg !68921
  %i.g = add nuw i64 %.sroa.01.05, 1, !dbg !68922 ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68923
  store i16 %i.f, ptr %i.h, align 2, !dbg !68924
  %exitcond.not = icmp eq i64 %i.g, %3, !dbg !68914
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68900
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelNtNtCs2mZqlW55729_12polars_utils7float164pf16B13_B13_NCNvXNtNtB4_10arithmetic5floatB13_NtB21_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !68925 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !68970
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !68956

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void, !dbg !68971

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !68972
  %i.b = load i16, ptr %i.a, align 2, !dbg !68973, !noundef !403
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !68974
  %i.d = load i16, ptr %i.c, align 2, !dbg !68975, !noundef !403
  %i.e = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.b, i16 noundef %i.d) #25, !dbg !68976
  %i.f = tail call fastcc noundef i16 @_RNvXs5_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB7_8binary163f16NtNtCslmKYcnV0hjo_10num_traits5float5Float5trunc(i16 noundef %i.e) #25, !dbg !68977
  %i.g = add nuw i64 %.sroa.01.05, 1, !dbg !68978 ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !68979
  store i16 %i.f, ptr %i.h, align 2, !dbg !68980
  %exitcond.not = icmp eq i64 %i.g, %3, !dbg !68970
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !68956
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !68981 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !69022
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !69022
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !69022     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !69022
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69008

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !69008
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69008

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !69008
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !69008
  %i.e = sub i64 %i.a, %i.c, !dbg !69008
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !69008
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !69008
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69023

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 32, !dbg !69008
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !69008

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !69008

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69023 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69024 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !69025
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69025
  %wide.load8 = load <16 x i8>, ptr %i.h, align 1, !dbg !69025
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69026 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !69027
  %wide.load9 = load <16 x i8>, ptr %i.i, align 1, !dbg !69027
  %wide.load10 = load <16 x i8>, ptr %i.j, align 1, !dbg !69027
  %i.k = add <16 x i8> %wide.load9, %wide.load, !dbg !69028
  %i.l = add <16 x i8> %wide.load10, %wide.load8, !dbg !69028
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69029 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !69030
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !69030
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !69030
  %index.next = add nuw i64 %index, 32, !dbg !69023 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !69008
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !69008, !llvm.loop !69001

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69008
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69008

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !69023 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !69024
  %wide.load13 = load <4 x i8>, ptr %i.p, align 1, !dbg !69025
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !69026
  %wide.load14 = load <4 x i8>, ptr %i.q, align 1, !dbg !69027
  %i.r = add <4 x i8> %wide.load14, %wide.load13, !dbg !69028
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index12, !dbg !69029
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !69030
  %index.next15 = add nuw i64 %index12, 4, !dbg !69023 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !69008
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69008, !llvm.loop !69002

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !69008
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !69008

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !69008          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69008
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69008

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !69024
  %i.v = load i8, ptr %i.u, align 1, !dbg !69025, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !69026
  %i.x = load i8, ptr %i.w, align 1, !dbg !69027, !noundef !403
  %i.y = add i8 %i.x, %i.v, !dbg !69028
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !69023 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !69029
  store i8 %i.y, ptr %i.aa, align 1, !dbg !69030
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !69008 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !69008
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69008, !llvm.loop !69003

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !69008
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !69008
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !69008

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69031

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69024
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !69025, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69026
  %i.ag = load i8, ptr %i.af, align 1, !dbg !69027, !noundef !403
  %i.ah = add i8 %i.ag, %i.ae, !dbg !69028
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !69023 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69029
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !69030
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !69024
  %i.al = load i8, ptr %i.ak, align 1, !dbg !69025, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !69026
  %i.an = load i8, ptr %i.am, align 1, !dbg !69027, !noundef !403
  %i.ao = add i8 %i.an, %i.al, !dbg !69028
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !69023 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !69029
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !69030
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !69024
  %i.as = load i8, ptr %i.ar, align 1, !dbg !69025, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !69026
  %i.au = load i8, ptr %i.at, align 1, !dbg !69027, !noundef !403
  %i.av = add i8 %i.au, %i.as, !dbg !69028
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !69023 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !69029
  store i8 %i.av, ptr %i.ax, align 1, !dbg !69030
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !69024
  %i.az = load i8, ptr %i.ay, align 1, !dbg !69025, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !69026
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !69027, !noundef !403
  %i.bc = add i8 %i.bb, %i.az, !dbg !69028
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !69023 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !69029
  store i8 %i.bc, ptr %i.be, align 1, !dbg !69030
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !69022
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !69008, !llvm.loop !69004
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69032 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !69073
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !69073
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !69073     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !69073
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69059

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !69074
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69074

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !69074
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !69074
  %i.e = sub i64 %i.a, %i.c, !dbg !69074
  %diff.check8 = icmp ugt i64 %i.e, -16, !dbg !69074
  %conflict.rdx = or i1 %diff.check, %diff.check8, !dbg !69074
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69075

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %3, 16, !dbg !69074
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !69074

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 8
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !69074

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69075 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69076
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69077 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69078
  %wide.load10 = load <16 x i8>, ptr %i.h, align 1, !dbg !69079 ; 4 uses
  %i.i = add <16 x i8> %wide.load10, splat (i8 -1), !dbg !69074
  %i.j = icmp ult <16 x i8> %i.i, splat (i8 -2), !dbg !69074 ; 2 uses
  %i.k = tail call <16 x i8> @llvm.masked.srem.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load10, <16 x i1> %i.j), !dbg !69080 ; 2 uses
  %i.l = icmp ne <16 x i8> %i.k, zeroinitializer, !dbg !69081
  %i.m = select <16 x i1> %i.j, <16 x i1> %i.l, <16 x i1> zeroinitializer, !dbg !69081
  %i.n = xor <16 x i8> %wide.load10, %wide.load, !dbg !69082
  %i.o = icmp slt <16 x i8> %i.n, zeroinitializer, !dbg !69082
  %i.p = select <16 x i1> %i.o, <16 x i8> %wide.load10, <16 x i8> zeroinitializer, !dbg !69082
  %i.q = add <16 x i8> %i.k, %i.p, !dbg !69082
  %predphi = select <16 x i1> %i.m, <16 x i8> %i.q, <16 x i8> zeroinitializer, !dbg !69083
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69084
  store <16 x i8> %predphi, ptr %i.r, align 1, !dbg !69085
  %index.next = add nuw i64 %index, 16, !dbg !69075 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !69059
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !69059, !llvm.loop !69053

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69059
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69059

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ], !dbg !69075 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !69076
  %wide.load13 = load <8 x i8>, ptr %i.t, align 1, !dbg !69077 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !69078
  %wide.load14 = load <8 x i8>, ptr %i.u, align 1, !dbg !69079 ; 4 uses
  %i.v = add <8 x i8> %wide.load14, splat (i8 -1), !dbg !69074
  %i.w = icmp ult <8 x i8> %i.v, splat (i8 -2), !dbg !69074 ; 2 uses
  %i.x = tail call <8 x i8> @llvm.masked.srem.v8i8(<8 x i8> %wide.load13, <8 x i8> %wide.load14, <8 x i1> %i.w), !dbg !69080 ; 2 uses
  %i.y = icmp ne <8 x i8> %i.x, zeroinitializer, !dbg !69081
  %i.z = select <8 x i1> %i.w, <8 x i1> %i.y, <8 x i1> zeroinitializer, !dbg !69081
  %i.aa = xor <8 x i8> %wide.load14, %wide.load13, !dbg !69082
  %i.ab = icmp slt <8 x i8> %i.aa, zeroinitializer, !dbg !69082
  %i.ac = select <8 x i1> %i.ab, <8 x i8> %wide.load14, <8 x i8> zeroinitializer, !dbg !69082
  %i.ad = add <8 x i8> %i.x, %i.ac, !dbg !69082
  %predphi15 = select <8 x i1> %i.z, <8 x i8> %i.ad, <8 x i8> zeroinitializer, !dbg !69083
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %index12, !dbg !69084
  store <8 x i8> %predphi15, ptr %i.ae, align 1, !dbg !69085
  %index.next16 = add nuw i64 %index12, 8, !dbg !69075 ; 2 uses
  %i.af = icmp eq i64 %index.next16, %n.vec11, !dbg !69059
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69059, !llvm.loop !69054

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %3, %n.vec11, !dbg !69059
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader, !dbg !69059

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !69074

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69086

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.ao, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69076
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !69077, !noundef !403 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69078
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !69079, !noundef !403 ; 4 uses
  %.off.i = add i8 %i.aj, -1, !dbg !69074
  %switch.i = icmp ult i8 %.off.i, -2, !dbg !69074
  br i1 %switch.i, label %bb.b, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, !dbg !69074, !prof !568

bb.b:                                             ; preds = %.lr.ph
  %i.ak = srem i8 %i.ah, %i.aj, !dbg !69080       ; 2 uses
  %.not.i.i = icmp eq i8 %i.ak, 0, !dbg !69081
  br i1 %.not.i.i, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, label %bb.c, !dbg !69081

bb.c:                                             ; preds = %bb.b
  %i.al = xor i8 %i.aj, %i.ah, !dbg !69082
  %i.am = icmp slt i8 %i.al, 0, !dbg !69082
  %i.an = select i1 %i.am, i8 %i.aj, i8 0, !dbg !69082
  %spec.select.i = add i8 %i.ak, %i.an, !dbg !69082
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, !dbg !69082

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi i8 [ %spec.select.i, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ], !dbg !69083
  %i.ao = add nuw i64 %.sroa.01.05, 1, !dbg !69075 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69084
  store i8 %.sroa.3.0.i.i, ptr %i.ap, align 1, !dbg !69085
  %exitcond.not = icmp eq i64 %i.ao, %3, !dbg !69073
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !69059, !llvm.loop !69055
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69087 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !69128
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !69128
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !69128     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !69128
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69114

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !69114
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69114

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !69114
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !69114
  %i.e = sub i64 %i.a, %i.c, !dbg !69114
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !69114
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !69114
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69129

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 32, !dbg !69114
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !69114

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 24
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !69114

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69129 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69130 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !69131
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69131
  %wide.load8 = load <16 x i8>, ptr %i.h, align 1, !dbg !69131
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69132 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !69133
  %wide.load9 = load <16 x i8>, ptr %i.i, align 1, !dbg !69133
  %wide.load10 = load <16 x i8>, ptr %i.j, align 1, !dbg !69133
  %i.k = mul <16 x i8> %wide.load9, %wide.load, !dbg !69134
  %i.l = mul <16 x i8> %wide.load10, %wide.load8, !dbg !69134
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69135 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !69136
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !69136
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !69136
  %index.next = add nuw i64 %index, 32, !dbg !69129 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !69114
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !69114, !llvm.loop !69107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69114
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69114

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !69129 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !69130
  %wide.load13 = load <8 x i8>, ptr %i.p, align 1, !dbg !69131
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !69132
  %wide.load14 = load <8 x i8>, ptr %i.q, align 1, !dbg !69133
  %i.r = mul <8 x i8> %wide.load14, %wide.load13, !dbg !69134
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index12, !dbg !69135
  store <8 x i8> %i.r, ptr %i.s, align 1, !dbg !69136
  %index.next15 = add nuw i64 %index12, 8, !dbg !69129 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !69114
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69114, !llvm.loop !69108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !69114
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !69114

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !69114          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69114
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69114

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !69130
  %i.v = load i8, ptr %i.u, align 1, !dbg !69131, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !69132
  %i.x = load i8, ptr %i.w, align 1, !dbg !69133, !noundef !403
  %i.y = mul i8 %i.x, %i.v, !dbg !69134
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !69129 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !69135
  store i8 %i.y, ptr %i.aa, align 1, !dbg !69136
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !69114 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !69114
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69114, !llvm.loop !69109

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !69114
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !69114
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !69114

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69137

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69130
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !69131, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69132
  %i.ag = load i8, ptr %i.af, align 1, !dbg !69133, !noundef !403
  %i.ah = mul i8 %i.ag, %i.ae, !dbg !69134
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !69129 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69135
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !69136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !69130
  %i.al = load i8, ptr %i.ak, align 1, !dbg !69131, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !69132
  %i.an = load i8, ptr %i.am, align 1, !dbg !69133, !noundef !403
  %i.ao = mul i8 %i.an, %i.al, !dbg !69134
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !69129 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !69135
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !69136
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !69130
  %i.as = load i8, ptr %i.ar, align 1, !dbg !69131, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !69132
  %i.au = load i8, ptr %i.at, align 1, !dbg !69133, !noundef !403
  %i.av = mul i8 %i.au, %i.as, !dbg !69134
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !69129 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !69135
  store i8 %i.av, ptr %i.ax, align 1, !dbg !69136
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !69130
  %i.az = load i8, ptr %i.ay, align 1, !dbg !69131, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !69132
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !69133, !noundef !403
  %i.bc = mul i8 %i.bb, %i.az, !dbg !69134
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !69129 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !69135
  store i8 %i.bc, ptr %i.be, align 1, !dbg !69136
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !69128
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !69114, !llvm.loop !69110
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69138 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !69179
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !69179
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !69179     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !69179
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69165

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !69165
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69165

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !69165
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !69165
  %i.e = sub i64 %i.a, %i.c, !dbg !69165
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !69165
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !69165
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69180

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 32, !dbg !69165
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !69165

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !69165

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69180 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69181 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !69182
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69182
  %wide.load8 = load <16 x i8>, ptr %i.h, align 1, !dbg !69182
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69183 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !69184
  %wide.load9 = load <16 x i8>, ptr %i.i, align 1, !dbg !69184
  %wide.load10 = load <16 x i8>, ptr %i.j, align 1, !dbg !69184
  %i.k = sub <16 x i8> %wide.load, %wide.load9, !dbg !69185
  %i.l = sub <16 x i8> %wide.load8, %wide.load10, !dbg !69185
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69186 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !69187
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !69187
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !69187
  %index.next = add nuw i64 %index, 32, !dbg !69180 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !69165
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !69165, !llvm.loop !69158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69165
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69165

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !69180 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !69181
  %wide.load13 = load <4 x i8>, ptr %i.p, align 1, !dbg !69182
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !69183
  %wide.load14 = load <4 x i8>, ptr %i.q, align 1, !dbg !69184
  %i.r = sub <4 x i8> %wide.load13, %wide.load14, !dbg !69185
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index12, !dbg !69186
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !69187
  %index.next15 = add nuw i64 %index12, 4, !dbg !69180 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !69165
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69165, !llvm.loop !69159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !69165
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !69165

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !69165          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69165
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69165

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !69181
  %i.v = load i8, ptr %i.u, align 1, !dbg !69182, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !69183
  %i.x = load i8, ptr %i.w, align 1, !dbg !69184, !noundef !403
  %i.y = sub i8 %i.v, %i.x, !dbg !69185
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !69180 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !69186
  store i8 %i.y, ptr %i.aa, align 1, !dbg !69187
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !69165 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !69165
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69165, !llvm.loop !69160

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !69165
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !69165
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !69165

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69188

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69181
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !69182, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69183
  %i.ag = load i8, ptr %i.af, align 1, !dbg !69184, !noundef !403
  %i.ah = sub i8 %i.ae, %i.ag, !dbg !69185
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !69180 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69186
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !69187
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !69181
  %i.al = load i8, ptr %i.ak, align 1, !dbg !69182, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !69183
  %i.an = load i8, ptr %i.am, align 1, !dbg !69184, !noundef !403
  %i.ao = sub i8 %i.al, %i.an, !dbg !69185
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !69180 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !69186
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !69187
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !69181
  %i.as = load i8, ptr %i.ar, align 1, !dbg !69182, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !69183
  %i.au = load i8, ptr %i.at, align 1, !dbg !69184, !noundef !403
  %i.av = sub i8 %i.as, %i.au, !dbg !69185
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !69180 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !69186
  store i8 %i.av, ptr %i.ax, align 1, !dbg !69187
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !69181
  %i.az = load i8, ptr %i.ay, align 1, !dbg !69182, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !69183
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !69184, !noundef !403
  %i.bc = sub i8 %i.az, %i.bb, !dbg !69185
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !69180 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !69186
  store i8 %i.bc, ptr %i.be, align 1, !dbg !69187
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !69179
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !69165, !llvm.loop !69161
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69189 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !69234
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !69234
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !69234     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !69234
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69220

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !69235
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69235

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !69235
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !69235
  %i.e = sub i64 %i.a, %i.c, !dbg !69235
  %diff.check8 = icmp ugt i64 %i.e, -16, !dbg !69235
  %conflict.rdx = or i1 %diff.check, %diff.check8, !dbg !69235
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69236

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %3, 16, !dbg !69235
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !69235

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 8
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !69235

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69236 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69237
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69238 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69239
  %wide.load10 = load <16 x i8>, ptr %i.h, align 1, !dbg !69240 ; 5 uses
  %i.i = icmp ne <16 x i8> %wide.load10, zeroinitializer, !dbg !69235 ; 2 uses
  %i.j = icmp eq <16 x i8> %wide.load, splat (i8 -128), !dbg !69241
  %i.k = icmp eq <16 x i8> %wide.load10, splat (i8 -1), !dbg !69242 ; 3 uses
  %i.l = and <16 x i1> %i.j, %i.k, !dbg !69241
  %i.m = xor <16 x i1> %i.l, splat (i1 true), !dbg !69243 ; 2 uses
  %i.n = select <16 x i1> %i.i, <16 x i1> %i.m, <16 x i1> zeroinitializer, !dbg !69243 ; 2 uses
  %i.o = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load10, <16 x i1> %i.n), !dbg !69244 ; 2 uses
  %i.p = xor <16 x i1> %i.k, splat (i1 true), !dbg !69245
  %i.q = and <16 x i1> %i.n, %i.p, !dbg !69245    ; 2 uses
  %i.r = tail call <16 x i8> @llvm.masked.srem.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load10, <16 x i1> %i.q), !dbg !69246
  %i.s = icmp ne <16 x i8> %i.r, zeroinitializer, !dbg !69247
  %i.t = xor <16 x i8> %wide.load10, %wide.load
  %i.u = icmp slt <16 x i8> %i.t, zeroinitializer
  %i.v = and <16 x i1> %i.u, %i.s, !dbg !69247
  %i.w = sext <16 x i1> %i.v to <16 x i8>, !dbg !69247
  %i.x = add <16 x i8> %i.o, %i.w, !dbg !69247
  %i.y = select <16 x i1> %i.k, <16 x i1> %i.m, <16 x i1> zeroinitializer, !dbg !69245
  %predphi = select <16 x i1> %i.i, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer, !dbg !69248
  %predphi11 = select <16 x i1> %i.y, <16 x i8> %i.o, <16 x i8> %predphi, !dbg !69248
  %predphi12 = select <16 x i1> %i.q, <16 x i8> %i.x, <16 x i8> %predphi11, !dbg !69248
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69249
  store <16 x i8> %predphi12, ptr %i.z, align 1, !dbg !69250
  %index.next = add nuw i64 %index, 16, !dbg !69236 ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec, !dbg !69220
  br i1 %i.aa, label %middle.block, label %vector.body, !dbg !69220, !llvm.loop !69214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69220
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69220

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !69236 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index14, !dbg !69237
  %wide.load15 = load <8 x i8>, ptr %i.ab, align 1, !dbg !69238 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %index14, !dbg !69239
  %wide.load16 = load <8 x i8>, ptr %i.ac, align 1, !dbg !69240 ; 5 uses
  %i.ad = icmp ne <8 x i8> %wide.load16, zeroinitializer, !dbg !69235 ; 2 uses
  %i.ae = icmp eq <8 x i8> %wide.load15, splat (i8 -128), !dbg !69241
  %i.af = icmp eq <8 x i8> %wide.load16, splat (i8 -1), !dbg !69242 ; 3 uses
  %i.ag = and <8 x i1> %i.ae, %i.af, !dbg !69241
  %i.ah = xor <8 x i1> %i.ag, splat (i1 true), !dbg !69243 ; 2 uses
  %i.ai = select <8 x i1> %i.ad, <8 x i1> %i.ah, <8 x i1> zeroinitializer, !dbg !69243 ; 2 uses
  %i.aj = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> %wide.load15, <8 x i8> %wide.load16, <8 x i1> %i.ai), !dbg !69244 ; 2 uses
  %i.ak = xor <8 x i1> %i.af, splat (i1 true), !dbg !69245
  %i.al = and <8 x i1> %i.ai, %i.ak, !dbg !69245  ; 2 uses
  %i.am = tail call <8 x i8> @llvm.masked.srem.v8i8(<8 x i8> %wide.load15, <8 x i8> %wide.load16, <8 x i1> %i.al), !dbg !69246
  %i.an = icmp ne <8 x i8> %i.am, zeroinitializer, !dbg !69247
  %i.ao = xor <8 x i8> %wide.load16, %wide.load15
  %i.ap = icmp slt <8 x i8> %i.ao, zeroinitializer
  %i.aq = and <8 x i1> %i.ap, %i.an, !dbg !69247
  %i.ar = sext <8 x i1> %i.aq to <8 x i8>, !dbg !69247
  %i.as = add <8 x i8> %i.aj, %i.ar, !dbg !69247
  %i.at = select <8 x i1> %i.af, <8 x i1> %i.ah, <8 x i1> zeroinitializer, !dbg !69245
  %predphi17 = select <8 x i1> %i.ad, <8 x i8> splat (i8 -128), <8 x i8> zeroinitializer, !dbg !69248
  %predphi18 = select <8 x i1> %i.at, <8 x i8> %i.aj, <8 x i8> %predphi17, !dbg !69248
  %predphi19 = select <8 x i1> %i.al, <8 x i8> %i.as, <8 x i8> %predphi18, !dbg !69248
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %index14, !dbg !69249
  store <8 x i8> %predphi19, ptr %i.au, align 1, !dbg !69250
  %index.next20 = add nuw i64 %index14, 8, !dbg !69236 ; 2 uses
  %i.av = icmp eq i64 %index.next20, %n.vec13, !dbg !69220
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69220, !llvm.loop !69215

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %3, %n.vec13, !dbg !69220
  br i1 %cmp.n21, label %._crit_edge, label %.lr.ph.preheader, !dbg !69220

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !69235

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69251

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.bj, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69237
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !69238, !noundef !403 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69239
  %i.az = load i8, ptr %i.ay, align 1, !dbg !69240, !noundef !403 ; 5 uses
  %i.ba = icmp eq i8 %i.az, 0, !dbg !69235
  br i1 %i.ba, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %bb.b, !dbg !69235

bb.b:                                             ; preds = %.lr.ph
  %i.bb = icmp eq i8 %i.ax, -128, !dbg !69241
  %i.bc = icmp eq i8 %i.az, -1, !dbg !69242       ; 2 uses
  %i.bd = and i1 %i.bb, %i.bc, !dbg !69241
  br i1 %i.bd, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i, !dbg !69243, !prof !414

_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i: ; preds = %bb.b
  %i.be = sdiv i8 %i.ax, %i.az, !dbg !69244       ; 2 uses
  %i.bf = srem i8 %i.ax, %i.az, !dbg !69246
  br i1 %i.bc, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %bb.c, !dbg !69245, !prof !572

bb.c:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i
  %.not.i.i = icmp ne i8 %i.bf, 0, !dbg !69247
  %i.bg = xor i8 %i.az, %i.ax
  %i.bh = icmp slt i8 %i.bg, 0
  %or.cond.i = and i1 %i.bh, %.not.i.i, !dbg !69247
  %i.bi = sext i1 %or.cond.i to i8, !dbg !69247
  %spec.select.i = add i8 %i.be, %i.bi, !dbg !69247
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, !dbg !69247

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit: ; preds = %.lr.ph, %bb.b, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi i8 [ 0, %.lr.ph ], [ %spec.select.i, %bb.c ], [ %i.be, %_RNvMNtCscgRAwXFJnXP_4core3numa15overflowing_div.exit.i.i ], [ -128, %bb.b ], !dbg !69248
  %i.bj = add nuw i64 %.sroa.01.05, 1, !dbg !69236 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69249
  store i8 %.sroa.0.0.i.i, ptr %i.bk, align 1, !dbg !69250
  %exitcond.not = icmp eq i64 %i.bj, %3, !dbg !69234
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !69220, !llvm.loop !69216
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaaaNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69252 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !69294
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !69294
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !69294     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !69294
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !69280

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !69295
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !69295

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !69295
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !69295
  %i.e = sub i64 %i.a, %i.c, !dbg !69295
  %diff.check8 = icmp ugt i64 %i.e, -16, !dbg !69295
  %conflict.rdx = or i1 %diff.check, %diff.check8, !dbg !69295
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !69296

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %3, 16, !dbg !69295
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !69295

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 8
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !69295

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69296 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69297
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !69298 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69299
  %wide.load10 = load <16 x i8>, ptr %i.h, align 1, !dbg !69300 ; 3 uses
  %i.i = icmp ne <16 x i8> %wide.load10, zeroinitializer, !dbg !69295 ; 2 uses
  %i.j = icmp ne <16 x i8> %wide.load, splat (i8 -128), !dbg !69301
  %i.k = icmp ne <16 x i8> %wide.load10, splat (i8 -1), !dbg !69302
  %.not22 = or <16 x i1> %i.j, %i.k, !dbg !69303  ; 2 uses
  %i.l = select <16 x i1> %i.i, <16 x i1> %.not22, <16 x i1> zeroinitializer, !dbg !69303
  %i.m = tail call <16 x i8> @llvm.masked.sdiv.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load10, <16 x i1> %i.l), !dbg !69304
  %predphi = select <16 x i1> %.not22, <16 x i8> %i.m, <16 x i8> splat (i8 -128), !dbg !69305
  %predphi11 = select <16 x i1> %i.i, <16 x i8> %predphi, <16 x i8> zeroinitializer, !dbg !69305
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !69306
  store <16 x i8> %predphi11, ptr %i.n, align 1, !dbg !69307
  %index.next = add nuw i64 %index, 16, !dbg !69296 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !69280
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !69280, !llvm.loop !69274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69280
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !69280

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !567

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ], !dbg !69296 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index13, !dbg !69297
  %wide.load14 = load <8 x i8>, ptr %i.p, align 1, !dbg !69298 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index13, !dbg !69299
  %wide.load15 = load <8 x i8>, ptr %i.q, align 1, !dbg !69300 ; 3 uses
  %i.r = icmp ne <8 x i8> %wide.load15, zeroinitializer, !dbg !69295 ; 2 uses
  %i.s = icmp ne <8 x i8> %wide.load14, splat (i8 -128), !dbg !69301
  %i.t = icmp ne <8 x i8> %wide.load15, splat (i8 -1), !dbg !69302
  %.not25 = or <8 x i1> %i.s, %i.t, !dbg !69303   ; 2 uses
  %i.u = select <8 x i1> %i.r, <8 x i1> %.not25, <8 x i1> zeroinitializer, !dbg !69303
  %i.v = tail call <8 x i8> @llvm.masked.sdiv.v8i8(<8 x i8> %wide.load14, <8 x i8> %wide.load15, <8 x i1> %i.u), !dbg !69304
  %predphi16 = select <8 x i1> %.not25, <8 x i8> %i.v, <8 x i8> splat (i8 -128), !dbg !69305
  %predphi17 = select <8 x i1> %i.r, <8 x i8> %predphi16, <8 x i8> zeroinitializer, !dbg !69305
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %index13, !dbg !69306
  store <8 x i8> %predphi17, ptr %i.w, align 1, !dbg !69307
  %index.next18 = add nuw i64 %index13, 8, !dbg !69296 ; 2 uses
  %i.x = icmp eq i64 %index.next18, %n.vec12, !dbg !69280
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !69280, !llvm.loop !69275

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %3, %n.vec12, !dbg !69280
  br i1 %cmp.n19, label %._crit_edge, label %.lr.ph.preheader, !dbg !69280

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !69295

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !69308

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit
  %.sroa.01.05 = phi i64 [ %i.ah, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69297
  %i.z = load i8, ptr %i.y, align 1, !dbg !69298, !noundef !403 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69299
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !69300, !noundef !403 ; 3 uses
  %i.ac = icmp eq i8 %i.ab, 0, !dbg !69295
  br i1 %i.ac, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, label %bb.b, !dbg !69295

bb.b:                                             ; preds = %.lr.ph
  %i.ad = icmp eq i8 %i.z, -128, !dbg !69301
  %i.ae = icmp eq i8 %i.ab, -1, !dbg !69302
  %i.af = and i1 %i.ad, %i.ae, !dbg !69301
  br i1 %i.af, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, label %bb.c, !dbg !69303, !prof !414

bb.c:                                             ; preds = %bb.b
  %i.ag = sdiv i8 %i.z, %i.ab, !dbg !69304
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit, !dbg !69309

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0B8_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ag, %bb.c ], [ -128, %bb.b ], !dbg !69305
  %i.ah = add nuw i64 %.sroa.01.05, 1, !dbg !69296 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !69306
  store i8 %.sroa.0.0.i, ptr %i.ai, align 1, !dbg !69307
  %exitcond.not = icmp eq i64 %i.ah, %3, !dbg !69294
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !69280, !llvm.loop !69276
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelaadNCNvXNtNtB4_10arithmetic6signedaNtB1d_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !69310 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !69354

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !69354
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !69354 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %3, !dbg !69354
  %i.d = getelementptr i8, ptr %1, i64 %3, !dbg !69354
  %bound0 = icmp ult ptr %2, %i.c, !dbg !69354
  %bound1 = icmp ult ptr %0, %i.b, !dbg !69354
  %found.conflict = and i1 %bound0, %bound1, !dbg !69354
  %bound011 = icmp ult ptr %2, %i.d, !dbg !69354
  %bound112 = icmp ult ptr %1, %i.b, !dbg !69354
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !69354
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !69354
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !69355

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !69355

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !69355 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !69356
  %wide.load = load <2 x i8>, ptr %i.e, align 1, !dbg !69357, !alias.scope !69340
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !69358
  %wide.load14 = load <2 x i8>, ptr %i.f, align 1, !dbg !69359, !alias.scope !69344
  %i.g = sitofp <2 x i8> %wide.load to <2 x double>, !dbg !69360
  %i.h = sitofp <2 x i8> %wide.load14 to <2 x double>, !dbg !69361
  %i.i = fdiv <2 x double> %i.g, %i.h, !dbg !69360
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !69362
  store <2 x double> %i.i, ptr %i.j, align 8, !dbg !69363, !alias.scope !69350, !noalias !69351
  %index.next = add nuw i64 %index, 2, !dbg !69355 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !69354
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !69354, !llvm.loop !69331

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !69354
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !69354

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69354
  %xtraiter = and i64 %3, 1, !dbg !69354
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !69354
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !69354

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !69356
  %i.m = load i8, ptr %i.l, align 1, !dbg !69357, !noundef !403
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !69358
  %i.o = load i8, ptr %i.n, align 1, !dbg !69359, !noundef !403
  %i.p = sitofp i8 %i.m to double, !dbg !69360
  %i.q = sitofp i8 %i.o to double, !dbg !69361
  %i.r = fdiv double %i.p, %i.q, !dbg !69360
  %i.s = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !69355
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !69362
  store double %i.r, ptr %i.t, align 8, !dbg !69363
  br label %.lr.ph.prol.loopexit, !dbg !69354

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = icmp eq i64 %3, %.neg, !dbg !69354
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !69354

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !69364

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.al, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !69356
  %i.w = load i8, ptr %i.v, align 1, !dbg !69357, !noundef !403
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !69358
  %i.y = load i8, ptr %i.x, align 1, !dbg !69359, !noundef !403
  %i.z = sitofp i8 %i.w to double, !dbg !69360
  %i.aa = sitofp i8 %i.y to double, !dbg !69361
  %i.ab = fdiv double %i.z, %i.aa, !dbg !69360
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !69355 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !69362
  store double %i.ab, ptr %i.ad, align 8, !dbg !69363
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac, !dbg !69356
  %i.af = load i8, ptr %i.ae, align 1, !dbg !69357, !noundef !403
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac, !dbg !69358
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !69359, !noundef !403
  %i.ai = sitofp i8 %i.af to double, !dbg !69360
  %i.aj = sitofp i8 %i.ah to double, !dbg !69361
  %i.ak = fdiv double %i.ai, %i.aj, !dbg !69360
  %i.al = add nuw i64 %.sroa.01.05, 2, !dbg !69355 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac, !dbg !69362
  store double %i.ak, ptr %i.am, align 8, !dbg !69363
end_hunk_4
begin_hunk_5_@_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelfffNCNvXs_NtNtB4_10arithmetic5floatfNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_:bb.a
  %exitcond.not.1 = icmp eq i64 %i.ai, %3, !dbg !70003
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !69989, !llvm.loop !69985
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelfffNCNvXs_NtNtB4_10arithmetic5floatfNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70014 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !70055
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !70055
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !70055     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !70055
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !70041

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !70041
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck, !dbg !70041

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !70041
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !70041
  %i.e = sub i64 %i.a, %i.c, !dbg !70041
  %diff.check6 = icmp ugt i64 %i.e, -16, !dbg !70041
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !70041
  br i1 %conflict.rdx, label %.lr.ph.preheader8, label %vector.ph, !dbg !70056

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  br label %vector.body, !dbg !70056

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70056 ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !70057
  %wide.load = load <4 x float>, ptr %i.f, align 4, !dbg !70058
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index, !dbg !70059
  %wide.load7 = load <4 x float>, ptr %i.g, align 4, !dbg !70060
  %i.h = fdiv <4 x float> %wide.load, %wide.load7, !dbg !70061
  %i.i = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %i.h), !dbg !70062
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index, !dbg !70063
  store <4 x float> %i.i, ptr %i.j, align 4, !dbg !70064
  %index.next = add nuw i64 %index, 4, !dbg !70056 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !70041
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !70041, !llvm.loop !70036

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70041
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8, !dbg !70041

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !70041
  %xtraiter = and i64 %3, 1, !dbg !70041
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70041
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70041

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !70057
  %i.m = load float, ptr %i.l, align 4, !dbg !70058, !noundef !403
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !70059
  %i.o = load float, ptr %i.n, align 4, !dbg !70060, !noundef !403
  %i.p = fdiv float %i.m, %i.o, !dbg !70061
  %i.q = tail call noundef float @llvm.trunc.f32(float %i.p), !dbg !70062
  %i.r = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !70056
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !70063
  store float %i.q, ptr %i.s, align 4, !dbg !70064
  br label %.lr.ph.prol.loopexit, !dbg !70041

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader8
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader8 ], [ %i.r, %.lr.ph.prol ]
  %i.t = icmp eq i64 %3, %.neg, !dbg !70041
  br i1 %i.t, label %._crit_edge, label %.lr.ph, !dbg !70041

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !70065

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.ai, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.05, !dbg !70057
  %i.v = load float, ptr %i.u, align 4, !dbg !70058, !noundef !403
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.05, !dbg !70059
  %i.x = load float, ptr %i.w, align 4, !dbg !70060, !noundef !403
  %i.y = fdiv float %i.v, %i.x, !dbg !70061
  %i.z = tail call noundef float @llvm.trunc.f32(float %i.y), !dbg !70062
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !70056 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.01.05, !dbg !70063
  store float %i.z, ptr %i.ab, align 4, !dbg !70064
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa, !dbg !70057
  %i.ad = load float, ptr %i.ac, align 4, !dbg !70058, !noundef !403
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa, !dbg !70059
  %i.af = load float, ptr %i.ae, align 4, !dbg !70060, !noundef !403
  %i.ag = fdiv float %i.ad, %i.af, !dbg !70061
  %i.ah = tail call noundef float @llvm.trunc.f32(float %i.ag), !dbg !70062
  %i.ai = add nuw i64 %.sroa.01.05, 2, !dbg !70056 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa, !dbg !70063
  store float %i.ah, ptr %i.aj, align 4, !dbg !70064
  %exitcond.not.1 = icmp eq i64 %i.ai, %3, !dbg !70055
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !70041, !llvm.loop !70037
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhdNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70066 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !70110

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !70110
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !70110 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %3, !dbg !70110
  %i.d = getelementptr i8, ptr %1, i64 %3, !dbg !70110
  %bound0 = icmp ult ptr %2, %i.c, !dbg !70110
  %bound1 = icmp ult ptr %0, %i.b, !dbg !70110
  %found.conflict = and i1 %bound0, %bound1, !dbg !70110
  %bound011 = icmp ult ptr %2, %i.d, !dbg !70110
  %bound112 = icmp ult ptr %1, %i.b, !dbg !70110
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !70110
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !70110
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !70111

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !70111

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70111 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !70112
  %wide.load = load <2 x i8>, ptr %i.e, align 1, !dbg !70113, !alias.scope !70096
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !70114
  %wide.load14 = load <2 x i8>, ptr %i.f, align 1, !dbg !70115, !alias.scope !70100
  %i.g = uitofp <2 x i8> %wide.load to <2 x double>, !dbg !70116
  %i.h = uitofp <2 x i8> %wide.load14 to <2 x double>, !dbg !70117
  %i.i = fdiv <2 x double> %i.g, %i.h, !dbg !70116
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !70118
  store <2 x double> %i.i, ptr %i.j, align 8, !dbg !70119, !alias.scope !70106, !noalias !70107
  %index.next = add nuw i64 %index, 2, !dbg !70111 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !70110
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !70110, !llvm.loop !70087

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70110
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !70110

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !70110
  %xtraiter = and i64 %3, 1, !dbg !70110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70110
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70110

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.ph, !dbg !70112
  %i.m = load i8, ptr %i.l, align 1, !dbg !70113, !noundef !403
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.ph, !dbg !70114
  %i.o = load i8, ptr %i.n, align 1, !dbg !70115, !noundef !403
  %i.p = uitofp i8 %i.m to double, !dbg !70116
  %i.q = uitofp i8 %i.o to double, !dbg !70117
  %i.r = fdiv double %i.p, %i.q, !dbg !70116
  %i.s = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !70111
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !70118
  store double %i.r, ptr %i.t, align 8, !dbg !70119
  br label %.lr.ph.prol.loopexit, !dbg !70110

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = icmp eq i64 %3, %.neg, !dbg !70110
  br i1 %i.u, label %._crit_edge, label %.lr.ph, !dbg !70110

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !70120

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.al, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70112
  %i.w = load i8, ptr %i.v, align 1, !dbg !70113, !noundef !403
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70114
  %i.y = load i8, ptr %i.x, align 1, !dbg !70115, !noundef !403
  %i.z = uitofp i8 %i.w to double, !dbg !70116
  %i.aa = uitofp i8 %i.y to double, !dbg !70117
  %i.ab = fdiv double %i.z, %i.aa, !dbg !70116
  %i.ac = add nuw i64 %.sroa.01.05, 1, !dbg !70111 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !70118
  store double %i.ab, ptr %i.ad, align 8, !dbg !70119
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac, !dbg !70112
  %i.af = load i8, ptr %i.ae, align 1, !dbg !70113, !noundef !403
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac, !dbg !70114
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !70115, !noundef !403
  %i.ai = uitofp i8 %i.af to double, !dbg !70116
  %i.aj = uitofp i8 %i.ah to double, !dbg !70117
  %i.ak = fdiv double %i.ai, %i.aj, !dbg !70116
  %i.al = add nuw i64 %.sroa.01.05, 2, !dbg !70111 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac, !dbg !70118
  store double %i.ak, ptr %i.am, align 8, !dbg !70119
  %exitcond.not.1 = icmp eq i64 %i.al, %3, !dbg !70121
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !70110, !llvm.loop !70089
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70122 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !70163
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !70163
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !70163     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !70163
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !70149

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !70149
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !70149

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !70149
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !70149
  %i.e = sub i64 %i.a, %i.c, !dbg !70149
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !70149
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !70149
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !70164

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 32, !dbg !70149
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !70149

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !70149

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70164 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !70165 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !70166
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !70166
  %wide.load8 = load <16 x i8>, ptr %i.h, align 1, !dbg !70166
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !70167 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !70168
  %wide.load9 = load <16 x i8>, ptr %i.i, align 1, !dbg !70168
  %wide.load10 = load <16 x i8>, ptr %i.j, align 1, !dbg !70168
  %i.k = add <16 x i8> %wide.load9, %wide.load, !dbg !70169
  %i.l = add <16 x i8> %wide.load10, %wide.load8, !dbg !70169
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !70170 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70171
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !70171
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !70171
  %index.next = add nuw i64 %index, 32, !dbg !70164 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !70149
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !70149, !llvm.loop !70142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70149
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !70149

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !70164 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !70165
  %wide.load13 = load <4 x i8>, ptr %i.p, align 1, !dbg !70166
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !70167
  %wide.load14 = load <4 x i8>, ptr %i.q, align 1, !dbg !70168
  %i.r = add <4 x i8> %wide.load14, %wide.load13, !dbg !70169
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index12, !dbg !70170
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !70171
  %index.next15 = add nuw i64 %index12, 4, !dbg !70164 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !70149
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70149, !llvm.loop !70143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !70149
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !70149

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !70149          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70149
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70149

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !70165
  %i.v = load i8, ptr %i.u, align 1, !dbg !70166, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !70167
  %i.x = load i8, ptr %i.w, align 1, !dbg !70168, !noundef !403
  %i.y = add i8 %i.x, %i.v, !dbg !70169
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !70164 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !70170
  store i8 %i.y, ptr %i.aa, align 1, !dbg !70171
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !70149 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !70149
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70149, !llvm.loop !70144

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !70149
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !70149
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !70149

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !70172

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70165
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !70166, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70167
  %i.ag = load i8, ptr %i.af, align 1, !dbg !70168, !noundef !403
  %i.ah = add i8 %i.ag, %i.ae, !dbg !70169
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !70164 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70170
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !70171
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !70165
  %i.al = load i8, ptr %i.ak, align 1, !dbg !70166, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !70167
  %i.an = load i8, ptr %i.am, align 1, !dbg !70168, !noundef !403
  %i.ao = add i8 %i.an, %i.al, !dbg !70169
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !70164 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !70170
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !70171
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !70165
  %i.as = load i8, ptr %i.ar, align 1, !dbg !70166, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !70167
  %i.au = load i8, ptr %i.at, align 1, !dbg !70168, !noundef !403
  %i.av = add i8 %i.au, %i.as, !dbg !70169
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !70164 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !70170
  store i8 %i.av, ptr %i.ax, align 1, !dbg !70171
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !70165
  %i.az = load i8, ptr %i.ay, align 1, !dbg !70166, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !70167
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !70168, !noundef !403
  %i.bc = add i8 %i.bb, %i.az, !dbg !70169
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !70164 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !70170
  store i8 %i.bc, ptr %i.be, align 1, !dbg !70171
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !70163
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !70149, !llvm.loop !70145
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70173 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !70208
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !70194

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !70209
  %i.a = icmp eq i64 %3, 1, !dbg !70209
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !70209

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !70209
  br label %.lr.ph, !dbg !70209

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70209
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !70209

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !70209
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !70209
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.epil.init, !dbg !70210
  %i.c = load i8, ptr %i.b, align 1, !dbg !70211, !noundef !403 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0, !dbg !70209
  br i1 %i.d, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil, label %bb.b, !dbg !70209

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.epil.init, !dbg !70212
  %i.f = load i8, ptr %i.e, align 1, !dbg !70213, !noundef !403
  %i.g = urem i8 %i.f, %i.c, !dbg !70214
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil, !dbg !70215

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i8 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !70216
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.epil.init, !dbg !70217
  store i8 %.sroa.0.0.i.epil, ptr %i.h, align 1, !dbg !70218
  br label %._crit_edge, !dbg !70219

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !70219

.lr.ph:                                           ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70210
  %i.j = load i8, ptr %i.i, align 1, !dbg !70211, !noundef !403 ; 2 uses
  %i.k = icmp eq i8 %i.j, 0, !dbg !70209
  br i1 %i.k, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, label %bb.c, !dbg !70209

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70212
  %i.m = load i8, ptr %i.l, align 1, !dbg !70213, !noundef !403
  %i.n = urem i8 %i.m, %i.j, !dbg !70214
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit, !dbg !70215

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !70216
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !70220 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70217
  store i8 %.sroa.0.0.i, ptr %i.p, align 1, !dbg !70218
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o, !dbg !70210
  %i.r = load i8, ptr %i.q, align 1, !dbg !70211, !noundef !403 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0, !dbg !70209
  br i1 %i.s, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1, label %bb.d, !dbg !70209

bb.d:                                             ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !70212
  %i.u = load i8, ptr %i.t, align 1, !dbg !70213, !noundef !403
  %i.v = urem i8 %i.u, %i.r, !dbg !70214
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1, !dbg !70215

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit.1: ; preds = %bb.d, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit
  %.sroa.0.0.i.1 = phi i8 [ %i.v, %bb.d ], [ 0, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0B8_.exit ], !dbg !70216
  %i.w = add nuw i64 %.sroa.01.05, 2, !dbg !70220 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.o, !dbg !70217
  store i8 %.sroa.0.0.i.1, ptr %i.x, align 1, !dbg !70218
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !70194 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !70194
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !70194
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70221 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !70262
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !70262
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !70262     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !70262
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !70248

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !70248
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !70248

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !70248
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !70248
  %i.e = sub i64 %i.a, %i.c, !dbg !70248
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !70248
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !70248
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !70263

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 32, !dbg !70248
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !70248

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 24
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !70248

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70263 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !70264 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !70265
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !70265
  %wide.load8 = load <16 x i8>, ptr %i.h, align 1, !dbg !70265
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !70266 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !70267
  %wide.load9 = load <16 x i8>, ptr %i.i, align 1, !dbg !70267
  %wide.load10 = load <16 x i8>, ptr %i.j, align 1, !dbg !70267
  %i.k = mul <16 x i8> %wide.load9, %wide.load, !dbg !70268
  %i.l = mul <16 x i8> %wide.load10, %wide.load8, !dbg !70268
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !70269 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70270
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !70270
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !70270
  %index.next = add nuw i64 %index, 32, !dbg !70263 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !70248
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !70248, !llvm.loop !70241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70248
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !70248

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !563

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -8                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !70263 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !70264
  %wide.load13 = load <8 x i8>, ptr %i.p, align 1, !dbg !70265
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !70266
  %wide.load14 = load <8 x i8>, ptr %i.q, align 1, !dbg !70267
  %i.r = mul <8 x i8> %wide.load14, %wide.load13, !dbg !70268
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index12, !dbg !70269
  store <8 x i8> %i.r, ptr %i.s, align 1, !dbg !70270
  %index.next15 = add nuw i64 %index12, 8, !dbg !70263 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !70248
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70248, !llvm.loop !70242

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !70248
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !70248

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !70248          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70248
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70248

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !70264
  %i.v = load i8, ptr %i.u, align 1, !dbg !70265, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !70266
  %i.x = load i8, ptr %i.w, align 1, !dbg !70267, !noundef !403
  %i.y = mul i8 %i.x, %i.v, !dbg !70268
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !70263 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !70269
  store i8 %i.y, ptr %i.aa, align 1, !dbg !70270
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !70248 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !70248
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70248, !llvm.loop !70243

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !70248
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !70248
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !70248

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !70271

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70264
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !70265, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70266
  %i.ag = load i8, ptr %i.af, align 1, !dbg !70267, !noundef !403
  %i.ah = mul i8 %i.ag, %i.ae, !dbg !70268
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !70263 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70269
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !70270
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !70264
  %i.al = load i8, ptr %i.ak, align 1, !dbg !70265, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !70266
  %i.an = load i8, ptr %i.am, align 1, !dbg !70267, !noundef !403
  %i.ao = mul i8 %i.an, %i.al, !dbg !70268
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !70263 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !70269
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !70270
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !70264
  %i.as = load i8, ptr %i.ar, align 1, !dbg !70265, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !70266
  %i.au = load i8, ptr %i.at, align 1, !dbg !70267, !noundef !403
  %i.av = mul i8 %i.au, %i.as, !dbg !70268
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !70263 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !70269
  store i8 %i.av, ptr %i.ax, align 1, !dbg !70270
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !70264
  %i.az = load i8, ptr %i.ay, align 1, !dbg !70265, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !70266
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !70267, !noundef !403
  %i.bc = mul i8 %i.bb, %i.az, !dbg !70268
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !70263 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !70269
  store i8 %i.bc, ptr %i.be, align 1, !dbg !70270
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !70262
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !70248, !llvm.loop !70244
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70272 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !70313
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !70313
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !70313     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !70313
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !70299

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !70299
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !70299

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !70299
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !70299
  %i.e = sub i64 %i.a, %i.c, !dbg !70299
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !70299
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !70299
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !70314

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 32, !dbg !70299
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !70299

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 4 uses
  br label %vector.body, !dbg !70299

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !70314 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !70315 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !70316
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !70316
  %wide.load8 = load <16 x i8>, ptr %i.h, align 1, !dbg !70316
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !70317 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !70318
  %wide.load9 = load <16 x i8>, ptr %i.i, align 1, !dbg !70318
  %wide.load10 = load <16 x i8>, ptr %i.j, align 1, !dbg !70318
  %i.k = sub <16 x i8> %wide.load, %wide.load9, !dbg !70319
  %i.l = sub <16 x i8> %wide.load8, %wide.load10, !dbg !70319
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %index, !dbg !70320 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70321
  store <16 x i8> %i.k, ptr %i.m, align 1, !dbg !70321
  store <16 x i8> %i.l, ptr %i.n, align 1, !dbg !70321
  %index.next = add nuw i64 %index, 32, !dbg !70314 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !70299
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !70299, !llvm.loop !70292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !70299
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !70299

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !557

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !70314 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !70315
  %wide.load13 = load <4 x i8>, ptr %i.p, align 1, !dbg !70316
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index12, !dbg !70317
  %wide.load14 = load <4 x i8>, ptr %i.q, align 1, !dbg !70318
  %i.r = sub <4 x i8> %wide.load13, %wide.load14, !dbg !70319
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index12, !dbg !70320
  store <4 x i8> %i.r, ptr %i.s, align 1, !dbg !70321
  %index.next15 = add nuw i64 %index12, 4, !dbg !70314 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !70299
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !70299, !llvm.loop !70293

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !70299
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !70299

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !70299          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70299
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70299

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.prol, !dbg !70315
  %i.v = load i8, ptr %i.u, align 1, !dbg !70316, !noundef !403
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.prol, !dbg !70317
  %i.x = load i8, ptr %i.w, align 1, !dbg !70318, !noundef !403
  %i.y = sub i8 %i.v, %i.x, !dbg !70319
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !70314 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.prol, !dbg !70320
  store i8 %i.y, ptr %i.aa, align 1, !dbg !70321
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !70299 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !70299
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !70299, !llvm.loop !70294

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !70299
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !70299
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !70299

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !70322

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70315
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !70316, !noundef !403
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70317
  %i.ag = load i8, ptr %i.af, align 1, !dbg !70318, !noundef !403
  %i.ah = sub i8 %i.ae, %i.ag, !dbg !70319
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !70314 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70320
  store i8 %i.ah, ptr %i.aj, align 1, !dbg !70321
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai, !dbg !70315
  %i.al = load i8, ptr %i.ak, align 1, !dbg !70316, !noundef !403
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai, !dbg !70317
  %i.an = load i8, ptr %i.am, align 1, !dbg !70318, !noundef !403
  %i.ao = sub i8 %i.al, %i.an, !dbg !70319
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !70314 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai, !dbg !70320
  store i8 %i.ao, ptr %i.aq, align 1, !dbg !70321
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap, !dbg !70315
  %i.as = load i8, ptr %i.ar, align 1, !dbg !70316, !noundef !403
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap, !dbg !70317
  %i.au = load i8, ptr %i.at, align 1, !dbg !70318, !noundef !403
  %i.av = sub i8 %i.as, %i.au, !dbg !70319
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !70314 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap, !dbg !70320
  store i8 %i.av, ptr %i.ax, align 1, !dbg !70321
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw, !dbg !70315
  %i.az = load i8, ptr %i.ay, align 1, !dbg !70316, !noundef !403
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !70317
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !70318, !noundef !403
  %i.bc = sub i8 %i.az, %i.bb, !dbg !70319
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !70314 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw, !dbg !70320
  store i8 %i.bc, ptr %i.be, align 1, !dbg !70321
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !70313
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !70299, !llvm.loop !70295
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelhhhNCNvXNtNtB4_10arithmetic8unsignedhNtB1d_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70323 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !70358
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !70344

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !70359
  %i.a = icmp eq i64 %3, 1, !dbg !70359
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !70359

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !70359
  br label %.lr.ph, !dbg !70359

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !70359
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !70359

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !70359
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !70359
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.epil.init, !dbg !70360
  %i.c = load i8, ptr %i.b, align 1, !dbg !70361, !noundef !403 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0, !dbg !70359
  br i1 %i.d, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil, label %bb.b, !dbg !70359

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.epil.init, !dbg !70362
  %i.f = load i8, ptr %i.e, align 1, !dbg !70363, !noundef !403
  %i.g = udiv i8 %i.f, %i.c, !dbg !70364
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil, !dbg !70365

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i8 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !70366
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.epil.init, !dbg !70367
  store i8 %.sroa.0.0.i.epil, ptr %i.h, align 1, !dbg !70368
  br label %._crit_edge, !dbg !70369

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !70369

.lr.ph:                                           ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05, !dbg !70360
  %i.j = load i8, ptr %i.i, align 1, !dbg !70361, !noundef !403 ; 2 uses
  %i.k = icmp eq i8 %i.j, 0, !dbg !70359
  br i1 %i.k, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, label %bb.c, !dbg !70359

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05, !dbg !70362
  %i.m = load i8, ptr %i.l, align 1, !dbg !70363, !noundef !403
  %i.n = udiv i8 %i.m, %i.j, !dbg !70364
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit, !dbg !70365

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !70366
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !70370 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05, !dbg !70367
  store i8 %.sroa.0.0.i, ptr %i.p, align 1, !dbg !70368
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o, !dbg !70360
  %i.r = load i8, ptr %i.q, align 1, !dbg !70361, !noundef !403 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0, !dbg !70359
  br i1 %i.s, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit.1, label %bb.d, !dbg !70359

bb.d:                                             ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB6_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0B8_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !70362
end_hunk_5
begin_hunk_6_@_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneloooNCNvXs2_NtNtB4_10arithmetic8unsignedoNtB1g_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_:bb.a
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.m, !dbg !71590
  store i128 %i.s, ptr %i.u, align 16, !dbg !71591
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !71570 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !71570
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !71570
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneloooNCNvXs2_NtNtB4_10arithmetic8unsignedoNtB1g_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71594 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !71631
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !71617

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !71617
  %i.a = icmp eq i64 %3, 1, !dbg !71617
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !71617

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !71617
  br label %.lr.ph, !dbg !71617

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71617
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !71617

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod6 = trunc i64 %3 to i1, !dbg !71617
  tail call void @llvm.assume(i1 %lcmp.mod6), !dbg !71617
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05.epil.init, !dbg !71632
  %i.c = load i128, ptr %i.b, align 16, !dbg !71633, !noundef !403
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05.epil.init, !dbg !71634
  %i.e = load i128, ptr %i.d, align 16, !dbg !71635, !noundef !403
  %i.f = sub i128 %i.c, %i.e, !dbg !71636
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.05.epil.init, !dbg !71637
  store i128 %i.f, ptr %i.g, align 16, !dbg !71638
  br label %._crit_edge, !dbg !71639

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !71639

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71632
  %i.i = load i128, ptr %i.h, align 16, !dbg !71633, !noundef !403
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71634
  %i.k = load i128, ptr %i.j, align 16, !dbg !71635, !noundef !403
  %i.l = sub i128 %i.i, %i.k, !dbg !71636
  %i.m = or disjoint i64 %.sroa.01.05, 1, !dbg !71640 ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71637
  store i128 %i.l, ptr %i.n, align 16, !dbg !71638
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m, !dbg !71632
  %i.p = load i128, ptr %i.o, align 16, !dbg !71633, !noundef !403
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.m, !dbg !71634
  %i.r = load i128, ptr %i.q, align 16, !dbg !71635, !noundef !403
  %i.s = sub i128 %i.p, %i.r, !dbg !71636
  %i.t = add nuw i64 %.sroa.01.05, 2, !dbg !71640 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.m, !dbg !71637
  store i128 %i.s, ptr %i.u, align 16, !dbg !71638
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !71617 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !71617
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !71617
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneloooNCNvXs2_NtNtB4_10arithmetic8unsignedoNtB1g_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71641 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !71676
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !71662

._crit_edge:                                      ; preds = %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit, %bb.a
  ret void, !dbg !71677

.lr.ph:                                           ; preds = %bb.a, %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit
  %.sroa.01.05 = phi i64 [ %i.g, %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71678
  %i.b = load i128, ptr %i.a, align 16, !dbg !71679, !noundef !403 ; 2 uses
  %i.c = icmp eq i128 %i.b, 0, !dbg !71680
  br i1 %i.c, label %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit, label %bb.b, !dbg !71680

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71681
  %i.e = load i128, ptr %i.d, align 16, !dbg !71682, !noundef !403
  %i.f = udiv i128 %i.e, %i.b, !dbg !71683
  br label %_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit, !dbg !71684

_RNCNvXs2_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedoNtB9_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Bb_.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i = phi i128 [ %i.f, %bb.b ], [ 0, %.lr.ph ], !dbg !71685
  %i.g = add nuw i64 %.sroa.01.05, 1, !dbg !71686 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71687
  store i128 %.sroa.0.0.i, ptr %i.h, align 16, !dbg !71688
  %exitcond.not = icmp eq i64 %i.g, %3, !dbg !71676
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !71662
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelssdNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71689 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !71733

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !71733
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !71733 ; 2 uses
  %i.c = shl i64 %3, 1, !dbg !71733               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c, !dbg !71733
  %i.e = getelementptr i8, ptr %1, i64 %i.c, !dbg !71733
  %bound0 = icmp ult ptr %2, %i.d, !dbg !71733
  %bound1 = icmp ult ptr %0, %i.b, !dbg !71733
  %found.conflict = and i1 %bound0, %bound1, !dbg !71733
  %bound011 = icmp ult ptr %2, %i.e, !dbg !71733
  %bound112 = icmp ult ptr %1, %i.b, !dbg !71733
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !71733
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !71733
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !71734

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !71734

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71734 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71735
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !dbg !71736, !alias.scope !71719
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71737
  %wide.load14 = load <2 x i16>, ptr %i.g, align 2, !dbg !71738, !alias.scope !71723
  %i.h = sitofp <2 x i16> %wide.load to <2 x double>, !dbg !71739
  %i.i = sitofp <2 x i16> %wide.load14 to <2 x double>, !dbg !71740
  %i.j = fdiv <2 x double> %i.h, %i.i, !dbg !71739
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !71741
  store <2 x double> %i.j, ptr %i.k, align 8, !dbg !71742, !alias.scope !71729, !noalias !71730
  %index.next = add nuw i64 %index, 2, !dbg !71734 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !71733
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !71733, !llvm.loop !71710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71733
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !71733

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !71733
  %xtraiter = and i64 %3, 1, !dbg !71733
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71733
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71733

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !71735
  %i.n = load i16, ptr %i.m, align 2, !dbg !71736, !noundef !403
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !71737
  %i.p = load i16, ptr %i.o, align 2, !dbg !71738, !noundef !403
  %i.q = sitofp i16 %i.n to double, !dbg !71739
  %i.r = sitofp i16 %i.p to double, !dbg !71740
  %i.s = fdiv double %i.q, %i.r, !dbg !71739
  %i.t = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !71734
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !71741
  store double %i.s, ptr %i.u, align 8, !dbg !71742
  br label %.lr.ph.prol.loopexit, !dbg !71733

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.v = icmp eq i64 %3, %.neg, !dbg !71733
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !71733

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !71743

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.am, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71735
  %i.x = load i16, ptr %i.w, align 2, !dbg !71736, !noundef !403
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71737
  %i.z = load i16, ptr %i.y, align 2, !dbg !71738, !noundef !403
  %i.aa = sitofp i16 %i.x to double, !dbg !71739
  %i.ab = sitofp i16 %i.z to double, !dbg !71740
  %i.ac = fdiv double %i.aa, %i.ab, !dbg !71739
  %i.ad = add nuw i64 %.sroa.01.05, 1, !dbg !71734 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71741
  store double %i.ac, ptr %i.ae, align 8, !dbg !71742
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad, !dbg !71735
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71736, !noundef !403
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad, !dbg !71737
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !71738, !noundef !403
  %i.aj = sitofp i16 %i.ag to double, !dbg !71739
  %i.ak = sitofp i16 %i.ai to double, !dbg !71740
  %i.al = fdiv double %i.aj, %i.ak, !dbg !71739
  %i.am = add nuw i64 %.sroa.01.05, 2, !dbg !71734 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad, !dbg !71741
  store double %i.al, ptr %i.an, align 8, !dbg !71742
  %exitcond.not.1 = icmp eq i64 %i.am, %3, !dbg !71744
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !71733, !llvm.loop !71712
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71745 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71786
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71786
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71786     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71786
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !71772

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !71772
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !71772

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !71772
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !71772
  %i.e = sub i64 %i.a, %i.c, !dbg !71772
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !71772
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !71772
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !71787

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 16, !dbg !71772
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !71772

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !71772

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71787 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71788 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71789
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !71789
  %wide.load8 = load <8 x i16>, ptr %i.h, align 2, !dbg !71789
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71790 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71791
  %wide.load9 = load <8 x i16>, ptr %i.i, align 2, !dbg !71791
  %wide.load10 = load <8 x i16>, ptr %i.j, align 2, !dbg !71791
  %i.k = add <8 x i16> %wide.load9, %wide.load, !dbg !71792
  %i.l = add <8 x i16> %wide.load10, %wide.load8, !dbg !71792
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71793 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71794
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !71794
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !71794
  %index.next = add nuw i64 %index, 16, !dbg !71787 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !71772
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !71772, !llvm.loop !71765

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71772
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !71772

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !71787 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !71788
  %wide.load13 = load <4 x i16>, ptr %i.p, align 2, !dbg !71789
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index12, !dbg !71790
  %wide.load14 = load <4 x i16>, ptr %i.q, align 2, !dbg !71791
  %i.r = add <4 x i16> %wide.load14, %wide.load13, !dbg !71792
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index12, !dbg !71793
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !71794
  %index.next15 = add nuw i64 %index12, 4, !dbg !71787 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !71772
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71772, !llvm.loop !71766

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !71772
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !71772

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !71772          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71772
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71772

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !71788
  %i.v = load i16, ptr %i.u, align 2, !dbg !71789, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !71790
  %i.x = load i16, ptr %i.w, align 2, !dbg !71791, !noundef !403
  %i.y = add i16 %i.x, %i.v, !dbg !71792
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !71787 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !71793
  store i16 %i.y, ptr %i.aa, align 2, !dbg !71794
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !71772 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !71772
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71772, !llvm.loop !71767

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !71772
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !71772
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !71772

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !71795

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71788
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !71789, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71790
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71791, !noundef !403
  %i.ah = add i16 %i.ag, %i.ae, !dbg !71792
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !71787 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71793
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !71794
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !71788
  %i.al = load i16, ptr %i.ak, align 2, !dbg !71789, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !71790
  %i.an = load i16, ptr %i.am, align 2, !dbg !71791, !noundef !403
  %i.ao = add i16 %i.an, %i.al, !dbg !71792
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !71787 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !71793
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !71794
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !71788
  %i.as = load i16, ptr %i.ar, align 2, !dbg !71789, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !71790
  %i.au = load i16, ptr %i.at, align 2, !dbg !71791, !noundef !403
  %i.av = add i16 %i.au, %i.as, !dbg !71792
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !71787 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !71793
  store i16 %i.av, ptr %i.ax, align 2, !dbg !71794
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !71788
  %i.az = load i16, ptr %i.ay, align 2, !dbg !71789, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !71790
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !71791, !noundef !403
  %i.bc = add i16 %i.bb, %i.az, !dbg !71792
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !71787 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !71793
  store i16 %i.bc, ptr %i.be, align 2, !dbg !71794
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !71786
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !71772, !llvm.loop !71768
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71796 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71836
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71836
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71836     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71836
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !71822

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !71837
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.memcheck, !dbg !71837

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !71837
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !71837
  %i.e = sub i64 %i.a, %i.c, !dbg !71837
  %diff.check8 = icmp ugt i64 %i.e, -16, !dbg !71837
  %conflict.rdx = or i1 %diff.check, %diff.check8, !dbg !71837
  br i1 %conflict.rdx, label %.lr.ph.preheader10, label %vector.ph, !dbg !71838

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body, !dbg !71838

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71838 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71839
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !71840 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71841
  %wide.load9 = load <8 x i16>, ptr %i.g, align 2, !dbg !71842 ; 4 uses
  %i.h = add <8 x i16> %wide.load9, splat (i16 -1), !dbg !71837
  %i.i = icmp ult <8 x i16> %i.h, splat (i16 -2), !dbg !71837 ; 2 uses
  %i.j = tail call <8 x i16> @llvm.masked.srem.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load9, <8 x i1> %i.i), !dbg !71843 ; 2 uses
  %i.k = icmp ne <8 x i16> %i.j, zeroinitializer, !dbg !71844
  %i.l = select <8 x i1> %i.i, <8 x i1> %i.k, <8 x i1> zeroinitializer, !dbg !71844
  %i.m = xor <8 x i16> %wide.load9, %wide.load, !dbg !71845
  %i.n = icmp slt <8 x i16> %i.m, zeroinitializer, !dbg !71845
  %i.o = select <8 x i1> %i.n, <8 x i16> %wide.load9, <8 x i16> zeroinitializer, !dbg !71845
  %i.p = add <8 x i16> %i.j, %i.o, !dbg !71845
  %predphi = select <8 x i1> %i.l, <8 x i16> %i.p, <8 x i16> zeroinitializer, !dbg !71846
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71847
  store <8 x i16> %predphi, ptr %i.q, align 2, !dbg !71848
  %index.next = add nuw i64 %index, 8, !dbg !71838 ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !71822
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !71822, !llvm.loop !71817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71822
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader10, !dbg !71822

.lr.ph.preheader10:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph, !dbg !71837

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, %middle.block, %bb.a
  ret void, !dbg !71849

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit
  %.sroa.01.05 = phi i64 [ %i.aa, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader10 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71839
  %i.t = load i16, ptr %i.s, align 2, !dbg !71840, !noundef !403 ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71841
  %i.v = load i16, ptr %i.u, align 2, !dbg !71842, !noundef !403 ; 4 uses
  %.off.i = add i16 %i.v, -1, !dbg !71837
  %switch.i = icmp ult i16 %.off.i, -2, !dbg !71837
  br i1 %switch.i, label %bb.b, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, !dbg !71837, !prof !568

bb.b:                                             ; preds = %.lr.ph
  %i.w = srem i16 %i.t, %i.v, !dbg !71843         ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0, !dbg !71844
  br i1 %.not.i.i, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, label %bb.c, !dbg !71844

bb.c:                                             ; preds = %bb.b
  %i.x = xor i16 %i.v, %i.t, !dbg !71845
  %i.y = icmp slt i16 %i.x, 0, !dbg !71845
  %i.z = select i1 %i.y, i16 %i.v, i16 0, !dbg !71845
  %spec.select.i = add i16 %i.w, %i.z, !dbg !71845
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, !dbg !71845

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.3.0.i.i = phi i16 [ %spec.select.i, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ], !dbg !71846
  %i.aa = add nuw i64 %.sroa.01.05, 1, !dbg !71838 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71847
  store i16 %.sroa.3.0.i.i, ptr %i.ab, align 2, !dbg !71848
  %exitcond.not = icmp eq i64 %i.aa, %3, !dbg !71836
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !71822, !llvm.loop !71818
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71850 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71891
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71891
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71891     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71891
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !71877

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !71877
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !71877

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !71877
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !71877
  %i.e = sub i64 %i.a, %i.c, !dbg !71877
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !71877
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !71877
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !71892

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 16, !dbg !71877
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !71877

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !71877

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71892 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71893 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71894
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !71894
  %wide.load8 = load <8 x i16>, ptr %i.h, align 2, !dbg !71894
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71895 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71896
  %wide.load9 = load <8 x i16>, ptr %i.i, align 2, !dbg !71896
  %wide.load10 = load <8 x i16>, ptr %i.j, align 2, !dbg !71896
  %i.k = mul <8 x i16> %wide.load9, %wide.load, !dbg !71897
  %i.l = mul <8 x i16> %wide.load10, %wide.load8, !dbg !71897
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71898 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71899
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !71899
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !71899
  %index.next = add nuw i64 %index, 16, !dbg !71892 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !71877
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !71877, !llvm.loop !71870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71877
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !71877

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !71892 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !71893
  %wide.load13 = load <4 x i16>, ptr %i.p, align 2, !dbg !71894
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index12, !dbg !71895
  %wide.load14 = load <4 x i16>, ptr %i.q, align 2, !dbg !71896
  %i.r = mul <4 x i16> %wide.load14, %wide.load13, !dbg !71897
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index12, !dbg !71898
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !71899
  %index.next15 = add nuw i64 %index12, 4, !dbg !71892 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !71877
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71877, !llvm.loop !71871

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !71877
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !71877

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !71877          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71877
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71877

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !71893
  %i.v = load i16, ptr %i.u, align 2, !dbg !71894, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !71895
  %i.x = load i16, ptr %i.w, align 2, !dbg !71896, !noundef !403
  %i.y = mul i16 %i.x, %i.v, !dbg !71897
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !71892 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !71898
  store i16 %i.y, ptr %i.aa, align 2, !dbg !71899
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !71877 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !71877
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71877, !llvm.loop !71872

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !71877
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !71877
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !71877

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !71900

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71893
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !71894, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71895
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71896, !noundef !403
  %i.ah = mul i16 %i.ag, %i.ae, !dbg !71897
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !71892 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71898
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !71899
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !71893
  %i.al = load i16, ptr %i.ak, align 2, !dbg !71894, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !71895
  %i.an = load i16, ptr %i.am, align 2, !dbg !71896, !noundef !403
  %i.ao = mul i16 %i.an, %i.al, !dbg !71897
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !71892 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !71898
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !71899
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !71893
  %i.as = load i16, ptr %i.ar, align 2, !dbg !71894, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !71895
  %i.au = load i16, ptr %i.at, align 2, !dbg !71896, !noundef !403
  %i.av = mul i16 %i.au, %i.as, !dbg !71897
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !71892 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !71898
  store i16 %i.av, ptr %i.ax, align 2, !dbg !71899
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !71893
  %i.az = load i16, ptr %i.ay, align 2, !dbg !71894, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !71895
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !71896, !noundef !403
  %i.bc = mul i16 %i.bb, %i.az, !dbg !71897
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !71892 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !71898
  store i16 %i.bc, ptr %i.be, align 2, !dbg !71899
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !71891
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !71877, !llvm.loop !71873
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71901 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71942
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71942
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71942     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71942
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !71928

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !71928
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !71928

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !71928
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !71928
  %i.e = sub i64 %i.a, %i.c, !dbg !71928
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !71928
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !71928
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !71943

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 16, !dbg !71928
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !71928

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !71928

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71943 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71944 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71945
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !71945
  %wide.load8 = load <8 x i16>, ptr %i.h, align 2, !dbg !71945
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !71946 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71947
  %wide.load9 = load <8 x i16>, ptr %i.i, align 2, !dbg !71947
  %wide.load10 = load <8 x i16>, ptr %i.j, align 2, !dbg !71947
  %i.k = sub <8 x i16> %wide.load, %wide.load9, !dbg !71948
  %i.l = sub <8 x i16> %wide.load8, %wide.load10, !dbg !71948
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !71949 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71950
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !71950
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !71950
  %index.next = add nuw i64 %index, 16, !dbg !71943 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !71928
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !71928, !llvm.loop !71921

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71928
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !71928

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !71943 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !71944
  %wide.load13 = load <4 x i16>, ptr %i.p, align 2, !dbg !71945
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index12, !dbg !71946
  %wide.load14 = load <4 x i16>, ptr %i.q, align 2, !dbg !71947
  %i.r = sub <4 x i16> %wide.load13, %wide.load14, !dbg !71948
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index12, !dbg !71949
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !71950
  %index.next15 = add nuw i64 %index12, 4, !dbg !71943 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !71928
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !71928, !llvm.loop !71922

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !71928
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !71928

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !71928          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !71928
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71928

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !71944
  %i.v = load i16, ptr %i.u, align 2, !dbg !71945, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !71946
  %i.x = load i16, ptr %i.w, align 2, !dbg !71947, !noundef !403
  %i.y = sub i16 %i.v, %i.x, !dbg !71948
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !71943 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !71949
  store i16 %i.y, ptr %i.aa, align 2, !dbg !71950
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !71928 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !71928
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !71928, !llvm.loop !71923

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !71928
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !71928
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !71928

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !71951

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !71944
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !71945, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !71946
  %i.ag = load i16, ptr %i.af, align 2, !dbg !71947, !noundef !403
  %i.ah = sub i16 %i.ae, %i.ag, !dbg !71948
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !71943 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !71949
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !71950
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !71944
  %i.al = load i16, ptr %i.ak, align 2, !dbg !71945, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !71946
  %i.an = load i16, ptr %i.am, align 2, !dbg !71947, !noundef !403
  %i.ao = sub i16 %i.al, %i.an, !dbg !71948
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !71943 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !71949
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !71950
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !71944
  %i.as = load i16, ptr %i.ar, align 2, !dbg !71945, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !71946
  %i.au = load i16, ptr %i.at, align 2, !dbg !71947, !noundef !403
  %i.av = sub i16 %i.as, %i.au, !dbg !71948
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !71943 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !71949
  store i16 %i.av, ptr %i.ax, align 2, !dbg !71950
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !71944
  %i.az = load i16, ptr %i.ay, align 2, !dbg !71945, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !71946
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !71947, !noundef !403
  %i.bc = sub i16 %i.az, %i.bb, !dbg !71948
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !71943 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !71949
  store i16 %i.bc, ptr %i.be, align 2, !dbg !71950
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !71942
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !71928, !llvm.loop !71924
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !71952 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !71996
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !71996
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !71996     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !71996
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !71982

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !71997
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.memcheck, !dbg !71997

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !71997
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !71997
  %i.e = sub i64 %i.a, %i.c, !dbg !71997
  %diff.check8 = icmp ugt i64 %i.e, -16, !dbg !71997
  %conflict.rdx = or i1 %diff.check, %diff.check8, !dbg !71997
  br i1 %conflict.rdx, label %.lr.ph.preheader12, label %vector.ph, !dbg !71998

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body, !dbg !71998

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !71998 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !71999
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !72000 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72001
  %wide.load9 = load <8 x i16>, ptr %i.g, align 2, !dbg !72002 ; 5 uses
  %i.h = icmp ne <8 x i16> %wide.load9, zeroinitializer, !dbg !71997 ; 2 uses
  %i.i = icmp eq <8 x i16> %wide.load, splat (i16 -32768), !dbg !72003
  %i.j = icmp eq <8 x i16> %wide.load9, splat (i16 -1), !dbg !72004 ; 3 uses
  %i.k = and <8 x i1> %i.i, %i.j, !dbg !72003
  %i.l = xor <8 x i1> %i.k, splat (i1 true), !dbg !72005 ; 2 uses
  %i.m = select <8 x i1> %i.h, <8 x i1> %i.l, <8 x i1> zeroinitializer, !dbg !72005 ; 2 uses
  %i.n = tail call <8 x i16> @llvm.masked.sdiv.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load9, <8 x i1> %i.m), !dbg !72006 ; 2 uses
  %i.o = xor <8 x i1> %i.j, splat (i1 true), !dbg !72007
  %i.p = and <8 x i1> %i.m, %i.o, !dbg !72007     ; 2 uses
  %i.q = tail call <8 x i16> @llvm.masked.srem.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load9, <8 x i1> %i.p), !dbg !72008
  %i.r = icmp ne <8 x i16> %i.q, zeroinitializer, !dbg !72009
  %i.s = xor <8 x i16> %wide.load9, %wide.load
  %i.t = icmp slt <8 x i16> %i.s, zeroinitializer
  %i.u = and <8 x i1> %i.t, %i.r, !dbg !72009
  %i.v = sext <8 x i1> %i.u to <8 x i16>, !dbg !72009
  %i.w = add <8 x i16> %i.n, %i.v, !dbg !72009
  %i.x = select <8 x i1> %i.j, <8 x i1> %i.l, <8 x i1> zeroinitializer, !dbg !72007
  %predphi = select <8 x i1> %i.h, <8 x i16> splat (i16 -32768), <8 x i16> zeroinitializer, !dbg !72010
  %predphi10 = select <8 x i1> %i.x, <8 x i16> %i.n, <8 x i16> %predphi, !dbg !72010
  %predphi11 = select <8 x i1> %i.p, <8 x i16> %i.w, <8 x i16> %predphi10, !dbg !72010
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72011
  store <8 x i16> %predphi11, ptr %i.y, align 2, !dbg !72012
  %index.next = add nuw i64 %index, 8, !dbg !71998 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !71982
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !71982, !llvm.loop !71977

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !71982
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12, !dbg !71982

.lr.ph.preheader12:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph, !dbg !71997

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, %middle.block, %bb.a
  ret void, !dbg !72013

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit
end_hunk_6
begin_hunk_7_@_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_:bb.a
  %i.am = sext i1 %or.cond.i to i16, !dbg !72009
  %spec.select.i = add i16 %i.ai, %i.am, !dbg !72009
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, !dbg !72009

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit: ; preds = %.lr.ph, %bb.b, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i, %bb.c
  %.sroa.0.0.i.i = phi i16 [ 0, %.lr.ph ], [ %spec.select.i, %bb.c ], [ %i.ai, %_RNvMs_NtCscgRAwXFJnXP_4core3nums15overflowing_div.exit.i.i ], [ -32768, %bb.b ], !dbg !72010
  %i.an = add nuw i64 %.sroa.01.05, 1, !dbg !71998 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72011
  store i16 %.sroa.0.0.i.i, ptr %i.ao, align 2, !dbg !72012
  %exitcond.not = icmp eq i64 %i.an, %3, !dbg !71996
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !71982, !llvm.loop !71978
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelsssNCNvXs_NtNtB4_10arithmetic6signedsNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72014 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !72055
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !72055
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !72055     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !72055
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !72041

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8, !dbg !72056
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.memcheck, !dbg !72056

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c, !dbg !72056
  %diff.check = icmp ugt i64 %i.d, -16, !dbg !72056
  %i.e = sub i64 %i.a, %i.c, !dbg !72056
  %diff.check8 = icmp ugt i64 %i.e, -16, !dbg !72056
  %conflict.rdx = or i1 %diff.check, %diff.check8, !dbg !72056
  br i1 %conflict.rdx, label %.lr.ph.preheader14, label %vector.ph, !dbg !72057

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body, !dbg !72057

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72057 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72058
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !72059 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72060
  %wide.load9 = load <8 x i16>, ptr %i.g, align 2, !dbg !72061 ; 3 uses
  %i.h = icmp ne <8 x i16> %wide.load9, zeroinitializer, !dbg !72056 ; 2 uses
  %i.i = icmp ne <8 x i16> %wide.load, splat (i16 -32768), !dbg !72062
  %i.j = icmp ne <8 x i16> %wide.load9, splat (i16 -1), !dbg !72063
  %.not13 = or <8 x i1> %i.i, %i.j, !dbg !72064   ; 2 uses
  %i.k = select <8 x i1> %i.h, <8 x i1> %.not13, <8 x i1> zeroinitializer, !dbg !72064
  %i.l = tail call <8 x i16> @llvm.masked.sdiv.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load9, <8 x i1> %i.k), !dbg !72065
  %predphi = select <8 x i1> %.not13, <8 x i16> %i.l, <8 x i16> splat (i16 -32768), !dbg !72066
  %predphi10 = select <8 x i1> %i.h, <8 x i16> %predphi, <8 x i16> zeroinitializer, !dbg !72066
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72067
  store <8 x i16> %predphi10, ptr %i.m, align 2, !dbg !72068
  %index.next = add nuw i64 %index, 8, !dbg !72057 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !72041
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !72041, !llvm.loop !72036

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72041
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14, !dbg !72041

.lr.ph.preheader14:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph, !dbg !72056

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, %middle.block, %bb.a
  ret void, !dbg !72069

.lr.ph:                                           ; preds = %.lr.ph.preheader14, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit
  %.sroa.01.05 = phi i64 [ %i.x, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit ], [ %.sroa.01.05.ph, %.lr.ph.preheader14 ] ; 4 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72058
  %i.p = load i16, ptr %i.o, align 2, !dbg !72059, !noundef !403 ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72060
  %i.r = load i16, ptr %i.q, align 2, !dbg !72061, !noundef !403 ; 3 uses
  %i.s = icmp eq i16 %i.r, 0, !dbg !72056
  br i1 %i.s, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, label %bb.b, !dbg !72056

bb.b:                                             ; preds = %.lr.ph
  %i.t = icmp eq i16 %i.p, -32768, !dbg !72062
  %i.u = icmp eq i16 %i.r, -1, !dbg !72063
  %i.v = and i1 %i.t, %i.u, !dbg !72062
  br i1 %i.v, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, label %bb.c, !dbg !72064, !prof !414

bb.c:                                             ; preds = %bb.b
  %i.w = sdiv i16 %i.p, %i.r, !dbg !72065
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit, !dbg !72070

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedsNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_trunc_div0Ba_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.0.0.i = phi i16 [ 0, %.lr.ph ], [ %i.w, %bb.c ], [ -32768, %bb.b ], !dbg !72066
  %i.x = add nuw i64 %.sroa.01.05, 1, !dbg !72057 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72067
  store i16 %.sroa.0.0.i, ptr %i.y, align 2, !dbg !72068
  %exitcond.not = icmp eq i64 %i.x, %3, !dbg !72055
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !72041, !llvm.loop !72037
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kernelttdNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl13prim_true_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72071 {
bb.a:
  switch i64 %3, label %vector.memcheck [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.preheader
  ], !dbg !72115

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %3, 3, !dbg !72115
  %i.b = getelementptr i8, ptr %2, i64 %i.a, !dbg !72115 ; 2 uses
  %i.c = shl i64 %3, 1, !dbg !72115               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c, !dbg !72115
  %i.e = getelementptr i8, ptr %1, i64 %i.c, !dbg !72115
  %bound0 = icmp ult ptr %2, %i.d, !dbg !72115
  %bound1 = icmp ult ptr %0, %i.b, !dbg !72115
  %found.conflict = and i1 %bound0, %bound1, !dbg !72115
  %bound011 = icmp ult ptr %2, %i.e, !dbg !72115
  %bound112 = icmp ult ptr %1, %i.b, !dbg !72115
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !72115
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !72115
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.ph, !dbg !72116

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -2                         ; 3 uses
  br label %vector.body, !dbg !72116

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72116 ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72117
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !dbg !72118, !alias.scope !72101
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72119
  %wide.load14 = load <2 x i16>, ptr %i.g, align 2, !dbg !72120, !alias.scope !72105
  %i.h = uitofp <2 x i16> %wide.load to <2 x double>, !dbg !72121
  %i.i = uitofp <2 x i16> %wide.load14 to <2 x double>, !dbg !72122
  %i.j = fdiv <2 x double> %i.h, %i.i, !dbg !72121
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index, !dbg !72123
  store <2 x double> %i.j, ptr %i.k, align 8, !dbg !72124, !alias.scope !72111, !noalias !72112
  %index.next = add nuw i64 %index, 2, !dbg !72116 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !72115
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !72115, !llvm.loop !72092

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72115
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader, !dbg !72115

.lr.ph.preheader:                                 ; preds = %bb.a, %vector.memcheck, %middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !72115
  %xtraiter = and i64 %3, 1, !dbg !72115
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72115
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72115

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.ph, !dbg !72117
  %i.n = load i16, ptr %i.m, align 2, !dbg !72118, !noundef !403
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.ph, !dbg !72119
  %i.p = load i16, ptr %i.o, align 2, !dbg !72120, !noundef !403
  %i.q = uitofp i16 %i.n to double, !dbg !72121
  %i.r = uitofp i16 %i.p to double, !dbg !72122
  %i.s = fdiv double %i.q, %i.r, !dbg !72121
  %i.t = or disjoint i64 %.sroa.01.05.ph, 1, !dbg !72116
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05.ph, !dbg !72123
  store double %i.s, ptr %i.u, align 8, !dbg !72124
  br label %.lr.ph.prol.loopexit, !dbg !72115

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.v = icmp eq i64 %3, %.neg, !dbg !72115
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !72115

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void, !dbg !72125

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.am, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72117
  %i.x = load i16, ptr %i.w, align 2, !dbg !72118, !noundef !403
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72119
  %i.z = load i16, ptr %i.y, align 2, !dbg !72120, !noundef !403
  %i.aa = uitofp i16 %i.x to double, !dbg !72121
  %i.ab = uitofp i16 %i.z to double, !dbg !72122
  %i.ac = fdiv double %i.aa, %i.ab, !dbg !72121
  %i.ad = add nuw i64 %.sroa.01.05, 1, !dbg !72116 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72123
  store double %i.ac, ptr %i.ae, align 8, !dbg !72124
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad, !dbg !72117
  %i.ag = load i16, ptr %i.af, align 2, !dbg !72118, !noundef !403
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad, !dbg !72119
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !72120, !noundef !403
  %i.aj = uitofp i16 %i.ag to double, !dbg !72121
  %i.ak = uitofp i16 %i.ai to double, !dbg !72122
  %i.al = fdiv double %i.aj, %i.ak, !dbg !72121
  %i.am = add nuw i64 %.sroa.01.05, 2, !dbg !72116 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad, !dbg !72123
  store double %i.al, ptr %i.an, align 8, !dbg !72124
  %exitcond.not.1 = icmp eq i64 %i.am, %3, !dbg !72126
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !dbg !72115, !llvm.loop !72094
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_add0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72127 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !72168
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !72168
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !72168     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !72168
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !72154

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !72154
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !72154

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !72154
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !72154
  %i.e = sub i64 %i.a, %i.c, !dbg !72154
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !72154
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !72154
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !72169

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 16, !dbg !72154
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !72154

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !72154

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72169 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72170 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72171
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !72171
  %wide.load8 = load <8 x i16>, ptr %i.h, align 2, !dbg !72171
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72172 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72173
  %wide.load9 = load <8 x i16>, ptr %i.i, align 2, !dbg !72173
  %wide.load10 = load <8 x i16>, ptr %i.j, align 2, !dbg !72173
  %i.k = add <8 x i16> %wide.load9, %wide.load, !dbg !72174
  %i.l = add <8 x i16> %wide.load10, %wide.load8, !dbg !72174
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72175 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !72176
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !72176
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !72176
  %index.next = add nuw i64 %index, 16, !dbg !72169 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !72154
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !72154, !llvm.loop !72147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72154
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !72154

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !72169 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !72170
  %wide.load13 = load <4 x i16>, ptr %i.p, align 2, !dbg !72171
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index12, !dbg !72172
  %wide.load14 = load <4 x i16>, ptr %i.q, align 2, !dbg !72173
  %i.r = add <4 x i16> %wide.load14, %wide.load13, !dbg !72174
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index12, !dbg !72175
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !72176
  %index.next15 = add nuw i64 %index12, 4, !dbg !72169 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !72154
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72154, !llvm.loop !72148

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !72154
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !72154

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !72154          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72154
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72154

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !72170
  %i.v = load i16, ptr %i.u, align 2, !dbg !72171, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !72172
  %i.x = load i16, ptr %i.w, align 2, !dbg !72173, !noundef !403
  %i.y = add i16 %i.x, %i.v, !dbg !72174
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !72169 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !72175
  store i16 %i.y, ptr %i.aa, align 2, !dbg !72176
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !72154 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !72154
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72154, !llvm.loop !72149

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !72154
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !72154
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !72154

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !72177

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72170
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !72171, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72172
  %i.ag = load i16, ptr %i.af, align 2, !dbg !72173, !noundef !403
  %i.ah = add i16 %i.ag, %i.ae, !dbg !72174
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !72169 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72175
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !72176
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !72170
  %i.al = load i16, ptr %i.ak, align 2, !dbg !72171, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !72172
  %i.an = load i16, ptr %i.am, align 2, !dbg !72173, !noundef !403
  %i.ao = add i16 %i.an, %i.al, !dbg !72174
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !72169 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !72175
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !72176
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !72170
  %i.as = load i16, ptr %i.ar, align 2, !dbg !72171, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !72172
  %i.au = load i16, ptr %i.at, align 2, !dbg !72173, !noundef !403
  %i.av = add i16 %i.au, %i.as, !dbg !72174
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !72169 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !72175
  store i16 %i.av, ptr %i.ax, align 2, !dbg !72176
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !72170
  %i.az = load i16, ptr %i.ay, align 2, !dbg !72171, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !72172
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !72173, !noundef !403
  %i.bc = add i16 %i.bb, %i.az, !dbg !72174
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !72169 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !72175
  store i16 %i.bc, ptr %i.be, align 2, !dbg !72176
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !72168
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !72154, !llvm.loop !72150
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72178 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !72213
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !72199

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !72214
  %i.a = icmp eq i64 %3, 1, !dbg !72214
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !72214

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !72214
  br label %.lr.ph, !dbg !72214

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72214
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !72214

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !72214
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !72214
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.epil.init, !dbg !72215
  %i.c = load i16, ptr %i.b, align 2, !dbg !72216, !noundef !403 ; 2 uses
  %i.d = icmp eq i16 %i.c, 0, !dbg !72214
  br i1 %i.d, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil, label %bb.b, !dbg !72214

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.epil.init, !dbg !72217
  %i.f = load i16, ptr %i.e, align 2, !dbg !72218, !noundef !403
  %i.g = urem i16 %i.f, %i.c, !dbg !72219
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil, !dbg !72220

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i16 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !72221
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.epil.init, !dbg !72222
  store i16 %.sroa.0.0.i.epil, ptr %i.h, align 2, !dbg !72223
  br label %._crit_edge, !dbg !72224

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !72224

.lr.ph:                                           ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1 ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72215
  %i.j = load i16, ptr %i.i, align 2, !dbg !72216, !noundef !403 ; 2 uses
  %i.k = icmp eq i16 %i.j, 0, !dbg !72214
  br i1 %i.k, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, label %bb.c, !dbg !72214

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72217
  %i.m = load i16, ptr %i.l, align 2, !dbg !72218, !noundef !403
  %i.n = urem i16 %i.m, %i.j, !dbg !72219
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit, !dbg !72220

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i16 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !72221
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !72225 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72222
  store i16 %.sroa.0.0.i, ptr %i.p, align 2, !dbg !72223
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.o, !dbg !72215
  %i.r = load i16, ptr %i.q, align 2, !dbg !72216, !noundef !403 ; 2 uses
  %i.s = icmp eq i16 %i.r, 0, !dbg !72214
  br i1 %i.s, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1, label %bb.d, !dbg !72214

bb.d:                                             ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o, !dbg !72217
  %i.u = load i16, ptr %i.t, align 2, !dbg !72218, !noundef !403
  %i.v = urem i16 %i.u, %i.r, !dbg !72219
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1, !dbg !72220

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit.1: ; preds = %bb.d, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit
  %.sroa.0.0.i.1 = phi i16 [ %i.v, %bb.d ], [ 0, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl17prim_wrapping_mod0Ba_.exit ], !dbg !72221
  %i.w = add nuw i64 %.sroa.01.05, 2, !dbg !72225 ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.o, !dbg !72222
  store i16 %.sroa.0.0.i.1, ptr %i.x, align 2, !dbg !72223
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !72199 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !72199
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !72199
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_mul0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72226 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !72267
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !72267
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !72267     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !72267
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !72253

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !72253
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !72253

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !72253
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !72253
  %i.e = sub i64 %i.a, %i.c, !dbg !72253
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !72253
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !72253
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !72268

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 16, !dbg !72253
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !72253

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !72253

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72268 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72269 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72270
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !72270
  %wide.load8 = load <8 x i16>, ptr %i.h, align 2, !dbg !72270
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72271 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72272
  %wide.load9 = load <8 x i16>, ptr %i.i, align 2, !dbg !72272
  %wide.load10 = load <8 x i16>, ptr %i.j, align 2, !dbg !72272
  %i.k = mul <8 x i16> %wide.load9, %wide.load, !dbg !72273
  %i.l = mul <8 x i16> %wide.load10, %wide.load8, !dbg !72273
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72274 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !72275
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !72275
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !72275
  %index.next = add nuw i64 %index, 16, !dbg !72268 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !72253
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !72253, !llvm.loop !72246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72253
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !72253

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !72268 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !72269
  %wide.load13 = load <4 x i16>, ptr %i.p, align 2, !dbg !72270
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index12, !dbg !72271
  %wide.load14 = load <4 x i16>, ptr %i.q, align 2, !dbg !72272
  %i.r = mul <4 x i16> %wide.load14, %wide.load13, !dbg !72273
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index12, !dbg !72274
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !72275
  %index.next15 = add nuw i64 %index12, 4, !dbg !72268 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !72253
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72253, !llvm.loop !72247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !72253
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !72253

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !72253          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72253
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72253

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !72269
  %i.v = load i16, ptr %i.u, align 2, !dbg !72270, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !72271
  %i.x = load i16, ptr %i.w, align 2, !dbg !72272, !noundef !403
  %i.y = mul i16 %i.x, %i.v, !dbg !72273
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !72268 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !72274
  store i16 %i.y, ptr %i.aa, align 2, !dbg !72275
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !72253 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !72253
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72253, !llvm.loop !72248

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !72253
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !72253
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !72253

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !72276

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72269
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !72270, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72271
  %i.ag = load i16, ptr %i.af, align 2, !dbg !72272, !noundef !403
  %i.ah = mul i16 %i.ag, %i.ae, !dbg !72273
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !72268 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72274
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !72275
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !72269
  %i.al = load i16, ptr %i.ak, align 2, !dbg !72270, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !72271
  %i.an = load i16, ptr %i.am, align 2, !dbg !72272, !noundef !403
  %i.ao = mul i16 %i.an, %i.al, !dbg !72273
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !72268 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !72274
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !72275
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !72269
  %i.as = load i16, ptr %i.ar, align 2, !dbg !72270, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !72271
  %i.au = load i16, ptr %i.at, align 2, !dbg !72272, !noundef !403
  %i.av = mul i16 %i.au, %i.as, !dbg !72273
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !72268 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !72274
  store i16 %i.av, ptr %i.ax, align 2, !dbg !72275
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !72269
  %i.az = load i16, ptr %i.ay, align 2, !dbg !72270, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !72271
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !72272, !noundef !403
  %i.bc = mul i16 %i.bb, %i.az, !dbg !72273
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !72268 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !72274
  store i16 %i.bc, ptr %i.be, align 2, !dbg !72275
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !72267
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !72253, !llvm.loop !72249
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl17prim_wrapping_sub0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72277 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64, !dbg !72318
  %i.b = ptrtoaddr ptr %0 to i64, !dbg !72318
  %i.c = ptrtoaddr ptr %2 to i64, !dbg !72318     ; 2 uses
  %.not = icmp eq i64 %3, 0, !dbg !72318
  br i1 %.not, label %._crit_edge, label %iter.check, !dbg !72304

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4, !dbg !72304
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck, !dbg !72304

vector.memcheck:                                  ; preds = %iter.check
  %i.d = sub i64 %i.b, %i.c, !dbg !72304
  %diff.check = icmp ugt i64 %i.d, -32, !dbg !72304
  %i.e = sub i64 %i.a, %i.c, !dbg !72304
  %diff.check6 = icmp ugt i64 %i.e, -32, !dbg !72304
  %conflict.rdx = or i1 %diff.check, %diff.check6, !dbg !72304
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !72319

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %3, 16, !dbg !72304
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph, !dbg !72304

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %3, 12
  %n.vec = and i64 %3, -16                        ; 4 uses
  br label %vector.body, !dbg !72304

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !72319 ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !72320 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72321
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !72321
  %wide.load8 = load <8 x i16>, ptr %i.h, align 2, !dbg !72321
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index, !dbg !72322 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72323
  %wide.load9 = load <8 x i16>, ptr %i.i, align 2, !dbg !72323
  %wide.load10 = load <8 x i16>, ptr %i.j, align 2, !dbg !72323
  %i.k = sub <8 x i16> %wide.load, %wide.load9, !dbg !72324
  %i.l = sub <8 x i16> %wide.load8, %wide.load10, !dbg !72324
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index, !dbg !72325 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !72326
  store <8 x i16> %i.k, ptr %i.m, align 2, !dbg !72326
  store <8 x i16> %i.l, ptr %i.n, align 2, !dbg !72326
  %index.next = add nuw i64 %index, 16, !dbg !72319 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !72304
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !72304, !llvm.loop !72297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec, !dbg !72304
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !72304

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %3, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ], !dbg !72319 ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !72320
  %wide.load13 = load <4 x i16>, ptr %i.p, align 2, !dbg !72321
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index12, !dbg !72322
  %wide.load14 = load <4 x i16>, ptr %i.q, align 2, !dbg !72323
  %i.r = sub <4 x i16> %wide.load13, %wide.load14, !dbg !72324
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index12, !dbg !72325
  store <4 x i16> %i.r, ptr %i.s, align 2, !dbg !72326
  %index.next15 = add nuw i64 %index12, 4, !dbg !72319 ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11, !dbg !72304
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !72304, !llvm.loop !72298

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %3, %n.vec11, !dbg !72304
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader, !dbg !72304

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.05.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3, !dbg !72304          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72304
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72304

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.05.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.sroa.01.05.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.prol, !dbg !72320
  %i.v = load i16, ptr %i.u, align 2, !dbg !72321, !noundef !403
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.prol, !dbg !72322
  %i.x = load i16, ptr %i.w, align 2, !dbg !72323, !noundef !403
  %i.y = sub i16 %i.v, %i.x, !dbg !72324
  %i.z = add nuw i64 %.sroa.01.05.prol, 1, !dbg !72319 ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.prol, !dbg !72325
  store i16 %i.y, ptr %i.aa, align 2, !dbg !72326
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !72304 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !72304
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !72304, !llvm.loop !72299

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.05.unr = phi i64 [ %.sroa.01.05.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ab = sub i64 %.sroa.01.05.ph, %3, !dbg !72304
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !72304
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !dbg !72304

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void, !dbg !72327

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.bd, %.lr.ph ], [ %.sroa.01.05.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72320
  %i.ae = load i16, ptr %i.ad, align 2, !dbg !72321, !noundef !403
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72322
  %i.ag = load i16, ptr %i.af, align 2, !dbg !72323, !noundef !403
  %i.ah = sub i16 %i.ae, %i.ag, !dbg !72324
  %i.ai = add nuw i64 %.sroa.01.05, 1, !dbg !72319 ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72325
  store i16 %i.ah, ptr %i.aj, align 2, !dbg !72326
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai, !dbg !72320
  %i.al = load i16, ptr %i.ak, align 2, !dbg !72321, !noundef !403
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai, !dbg !72322
  %i.an = load i16, ptr %i.am, align 2, !dbg !72323, !noundef !403
  %i.ao = sub i16 %i.al, %i.an, !dbg !72324
  %i.ap = add nuw i64 %.sroa.01.05, 2, !dbg !72319 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai, !dbg !72325
  store i16 %i.ao, ptr %i.aq, align 2, !dbg !72326
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap, !dbg !72320
  %i.as = load i16, ptr %i.ar, align 2, !dbg !72321, !noundef !403
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap, !dbg !72322
  %i.au = load i16, ptr %i.at, align 2, !dbg !72323, !noundef !403
  %i.av = sub i16 %i.as, %i.au, !dbg !72324
  %i.aw = add nuw i64 %.sroa.01.05, 3, !dbg !72319 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ap, !dbg !72325
  store i16 %i.av, ptr %i.ax, align 2, !dbg !72326
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw, !dbg !72320
  %i.az = load i16, ptr %i.ay, align 2, !dbg !72321, !noundef !403
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !72322
  %i.bb = load i16, ptr %i.ba, align 2, !dbg !72323, !noundef !403
  %i.bc = sub i16 %i.az, %i.bb, !dbg !72324
  %i.bd = add nuw i64 %.sroa.01.05, 4, !dbg !72319 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw, !dbg !72325
  store i16 %i.bc, ptr %i.be, align 2, !dbg !72326
  %exitcond.not.3 = icmp eq i64 %i.bd, %3, !dbg !72318
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !dbg !72304, !llvm.loop !72300
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCslFlrwjHoTci_14polars_compute5arity23ptr_apply_binary_kerneltttNCNvXs_NtNtB4_10arithmetic8unsignedtNtB1f_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0EB4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !72328 {
bb.a:
  %.not = icmp eq i64 %3, 0, !dbg !72363
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !72349

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !72364
  %i.a = icmp eq i64 %3, 1, !dbg !72364
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !72364

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2, !dbg !72364
  br label %.lr.ph, !dbg !72364

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72364
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !72364

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %3 to i1, !dbg !72364
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !72364
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05.epil.init, !dbg !72365
  %i.c = load i16, ptr %i.b, align 2, !dbg !72366, !noundef !403 ; 2 uses
  %i.d = icmp eq i16 %i.c, 0, !dbg !72364
  br i1 %i.d, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil, label %bb.b, !dbg !72364

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05.epil.init, !dbg !72367
  %i.f = load i16, ptr %i.e, align 2, !dbg !72368, !noundef !403
  %i.g = udiv i16 %i.f, %i.c, !dbg !72369
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil, !dbg !72370

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil: ; preds = %bb.b, %.lr.ph.epil.preheader
  %.sroa.0.0.i.epil = phi i16 [ %i.g, %bb.b ], [ 0, %.lr.ph.epil.preheader ], !dbg !72371
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05.epil.init, !dbg !72372
  store i16 %.sroa.0.0.i.epil, ptr %i.h, align 2, !dbg !72373
  br label %._crit_edge, !dbg !72374

._crit_edge:                                      ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void, !dbg !72374

.lr.ph:                                           ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1, %.lr.ph.preheader.new
  %.sroa.01.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1 ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.05, !dbg !72365
  %i.j = load i16, ptr %i.i, align 2, !dbg !72366, !noundef !403 ; 2 uses
  %i.k = icmp eq i16 %i.j, 0, !dbg !72364
  br i1 %i.k, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, label %bb.c, !dbg !72364

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.05, !dbg !72367
  %i.m = load i16, ptr %i.l, align 2, !dbg !72368, !noundef !403
  %i.n = udiv i16 %i.m, %i.j, !dbg !72369
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit, !dbg !72370

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i = phi i16 [ %i.n, %bb.c ], [ 0, %.lr.ph ], !dbg !72371
  %i.o = or disjoint i64 %.sroa.01.05, 1, !dbg !72375 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.01.05, !dbg !72372
  store i16 %.sroa.0.0.i, ptr %i.p, align 2, !dbg !72373
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.o, !dbg !72365
  %i.r = load i16, ptr %i.q, align 2, !dbg !72366, !noundef !403 ; 2 uses
  %i.s = icmp eq i16 %i.r, 0, !dbg !72364
  br i1 %i.s, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit.1, label %bb.d, !dbg !72364

bb.d:                                             ; preds = %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedtNtB8_29PrimitiveArithmeticKernelImpl23prim_wrapping_floor_div0Ba_.exit
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o, !dbg !72367
end_hunk_7
