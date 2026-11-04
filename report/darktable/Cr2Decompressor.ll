Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2Decompressor?download=true
inline.NumInlined: 634
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi1EEEjv:bb.a
  %i.jy = ashr i32 %i.jx, 9                       ; 2 uses
  %i.jz = and i32 %i.jx, 255                      ; 4 uses
  %i.ka = icmp samesign ult i32 %i.jz, 33
  call void @llvm.assume(i1 %i.ka)
  %i.kb = sub nuw nsw i32 %.sroa.18.7, %i.jz      ; 3 uses
  %i.kc = zext nneg i32 %i.jz to i64
  %i.kd = shl i64 %.sroa.0124.7, %i.kc            ; 3 uses
  %i.ke = and i32 %i.jx, 256
  %.not.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i, label %bb.ab, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.ab:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i = icmp eq i32 %i.jx, 0
  br i1 %.not17.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kf = trunc i32 %i.jy to i8                   ; 2 uses
  %i.kg = icmp ne i8 %i.kf, 0
  call void @llvm.assume(i1 %i.kg)
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.kh = icmp eq i32 %i.jz, 0
  call void @llvm.assume(i1 %i.kh)
  %i.ki = add nsw i32 %i.kb, -11                  ; 2 uses
  %i.kj = shl i64 %i.kd, 11                       ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !179
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !180
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = ashr exact i64 %i.kq, 2
  %i.ks = add nsw i64 %i.kr, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.js to i16 ; 2 uses
  %i.kt = icmp ugt i64 %i.ks, 11
  br i1 %i.kt, label %.lr.ph.i70, label %.critedge.i

