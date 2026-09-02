Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.05?download=true
inline.NumInlined: 1810
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 206
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_RINvNtCslFlrwjHoTci_14polars_compute5arity22ptr_apply_unary_kernelaaNCNvXNtNtB4_10arithmetic6signedaNtB1b_29PrimitiveArithmeticKernelImpl28prim_wrapping_sub_scalar_lhs0EB4_:bb.a
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

vector.body49:                                    ; preds = %vector.body49, %vector.ph41
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

vector.body:                                      ; preds = %vector.body, %vector.ph
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
  %i.bd = trunc nuw nsw <16 x i16> %i.ba to <16 x i8>, !dbg !61796 ; 2 uses
  %i.be = xor <16 x i8> %broadcast.splat20, %wide.load, !dbg !61799
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer, !dbg !61799
  %5 = extractvalue { <16 x i16>, <16 x i1> } %i.bc, 1, !dbg !61799
  %i.bg = sext <16 x i1> %5 to <16 x i8>, !dbg !61799
  %i.bh = sub nsw <16 x i8> %i.bg, %i.bd, !dbg !61799
  %i.bi = select <16 x i1> %i.bf, <16 x i8> %i.bh, <16 x i8> %i.bd, !dbg !61799
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %index, !dbg !61800
  store <16 x i8> %i.bi, ptr %i.bj, align 1, !dbg !61801
  %index.next = add nuw i64 %index, 16, !dbg !61792 ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec, !dbg !61780
  br i1 %i.bk, label %middle.block, label %vector.body, !dbg !61780, !llvm.loop !61773

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
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %index32, !dbg !61793
  %wide.load33 = load <4 x i8>, ptr %i.bl, align 1, !dbg !61794 ; 2 uses
  %i.bm = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load33, i1 false), !dbg !61795
  %i.bn = zext <4 x i8> %i.bm to <4 x i16>, !dbg !61796 ; 3 uses
  %i.bo = mul nuw nsw <4 x i16> %broadcast.splat25, %i.bn, !dbg !61802
  %i.bp = mul nuw nsw <4 x i16> %broadcast.splat27, %i.bn, !dbg !61803
  %i.bq = lshr <4 x i16> %i.bp, splat (i16 8), !dbg !61803
  %i.br = add nuw nsw <4 x i16> %i.bq, %i.bo, !dbg !61804
  %i.bs = lshr <4 x i16> %i.br, splat (i16 8), !dbg !61805
  %i.bt = mul <4 x i16> %broadcast.splat29, %i.bn, !dbg !61806
  %i.bu = tail call { <4 x i16>, <4 x i1> } @llvm.umul.with.overflow.v4i16(<4 x i16> %i.bt, <4 x i16> %broadcast.splat23), !dbg !61807
  %i.bv = trunc nuw nsw <4 x i16> %i.bs to <4 x i8>, !dbg !61796 ; 2 uses
  %i.bw = xor <4 x i8> %broadcast.splat31, %wide.load33, !dbg !61799
  %i.bx = icmp slt <4 x i8> %i.bw, zeroinitializer, !dbg !61799
  %6 = extractvalue { <4 x i16>, <4 x i1> } %i.bu, 1, !dbg !61799
  %i.by = sext <4 x i1> %6 to <4 x i8>, !dbg !61799
  %i.bz = sub nsw <4 x i8> %i.by, %i.bv, !dbg !61799
  %i.ca = select <4 x i1> %i.bx, <4 x i8> %i.bz, <4 x i8> %i.bv, !dbg !61799
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %index32, !dbg !61800
  store <4 x i8> %i.ca, ptr %i.cb, align 1, !dbg !61801
  %index.next34 = add nuw i64 %index32, 4, !dbg !61792 ; 2 uses
  %i.cc = icmp eq i64 %index.next34, %n.vec21, !dbg !61780
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !61780, !llvm.loop !61774

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %2, %n.vec21, !dbg !61780
  br i1 %cmp.n35, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, !dbg !61780

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.06.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, !dbg !61780

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us
  %.sroa.01.06.us = phi i64 [ %i.cm, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us ], [ %.sroa.01.06.us.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06.us, !dbg !61793
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !61794, !noundef !403 ; 2 uses
  %.sroa.02.0.i.us = tail call i8 @llvm.abs.i8(i8 %i.ce, i1 false), !dbg !61795 ; 2 uses
  %i.cf = zext i8 %.sroa.02.0.i.us to i16, !dbg !61796
  %i.cg = lshr i16 %i.cf, %i.j, !dbg !61797
  %i.ch = and i8 %i.k, %.sroa.02.0.i.us, !dbg !61798
  %.sroa.0.0.i.i.us = trunc nuw i16 %i.cg to i8, !dbg !61796 ; 2 uses
  %i.ci = xor i8 %i.l, %i.ce, !dbg !61799
  %i.cj = icmp slt i8 %i.ci, 0, !dbg !61799
  %i.ck = icmp ne i8 %i.ch, 0, !dbg !61799
  %i.cl = sext i1 %i.ck to i8, !dbg !61799
  %spec.select.i.us = sub i8 %i.cl, %.sroa.0.0.i.i.us, !dbg !61799
  %.sroa.0.0.i.us = select i1 %i.cj, i8 %spec.select.i.us, i8 %.sroa.0.0.i.i.us, !dbg !61799
  %i.cm = add nuw i64 %.sroa.01.06.us, 1, !dbg !61792 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06.us, !dbg !61800
  store i8 %.sroa.0.0.i.us, ptr %i.cn, align 1, !dbg !61801
  %exitcond8.not = icmp eq i64 %i.cm, %2, !dbg !61791
  br i1 %exitcond8.not, label %._crit_edge, label %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, !dbg !61780, !llvm.loop !61775

._crit_edge:                                      ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.us, %middle.block, %vec.epilog.middle.block, %middle.block53, %vec.epilog.middle.block72, %bb.a
  ret void, !dbg !61808

_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit: ; preds = %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit
  %.sroa.01.06 = phi i64 [ %i.da, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit ], [ %.sroa.01.06.ph, %_RNCNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic6signedaNtB6_29PrimitiveArithmeticKernelImpl30prim_wrapping_floor_div_scalar0B8_.exit.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06, !dbg !61793
  %i.cp = load i8, ptr %i.co, align 1, !dbg !61794, !noundef !403 ; 2 uses
  %.sroa.02.0.i = tail call i8 @llvm.abs.i8(i8 %i.cp, i1 false), !dbg !61795
  %i.cq = zext i8 %.sroa.02.0.i to i16, !dbg !61796 ; 3 uses
  %i.cr = mul nuw nsw i16 %i.g, %i.cq, !dbg !61802
  %i.cs = mul nuw nsw i16 %i.h, %i.cq, !dbg !61803
  %i.ct = lshr i16 %i.cs, 8, !dbg !61803
  %i.cu = add nuw nsw i16 %i.ct, %i.cr, !dbg !61804
  %i.cv = lshr i16 %i.cu, 8, !dbg !61805
  %i.cw = mul i16 %i.c, %i.cq, !dbg !61806
  %umul = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %i.cw, i16 %i.aq), !dbg !61807
  %.sroa.0.0.i.i = trunc nuw nsw i16 %i.cv to i8, !dbg !61796 ; 2 uses
  %i.cx = xor i8 %i.l, %i.cp, !dbg !61799
  %i.cy = icmp slt i8 %i.cx, 0, !dbg !61799
  %7 = extractvalue { i16, i1 } %umul, 1, !dbg !61799
  %i.cz = sext i1 %7 to i8, !dbg !61799
  %spec.select.i = sub nsw i8 %i.cz, %.sroa.0.0.i.i, !dbg !61799
  %.sroa.0.0.i = select i1 %i.cy, i8 %spec.select.i, i8 %.sroa.0.0.i.i, !dbg !61799
  %i.da = add nuw i64 %.sroa.01.06, 1, !dbg !61792 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06, !dbg !61800
  store i8 %.sroa.0.0.i, ptr %i.db, align 1, !dbg !61801
  %exitcond.not = icmp eq i64 %i.da, %2, !dbg !61791
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

vector.body:                                      ; preds = %vector.body, %vector.ph
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

vector.body38:                                    ; preds = %vector.body38, %vector.ph32
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
end_hunk_0
