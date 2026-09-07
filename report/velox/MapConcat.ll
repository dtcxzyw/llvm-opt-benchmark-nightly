Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MapConcat?download=true
inline.NumInlined: 2563
inline.NumDeleted: 1210
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit55.i.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bm, i64 58 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.bm, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit55.i.i.i.i
  %.4415 = phi i32 [ %.1412, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.3414, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %.not34.i.i.i.i = icmp eq i32 %i.ek, %i.eo
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %bb.al

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2413 = phi i32 [ %.3414, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1412, %.lr.ph.i.i.i.i.preheader ] ; 12 uses
  %i.im = phi i32 [ %i.abk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ih, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.096.i.i.i.i = phi i32 [ %i.im, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.en, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.in = sdiv i32 %.096.i.i.i.i, 64              ; 3 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !122 ; 4 uses
  switch i64 %i.iq, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.ak
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ir = shl nsw i32 %i.in, 6                    ; 2 uses
  %i.is = load i8, ptr %i.ii, align 2, !tbaa !182, !range !88, !noundef !89
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i
  %i.iu = sext i32 %i.ir to i64
  %invariant.gep47.i.i.i.i.i = getelementptr [4 x i8], ptr %i.br, i64 %i.iu
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.iv = phi i32 [ %.2413, %.lr.ph.split.us.i.i.i.i.i ], [ %i.iy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ]
  %.01521.us.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph.split.us.i.i.i.i.i ], [ %i.ja, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ] ; 3 uses
  %i.iw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.us.i.i.i.i.i, i1 true)
  %gep48.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep47.i.i.i.i.i, i64 %i.iw
  %i.ix = load i32, ptr %gep48.i.i.i.i.i, align 4, !tbaa !66
  %i.iy = add nsw i32 %i.ix, %i.iv                ; 2 uses
  %i.iz = add i64 %.01521.us.i.i.i.i.i, -1
  %i.ja = and i64 %i.iz, %.01521.us.i.i.i.i.i     ; 2 uses
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, !llvm.loop !391

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.jb = load i8, ptr %i.il, align 1, !tbaa !183, !range !88, !noundef !89
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i
  %i.jd = load i32, ptr %i.ik, align 8, !tbaa !185
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !66
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i
  %i.jh = phi i32 [ %i.ji, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %.2413, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ]
  %.01521.us22.i.i.i.i.i = phi i64 [ %i.jk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %i.iq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ] ; 2 uses
  %i.ji = add nsw i32 %i.jg, %i.jh                ; 2 uses
  %i.jj = add i64 %.01521.us22.i.i.i.i.i, -1
  %i.jk = and i64 %i.jj, %.01521.us22.i.i.i.i.i   ; 2 uses
  %.not.us25.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not.us25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i, !llvm.loop !391

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i
  %i.jl = load ptr, ptr %i.ij, align 8, !tbaa !184
  %i.jm = sext i32 %i.ir to i64
  %invariant.gep.i59.i.i.i.i = getelementptr [4 x i8], ptr %i.jl, i64 %i.jm
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jn = shl nsw i32 %i.in, 6                    ; 5 uses
  %i.jo = sext i32 %i.jn to i64                   ; 19 uses
  %i.jp = add i32 %i.jn, 64
  %i.jq = sext i32 %i.jp to i64                   ; 7 uses
  %.0.off.i.i.i.i = add i32 %.096.i.i.i.i, 127
  %.not34.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not34.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %bb.ak
  %i.jr = load i8, ptr %i.ii, align 2, !tbaa !182, !range !88, !noundef !89
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %iter.check, label %.lr.ph28.split.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph28.i.i.i.i.i
  %i.jt = or disjoint i64 %i.jo, 1
  %umax784 = call i64 @llvm.umax.i64(i64 %i.jt, i64 %i.jq) ; 2 uses
  %i.ju = sub i64 %umax784, %i.jo                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ju, 8
  br i1 %min.iters.check, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.jv = or disjoint i64 %i.jo, 1
  %umax783 = call i64 @llvm.umax.i64(i64 %i.jv, i64 %i.jq)
  %i.jw = xor i64 %i.jo, -1
  %i.jx = add i64 %umax783, %i.jw                 ; 2 uses
  %i.jy = sext i32 %i.jn to i34                   ; 2 uses
  %i.jz = shl nsw i34 %i.jy, 2
  %i.ka = trunc i64 %i.jx to i34
  %i.kb = add i34 %i.jy, %i.ka
  %i.kc = shl i34 %i.kb, 2
  %i.kd = icmp slt i34 %i.kc, %i.jz
  %i.ke = icmp ugt i64 %i.jx, 4294967295
  %i.kf = or i1 %i.kd, %i.ke
  br i1 %i.kf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check785 = icmp ult i64 %i.ju, 32
  %i.kg = and i64 %umax784, 1                     ; 3 uses
  %n.vec794 = sub i64 %i.ju, %i.kg                ; 3 uses
  %i.kh = add i64 %n.vec794, %i.jo                ; 2 uses
  %i.ki = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2413, i64 0 ; 2 uses
  br i1 %min.iters.check785, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.kq, %vector.body ], [ %i.ki, %vector.main.loop.iter.check ]
  %vec.phi786 = phi <8 x i32> [ %i.kr, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi787 = phi <8 x i32> [ %i.ks, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi788 = phi <8 x i32> [ %i.kt, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.kj = add nuw i64 %index, %i.jo
  %i.kk = shl i64 %i.kj, 32
  %i.kl = ashr exact i64 %i.kk, 30
  %i.km = getelementptr inbounds i8, ptr %i.br, i64 %i.kl ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 96
  %wide.load = load <8 x i32>, ptr %i.km, align 4, !tbaa !66
  %wide.load789 = load <8 x i32>, ptr %i.kn, align 4, !tbaa !66
  %wide.load790 = load <8 x i32>, ptr %i.ko, align 4, !tbaa !66
  %wide.load791 = load <8 x i32>, ptr %i.kp, align 4, !tbaa !66
  %i.kq = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.kr = add <8 x i32> %wide.load789, %vec.phi786 ; 2 uses
  %i.ks = add <8 x i32> %wide.load790, %vec.phi787 ; 2 uses
  %i.kt = add <8 x i32> %wide.load791, %vec.phi788 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec794
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.kr, %i.kq
  %bin.rdx792 = add <8 x i32> %i.ks, %bin.rdx
  %bin.rdx793 = add <8 x i32> %i.kt, %bin.rdx792
  %i.kv = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx793) ; 2 uses
  %cmp.n = icmp eq i64 %i.kg, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index795 = phi i64 [ %index.next798, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi796 = phi <8 x i32> [ %i.la, %vec.epilog.vector.body ], [ %i.ki, %vector.main.loop.iter.check ]
  %i.kw = add nuw i64 %index795, %i.jo
  %i.kx = shl i64 %i.kw, 32
  %i.ky = ashr exact i64 %i.kx, 30
  %i.kz = getelementptr inbounds i8, ptr %i.br, i64 %i.ky
  %wide.load797 = load <8 x i32>, ptr %i.kz, align 4, !tbaa !66
  %i.la = add <8 x i32> %wide.load797, %vec.phi796 ; 2 uses
  %index.next798 = add nuw i64 %index795, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next798, %n.vec794
  br i1 %i.lb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !393

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.lc = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.la) ; 2 uses
  %cmp.n799 = icmp eq i64 %i.kg, 0
  br i1 %cmp.n799, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %i.kv, %middle.block ], [ %.2413, %vector.scevcheck ], [ %.2413, %iter.check ], [ %i.lc, %vec.epilog.middle.block ]
  %.027.us.i.i.i.i.i.ph = phi i64 [ %i.kh, %middle.block ], [ %i.jo, %vector.scevcheck ], [ %i.jo, %iter.check ], [ %i.kh, %vec.epilog.middle.block ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i
  %i.ld = phi i32 [ %i.lh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i ], [ %.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader ]
  %.027.us.i.i.i.i.i = phi i64 [ %i.li, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i ], [ %.027.us.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader ] ; 2 uses
  %sext35.i.i.i.i.i = shl i64 %.027.us.i.i.i.i.i, 32
  %i.le = ashr exact i64 %sext35.i.i.i.i.i, 30
  %i.lf = getelementptr inbounds i8, ptr %i.br, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !66
  %i.lh = add nsw i32 %i.lg, %i.ld                ; 2 uses
  %i.li = add nuw i64 %.027.us.i.i.i.i.i, 1       ; 2 uses
  %i.lj = icmp ult i64 %i.li, %i.jq
  br i1 %i.lj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !394

.lr.ph28.split.i.i.i.i.i:                         ; preds = %.lr.ph28.i.i.i.i.i
  %i.lk = load i8, ptr %i.il, align 1, !tbaa !183, !range !88, !noundef !89
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader, label %iter.check827

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader: ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.lm = load i32, ptr %i.ik, align 8, !tbaa !185
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !66
  %i.lq = or disjoint i64 %i.jo, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.lq, i64 %i.jq)
  %i.lr = trunc nsw i64 %umax to i32
  %i.ls = sub i32 %i.lr, %i.jn
  %i.lt = mul i32 %i.lp, %i.ls
  %i.lu = add i32 %.2413, %i.lt
  br label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i

iter.check827:                                    ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.lv = load ptr, ptr %i.ij, align 8, !tbaa !184 ; 41 uses
  %i.lw = or disjoint i64 %i.jo, 1
  %umax807 = call i64 @llvm.umax.i64(i64 %i.lw, i64 %i.jq) ; 2 uses
  %i.lx = sub i64 %umax807, %i.jo                 ; 3 uses
  %min.iters.check808 = icmp ult i64 %i.lx, 8
  br i1 %min.iters.check808, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i56.i.i.i.i.preheader, label %vector.scevcheck802

vector.scevcheck802:                              ; preds = %iter.check827
  %i.ly = or disjoint i64 %i.jo, 1
  %umax803 = call i64 @llvm.umax.i64(i64 %i.ly, i64 %i.jq)
  %i.lz = xor i64 %i.jo, -1
  %i.ma = add i64 %umax803, %i.lz                 ; 2 uses
  %i.mb = sext i32 %i.jn to i34                   ; 2 uses
  %i.mc = shl nsw i34 %i.mb, 2
  %i.md = trunc i64 %i.ma to i34
  %i.me = add i34 %i.mb, %i.md
  %i.mf = shl i34 %i.me, 2
  %i.mg = icmp slt i34 %i.mf, %i.mc
  %i.mh = icmp ugt i64 %i.ma, 4294967295
  %i.mi = or i1 %i.mg, %i.mh
  br i1 %i.mi, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i56.i.i.i.i.preheader, label %vector.main.loop.iter.check809

vector.main.loop.iter.check809:                   ; preds = %vector.scevcheck802
  %min.iters.check810 = icmp ult i64 %i.lx, 32
  %i.mj = and i64 %umax807, 1                     ; 3 uses
  %n.vec832 = sub i64 %i.lx, %i.mj                ; 3 uses
  %i.mk = add i64 %n.vec832, %i.jo                ; 2 uses
  %i.ml = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2413, i64 0 ; 2 uses
  br i1 %min.iters.check810, label %vec.epilog.vector.body833, label %vector.body813

vector.body813:                                   ; preds = %vector.main.loop.iter.check809, %vector.body813
  %index814 = phi i64 [ %index.next819, %vector.body813 ], [ 0, %vector.main.loop.iter.check809 ] ; 2 uses
  %vec.phi815 = phi <8 x i32> [ %i.xo, %vector.body813 ], [ %i.ml, %vector.main.loop.iter.check809 ]
  %vec.phi816 = phi <8 x i32> [ %i.xp, %vector.body813 ], [ zeroinitializer, %vector.main.loop.iter.check809 ]
  %vec.phi817 = phi <8 x i32> [ %i.xq, %vector.body813 ], [ zeroinitializer, %vector.main.loop.iter.check809 ]
  %vec.phi818 = phi <8 x i32> [ %i.xr, %vector.body813 ], [ zeroinitializer, %vector.main.loop.iter.check809 ]
  %i.mm = add nuw i64 %index814, %i.jo            ; 32 uses
  %i.mn = shl i64 %i.mm, 32
  %i.mo = shl i64 %i.mm, 32
  %i.mp = shl i64 %i.mm, 32
  %i.mq = shl i64 %i.mm, 32
  %i.mr = shl i64 %i.mm, 32
  %i.ms = shl i64 %i.mm, 32
  %i.mt = shl i64 %i.mm, 32
  %i.mu = shl i64 %i.mm, 32
  %i.mv = shl i64 %i.mm, 32
  %i.mw = shl i64 %i.mm, 32
  %i.mx = shl i64 %i.mm, 32
  %i.my = shl i64 %i.mm, 32
  %i.mz = shl i64 %i.mm, 32
  %i.na = shl i64 %i.mm, 32
  %i.nb = shl i64 %i.mm, 32
  %i.nc = shl i64 %i.mm, 32
  %i.nd = shl i64 %i.mm, 32
  %i.ne = shl i64 %i.mm, 32
  %i.nf = shl i64 %i.mm, 32
  %i.ng = shl i64 %i.mm, 32
  %i.nh = shl i64 %i.mm, 32
  %i.ni = shl i64 %i.mm, 32
  %i.nj = shl i64 %i.mm, 32
  %i.nk = shl i64 %i.mm, 32
  %i.nl = shl i64 %i.mm, 32
  %i.nm = shl i64 %i.mm, 32
  %i.nn = shl i64 %i.mm, 32
  %i.no = shl i64 %i.mm, 32
  %i.np = shl i64 %i.mm, 32
  %i.nq = shl i64 %i.mm, 32
  %i.nr = shl i64 %i.mm, 32
  %i.ns = shl i64 %i.mm, 32
  %i.nt = ashr exact i64 %i.mn, 30
  %i.nu = ashr exact i64 %i.mo, 30
  %i.nv = ashr exact i64 %i.mp, 30
  %i.nw = ashr exact i64 %i.mq, 30
  %i.nx = ashr exact i64 %i.mr, 30
  %i.ny = ashr exact i64 %i.ms, 30
  %i.nz = ashr exact i64 %i.mt, 30
  %i.oa = ashr exact i64 %i.mu, 30
  %i.ob = ashr exact i64 %i.mv, 30
  %i.oc = ashr exact i64 %i.mw, 30
  %i.od = ashr exact i64 %i.mx, 30
  %i.oe = ashr exact i64 %i.my, 30
  %i.of = ashr exact i64 %i.mz, 30
  %i.og = ashr exact i64 %i.na, 30
  %i.oh = ashr exact i64 %i.nb, 30
  %i.oi = ashr exact i64 %i.nc, 30
  %i.oj = ashr exact i64 %i.nd, 30
  %i.ok = ashr exact i64 %i.ne, 30
  %i.ol = ashr exact i64 %i.nf, 30
  %i.om = ashr exact i64 %i.ng, 30
  %i.on = ashr exact i64 %i.nh, 30
  %i.oo = ashr exact i64 %i.ni, 30
  %i.op = ashr exact i64 %i.nj, 30
  %i.oq = ashr exact i64 %i.nk, 30
  %i.or = ashr exact i64 %i.nl, 30
  %i.os = ashr exact i64 %i.nm, 30
  %i.ot = ashr exact i64 %i.nn, 30
  %i.ou = ashr exact i64 %i.no, 30
  %i.ov = ashr exact i64 %i.np, 30
  %i.ow = ashr exact i64 %i.nq, 30
  %i.ox = ashr exact i64 %i.nr, 30
  %i.oy = ashr exact i64 %i.ns, 30
  %i.oz = getelementptr inbounds i8, ptr %i.lv, i64 %i.nt
  %i.pa = getelementptr i8, ptr %i.lv, i64 %i.nu
  %i.pb = getelementptr i8, ptr %i.pa, i64 4
  %i.pc = getelementptr i8, ptr %i.lv, i64 %i.nv
  %i.pd = getelementptr i8, ptr %i.pc, i64 8
  %i.pe = getelementptr i8, ptr %i.lv, i64 %i.nw
  %i.pf = getelementptr i8, ptr %i.pe, i64 12
  %i.pg = getelementptr i8, ptr %i.lv, i64 %i.nx
  %i.ph = getelementptr i8, ptr %i.pg, i64 16
  %i.pi = getelementptr i8, ptr %i.lv, i64 %i.ny
  %i.pj = getelementptr i8, ptr %i.pi, i64 20
  %i.pk = getelementptr i8, ptr %i.lv, i64 %i.nz
  %i.pl = getelementptr i8, ptr %i.pk, i64 24
  %i.pm = getelementptr i8, ptr %i.lv, i64 %i.oa
  %i.pn = getelementptr i8, ptr %i.pm, i64 28
  %i.po = getelementptr i8, ptr %i.lv, i64 %i.ob
  %i.pp = getelementptr i8, ptr %i.po, i64 32
  %i.pq = getelementptr i8, ptr %i.lv, i64 %i.oc
  %i.pr = getelementptr i8, ptr %i.pq, i64 36
  %i.ps = getelementptr i8, ptr %i.lv, i64 %i.od
  %i.pt = getelementptr i8, ptr %i.ps, i64 40
  %i.pu = getelementptr i8, ptr %i.lv, i64 %i.oe
  %i.pv = getelementptr i8, ptr %i.pu, i64 44
  %i.pw = getelementptr i8, ptr %i.lv, i64 %i.of
  %i.px = getelementptr i8, ptr %i.pw, i64 48
  %i.py = getelementptr i8, ptr %i.lv, i64 %i.og
  %i.pz = getelementptr i8, ptr %i.py, i64 52
  %i.qa = getelementptr i8, ptr %i.lv, i64 %i.oh
  %i.qb = getelementptr i8, ptr %i.qa, i64 56
  %i.qc = getelementptr i8, ptr %i.lv, i64 %i.oi
  %i.qd = getelementptr i8, ptr %i.qc, i64 60
  %i.qe = getelementptr i8, ptr %i.lv, i64 %i.oj
  %i.qf = getelementptr i8, ptr %i.qe, i64 64
  %i.qg = getelementptr i8, ptr %i.lv, i64 %i.ok
  %i.qh = getelementptr i8, ptr %i.qg, i64 68
  %i.qi = getelementptr i8, ptr %i.lv, i64 %i.ol
  %i.qj = getelementptr i8, ptr %i.qi, i64 72
  %i.qk = getelementptr i8, ptr %i.lv, i64 %i.om
  %i.ql = getelementptr i8, ptr %i.qk, i64 76
  %i.qm = getelementptr i8, ptr %i.lv, i64 %i.on
  %i.qn = getelementptr i8, ptr %i.qm, i64 80
  %i.qo = getelementptr i8, ptr %i.lv, i64 %i.oo
  %i.qp = getelementptr i8, ptr %i.qo, i64 84
  %i.qq = getelementptr i8, ptr %i.lv, i64 %i.op
  %i.qr = getelementptr i8, ptr %i.qq, i64 88
  %i.qs = getelementptr i8, ptr %i.lv, i64 %i.oq
  %i.qt = getelementptr i8, ptr %i.qs, i64 92
  %i.qu = getelementptr i8, ptr %i.lv, i64 %i.or
  %i.qv = getelementptr i8, ptr %i.qu, i64 96
  %i.qw = getelementptr i8, ptr %i.lv, i64 %i.os
  %i.qx = getelementptr i8, ptr %i.qw, i64 100
  %i.qy = getelementptr i8, ptr %i.lv, i64 %i.ot
  %i.qz = getelementptr i8, ptr %i.qy, i64 104
  %i.ra = getelementptr i8, ptr %i.lv, i64 %i.ou
  %i.rb = getelementptr i8, ptr %i.ra, i64 108
  %i.rc = getelementptr i8, ptr %i.lv, i64 %i.ov
  %i.rd = getelementptr i8, ptr %i.rc, i64 112
  %i.re = getelementptr i8, ptr %i.lv, i64 %i.ow
  %i.rf = getelementptr i8, ptr %i.re, i64 116
  %i.rg = getelementptr i8, ptr %i.lv, i64 %i.ox
  %i.rh = getelementptr i8, ptr %i.rg, i64 120
  %i.ri = getelementptr i8, ptr %i.lv, i64 %i.oy
  %i.rj = getelementptr i8, ptr %i.ri, i64 124
  %i.rk = load i32, ptr %i.oz, align 4, !tbaa !66
  %i.rl = load i32, ptr %i.pb, align 4, !tbaa !66
  %i.rm = load i32, ptr %i.pd, align 4, !tbaa !66
  %i.rn = load i32, ptr %i.pf, align 4, !tbaa !66
  %i.ro = load i32, ptr %i.ph, align 4, !tbaa !66
  %i.rp = load i32, ptr %i.pj, align 4, !tbaa !66
  %i.rq = load i32, ptr %i.pl, align 4, !tbaa !66
  %i.rr = load i32, ptr %i.pn, align 4, !tbaa !66
  %i.rs = load i32, ptr %i.pp, align 4, !tbaa !66
  %i.rt = load i32, ptr %i.pr, align 4, !tbaa !66
  %i.ru = load i32, ptr %i.pt, align 4, !tbaa !66
  %i.rv = load i32, ptr %i.pv, align 4, !tbaa !66
  %i.rw = load i32, ptr %i.px, align 4, !tbaa !66
  %i.rx = load i32, ptr %i.pz, align 4, !tbaa !66
  %i.ry = load i32, ptr %i.qb, align 4, !tbaa !66
  %i.rz = load i32, ptr %i.qd, align 4, !tbaa !66
  %i.sa = load i32, ptr %i.qf, align 4, !tbaa !66
  %i.sb = load i32, ptr %i.qh, align 4, !tbaa !66
  %i.sc = load i32, ptr %i.qj, align 4, !tbaa !66
  %i.sd = load i32, ptr %i.ql, align 4, !tbaa !66
  %i.se = load i32, ptr %i.qn, align 4, !tbaa !66
  %i.sf = load i32, ptr %i.qp, align 4, !tbaa !66
  %i.sg = load i32, ptr %i.qr, align 4, !tbaa !66
  %i.sh = load i32, ptr %i.qt, align 4, !tbaa !66
  %i.si = load i32, ptr %i.qv, align 4, !tbaa !66
  %i.sj = load i32, ptr %i.qx, align 4, !tbaa !66
  %i.sk = load i32, ptr %i.qz, align 4, !tbaa !66
  %i.sl = load i32, ptr %i.rb, align 4, !tbaa !66
  %i.sm = load i32, ptr %i.rd, align 4, !tbaa !66
  %i.sn = load i32, ptr %i.rf, align 4, !tbaa !66
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit55.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.be, i64 58 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.be, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit55.i.i.i.i
  %.4405 = phi i32 [ %.1402, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.3404, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %.not34.i.i.i.i = icmp eq i32 %i.ec, %i.eg
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %bb.ah

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2403 = phi i32 [ %.3404, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1402, %.lr.ph.i.i.i.i.preheader ] ; 12 uses
  %i.ie = phi i32 [ %i.abc, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.hz, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.096.i.i.i.i = phi i32 [ %i.ie, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ef, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.if = sdiv i32 %.096.i.i.i.i, 64              ; 3 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !122 ; 4 uses
  switch i64 %i.ii, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.ag
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ij = shl nsw i32 %i.if, 6                    ; 2 uses
  %i.ik = load i8, ptr %i.ia, align 2, !tbaa !182, !range !88, !noundef !89
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i
  %i.im = sext i32 %i.ij to i64
  %invariant.gep47.i.i.i.i.i = getelementptr [4 x i8], ptr %i.bj, i64 %i.im
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.in = phi i32 [ %.2403, %.lr.ph.split.us.i.i.i.i.i ], [ %i.iq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ]
  %.01521.us.i.i.i.i.i = phi i64 [ %i.ii, %.lr.ph.split.us.i.i.i.i.i ], [ %i.is, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ] ; 3 uses
  %i.io = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.us.i.i.i.i.i, i1 true)
  %gep48.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep47.i.i.i.i.i, i64 %i.io
  %i.ip = load i32, ptr %gep48.i.i.i.i.i, align 4, !tbaa !66
  %i.iq = add nsw i32 %i.ip, %i.in                ; 2 uses
  %i.ir = add i64 %.01521.us.i.i.i.i.i, -1
  %i.is = and i64 %i.ir, %.01521.us.i.i.i.i.i     ; 2 uses
  %.not.us.i.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, !llvm.loop !772

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.it = load i8, ptr %i.id, align 1, !tbaa !183, !range !88, !noundef !89
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i
  %i.iv = load i32, ptr %i.ic, align 8, !tbaa !185
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !66
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i
  %i.iz = phi i32 [ %i.ja, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %.2403, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ]
  %.01521.us22.i.i.i.i.i = phi i64 [ %i.jc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %i.ii, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ] ; 2 uses
  %i.ja = add nsw i32 %i.iy, %i.iz                ; 2 uses
  %i.jb = add i64 %.01521.us22.i.i.i.i.i, -1
  %i.jc = and i64 %i.jb, %.01521.us22.i.i.i.i.i   ; 2 uses
  %.not.us25.i.i.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not.us25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i, !llvm.loop !772

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i
  %i.jd = load ptr, ptr %i.ib, align 8, !tbaa !184
  %i.je = sext i32 %i.ij to i64
  %invariant.gep.i59.i.i.i.i = getelementptr [4 x i8], ptr %i.jd, i64 %i.je
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jf = shl nsw i32 %i.if, 6                    ; 5 uses
  %i.jg = sext i32 %i.jf to i64                   ; 19 uses
  %i.jh = add i32 %i.jf, 64
  %i.ji = sext i32 %i.jh to i64                   ; 7 uses
  %.0.off.i.i.i.i = add i32 %.096.i.i.i.i, 127
  %.not34.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not34.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %bb.ag
  %i.jj = load i8, ptr %i.ia, align 2, !tbaa !182, !range !88, !noundef !89
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %iter.check, label %.lr.ph28.split.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph28.i.i.i.i.i
  %i.jl = or disjoint i64 %i.jg, 1
  %umax771 = call i64 @llvm.umax.i64(i64 %i.jl, i64 %i.ji) ; 2 uses
  %i.jm = sub i64 %umax771, %i.jg                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.jm, 8
  br i1 %min.iters.check, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.jn = or disjoint i64 %i.jg, 1
  %umax770 = call i64 @llvm.umax.i64(i64 %i.jn, i64 %i.ji)
  %i.jo = xor i64 %i.jg, -1
  %i.jp = add i64 %umax770, %i.jo                 ; 2 uses
  %i.jq = sext i32 %i.jf to i34                   ; 2 uses
  %i.jr = shl nsw i34 %i.jq, 2
  %i.js = trunc i64 %i.jp to i34
  %i.jt = add i34 %i.jq, %i.js
  %i.ju = shl i34 %i.jt, 2
  %i.jv = icmp slt i34 %i.ju, %i.jr
  %i.jw = icmp ugt i64 %i.jp, 4294967295
  %i.jx = or i1 %i.jv, %i.jw
  br i1 %i.jx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check772 = icmp ult i64 %i.jm, 32
  %i.jy = and i64 %umax771, 1                     ; 3 uses
  %n.vec781 = sub i64 %i.jm, %i.jy                ; 3 uses
  %i.jz = add i64 %n.vec781, %i.jg                ; 2 uses
  %i.ka = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2403, i64 0 ; 2 uses
  br i1 %min.iters.check772, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ki, %vector.body ], [ %i.ka, %vector.main.loop.iter.check ]
  %vec.phi773 = phi <8 x i32> [ %i.kj, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi774 = phi <8 x i32> [ %i.kk, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi775 = phi <8 x i32> [ %i.kl, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.kb = add nuw i64 %index, %i.jg
  %i.kc = shl i64 %i.kb, 32
  %i.kd = ashr exact i64 %i.kc, 30
  %i.ke = getelementptr inbounds i8, ptr %i.bj, i64 %i.kd ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 96
  %wide.load = load <8 x i32>, ptr %i.ke, align 4, !tbaa !66
  %wide.load776 = load <8 x i32>, ptr %i.kf, align 4, !tbaa !66
  %wide.load777 = load <8 x i32>, ptr %i.kg, align 4, !tbaa !66
  %wide.load778 = load <8 x i32>, ptr %i.kh, align 4, !tbaa !66
  %i.ki = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.kj = add <8 x i32> %wide.load776, %vec.phi773 ; 2 uses
  %i.kk = add <8 x i32> %wide.load777, %vec.phi774 ; 2 uses
  %i.kl = add <8 x i32> %wide.load778, %vec.phi775 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec781
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !773

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.kj, %i.ki
  %bin.rdx779 = add <8 x i32> %i.kk, %bin.rdx
  %bin.rdx780 = add <8 x i32> %i.kl, %bin.rdx779
  %i.kn = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx780) ; 2 uses
  %cmp.n = icmp eq i64 %i.jy, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index782 = phi i64 [ %index.next785, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi783 = phi <8 x i32> [ %i.ks, %vec.epilog.vector.body ], [ %i.ka, %vector.main.loop.iter.check ]
  %i.ko = add nuw i64 %index782, %i.jg
  %i.kp = shl i64 %i.ko, 32
  %i.kq = ashr exact i64 %i.kp, 30
  %i.kr = getelementptr inbounds i8, ptr %i.bj, i64 %i.kq
  %wide.load784 = load <8 x i32>, ptr %i.kr, align 4, !tbaa !66
  %i.ks = add <8 x i32> %wide.load784, %vec.phi783 ; 2 uses
  %index.next785 = add nuw i64 %index782, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next785, %n.vec781
  br i1 %i.kt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !774

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ku = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ks) ; 2 uses
  %cmp.n786 = icmp eq i64 %i.jy, 0
  br i1 %cmp.n786, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %i.kn, %middle.block ], [ %.2403, %vector.scevcheck ], [ %.2403, %iter.check ], [ %i.ku, %vec.epilog.middle.block ]
  %.027.us.i.i.i.i.i.ph = phi i64 [ %i.jz, %middle.block ], [ %i.jg, %vector.scevcheck ], [ %i.jg, %iter.check ], [ %i.jz, %vec.epilog.middle.block ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i
  %i.kv = phi i32 [ %i.kz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i ], [ %.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader ]
  %.027.us.i.i.i.i.i = phi i64 [ %i.la, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i ], [ %.027.us.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i.preheader ] ; 2 uses
  %sext35.i.i.i.i.i = shl i64 %.027.us.i.i.i.i.i, 32
  %i.kw = ashr exact i64 %sext35.i.i.i.i.i, 30
  %i.kx = getelementptr inbounds i8, ptr %i.bj, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !66
  %i.kz = add nsw i32 %i.ky, %i.kv                ; 2 uses
  %i.la = add nuw i64 %.027.us.i.i.i.i.i, 1       ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.ji
  br i1 %i.lb, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i57.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !775

.lr.ph28.split.i.i.i.i.i:                         ; preds = %.lr.ph28.i.i.i.i.i
  %i.lc = load i8, ptr %i.id, align 1, !tbaa !183, !range !88, !noundef !89
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader, label %iter.check814

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader: ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.le = load i32, ptr %i.ic, align 8, !tbaa !185
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !66
  %i.li = or disjoint i64 %i.jg, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.li, i64 %i.ji)
  %i.lj = trunc nsw i64 %umax to i32
  %i.lk = sub i32 %i.lj, %i.jf
  %i.ll = mul i32 %i.lh, %i.lk
  %i.lm = add i32 %.2403, %i.ll
  br label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i

iter.check814:                                    ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.ln = load ptr, ptr %i.ib, align 8, !tbaa !184 ; 41 uses
  %i.lo = or disjoint i64 %i.jg, 1
  %umax794 = call i64 @llvm.umax.i64(i64 %i.lo, i64 %i.ji) ; 2 uses
  %i.lp = sub i64 %umax794, %i.jg                 ; 3 uses
  %min.iters.check795 = icmp ult i64 %i.lp, 8
  br i1 %min.iters.check795, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i56.i.i.i.i.preheader, label %vector.scevcheck789

vector.scevcheck789:                              ; preds = %iter.check814
  %i.lq = or disjoint i64 %i.jg, 1
  %umax790 = call i64 @llvm.umax.i64(i64 %i.lq, i64 %i.ji)
  %i.lr = xor i64 %i.jg, -1
  %i.ls = add i64 %umax790, %i.lr                 ; 2 uses
  %i.lt = sext i32 %i.jf to i34                   ; 2 uses
  %i.lu = shl nsw i34 %i.lt, 2
  %i.lv = trunc i64 %i.ls to i34
  %i.lw = add i34 %i.lt, %i.lv
  %i.lx = shl i34 %i.lw, 2
  %i.ly = icmp slt i34 %i.lx, %i.lu
  %i.lz = icmp ugt i64 %i.ls, 4294967295
  %i.ma = or i1 %i.ly, %i.lz
  br i1 %i.ma, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i56.i.i.i.i.preheader, label %vector.main.loop.iter.check796

vector.main.loop.iter.check796:                   ; preds = %vector.scevcheck789
  %min.iters.check797 = icmp ult i64 %i.lp, 32
  %i.mb = and i64 %umax794, 1                     ; 3 uses
  %n.vec819 = sub i64 %i.lp, %i.mb                ; 3 uses
  %i.mc = add i64 %n.vec819, %i.jg                ; 2 uses
  %i.md = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2403, i64 0 ; 2 uses
  br i1 %min.iters.check797, label %vec.epilog.vector.body820, label %vector.body800

vector.body800:                                   ; preds = %vector.main.loop.iter.check796, %vector.body800
  %index801 = phi i64 [ %index.next806, %vector.body800 ], [ 0, %vector.main.loop.iter.check796 ] ; 2 uses
  %vec.phi802 = phi <8 x i32> [ %i.xg, %vector.body800 ], [ %i.md, %vector.main.loop.iter.check796 ]
  %vec.phi803 = phi <8 x i32> [ %i.xh, %vector.body800 ], [ zeroinitializer, %vector.main.loop.iter.check796 ]
  %vec.phi804 = phi <8 x i32> [ %i.xi, %vector.body800 ], [ zeroinitializer, %vector.main.loop.iter.check796 ]
  %vec.phi805 = phi <8 x i32> [ %i.xj, %vector.body800 ], [ zeroinitializer, %vector.main.loop.iter.check796 ]
  %i.me = add nuw i64 %index801, %i.jg            ; 32 uses
  %i.mf = shl i64 %i.me, 32
  %i.mg = shl i64 %i.me, 32
  %i.mh = shl i64 %i.me, 32
  %i.mi = shl i64 %i.me, 32
  %i.mj = shl i64 %i.me, 32
  %i.mk = shl i64 %i.me, 32
  %i.ml = shl i64 %i.me, 32
  %i.mm = shl i64 %i.me, 32
  %i.mn = shl i64 %i.me, 32
  %i.mo = shl i64 %i.me, 32
  %i.mp = shl i64 %i.me, 32
  %i.mq = shl i64 %i.me, 32
  %i.mr = shl i64 %i.me, 32
  %i.ms = shl i64 %i.me, 32
  %i.mt = shl i64 %i.me, 32
  %i.mu = shl i64 %i.me, 32
  %i.mv = shl i64 %i.me, 32
  %i.mw = shl i64 %i.me, 32
  %i.mx = shl i64 %i.me, 32
  %i.my = shl i64 %i.me, 32
  %i.mz = shl i64 %i.me, 32
  %i.na = shl i64 %i.me, 32
  %i.nb = shl i64 %i.me, 32
  %i.nc = shl i64 %i.me, 32
  %i.nd = shl i64 %i.me, 32
  %i.ne = shl i64 %i.me, 32
  %i.nf = shl i64 %i.me, 32
  %i.ng = shl i64 %i.me, 32
  %i.nh = shl i64 %i.me, 32
  %i.ni = shl i64 %i.me, 32
  %i.nj = shl i64 %i.me, 32
  %i.nk = shl i64 %i.me, 32
  %i.nl = ashr exact i64 %i.mf, 30
  %i.nm = ashr exact i64 %i.mg, 30
  %i.nn = ashr exact i64 %i.mh, 30
  %i.no = ashr exact i64 %i.mi, 30
  %i.np = ashr exact i64 %i.mj, 30
  %i.nq = ashr exact i64 %i.mk, 30
  %i.nr = ashr exact i64 %i.ml, 30
  %i.ns = ashr exact i64 %i.mm, 30
  %i.nt = ashr exact i64 %i.mn, 30
  %i.nu = ashr exact i64 %i.mo, 30
  %i.nv = ashr exact i64 %i.mp, 30
  %i.nw = ashr exact i64 %i.mq, 30
  %i.nx = ashr exact i64 %i.mr, 30
  %i.ny = ashr exact i64 %i.ms, 30
  %i.nz = ashr exact i64 %i.mt, 30
  %i.oa = ashr exact i64 %i.mu, 30
  %i.ob = ashr exact i64 %i.mv, 30
  %i.oc = ashr exact i64 %i.mw, 30
  %i.od = ashr exact i64 %i.mx, 30
  %i.oe = ashr exact i64 %i.my, 30
  %i.of = ashr exact i64 %i.mz, 30
  %i.og = ashr exact i64 %i.na, 30
  %i.oh = ashr exact i64 %i.nb, 30
  %i.oi = ashr exact i64 %i.nc, 30
  %i.oj = ashr exact i64 %i.nd, 30
  %i.ok = ashr exact i64 %i.ne, 30
  %i.ol = ashr exact i64 %i.nf, 30
  %i.om = ashr exact i64 %i.ng, 30
  %i.on = ashr exact i64 %i.nh, 30
  %i.oo = ashr exact i64 %i.ni, 30
  %i.op = ashr exact i64 %i.nj, 30
  %i.oq = ashr exact i64 %i.nk, 30
  %i.or = getelementptr inbounds i8, ptr %i.ln, i64 %i.nl
  %i.os = getelementptr i8, ptr %i.ln, i64 %i.nm
  %i.ot = getelementptr i8, ptr %i.os, i64 4
  %i.ou = getelementptr i8, ptr %i.ln, i64 %i.nn
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %i.ow = getelementptr i8, ptr %i.ln, i64 %i.no
  %i.ox = getelementptr i8, ptr %i.ow, i64 12
  %i.oy = getelementptr i8, ptr %i.ln, i64 %i.np
  %i.oz = getelementptr i8, ptr %i.oy, i64 16
  %i.pa = getelementptr i8, ptr %i.ln, i64 %i.nq
  %i.pb = getelementptr i8, ptr %i.pa, i64 20
  %i.pc = getelementptr i8, ptr %i.ln, i64 %i.nr
  %i.pd = getelementptr i8, ptr %i.pc, i64 24
  %i.pe = getelementptr i8, ptr %i.ln, i64 %i.ns
  %i.pf = getelementptr i8, ptr %i.pe, i64 28
  %i.pg = getelementptr i8, ptr %i.ln, i64 %i.nt
  %i.ph = getelementptr i8, ptr %i.pg, i64 32
  %i.pi = getelementptr i8, ptr %i.ln, i64 %i.nu
  %i.pj = getelementptr i8, ptr %i.pi, i64 36
  %i.pk = getelementptr i8, ptr %i.ln, i64 %i.nv
  %i.pl = getelementptr i8, ptr %i.pk, i64 40
  %i.pm = getelementptr i8, ptr %i.ln, i64 %i.nw
  %i.pn = getelementptr i8, ptr %i.pm, i64 44
  %i.po = getelementptr i8, ptr %i.ln, i64 %i.nx
  %i.pp = getelementptr i8, ptr %i.po, i64 48
  %i.pq = getelementptr i8, ptr %i.ln, i64 %i.ny
  %i.pr = getelementptr i8, ptr %i.pq, i64 52
  %i.ps = getelementptr i8, ptr %i.ln, i64 %i.nz
  %i.pt = getelementptr i8, ptr %i.ps, i64 56
  %i.pu = getelementptr i8, ptr %i.ln, i64 %i.oa
  %i.pv = getelementptr i8, ptr %i.pu, i64 60
  %i.pw = getelementptr i8, ptr %i.ln, i64 %i.ob
  %i.px = getelementptr i8, ptr %i.pw, i64 64
  %i.py = getelementptr i8, ptr %i.ln, i64 %i.oc
  %i.pz = getelementptr i8, ptr %i.py, i64 68
  %i.qa = getelementptr i8, ptr %i.ln, i64 %i.od
  %i.qb = getelementptr i8, ptr %i.qa, i64 72
  %i.qc = getelementptr i8, ptr %i.ln, i64 %i.oe
  %i.qd = getelementptr i8, ptr %i.qc, i64 76
  %i.qe = getelementptr i8, ptr %i.ln, i64 %i.of
  %i.qf = getelementptr i8, ptr %i.qe, i64 80
  %i.qg = getelementptr i8, ptr %i.ln, i64 %i.og
  %i.qh = getelementptr i8, ptr %i.qg, i64 84
  %i.qi = getelementptr i8, ptr %i.ln, i64 %i.oh
  %i.qj = getelementptr i8, ptr %i.qi, i64 88
  %i.qk = getelementptr i8, ptr %i.ln, i64 %i.oi
  %i.ql = getelementptr i8, ptr %i.qk, i64 92
  %i.qm = getelementptr i8, ptr %i.ln, i64 %i.oj
  %i.qn = getelementptr i8, ptr %i.qm, i64 96
  %i.qo = getelementptr i8, ptr %i.ln, i64 %i.ok
  %i.qp = getelementptr i8, ptr %i.qo, i64 100
  %i.qq = getelementptr i8, ptr %i.ln, i64 %i.ol
  %i.qr = getelementptr i8, ptr %i.qq, i64 104
  %i.qs = getelementptr i8, ptr %i.ln, i64 %i.om
  %i.qt = getelementptr i8, ptr %i.qs, i64 108
  %i.qu = getelementptr i8, ptr %i.ln, i64 %i.on
  %i.qv = getelementptr i8, ptr %i.qu, i64 112
  %i.qw = getelementptr i8, ptr %i.ln, i64 %i.oo
  %i.qx = getelementptr i8, ptr %i.qw, i64 116
  %i.qy = getelementptr i8, ptr %i.ln, i64 %i.op
  %i.qz = getelementptr i8, ptr %i.qy, i64 120
  %i.ra = getelementptr i8, ptr %i.ln, i64 %i.oq
  %i.rb = getelementptr i8, ptr %i.ra, i64 124
  %i.rc = load i32, ptr %i.or, align 4, !tbaa !66
  %i.rd = load i32, ptr %i.ot, align 4, !tbaa !66
  %i.re = load i32, ptr %i.ov, align 4, !tbaa !66
  %i.rf = load i32, ptr %i.ox, align 4, !tbaa !66
  %i.rg = load i32, ptr %i.oz, align 4, !tbaa !66
  %i.rh = load i32, ptr %i.pb, align 4, !tbaa !66
  %i.ri = load i32, ptr %i.pd, align 4, !tbaa !66
  %i.rj = load i32, ptr %i.pf, align 4, !tbaa !66
  %i.rk = load i32, ptr %i.ph, align 4, !tbaa !66
  %i.rl = load i32, ptr %i.pj, align 4, !tbaa !66
  %i.rm = load i32, ptr %i.pl, align 4, !tbaa !66
  %i.rn = load i32, ptr %i.pn, align 4, !tbaa !66
  %i.ro = load i32, ptr %i.pp, align 4, !tbaa !66
  %i.rp = load i32, ptr %i.pr, align 4, !tbaa !66
  %i.rq = load i32, ptr %i.pt, align 4, !tbaa !66
  %i.rr = load i32, ptr %i.pv, align 4, !tbaa !66
  %i.rs = load i32, ptr %i.px, align 4, !tbaa !66
  %i.rt = load i32, ptr %i.pz, align 4, !tbaa !66
  %i.ru = load i32, ptr %i.qb, align 4, !tbaa !66
  %i.rv = load i32, ptr %i.qd, align 4, !tbaa !66
  %i.rw = load i32, ptr %i.qf, align 4, !tbaa !66
  %i.rx = load i32, ptr %i.qh, align 4, !tbaa !66
  %i.ry = load i32, ptr %i.qj, align 4, !tbaa !66
  %i.rz = load i32, ptr %i.ql, align 4, !tbaa !66
  %i.sa = load i32, ptr %i.qn, align 4, !tbaa !66
  %i.sb = load i32, ptr %i.qp, align 4, !tbaa !66
  %i.sc = load i32, ptr %i.qr, align 4, !tbaa !66
  %i.sd = load i32, ptr %i.qt, align 4, !tbaa !66
  %i.se = load i32, ptr %i.qv, align 4, !tbaa !66
  %i.sf = load i32, ptr %i.qx, align 4, !tbaa !66
end_hunk_1