.lr.ph.i70:                                       ; preds = %bb.ad
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gq, i64 80
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !183
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge2.i, %.lr.ph.i70
  %.sroa.18.9 = phi i32 [ %i.ki, %.lr.ph.i70 ], [ %i.lf, %.critedge2.i ] ; 4 uses
  %.sroa.0124.9 = phi i64 [ %i.kj, %.lr.ph.i70 ], [ %i.lg, %.critedge2.i ] ; 3 uses
  %i.kw = phi i64 [ 11, %.lr.ph.i70 ], [ %i.ll, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i70 ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i70 ], [ %i.lk, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.jt, %.lr.ph.i70 ], [ %i.lj, %.critedge2.i ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !157 ; 2 uses
  %i.kz = icmp eq i16 %i.ky, -1
  %i.la = icmp ult i16 %i.ky, %.sroa.0.021.i
  %or.cond.i = select i1 %i.kz, i1 true, i1 %i.la
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ae
  %i.lb = icmp samesign ult i32 %.sroa.18.9, 65
  call void @llvm.assume(i1 %i.lb)
  %i.lc = icmp ne i32 %.sroa.18.9, 0
  call void @llvm.assume(i1 %i.lc)
  %i.ld = lshr i64 %.sroa.0124.9, 63
  %i.le = trunc nuw nsw i64 %i.ld to i32
  %i.lf = add nsw i32 %.sroa.18.9, -1             ; 2 uses
  %i.lg = shl i64 %.sroa.0124.9, 1                ; 2 uses
  %i.lh = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.li = and i32 %i.lh, 131070
  %i.lj = or disjoint i32 %i.li, %i.le            ; 3 uses
  %i.lk = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.lj to i16           ; 2 uses
  %i.ll = zext i8 %i.lk to i64                    ; 3 uses
  %i.lm = icmp ugt i64 %i.ks, %i.ll
  br i1 %i.lm, label %bb.ae, label %.critedge.i.loopexit, !llvm.loop !3

.critedge.i.loopexit:                             ; preds = %bb.ae, %.critedge2.i
  %.sroa.18.8.ph = phi i32 [ %i.lf, %.critedge2.i ], [ %.sroa.18.9, %bb.ae ]
  %.sroa.0124.8.ph = phi i64 [ %i.lg, %.critedge2.i ], [ %.sroa.0124.9, %bb.ae ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.lj, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ae ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.lk, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ae ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ae ]
  %.lcssa17.i.ph = phi i64 [ %i.ll, %.critedge2.i ], [ %i.kw, %bb.ae ]
  %i.ln = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ad
  %.sroa.18.8 = phi i32 [ %i.ki, %bb.ad ], [ %.sroa.18.8.ph, %.critedge.i.loopexit ]
  %.sroa.0124.8 = phi i64 [ %i.kj, %bb.ad ], [ %.sroa.0124.8.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.jt, %bb.ad ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ad ], [ %i.ln, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ad ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ad ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.lo = icmp ult i64 %i.ks, %.lcssa17.i
  br i1 %i.lo, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gq, i64 80
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !183
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %.lcssa17.i
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !157
  %i.lt = icmp ult i16 %i.ls, %.sroa.0.0.lcssa.i
  br i1 %i.lt, label %bb.ag, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.ag:                                            ; preds = %bb.af, %.critedge.i
  %i.lu = and i32 %.sroa.0.0.in.lcssa.i, 65535
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.lu, i32 noundef %.sroa.8.0.lcssa.i) #13
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.af
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gq, i64 104
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !183
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %.lcssa17.i
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !157
  %i.lz = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.tr.i = zext i16 %i.ly to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.ma = zext i32 %.narrow.i to i64
  %i.mb = load ptr, ptr %i.lz, align 8, !tbaa !184
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ma
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !150
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.ac
  %.0235 = phi i8 [ %i.md, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.kf, %bb.ac ] ; 5 uses
  %.sroa.18.5 = phi i32 [ %.sroa.18.8, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.kb, %bb.ac ] ; 8 uses
  %.sroa.0124.5 = phi i64 [ %.sroa.0124.8, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.kd, %bb.ac ] ; 6 uses
  %i.me = icmp ult i8 %.0235, 17
  call void @llvm.assume(i1 %i.me)
  switch i8 %.0235, label %bb.ak [
    i8 16, label %bb.ai
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.mf = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !185, !range !121, !noundef !122
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.aj, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.mi = icmp samesign ult i32 %.sroa.18.5, 65
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp samesign ugt i32 %.sroa.18.5, 15
  call void @llvm.assume(i1 %i.mj)
  %i.mk = add nsw i32 %.sroa.18.5, -16
  %i.ml = shl i64 %.sroa.0124.5, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.ak:                                            ; preds = %bb.ah
  %i.mm = zext nneg i8 %.0235 to i32              ; 4 uses
  %i.mn = icmp samesign ult i32 %.sroa.18.5, 65
  call void @llvm.assume(i1 %i.mn)
  %i.mo = icmp ne i8 %.0235, 0
  call void @llvm.assume(i1 %i.mo)
  %i.mp = icmp samesign uge i32 %.sroa.18.5, %i.mm
  call void @llvm.assume(i1 %i.mp)
  %i.mq = sub nuw nsw i32 64, %i.mm
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = lshr i64 %.sroa.0124.5, %i.mr
  %i.mt = trunc nuw nsw i64 %i.ms to i32
  %i.mu = sub nuw nsw i32 %.sroa.18.5, %i.mm
  %i.mv = zext nneg i8 %.0235 to i64
  %i.mw = shl i64 %.sroa.0124.5, %i.mv
  %i.mx = icmp sgt i64 %.sroa.0124.5, -1
  %notmask.i.i = shl nsw i32 -1, %i.mm
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.my = select i1 %i.mx, i32 %.neg.i.i, i32 0
  %.0.i.i = add nsw i32 %i.my, %i.mt
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.18.6 = phi i32 [ %i.kb, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.mu, %bb.ak ], [ %i.mk, %bb.aj ], [ %.sroa.18.5, %bb.ai ], [ %.sroa.18.5, %bb.ah ] ; 3 uses
  %.sroa.0124.6 = phi i64 [ %i.kd, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.mw, %bb.ak ], [ %i.ml, %bb.aj ], [ %.sroa.0124.5, %bb.ai ], [ %.sroa.0124.5, %bb.ah ] ; 3 uses
  %.0.i = phi i32 [ %i.jy, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i, %bb.ak ], [ -32768, %bb.aj ], [ -32768, %bb.ai ], [ 0, %bb.ah ]
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.go ; 2 uses
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !157
  %i.nb = trunc i32 %.0.i to i16
  %i.nc = add i16 %i.na, %i.nb                    ; 2 uses
  store i16 %i.nc, ptr %i.mz, align 2, !tbaa !157
  %i.nd = add nuw nsw i64 %indvars.iv, %i.gk      ; 2 uses
  %i.ne = icmp samesign ult i64 %i.nd, %i.dl
  call void @llvm.assume(i1 %i.ne)
  call void @llvm.assume(i1 %i.fn)
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.nd
  store i16 %i.nc, ptr %i.nf, align 2, !tbaa !157
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.k, label %bb.l, !llvm.loop !283
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi2ELi1ELi1EEEjv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array.111", align 8   ; 6 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %2 = alloca %"struct.std::pair", align 4        ; 4 uses
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %4 = alloca %"struct.std::array.120", align 4   ; 8 uses
  %.sroa.0.sroa.0 = alloca i16, align 4           ; 5 uses
  %.sroa.0.sroa.5 = alloca i16, align 2           ; 5 uses
  %5 = alloca %"class.rawspeed::Cr2VerticalOutputStripIterator", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152, !noalias !311 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !105, !noalias !311
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153, !noalias !311
  %i.h = mul nsw i32 %i.g, %i.e                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154, !noalias !311
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !155, !noalias !311
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123  ; 9 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127, !nonnull !122, !align !128
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127, !nonnull !122, !align !128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33   ; 3 uses
  %i.w = icmp eq ptr %i.q, %i.v
  br i1 %i.w, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = ptrtoaddr ptr %i.q to i64
  %i.z = add i64 %i.x, -16
  %i.aa = sub i64 %i.z, %i.y                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.aa, 64
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check453 = icmp ult i64 %i.aa, 256
  br i1 %min.iters.check453, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 15                       ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 16, i64 %i.ad      ; 2 uses
  %n.vec = sub nsw i64 %i.ac, %i.af               ; 4 uses
  %i.ag = shl nsw i64 %n.vec, 1
  %i.ah = getelementptr i8, ptr %4, i64 %i.ag
  %i.ai = shl i64 %n.vec, 4
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.ak
  %i.al = shl i64 %index, 4
  %next.gep454 = getelementptr i8, ptr %i.q, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep454, i64 8
  %wide.vec = load <128 x i16>, ptr %i.am, align 8, !tbaa !156
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !294

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.af, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ao = and i64 %i.ac, 3                        ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = select i1 %i.ap, i64 4, i64 %i.ao
  %n.vec455 = sub nsw i64 %i.ac, %i.aq            ; 3 uses
  %i.ar = shl nsw i64 %n.vec455, 1
  %i.as = getelementptr i8, ptr %4, i64 %i.ar
  %i.at = shl i64 %n.vec455, 4
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index456 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next461, %vec.epilog.vector.body ] ; 3 uses
  %i.av = shl i64 %index456, 1
  %next.gep457 = getelementptr i8, ptr %4, i64 %i.av
  %i.aw = shl i64 %index456, 4
  %next.gep458 = getelementptr i8, ptr %i.q, i64 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep458, i64 8
  %wide.vec459 = load <32 x i16>, ptr %i.ax, align 8, !tbaa !156
  %strided.vec460 = shufflevector <32 x i16> %wide.vec459, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec460, ptr %next.gep457, align 2, !tbaa !157
  %index.next461 = add nuw i64 %index456, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next461, %n.vec455
  br i1 %i.ay, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !295

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !156
  store i16 %i.ba, ptr %.07.i.i, align 2, !tbaa !157
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.bd = icmp eq ptr %i.bb, %i.v
  br i1 %i.bd, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !296

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i32, ptr %4, align 4
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit: ; preds = %bb.a, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i
  %i.be = phi i32 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i ], [ undef, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.0.sroa.0.0.extract.trunc482 = trunc i32 %i.be to i16
  store i16 %.sroa.0.sroa.0.0.extract.trunc482, ptr %.sroa.0.sroa.0, align 4
  %.sroa.0.sroa.5.0.extract.shift483 = lshr i32 %i.be, 16
  %.sroa.0.sroa.5.0.extract.trunc484 = trunc nuw i32 %.sroa.0.sroa.5.0.extract.shift483 to i16
  store i16 %.sroa.0.sroa.5.0.extract.trunc484, ptr %.sroa.0.sroa.5, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.033.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.234.0.copyload = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !19 ; 7 uses
  %i.bg = icmp sgt i32 %.sroa.234.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ult i32 %.sroa.234.0.copyload, 8
  br i1 %i.bh, label %bb.b, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #13
  unreachable

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16, !noalias !312 ; 7 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !18, !noalias !312 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.bo = icmp ne i32 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !18, !noalias !313 ; 7 uses
  %i.br = load i32, ptr %i.bn, align 4, !noalias !314
  %i.bs = icmp sgt i32 %i.bq, -1
  tail call void @llvm.assume(i1 %i.bs), !noalias !315
  %i.bt = icmp sgt i32 %i.bm, -1
  tail call void @llvm.assume(i1 %i.bt), !noalias !315
  %.sroa.speculated.i.i.i.i136.i = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bq) ; 5 uses
  %i.bu = icmp samesign ule i32 %i.bm, %i.bq      ; 4 uses
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bj, %i.bv
  %i.bx = icmp eq i32 %.sroa.speculated.i.i.i.i136.i, 0
  %i.by = or i1 %i.bu, %i.bx
  %i.bz = and i1 %i.by, %i.bw
  br i1 %i.bz, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %.sroa.1951.sroa.12.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.1951.sroa.0.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.14.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.lcssa.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa126.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cp, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa.i = phi i1 [ %i.bu, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cr, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.pre.i.i = add nuw nsw i32 %.sroa.14.0.i.lcssa.i, 1
  %.pre202.i.i = add nuw nsw i32 %.sroa.speculated.i.i.i.i.lcssa.i, %.sroa.1951.sroa.12.0.i.lcssa.i
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i
  %i.ca = phi i1 [ %i.cr, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %i.bu, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %i.cb = phi i32 [ %i.cp, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.speculated.i.i.i.i140.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.14.0.i139.i = phi i32 [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.0.0.i138.i = phi i32 [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.12.0.i137.i = phi i32 [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.cc = add nuw nsw i32 %.sroa.14.0.i139.i, 1   ; 3 uses
  %i.cd = icmp eq i32 %i.cc, %i.bj
  %.0.in.v.i.i.i.i.i.i = select i1 %i.cd, i64 8, i64 4
  %.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.in.v.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i, align 4, !tbaa !19, !noalias !314 ; 2 uses
  %i.ce = add nsw i32 %.0.i.i.i.i.i.i, %.sroa.1951.sroa.0.0.i138.i
  %i.cf = add nuw nsw i32 %.sroa.1951.sroa.12.0.i137.i, %.sroa.speculated.i.i.i.i140.i ; 2 uses
  %i.cg = icmp eq i32 %i.ce, %i.br
  %i.ch = icmp eq i32 %i.cf, %i.bq                ; 3 uses
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i: ; preds = %.lr.ph.i
  %spec.select.i.i = select i1 %i.ca, i32 0, i32 %i.cb ; 2 uses
  %spec.select199.i.i = select i1 %i.ca, i32 %i.cc, i32 %.sroa.14.0.i139.i ; 4 uses
  %.sroa.1951.sroa.12.1.i.i = select i1 %i.ch, i32 0, i32 %i.cf ; 3 uses
  %i.cj = select i1 %i.ch, i32 %.0.i.i.i.i.i.i, i32 0
  %.sroa.1951.sroa.0.1.i.i = add nsw i32 %i.cj, %.sroa.1951.sroa.0.0.i138.i ; 2 uses
  %i.ck = icmp slt i32 %spec.select199.i.i, %i.bj
  tail call void @llvm.assume(i1 %i.ck), !noalias !315
  %i.cl = sub nsw i32 %i.bq, %.sroa.1951.sroa.12.1.i.i ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  tail call void @llvm.assume(i1 %i.cm), !noalias !315
  %i.cn = sub nsw i32 %i.bm, %spec.select.i.i     ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  tail call void @llvm.assume(i1 %i.co), !noalias !315
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.cl) ; 3 uses
  %i.cp = add nuw nsw i32 %.sroa.speculated.i.i.i.i.i, %spec.select.i.i ; 5 uses
  %i.cq = icmp sle i32 %i.cp, %i.bm
  tail call void @llvm.assume(i1 %i.cq), !noalias !315
  %i.cr = icmp eq i32 %i.cp, %i.bm                ; 4 uses
  %i.cs = zext i1 %i.cr to i32
  %.sroa.13176.1.i.i = add nuw nsw i32 %spec.select199.i.i, %i.cs
  %i.ct = icmp eq i32 %.sroa.13176.1.i.i, %i.bj
  %i.cu = icmp eq i32 %i.cp, 0
  %i.cv = or i1 %i.cr, %i.cu
  %i.cw = and i1 %i.cv, %i.ct
  br i1 %i.cw, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i, !llvm.loop !0

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit: ; preds = %.lr.ph.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i
  %.sroa.1951.sroa.0.0.i132.i = phi i32 [ %.sroa.1951.sroa.0.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.1951.sroa.0.0.i138.i, %.lr.ph.i ]
  %.sroa.14.0.i130.i = phi i32 [ %.sroa.14.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.14.0.i139.i, %.lr.ph.i ]
  %i.cx = phi i32 [ %.lcssa126.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cb, %.lr.ph.i ]
  %i.cy = phi i1 [ %.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %.pre-phi203.i.i = phi i32 [ %.pre202.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.bq, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %i.cz = icmp eq i32 %.pre-phi.i.i, %i.bj
  %.0.in.v.i.i.i.i.i1.i.i = select i1 %i.cz, i64 8, i64 4
  %.0.in.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.in.v.i.i.i.i.i1.i.i
  %.0.i.i.i.i.i3.i.i = load i32, ptr %.0.in.i.i.i.i.i2.i.i, align 4, !tbaa !19, !noalias !314
  %spec.select200.i.i = select i1 %i.cy, i32 0, i32 %i.cx ; 4 uses
  %spec.select201.i.i = select i1 %i.cy, i32 %.pre-phi.i.i, i32 %.sroa.14.0.i130.i ; 4 uses
  %i.da = icmp eq i32 %.pre-phi203.i.i, %i.bq     ; 2 uses
  %.sroa.1951.sroa.12.2.i.i = select i1 %i.da, i32 0, i32 %.pre-phi203.i.i
  %i.db = select i1 %i.da, i32 %.0.i.i.i.i.i3.i.i, i32 0
  %.sroa.1951.sroa.0.2.i.i = add nsw i32 %i.db, %.sroa.1951.sroa.0.0.i132.i
  %.sroa.1951.sroa.12.0.insert.ext83.i.i = zext nneg i32 %.sroa.1951.sroa.12.2.i.i to i64
  %.sroa.1951.sroa.12.0.insert.shift84.i.i = shl nuw nsw i64 %.sroa.1951.sroa.12.0.insert.ext83.i.i, 32
  %.sroa.1951.sroa.0.0.insert.ext69.i.i = zext i32 %.sroa.1951.sroa.0.2.i.i to i64
  %.sroa.1951.sroa.0.0.insert.insert71.i.i = or disjoint i64 %.sroa.1951.sroa.12.0.insert.shift84.i.i, %.sroa.1951.sroa.0.0.insert.ext69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.bn, ptr %5, align 8, !tbaa !24
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.bm, ptr %.sroa.4105.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bi, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !22
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i32 0, ptr %.sroa.6108.0..sroa_idx, align 8, !tbaa !19
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !19
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i32 0, ptr %.sroa.8111.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.bn, ptr %.sroa.9113.0..sroa_idx, align 8, !tbaa !24
  %.sroa.10114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i32 %i.bm, ptr %.sroa.10114.0..sroa_idx, align 8, !tbaa !19
  %.sroa.11116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store ptr %i.bi, ptr %.sroa.11116.0..sroa_idx, align 8, !tbaa !22
  %.sroa.12117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i32 %spec.select201.i.i, ptr %.sroa.12117.0..sroa_idx, align 8, !tbaa !19
  %.sroa.13119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i.i, ptr %.sroa.13119.0..sroa_idx, align 8, !tbaa !19
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store i32 %spec.select200.i.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !19
  %i.dc = or i32 %spec.select201.i.i, %spec.select200.i.i
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %._crit_edge371.thread, label %.lr.ph370

._crit_edge371.thread:                            ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.c

.lr.ph370:                                        ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %invariant.op = add nsw i32 %i.h, -2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.df = add nuw nsw i32 %.sroa.234.0.copyload, 16
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.di = zext nneg i32 %i.h to i64
  br label %bb.d

._crit_edge371:                                   ; preds = %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.dj = icmp slt i32 %.sroa.63163.1.lcssa, 0
  %spec.select = select i1 %i.dj, i32 %.sroa.51153.1.lcssa, i32 %.sroa.63163.1.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge371, %._crit_edge371.thread
  %i.dk = phi i32 [ %spec.select, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.5)
  ret i32 %i.dk

bb.d:                                             ; preds = %.lr.ph370, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  %.0369 = phi i32 [ 0, %.lr.ph370 ], [ %.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0173.0368 = phi ptr [ %i.c, %.lr.ph370 ], [ %.sroa.0173.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.63163.0367 = phi i32 [ -1, %.lr.ph370 ], [ %.sroa.63163.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.51153.0366 = phi i32 [ 0, %.lr.ph370 ], [ %.sroa.51153.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0126.0365 = phi i64 [ 0, %.lr.ph370 ], [ %.sroa.0126.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.18.0364 = phi i32 [ 0, %.lr.ph370 ], [ %.sroa.18.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.0233363 = phi i32 [ 0, %.lr.ph370 ], [ %.1234.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %3, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %.sroa.0.0.copyload.i55 = load i64, ptr %3, align 8, !tbaa !19 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i56, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.sroa.088.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i55, 32
  %.sroa.088.4.extract.trunc = trunc nuw i64 %.sroa.088.4.extract.shift to i32 ; 2 uses
  %.sroa.7.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.dl = add nsw i32 %.sroa.7.12.extract.trunc, %.sroa.088.4.extract.trunc
  %.not338 = icmp eq i64 %.sroa.7.12.extract.shift, 0
  br i1 %.not338, label %._crit_edge349, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.d
  %.sroa.088.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i55 to i32 ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32 ; 2 uses
  %i.dm = add nsw i32 %.sroa.7.8.extract.trunc, %.sroa.088.0.extract.trunc ; 2 uses
  %.not49322 = icmp eq i32 %.sroa.7.8.extract.trunc, 0
  br i1 %.not49322, label %._crit_edge349, label %.lr.ph348.split

.lr.ph348.split:                                  ; preds = %.lr.ph348
  %i.dn = load i32, ptr %i.de, align 4, !tbaa !120 ; 3 uses
  br label %.lr.ph

._crit_edge349:                                   ; preds = %._crit_edge, %.lr.ph348, %bb.d
  %.1234.lcssa = phi i32 [ %.0233363, %bb.d ], [ %.0233363, %.lr.ph348 ], [ %.4.lcssa, %._crit_edge ]
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0364, %bb.d ], [ %.sroa.18.0364, %.lr.ph348 ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.sroa.0126.1.lcssa = phi i64 [ %.sroa.0126.0365, %bb.d ], [ %.sroa.0126.0365, %.lr.ph348 ], [ %.sroa.0126.3.lcssa, %._crit_edge ]
  %.sroa.51153.1.lcssa = phi i32 [ %.sroa.51153.0366, %bb.d ], [ %.sroa.51153.0366, %.lr.ph348 ], [ %.sroa.51153.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.63163.1.lcssa = phi i32 [ %.sroa.63163.0367, %bb.d ], [ %.sroa.63163.0367, %.lr.ph348 ], [ %i.fn, %._crit_edge ] ; 3 uses
  %.sroa.0173.1.lcssa = phi ptr [ %.sroa.0173.0368, %bb.d ], [ %.sroa.0173.0368, %.lr.ph348 ], [ %.sroa.0173.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0369, %bb.d ], [ %.0369, %.lr.ph348 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %i.do = load i32, ptr %i.dg, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.do, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !167   ; 2 uses
  %.pre396 = load i32, ptr %.sroa.4105.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre397 = load ptr, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre398 = load i32, ptr %.sroa.6108.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre399 = load i32, ptr %.sroa.8111.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %._crit_edge349
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre397, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %.lr.ph.i.i59
  %i.dr = phi i32 [ %.pre3.i.i, %.lr.ph.i.i59 ], [ %i.eh, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %i.ds = phi i32 [ %.pre398, %.lr.ph.i.i59 ], [ %i.em, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 4 uses
  %i.dt = phi i32 [ %.pre399, %.lr.ph.i.i59 ], [ %i.en, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %.02.i.i = phi i64 [ %i.dp, %.lr.ph.i.i59 ], [ %i.du, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.du = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dv = icmp slt i32 %i.ds, %i.dr
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i32 %i.ds, 1                ; 3 uses
  %i.dx = icmp eq i32 %i.dw, %i.dr
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.dx, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre397, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.dy = load i64, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.dy, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.dz = load i32, ptr %i.dq, align 4, !tbaa !18
  %i.ea = sub nsw i32 %i.dz, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, -1
  call void @llvm.assume(i1 %i.eb)
  %i.ec = sub nsw i32 %.pre396, %i.dt             ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  call void @llvm.assume(i1 %i.ed)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.ea) ; 2 uses
  %i.ee = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dt ; 5 uses
  store i32 %i.ee, ptr %.sroa.8111.0..sroa_idx, align 8, !tbaa !171
  %i.ef = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.ef to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.dy, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !19
  %i.eg = icmp sgt i32 %i.ee, -1
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i32, ptr %.pre397, align 4, !tbaa !16 ; 2 uses
  %i.ei = icmp slt i32 %i.ds, %i.eh
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp sle i32 %i.ee, %.pre396
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp eq i32 %i.ee, %.pre396
  %i.el = trunc i64 %i.dy to i32
  br i1 %i.ek, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dw, ptr %.sroa.6108.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8111.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.em = phi i32 [ %i.dw, %bb.f ], [ %i.ds, %bb.e ] ; 2 uses
  %i.en = phi i32 [ 0, %bb.f ], [ %i.ee, %bb.e ]  ; 2 uses
  %i.eo = load i32, ptr %i.dq, align 4, !tbaa !18
  %i.ep = icmp eq i32 %i.ef, %i.eo
  br i1 %i.ep, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.dh, align 4, !tbaa !172
  %i.eq = add nsw i32 %.0.i.i.i.i.i.i.i, %i.el
  store i32 %i.eq, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %._crit_edge349
  %i.er = phi i32 [ %.pre399, %._crit_edge349 ], [ %i.en, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.es = phi i32 [ %.pre398, %._crit_edge349 ], [ %i.em, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.et = load ptr, ptr %.sroa.9113.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.eu = icmp eq ptr %i.et, %i.bn
  call void @llvm.assume(i1 %i.eu)
  %i.ev = load i32, ptr %.sroa.10114.0..sroa_idx, align 8, !tbaa !168
  %i.ew = icmp eq i32 %i.ev, %i.bm
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load ptr, ptr %.sroa.11116.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.ey = icmp eq ptr %i.ex, %i.bi
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i32, ptr %.sroa.12117.0..sroa_idx, align 8, !tbaa !170
  %i.fa = icmp eq i32 %i.ez, %spec.select201.i.i
  %i.fb = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fc = icmp eq i32 %i.fb, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq ptr %.pre, %i.bn
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i32 %.pre396, %i.bm
  call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp eq ptr %.pre397, %i.bi
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp eq i32 %i.es, %spec.select201.i.i
  %i.fh = icmp eq i32 %i.er, %spec.select200.i.i
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %._crit_edge371, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph348.split, %._crit_edge
  %.1346 = phi i32 [ %.0369, %.lr.ph348.split ], [ %.3, %._crit_edge ]
  %.045345 = phi i32 [ %.sroa.088.4.extract.trunc, %.lr.ph348.split ], [ %i.fo, %._crit_edge ] ; 3 uses
  %.sroa.0173.1344 = phi ptr [ %.sroa.0173.0368, %.lr.ph348.split ], [ %.sroa.0173.3, %._crit_edge ]
  %.sroa.63163.1343 = phi i32 [ %.sroa.63163.0367, %.lr.ph348.split ], [ %i.fn, %._crit_edge ]
  %.sroa.51153.1342 = phi i32 [ %.sroa.51153.0366, %.lr.ph348.split ], [ %.sroa.51153.3.lcssa, %._crit_edge ]
  %.sroa.0126.1341 = phi i64 [ %.sroa.0126.0365, %.lr.ph348.split ], [ %.sroa.0126.3.lcssa, %._crit_edge ]
  %.sroa.18.1340 = phi i32 [ %.sroa.18.0364, %.lr.ph348.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1234339 = phi i32 [ %.0233363, %.lr.ph348.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fj = icmp samesign ult i32 %.045345, %i.j    ; 2 uses
  %i.fk = mul nuw nsw i32 %.045345, %i.m
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fl ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3236, %bb.j ], [ %i.gb, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2324, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0126.3.lcssa = phi i64 [ %.sroa.0126.2325, %bb.j ], [ %.sroa.0126.6, %bb.k ] ; 3 uses
  %.sroa.51153.3.lcssa = phi i32 [ %.sroa.51153.2326, %bb.j ], [ %.sroa.51153.5, %bb.k ] ; 3 uses
  %.sroa.63163.3.lcssa = phi i32 [ %.sroa.63163.2327, %bb.j ], [ %.sroa.63163.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046329, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fn = freeze i32 %.sroa.63163.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dm
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !307

._crit_edge:                                      ; preds = %.loopexit
  %i.fo = add nsw i32 %.045345, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fo, %i.dl
  br i1 %.not, label %._crit_edge349, label %.lr.ph, !llvm.loop !308

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2330 = phi i32 [ %.1346, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046329 = phi i32 [ %.sroa.088.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0173.2328 = phi ptr [ %.sroa.0173.1344, %.lr.ph ], [ %.sroa.0173.3, %.loopexit ] ; 2 uses
  %.sroa.63163.2327 = phi i32 [ %.sroa.63163.1343, %.lr.ph ], [ %i.fn, %.loopexit ] ; 2 uses
  %.sroa.51153.2326 = phi i32 [ %.sroa.51153.1342, %.lr.ph ], [ %.sroa.51153.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0126.2325 = phi i64 [ %.sroa.0126.1341, %.lr.ph ], [ %.sroa.0126.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2324 = phi i32 [ %.sroa.18.1340, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2235323 = phi i32 [ %.1234339, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.fp = icmp sge i32 %i.dn, %.2235323
  call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp eq i32 %i.dn, %.2235323
  br i1 %i.fq, label %.preheader238.preheader, label %bb.j

.preheader238.preheader:                          ; preds = %bb.i
  %6 = load i32, ptr %.sroa.0173.2328, align 2, !tbaa !157 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i32 %6 to i16
  store i16 %.sroa.0.sroa.0.0.extract.trunc, ptr %.sroa.0.sroa.0, align 4, !tbaa !157
  %.sroa.0.sroa.5.0.extract.shift = lshr i32 %6, 16
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.0.sroa.5.0.extract.shift to i16
  store i16 %.sroa.0.sroa.5.0.extract.trunc, ptr %.sroa.0.sroa.5, align 2, !tbaa !157
  call void @llvm.assume(i1 %i.fj)
  %i.fr = icmp samesign ule i32 %.046329, %i.h
  call void @llvm.assume(i1 %i.fr)
  %i.fs = shl nuw nsw i32 %.046329, 1             ; 2 uses
  %i.ft = icmp ule i32 %i.fs, %invariant.op
  call void @llvm.assume(i1 %i.ft)
  %i.fu = zext nneg i32 %i.fs to i64
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fu
  %i.fw = add nsw i32 %.2330, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader238.preheader, %bb.i
  %.3236 = phi i32 [ 0, %.preheader238.preheader ], [ %.2235323, %bb.i ] ; 3 uses
  %.sroa.0173.3 = phi ptr [ %i.fv, %.preheader238.preheader ], [ %.sroa.0173.2328, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.fw, %.preheader238.preheader ], [ %.2330, %bb.i ] ; 3 uses
  %i.fx = sub nsw i32 %i.dn, %.3236               ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  call void @llvm.assume(i1 %i.fy)
  %i.fz = add nsw i32 %i.fx, %.046329
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.fz, i32 %i.dm) ; 4 uses
  %.not50310 = icmp eq i32 %.046329, %.sroa.speculated
  br i1 %.not50310, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.ga = add i32 %.3236, %.sroa.speculated
  %i.gb = sub i32 %i.ga, %.046329
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147316 = phi i32 [ %i.ge, %bb.k ], [ %.046329, %.preheader.preheader ] ; 2 uses
  %.sroa.63163.3315 = phi i32 [ %.sroa.63163.5, %bb.k ], [ %.sroa.63163.2327, %.preheader.preheader ]
  %.sroa.51153.3314 = phi i32 [ %.sroa.51153.5, %bb.k ], [ %.sroa.51153.2326, %.preheader.preheader ]
  %.sroa.0126.3313 = phi i64 [ %.sroa.0126.6, %bb.k ], [ %.sroa.0126.2325, %.preheader.preheader ]
  %.sroa.18.3312 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2324, %.preheader.preheader ]
  %i.gc = shl nsw i32 %.147316, 1
  %i.gd = zext i32 %i.gc to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.ge = add nsw i32 %.147316, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.ge, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !309

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %7 = phi i1 [ true, %.preheader ], [ false, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0.sroa.0, %.preheader ], [ %.sroa.0.sroa.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 2 uses
  %indvars.iv.sroa.phi485.sroa.speculated = phi ptr [ %i.r, %.preheader ], [ %i.t, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %.sroa.63163.4308 = phi i32 [ %.sroa.63163.3315, %.preheader ], [ %.sroa.63163.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51153.4305 = phi i32 [ %.sroa.51153.3314, %.preheader ], [ %.sroa.51153.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0126.4304 = phi i64 [ %.sroa.0126.3313, %.preheader ], [ %.sroa.0126.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4303 = phi i32 [ %.sroa.18.3312, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gf = icmp samesign ult i32 %.sroa.18.4303, 65
  call void @llvm.assume(i1 %i.gf)
  %.not.i69 = icmp samesign ult i32 %.sroa.18.4303, 32
  br i1 %.not.i69, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gg = add nuw nsw i32 %.sroa.51153.4305, 8
  %.not.i.i70 = icmp samesign ugt i32 %i.gg, %.sroa.234.0.copyload
  br i1 %.not.i.i70, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gh = zext nneg i32 %.sroa.51153.4305 to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gj = icmp samesign ugt i32 %.sroa.51153.4305, %i.df
  br i1 %i.gj, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51153.4305) ; 3 uses
  %i.gk = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %i.gk)
  %i.gl = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.gm = icmp samesign ult i32 %i.gl, 9
  call void @llvm.assume(i1 %i.gm)
  %i.gn = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gn
  %i.gp = zext nneg i32 %i.gl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.go, i64 %i.gp, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.q, %bb.n
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.q ], [ %i.gi, %bb.n ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.gq = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255 ; 2 uses
  %i.gr = icmp ne i64 %i.gq, 255                  ; 2 uses
  %i.gs = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.gt = trunc i64 %i.gs to i8                   ; 3 uses
  %i.gu = icmp ne i8 %i.gt, -1
  %i.gv = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.gw = trunc i64 %i.gv to i8                   ; 2 uses
  %i.gx = icmp ne i8 %i.gw, -1
  %i.gy = and i1 %i.gu, %i.gx
  %i.gz = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.ha = icmp ne i64 %i.gz, 4278190080
  %i.hb = and i1 %i.ha, %i.gy
  %i.hc = and i1 %i.gr, %i.hb
  br i1 %i.hc, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hd = zext nneg i32 %.sroa.18.4303 to i64     ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %i.hd, 8
  %i.he = sub nuw nsw i64 56, %i.hd
  %i.hf = shl nuw i64 %i.gq, %i.he
  %i.hg = or i64 %i.hf, %.sroa.0126.4304          ; 2 uses
  br i1 %i.gr, label %bb.u, label %bb.s

bb.r:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hh = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.hi = call i32 @llvm.bswap.i32(i32 %i.hh)
  %i.hj = zext i32 %i.hi to i64
  %i.hk = sub nuw nsw i32 32, %.sroa.18.4303
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw i64 %i.hj, %i.hl
  %i.hn = or i64 %i.hm, %.sroa.0126.4304
  %i.ho = or disjoint i32 %.sroa.18.4303, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.s:                                             ; preds = %.preheader.i
  %i.hp = icmp eq i8 %i.gt, 0
  br i1 %i.hp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %.062.lcssa.i.neg375 = phi i32 [ 0, %bb.s ], [ -1, %bb.v ], [ -2, %bb.x ], [ -3, %bb.z ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.s ], [ %.2.ph.i, %bb.v ], [ %i.ih, %bb.x ], [ %i.is, %bb.z ]
  %.lcssa66.wide.i = phi i64 [ %i.hd, %bb.s ], [ %indvars.iv.next.i, %bb.v ], [ %indvars.iv.next.1.i, %bb.x ], [ %indvars.iv.next.2.i, %bb.z ]
  %.lcssa.i79 = phi i64 [ %i.hg, %bb.s ], [ %i.ib, %bb.v ], [ %i.io, %bb.x ], [ %i.iz, %bb.z ]
  %i.hq = add nuw nsw i32 %.01861.lcssa.i, %.sroa.51153.4305
  %i.hr = icmp slt i32 %.sroa.63163.4308, 0
  call void @llvm.assume(i1 %i.hr)
  %i.hs = lshr i64 -1, %.lcssa66.wide.i
  %i.ht = xor i64 %i.hs, -1
  %i.hu = and i64 %.lcssa.i79, %i.ht
  %.neg = sub nsw i32 %.sroa.234.0.copyload, %.sroa.51153.4305
  %reass.sub.i = add nsw i32 %.neg, %.062.lcssa.i.neg375 ; 2 uses
  %i.hv = add nuw nsw i32 %reass.sub.i, 4
  %i.hw = icmp ugt i32 %reass.sub.i, 1
  call void @llvm.assume(i1 %i.hw)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s, %.preheader.i
  %i.hx = phi i8 [ %i.gt, %.preheader.i ], [ %i.gw, %bb.s ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.s ] ; 3 uses
  %i.hy = zext i8 %i.hx to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.hd, 16
  %i.hz = sub nuw nsw i64 48, %i.hd
  %i.ia = shl nuw nsw i64 %i.hy, %i.hz
  %i.ib = or i64 %i.ia, %i.hg                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.hx, -1
  br i1 %.not.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ic = zext nneg i32 %.2.ph.i to i64
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !150
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ 1, %bb.u ], [ 2, %bb.v ]
  %i.ih = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %i.ii ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !150 ; 2 uses
  %i.il = zext i8 %i.ik to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.hd, 24
  %i.im = sub nuw nsw i64 40, %i.hd
  %i.in = shl nuw nsw i64 %i.il, %i.im
  %i.io = or i64 %i.in, %i.ib                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.ik, -1
  br i1 %.not.2.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !150
  %i.ir = icmp eq i8 %i.iq, 0
  br i1 %i.ir, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink73.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.is = add nuw nsw i32 %.sink73.i, %i.ih       ; 3 uses
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %i.it ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !150 ; 2 uses
  %i.iw = zext i8 %i.iv to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.18.4303, 32
  %i.ix = sub nuw nsw i64 32, %i.hd
  %i.iy = shl nuw nsw i64 %i.iw, %i.ix
  %i.iz = or i64 %i.iy, %i.io                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.iv, -1
  br i1 %.not.3.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !150
  %i.jc = icmp eq i8 %i.jb, 0
  br i1 %i.jc, label %.loopexit.i, label %bb.t

.loopexit.i:                                      ; preds = %bb.z, %bb.y
  %.sink74.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.jd = add nuw nsw i32 %.sink74.i, %i.is
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i, %bb.t
  %.sroa.18.11 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.t ]
  %.sroa.0126.11 = phi i64 [ %i.iz, %.loopexit.i ], [ %i.hu, %bb.t ]
  %.sroa.63163.6 = phi i32 [ %.sroa.63163.4308, %.loopexit.i ], [ %i.hq, %bb.t ]
  %.3.i = phi i32 [ %i.jd, %.loopexit.i ], [ %i.hv, %bb.t ] ; 2 uses
  %i.je = icmp sgt i32 %.3.i, 4
  call void @llvm.assume(i1 %i.je)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.r, %bb.aa
  %.sroa.18.12 = phi i32 [ %i.ho, %bb.r ], [ %.sroa.18.11, %bb.aa ]
  %.sroa.0126.12 = phi i64 [ %i.hn, %bb.r ], [ %.sroa.0126.11, %bb.aa ]
  %.sroa.63163.7 = phi i32 [ %.sroa.63163.4308, %bb.r ], [ %.sroa.63163.6, %bb.aa ]
  %.021.i = phi i32 [ 4, %bb.r ], [ %.3.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.jf = add nuw nsw i32 %.021.i, %.sroa.51153.4305
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.l, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.18.7 = phi i32 [ %.sroa.18.12, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.18.4303, %bb.l ]
  %.sroa.0126.7 = phi i64 [ %.sroa.0126.12, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0126.4304, %bb.l ] ; 2 uses
  %.sroa.51153.5 = phi i32 [ %i.jf, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.51153.4305, %bb.l ] ; 3 uses
  %.sroa.63163.5 = phi i32 [ %.sroa.63163.7, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.63163.4308, %bb.l ] ; 3 uses
  %i.jg = lshr i64 %.sroa.0126.7, 53              ; 3 uses
  %i.jh = trunc nuw nsw i64 %i.jg to i32          ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 128
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !178
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jg
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !19 ; 4 uses
  %i.jm = ashr i32 %i.jl, 9                       ; 2 uses
  %i.jn = and i32 %i.jl, 255                      ; 4 uses
  %i.jo = icmp samesign ult i32 %i.jn, 33
  call void @llvm.assume(i1 %i.jo)
  %i.jp = sub nuw nsw i32 %.sroa.18.7, %i.jn      ; 3 uses
  %i.jq = zext nneg i32 %i.jn to i64
  %i.jr = shl i64 %.sroa.0126.7, %i.jq            ; 3 uses
  %i.js = and i32 %i.jl, 256
  %.not.i = icmp eq i32 %i.js, 0
  br i1 %.not.i, label %bb.ab, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.ab:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i = icmp eq i32 %i.jl, 0
  br i1 %.not17.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jt = trunc i32 %i.jm to i8                   ; 2 uses
  %i.ju = icmp ne i8 %i.jt, 0
  call void @llvm.assume(i1 %i.ju)
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.jv = icmp eq i32 %i.jn, 0
  call void @llvm.assume(i1 %i.jv)
  %i.jw = add nsw i32 %i.jp, -11                  ; 2 uses
  %i.jx = shl i64 %i.jr, 11                       ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !179
  %i.kb = load ptr, ptr %i.jy, align 8, !tbaa !180
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = ashr exact i64 %i.ke, 2
  %i.kg = add nsw i64 %i.kf, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.jg to i16 ; 2 uses
  %i.kh = icmp ugt i64 %i.kg, 11
  br i1 %i.kh, label %.lr.ph.i72, label %.critedge.i

.lr.ph.i72:                                       ; preds = %bb.ad
  %i.ki = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 80
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !183
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge2.i, %.lr.ph.i72
  %.sroa.18.9 = phi i32 [ %i.jw, %.lr.ph.i72 ], [ %i.kt, %.critedge2.i ] ; 4 uses
  %.sroa.0126.9 = phi i64 [ %i.jx, %.lr.ph.i72 ], [ %i.ku, %.critedge2.i ] ; 3 uses
  %i.kk = phi i64 [ 11, %.lr.ph.i72 ], [ %i.kz, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i72 ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i72 ], [ %i.ky, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.jh, %.lr.ph.i72 ], [ %i.kx, %.critedge2.i ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.kj, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !157 ; 2 uses
  %i.kn = icmp eq i16 %i.km, -1
  %i.ko = icmp ult i16 %i.km, %.sroa.0.021.i
  %or.cond.i = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ae
  %i.kp = icmp samesign ult i32 %.sroa.18.9, 65
  call void @llvm.assume(i1 %i.kp)
  %i.kq = icmp ne i32 %.sroa.18.9, 0
  call void @llvm.assume(i1 %i.kq)
  %i.kr = lshr i64 %.sroa.0126.9, 63
  %i.ks = trunc nuw nsw i64 %i.kr to i32
  %i.kt = add nsw i32 %.sroa.18.9, -1             ; 2 uses
  %i.ku = shl i64 %.sroa.0126.9, 1                ; 2 uses
  %i.kv = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.kw = and i32 %i.kv, 131070
  %i.kx = or disjoint i32 %i.kw, %i.ks            ; 3 uses
  %i.ky = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.kx to i16           ; 2 uses
  %i.kz = zext i8 %i.ky to i64                    ; 3 uses
  %i.la = icmp ugt i64 %i.kg, %i.kz
  br i1 %i.la, label %bb.ae, label %.critedge.i.loopexit, !llvm.loop !3

.critedge.i.loopexit:                             ; preds = %bb.ae, %.critedge2.i
  %.sroa.18.8.ph = phi i32 [ %i.kt, %.critedge2.i ], [ %.sroa.18.9, %bb.ae ]
  %.sroa.0126.8.ph = phi i64 [ %i.ku, %.critedge2.i ], [ %.sroa.0126.9, %bb.ae ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.kx, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ae ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.ky, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ae ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ae ]
  %.lcssa17.i.ph = phi i64 [ %i.kz, %.critedge2.i ], [ %i.kk, %bb.ae ]
  %i.lb = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ad
  %.sroa.18.8 = phi i32 [ %i.jw, %bb.ad ], [ %.sroa.18.8.ph, %.critedge.i.loopexit ]
  %.sroa.0126.8 = phi i64 [ %i.jx, %bb.ad ], [ %.sroa.0126.8.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.jh, %bb.ad ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ad ], [ %i.lb, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ad ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ad ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.lc = icmp ult i64 %i.kg, %.lcssa17.i
  br i1 %i.lc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge.i
  %i.ld = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 80
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !183
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %.lcssa17.i
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !157
  %i.lh = icmp ult i16 %i.lg, %.sroa.0.0.lcssa.i
  br i1 %i.lh, label %bb.ag, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.ag:                                            ; preds = %bb.af, %.critedge.i
  %i.li = and i32 %.sroa.0.0.in.lcssa.i, 65535
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.li, i32 noundef %.sroa.8.0.lcssa.i) #13
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.af
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.lj = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 104
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !183
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %.lcssa17.i
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !157
  %i.ln = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 8
  %.tr.i = zext i16 %i.lm to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.lo = zext i32 %.narrow.i to i64
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !184
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lo
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !150
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.ac
  %.0237 = phi i8 [ %i.lr, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.jt, %bb.ac ] ; 5 uses
  %.sroa.18.5 = phi i32 [ %.sroa.18.8, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.jp, %bb.ac ] ; 8 uses
  %.sroa.0126.5 = phi i64 [ %.sroa.0126.8, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.jr, %bb.ac ] ; 6 uses
  %i.ls = icmp ult i8 %.0237, 17
  call void @llvm.assume(i1 %i.ls)
  switch i8 %.0237, label %bb.ak [
    i8 16, label %bb.ai
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.lt = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi485.sroa.speculated, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !185, !range !121, !noundef !122
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.aj, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.lw = icmp samesign ult i32 %.sroa.18.5, 65
  call void @llvm.assume(i1 %i.lw)
  %i.lx = icmp samesign ugt i32 %.sroa.18.5, 15
  call void @llvm.assume(i1 %i.lx)
  %i.ly = add nsw i32 %.sroa.18.5, -16
  %i.lz = shl i64 %.sroa.0126.5, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.ak:                                            ; preds = %bb.ah
  %i.ma = zext nneg i8 %.0237 to i32              ; 4 uses
  %i.mb = icmp samesign ult i32 %.sroa.18.5, 65
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp ne i8 %.0237, 0
  call void @llvm.assume(i1 %i.mc)
  %i.md = icmp samesign uge i32 %.sroa.18.5, %i.ma
  call void @llvm.assume(i1 %i.md)
  %i.me = sub nuw nsw i32 64, %i.ma
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = lshr i64 %.sroa.0126.5, %i.mf
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = sub nuw nsw i32 %.sroa.18.5, %i.ma
  %i.mj = zext nneg i8 %.0237 to i64
  %i.mk = shl i64 %.sroa.0126.5, %i.mj
  %i.ml = icmp sgt i64 %.sroa.0126.5, -1
  %notmask.i.i = shl nsw i32 -1, %i.ma
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.mm = select i1 %i.ml, i32 %.neg.i.i, i32 0
  %.0.i.i = add nsw i32 %i.mm, %i.mh
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.18.6 = phi i32 [ %i.jp, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.mi, %bb.ak ], [ %i.ly, %bb.aj ], [ %.sroa.18.5, %bb.ai ], [ %.sroa.18.5, %bb.ah ] ; 3 uses
  %.sroa.0126.6 = phi i64 [ %i.jr, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.mk, %bb.ak ], [ %i.lz, %bb.aj ], [ %.sroa.0126.5, %bb.ai ], [ %.sroa.0126.5, %bb.ah ] ; 3 uses
  %.0.i = phi i32 [ %i.jm, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i, %bb.ak ], [ -32768, %bb.aj ], [ -32768, %bb.ai ], [ 0, %bb.ah ]
  %8 = load i16, ptr %indvars.iv.sroa.phi, align 2, !tbaa !157
  %i.mn = trunc i32 %.0.i to i16
  %i.mo = add i16 %8, %i.mn                       ; 2 uses
  store i16 %i.mo, ptr %indvars.iv.sroa.phi, align 2, !tbaa !157
  %i.mp = or disjoint i64 %indvars.iv, %i.gd      ; 2 uses
  %i.mq = icmp samesign ult i64 %i.mp, %i.di
  call void @llvm.assume(i1 %i.mq)
  call void @llvm.assume(i1 %i.fj)
  %9 = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.mp
  store i16 %i.mo, ptr %9, align 2, !tbaa !157
  br i1 %7, label %bb.l, label %bb.k, !llvm.loop !310
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi4ELi1ELi1EEEjv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array.111", align 8   ; 6 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %2 = alloca %"struct.std::pair", align 4        ; 4 uses
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %4 = alloca %"struct.std::array.126", align 8   ; 8 uses
  %5 = alloca %"struct.std::array.125", align 8   ; 7 uses
  %6 = alloca %"struct.std::array.126", align 8   ; 5 uses
  %7 = alloca %"class.rawspeed::Cr2VerticalOutputStripIterator", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152, !noalias !339 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !105, !noalias !339
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !153, !noalias !339
  %i.h = mul nsw i32 %i.g, %i.e                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154, !noalias !339
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !155, !noalias !339
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123, !noalias !342 ; 11 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127, !noalias !342, !nonnull !122, !align !128
  store ptr %i.r, ptr %5, align 8, !alias.scope !342
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127, !noalias !342, !nonnull !122, !align !128
  store ptr %i.u, ptr %i.s, align 8, !alias.scope !342
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127, !noalias !342, !nonnull !122, !align !128
  store ptr %i.x, ptr %i.v, align 8, !alias.scope !342
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127, !noalias !342, !nonnull !122, !align !128
  store ptr %i.aa, ptr %i.y, align 8, !alias.scope !342
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33 ; 3 uses
  %i.ad = icmp eq ptr %i.q, %i.ac
  br i1 %i.ad, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi4EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %i.af = ptrtoaddr ptr %i.q to i64
  %i.ag = add i64 %i.ae, -16
  %i.ah = sub i64 %i.ag, %i.af                    ; 3 uses
  %i.ai = lshr i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.ah, 64
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i64 %i.ah, 256
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.aj, 15                       ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = select i1 %i.al, i64 16, i64 %i.ak      ; 2 uses
  %n.vec = sub nsw i64 %i.aj, %i.am               ; 4 uses
  %i.an = shl nsw i64 %n.vec, 1
  %i.ao = getelementptr i8, ptr %4, i64 %i.an
  %i.ap = shl i64 %n.vec, 4
  %i.aq = getelementptr i8, ptr %i.q, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.ar
  %i.as = shl i64 %index, 4
  %next.gep452 = getelementptr i8, ptr %i.q, i64 %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep452, i64 8
  %wide.vec = load <128 x i16>, ptr %i.at, align 8, !tbaa !156
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 8, !tbaa !157
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !322

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.am, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.av = and i64 %i.aj, 3                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 4, i64 %i.av
  %n.vec453 = sub nsw i64 %i.aj, %i.ax            ; 3 uses
  %i.ay = shl nsw i64 %n.vec453, 1
  %i.az = getelementptr i8, ptr %4, i64 %i.ay
  %i.ba = shl i64 %n.vec453, 4
  %i.bb = getelementptr i8, ptr %i.q, i64 %i.ba
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index454 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next459, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = shl i64 %index454, 1
  %next.gep455 = getelementptr i8, ptr %4, i64 %i.bc
  %i.bd = shl i64 %index454, 4
  %next.gep456 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep456, i64 8
  %wide.vec457 = load <32 x i16>, ptr %i.be, align 8, !tbaa !156
  %strided.vec458 = shufflevector <32 x i16> %wide.vec457, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec458, ptr %next.gep455, align 2, !tbaa !157
  %index.next459 = add nuw i64 %index454, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next459, %n.vec453
  br i1 %i.bf, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !323

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !156
  store i16 %i.bh, ptr %.07.i.i, align 2, !tbaa !157
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.bk = icmp eq ptr %i.bi, %i.ac
  br i1 %i.bk, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !324

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %4, align 8
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi4EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi4EEESt5arrayItXT_EEv.exit: ; preds = %bb.a, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i
  %i.bl = phi i64 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.bl, ptr %6, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.033.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.234.0.copyload = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !19 ; 7 uses
  %i.bn = icmp sgt i32 %.sroa.234.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp samesign ult i32 %.sroa.234.0.copyload, 8
  br i1 %i.bo, label %bb.b, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #13
  unreachable

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16, !noalias !343 ; 7 uses
  %i.br = icmp sgt i32 %i.bq, -1
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !18, !noalias !343 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.bv = icmp ne i32 %i.bq, 0
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !18, !noalias !344 ; 7 uses
  %i.by = load i32, ptr %i.bu, align 4, !noalias !345
  %i.bz = icmp sgt i32 %i.bx, -1
  tail call void @llvm.assume(i1 %i.bz), !noalias !346
  %i.ca = icmp sgt i32 %i.bt, -1
  tail call void @llvm.assume(i1 %i.ca), !noalias !346
  %.sroa.speculated.i.i.i.i136.i = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.bx) ; 5 uses
  %i.cb = icmp samesign ule i32 %i.bt, %i.bx      ; 4 uses
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.bq, %i.cc
  %i.ce = icmp eq i32 %.sroa.speculated.i.i.i.i136.i, 0
  %i.cf = or i1 %i.cb, %i.ce
  %i.cg = and i1 %i.cf, %i.cd
  br i1 %i.cg, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %.sroa.1951.sroa.12.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.1951.sroa.0.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.14.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.lcssa.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa126.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cw, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa.i = phi i1 [ %i.cb, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cy, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.pre.i.i = add nuw nsw i32 %.sroa.14.0.i.lcssa.i, 1
  %.pre202.i.i = add nuw nsw i32 %.sroa.speculated.i.i.i.i.lcssa.i, %.sroa.1951.sroa.12.0.i.lcssa.i
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i
end_hunk_0
