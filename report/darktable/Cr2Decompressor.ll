Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2Decompressor?download=true
inline.NumInlined: 634
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi1EEEjv:bb.a
  %i.jr = ashr i32 %i.jq, 9                       ; 2 uses
  %i.js = and i32 %i.jq, 255                      ; 4 uses
  %i.jt = icmp samesign ult i32 %i.js, 33
  call void @llvm.assume(i1 %i.jt)
  %i.ju = sub nuw nsw i32 %.sroa.18.7, %i.js      ; 3 uses
  %i.jv = zext nneg i32 %i.js to i64
  %i.jw = shl i64 %.sroa.0125.7, %i.jv            ; 3 uses
  %i.jx = and i32 %i.jq, 256
  %.not.i = icmp eq i32 %i.jx, 0
  br i1 %.not.i, label %bb.ab, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.ab:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i = icmp eq i32 %i.jq, 0
  br i1 %.not17.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jy = trunc i32 %i.jr to i8                   ; 2 uses
  %i.jz = icmp ne i8 %i.jy, 0
  call void @llvm.assume(i1 %i.jz)
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.ka = icmp eq i32 %i.js, 0
  call void @llvm.assume(i1 %i.ka)
  %i.kb = add nsw i32 %i.ju, -11                  ; 2 uses
  %i.kc = shl i64 %i.jw, 11                       ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !250
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !251
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = ashr exact i64 %i.kj, 2
  %i.kl = add nsw i64 %i.kk, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.jl to i16 ; 2 uses
  %i.km = icmp ugt i64 %i.kl, 11
  br i1 %i.km, label %.lr.ph.i70, label %.critedge.i

.lr.ph.i70:                                       ; preds = %bb.ad
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !252
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge2.i, %.lr.ph.i70
  %.sroa.18.9 = phi i32 [ %i.kb, %.lr.ph.i70 ], [ %i.ky, %.critedge2.i ] ; 4 uses
  %.sroa.0125.9 = phi i64 [ %i.kc, %.lr.ph.i70 ], [ %i.kz, %.critedge2.i ] ; 3 uses
  %i.kp = phi i64 [ 11, %.lr.ph.i70 ], [ %i.le, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i70 ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i70 ], [ %i.ld, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.jm, %.lr.ph.i70 ], [ %i.lc, %.critedge2.i ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.kp
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !208 ; 2 uses
  %i.ks = icmp eq i16 %i.kr, -1
  %i.kt = icmp ult i16 %i.kr, %.sroa.0.021.i
  %or.cond.i = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ae
  %i.ku = icmp samesign ult i32 %.sroa.18.9, 65
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp ne i32 %.sroa.18.9, 0
  call void @llvm.assume(i1 %i.kv)
  %i.kw = lshr i64 %.sroa.0125.9, 63
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = add nsw i32 %.sroa.18.9, -1             ; 2 uses
  %i.kz = shl i64 %.sroa.0125.9, 1                ; 2 uses
  %i.la = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.lb = and i32 %i.la, 131070
  %i.lc = or disjoint i32 %i.lb, %i.kx            ; 3 uses
  %i.ld = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.lc to i16           ; 2 uses
  %i.le = zext i8 %i.ld to i64                    ; 3 uses
  %i.lf = icmp ugt i64 %i.kl, %i.le
  br i1 %i.lf, label %bb.ae, label %.critedge.i.loopexit, !llvm.loop !255

.critedge.i.loopexit:                             ; preds = %bb.ae, %.critedge2.i
  %.sroa.18.8.ph = phi i32 [ %i.ky, %.critedge2.i ], [ %.sroa.18.9, %bb.ae ]
  %.sroa.0125.8.ph = phi i64 [ %i.kz, %.critedge2.i ], [ %.sroa.0125.9, %bb.ae ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.lc, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ae ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.ld, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ae ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ae ]
  %.lcssa17.i.ph = phi i64 [ %i.le, %.critedge2.i ], [ %i.kp, %bb.ae ]
  %i.lg = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ad
  %.sroa.18.8 = phi i32 [ %i.kb, %bb.ad ], [ %.sroa.18.8.ph, %.critedge.i.loopexit ]
  %.sroa.0125.8 = phi i64 [ %i.kc, %bb.ad ], [ %.sroa.0125.8.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.jm, %bb.ad ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ad ], [ %i.lg, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ad ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ad ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.lh = icmp ult i64 %i.kl, %.lcssa17.i
  br i1 %i.lh, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !252
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %.lcssa17.i
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !208
  %i.lm = icmp ult i16 %i.ll, %.sroa.0.0.lcssa.i
  br i1 %i.lm, label %bb.ag, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.ag:                                            ; preds = %bb.af, %.critedge.i
  %i.ln = and i32 %.sroa.0.0.in.lcssa.i, 65535
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.ln, i32 noundef %.sroa.8.0.lcssa.i) #13
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.af
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !252
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %.lcssa17.i
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !208
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.tr.i = zext i16 %i.lr to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.lt = zext i32 %.narrow.i to i64
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !256
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lt
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !191
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.ac
  %.0236 = phi i8 [ %i.lw, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.jy, %bb.ac ] ; 5 uses
  %.sroa.18.5 = phi i32 [ %.sroa.18.8, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ju, %bb.ac ] ; 8 uses
  %.sroa.0125.5 = phi i64 [ %.sroa.0125.8, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.jw, %bb.ac ] ; 6 uses
  %i.lx = icmp ult i8 %.0236, 17
  call void @llvm.assume(i1 %i.lx)
  switch i8 %.0236, label %bb.ak [
    i8 16, label %bb.ai
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !257, !range !153, !noundef !154
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.aj, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.mb = icmp samesign ult i32 %.sroa.18.5, 65
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp samesign ugt i32 %.sroa.18.5, 15
  call void @llvm.assume(i1 %i.mc)
  %i.md = add nsw i32 %.sroa.18.5, -16
  %i.me = shl i64 %.sroa.0125.5, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.ak:                                            ; preds = %bb.ah
  %i.mf = zext nneg i8 %.0236 to i32              ; 4 uses
  %i.mg = icmp samesign ult i32 %.sroa.18.5, 65
  call void @llvm.assume(i1 %i.mg)
  %i.mh = icmp ne i8 %.0236, 0
  call void @llvm.assume(i1 %i.mh)
  %i.mi = icmp samesign uge i32 %.sroa.18.5, %i.mf
  call void @llvm.assume(i1 %i.mi)
  %i.mj = sub nuw nsw i32 64, %i.mf
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = lshr i64 %.sroa.0125.5, %i.mk
  %i.mm = trunc nuw nsw i64 %i.ml to i32
  %i.mn = sub nuw nsw i32 %.sroa.18.5, %i.mf
  %i.mo = zext nneg i8 %.0236 to i64
  %i.mp = shl i64 %.sroa.0125.5, %i.mo
  %i.mq = icmp sgt i64 %.sroa.0125.5, -1
  %notmask.i.i = shl nsw i32 -1, %i.mf
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.mr = select i1 %i.mq, i32 %.neg.i.i, i32 0
  %.0.i.i = add nsw i32 %i.mr, %i.mm
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.18.6 = phi i32 [ %i.ju, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.mn, %bb.ak ], [ %i.md, %bb.aj ], [ %.sroa.18.5, %bb.ai ], [ %.sroa.18.5, %bb.ah ] ; 3 uses
  %.sroa.0125.6 = phi i64 [ %i.jw, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.mp, %bb.ak ], [ %i.me, %bb.aj ], [ %.sroa.0125.5, %bb.ai ], [ %.sroa.0125.5, %bb.ah ] ; 3 uses
  %.0.i = phi i32 [ %i.jr, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i, %bb.ak ], [ -32768, %bb.aj ], [ -32768, %bb.ai ], [ 0, %bb.ah ]
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.gg ; 2 uses
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !208
  %i.mu = trunc i32 %.0.i to i16
  %i.mv = add i16 %i.mt, %i.mu                    ; 2 uses
  store i16 %i.mv, ptr %i.ms, align 2, !tbaa !208
  %i.mw = add nuw nsw i64 %indvars.iv, %i.gc      ; 2 uses
  %i.mx = icmp samesign ult i64 %i.mw, %i.dd
  call void @llvm.assume(i1 %i.mx)
  call void @llvm.assume(i1 %i.ff)
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.mw
  store i16 %i.mv, ptr %i.my, align 2, !tbaa !208
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.k, label %bb.l, !llvm.loop !288
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi2ELi1ELi1EEEjv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array.111", align 8   ; 6 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %2 = alloca %"struct.std::pair", align 4        ; 4 uses
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %4 = alloca %"struct.std::array.120", align 4   ; 8 uses
  %.sroa.0 = alloca [2 x i16], align 4            ; 6 uses
  %5 = alloca %"class.rawspeed::Cr2VerticalOutputStripIterator", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193, !noalias !289 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !129, !noalias !289
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !197, !noalias !289
  %i.h = mul nsw i32 %i.g, %i.e                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198, !noalias !289
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !199, !noalias !289
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156  ; 9 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !157, !nonnull !154, !align !161
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157, !nonnull !154, !align !161
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 3 uses
  %i.w = icmp eq ptr %i.q, %i.v
  %.sroa.0.2.gep486.sroa_idx487 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
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
  %min.iters.check457 = icmp ult i64 %i.aa, 256
  br i1 %min.iters.check457, label %vec.epilog.ph, label %vector.ph

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

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.ak
  %i.al = shl i64 %index, 4
  %next.gep458 = getelementptr i8, ptr %i.q, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep458, i64 8
  %wide.vec = load <128 x i16>, ptr %i.am, align 8, !tbaa !207
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 4, !tbaa !208
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !292

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.af, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ao = and i64 %i.ac, 3                        ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = select i1 %i.ap, i64 4, i64 %i.ao
  %n.vec460 = sub nsw i64 %i.ac, %i.aq            ; 3 uses
  %i.ar = shl nsw i64 %n.vec460, 1
  %i.as = getelementptr i8, ptr %4, i64 %i.ar
  %i.at = shl i64 %n.vec460, 4
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index461 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next466, %vec.epilog.vector.body ] ; 3 uses
  %i.av = shl i64 %index461, 1
  %next.gep462 = getelementptr i8, ptr %4, i64 %i.av
  %i.aw = shl i64 %index461, 4
  %next.gep463 = getelementptr i8, ptr %i.q, i64 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep463, i64 8
  %wide.vec464 = load <32 x i16>, ptr %i.ax, align 8, !tbaa !207
  %strided.vec465 = shufflevector <32 x i16> %wide.vec464, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec465, ptr %next.gep462, align 2, !tbaa !208
  %index.next466 = add nuw i64 %index461, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next466, %n.vec460
  br i1 %i.ay, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !293

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !207
  store i16 %i.ba, ptr %.07.i.i, align 2, !tbaa !208
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.bd = icmp eq ptr %i.bb, %i.v
  br i1 %i.bd, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !294

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i32, ptr %4, align 4
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit: ; preds = %bb.a, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i
  %i.be = phi i32 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed15Cr2DecompressorINS2_20PrefixCodeLUTDecoderINS2_15BaselineCodeTagENS2_23PrefixCodeLookupDecoderIS5_EEEEE18PerComponentRecipeESt6vectorISA_SaISA_EEEEPtZNKS9_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRSB_E_ET0_T_SO_SN_T1_.exit.loopexit.i ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 %i.be, ptr %.sroa.0, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.033.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !58 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.234.0.copyload = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !15 ; 7 uses
  %i.bg = icmp sgt i32 %.sroa.234.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ult i32 %.sroa.234.0.copyload, 8
  br i1 %i.bh, label %bb.b, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #13
  unreachable

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11, !noalias !295 ; 8 uses
  %i.bk = icmp sgt i32 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !13, !noalias !295 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.bo = icmp ne i32 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !13, !noalias !304 ; 6 uses
  %i.br = load i32, ptr %i.bn, align 4, !noalias !307
  %.sroa.speculated.i.i.i.i143.i = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bq) ; 5 uses
  %.not.i54 = icmp ule i32 %i.bm, %i.bq           ; 2 uses
  %.sroa.13176.1.i144.i = zext i1 %.not.i54 to i32 ; 2 uses
  %.sroa.24.0.i145.i = select i1 %.not.i54, i32 0, i32 %.sroa.speculated.i.i.i.i143.i ; 2 uses
  %i.bs = icmp eq i32 %i.bj, %.sroa.13176.1.i144.i
  %i.bt = icmp eq i32 %.sroa.24.0.i145.i, 0
  %i.bu = and i1 %i.bs, %i.bt
  br i1 %i.bu, label %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i, label %.lr.ph.i

_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %.sroa.1951.sroa.12.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.1951.sroa.0.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.speculated.i.i.i.i.lcssa.i = phi i32 [ %.sroa.speculated.i.i.i.i143.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa130.i = phi i32 [ %.sroa.speculated.i.i.i.i143.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.ci, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa.i = phi i32 [ 1, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.ck, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.pre.i.i = add nsw i32 %.sroa.speculated.i.i.i.i.lcssa.i, %.sroa.1951.sroa.12.0.i.lcssa.i
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i
  %.sroa.24.0.i151.i = phi i32 [ %.sroa.24.0.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.24.0.i145.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.13176.1.i150.i = phi i32 [ %.sroa.13176.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.13176.1.i144.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 4 uses
  %i.bv = phi i32 [ %i.ck, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 1, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.bw = phi i32 [ %i.ci, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i143.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.speculated.i.i.i.i149.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i143.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.14.0.i148.i = phi i32 [ %.sroa.13176.1.i150.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.1951.sroa.0.0.i147.i = phi i32 [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.12.0.i146.i = phi i32 [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.bx = icmp slt i32 %.sroa.14.0.i148.i, %i.bj
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = icmp eq i32 %i.bv, %i.bj
  %.0.in.v.i.i.i.i.i.i = select i1 %i.by, i64 8, i64 4
  %.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.in.v.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i, align 4, !tbaa !15, !noalias !307 ; 2 uses
  %i.bz = add nsw i32 %.0.i.i.i.i.i.i, %.sroa.1951.sroa.0.0.i147.i
  %i.ca = add nsw i32 %.sroa.1951.sroa.12.0.i146.i, %.sroa.speculated.i.i.i.i149.i ; 2 uses
  %i.cb = icmp eq i32 %i.bz, %i.br
  %i.cc = icmp eq i32 %i.ca, %i.bq                ; 3 uses
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i: ; preds = %.lr.ph.i
  %i.ce = icmp sle i32 %i.bw, %i.bm
  tail call void @llvm.assume(i1 %i.ce)
  %.sroa.1951.sroa.12.1.i.i = select i1 %i.cc, i32 0, i32 %i.ca ; 3 uses
  %i.cf = select i1 %i.cc, i32 %.0.i.i.i.i.i.i, i32 0
  %.sroa.1951.sroa.0.1.i.i = add nsw i32 %i.cf, %.sroa.1951.sroa.0.0.i147.i ; 2 uses
  %i.cg = sub nsw i32 %i.bm, %.sroa.24.0.i151.i
  %i.ch = sub nsw i32 %i.bq, %.sroa.1951.sroa.12.1.i.i
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ch) ; 3 uses
  %i.ci = add nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.24.0.i151.i ; 4 uses
  %i.cj = icmp eq i32 %i.ci, %i.bm                ; 2 uses
  %i.ck = add nuw nsw i32 %.sroa.13176.1.i150.i, 1 ; 3 uses
  %.sroa.13176.1.i.i = select i1 %i.cj, i32 %i.ck, i32 %.sroa.13176.1.i150.i ; 2 uses
  %.sroa.24.0.i.i = select i1 %i.cj, i32 0, i32 %i.ci ; 2 uses
  %i.cl = icmp eq i32 %.sroa.13176.1.i.i, %i.bj
  %i.cm = icmp eq i32 %.sroa.24.0.i.i, 0
  %i.cn = and i1 %i.cl, %i.cm
  br i1 %i.cn, label %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i, label %.lr.ph.i, !llvm.loop !32

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit: ; preds = %.lr.ph.i, %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i
  %.sroa.1951.sroa.0.0.i140.i = phi i32 [ %.sroa.1951.sroa.0.0.i.lcssa.i, %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i ], [ %.sroa.1951.sroa.0.0.i147.i, %.lr.ph.i ]
  %i.co = phi i32 [ %.lcssa130.i, %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i ], [ %i.bw, %.lr.ph.i ]
  %i.cp = phi i32 [ %.lcssa.i, %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i ], [ %i.bv, %.lr.ph.i ]
  %.sroa.13176.1.i128.i = phi i32 [ %i.bj, %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i ], [ %.sroa.13176.1.i150.i, %.lr.ph.i ] ; 4 uses
  %.sroa.24.0.i126.i = phi i32 [ 0, %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i ], [ %.sroa.24.0.i151.i, %.lr.ph.i ] ; 4 uses
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_ZSt9__advanceIN8rawspeed21Cr2OutputTileIteratorElEvRT_T0_St18input_iterator_tag.exit..critedge_crit_edge.i.i ], [ %i.bq, %.lr.ph.i ] ; 2 uses
  %i.cq = icmp eq i32 %i.cp, %i.bj
  %.0.in.v.i.i.i.i.i1.i.i = select i1 %i.cq, i64 8, i64 4
  %.0.in.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.in.v.i.i.i.i.i1.i.i
  %.0.i.i.i.i.i3.i.i = load i32, ptr %.0.in.i.i.i.i.i2.i.i, align 4, !tbaa !15, !noalias !307
  %i.cr = icmp sle i32 %i.co, %i.bm
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp eq i32 %.pre-phi.i.i, %i.bq        ; 2 uses
  %.sroa.1951.sroa.12.2.i.i = select i1 %i.cs, i32 0, i32 %.pre-phi.i.i
  %i.ct = select i1 %i.cs, i32 %.0.i.i.i.i.i3.i.i, i32 0
  %.sroa.1951.sroa.0.2.i.i = add nsw i32 %i.ct, %.sroa.1951.sroa.0.0.i140.i
  %.sroa.1951.sroa.12.0.insert.ext83.i.i = zext i32 %.sroa.1951.sroa.12.2.i.i to i64
  %.sroa.1951.sroa.12.0.insert.shift84.i.i = shl nuw i64 %.sroa.1951.sroa.12.0.insert.ext83.i.i, 32
  %.sroa.1951.sroa.0.0.insert.ext69.i.i = zext i32 %.sroa.1951.sroa.0.2.i.i to i64
  %.sroa.1951.sroa.0.0.insert.insert71.i.i = or disjoint i64 %.sroa.1951.sroa.12.0.insert.shift84.i.i, %.sroa.1951.sroa.0.0.insert.ext69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.bn, ptr %5, align 8, !tbaa !22
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.bm, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !15
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bi, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !16
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i32 0, ptr %.sroa.6109.0..sroa_idx, align 8, !tbaa !15
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.7111.0..sroa_idx, align 8
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i32 0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !15
  %.sroa.9114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.bn, ptr %.sroa.9114.0..sroa_idx, align 8, !tbaa !22
  %.sroa.10115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i32 %i.bm, ptr %.sroa.10115.0..sroa_idx, align 8, !tbaa !15
  %.sroa.11117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store ptr %i.bi, ptr %.sroa.11117.0..sroa_idx, align 8, !tbaa !16
  %.sroa.12118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i32 %.sroa.13176.1.i128.i, ptr %.sroa.12118.0..sroa_idx, align 8, !tbaa !15
  %.sroa.13120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i.i, ptr %.sroa.13120.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store i32 %.sroa.24.0.i126.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !15
  %i.cu = or i32 %.sroa.13176.1.i128.i, %.sroa.24.0.i126.i
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %._crit_edge373.thread, label %.lr.ph372

._crit_edge373.thread:                            ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.c

.lr.ph372:                                        ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %invariant.op = add nsw i32 %i.h, -2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cx = add nuw nsw i32 %.sroa.234.0.copyload, 16
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.da = zext nneg i32 %i.h to i64
  br label %bb.d

._crit_edge373:                                   ; preds = %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.db = icmp slt i32 %.sroa.63164.1.lcssa, 0
  %spec.select = select i1 %i.db, i32 %.sroa.51154.1.lcssa, i32 %.sroa.63164.1.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge373, %._crit_edge373.thread
  %i.dc = phi i32 [ %spec.select, %._crit_edge373 ], [ 0, %._crit_edge373.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %i.dc

bb.d:                                             ; preds = %.lr.ph372, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  %.0371 = phi i32 [ 0, %.lr.ph372 ], [ %.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0174.0370 = phi ptr [ %i.c, %.lr.ph372 ], [ %.sroa.0174.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.63164.0369 = phi i32 [ -1, %.lr.ph372 ], [ %.sroa.63164.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.51154.0368 = phi i32 [ 0, %.lr.ph372 ], [ %.sroa.51154.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0127.0367 = phi i64 [ 0, %.lr.ph372 ], [ %.sroa.0127.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.18.0366 = phi i32 [ 0, %.lr.ph372 ], [ %.sroa.18.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.0234365 = phi i32 [ 0, %.lr.ph372 ], [ %.1235.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %3, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %.sroa.0.0.copyload.i55 = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i56, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.sroa.089.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i55, 32
  %.sroa.089.4.extract.trunc = trunc nuw i64 %.sroa.089.4.extract.shift to i32 ; 2 uses
  %.sroa.7.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.dd = add nsw i32 %.sroa.7.12.extract.trunc, %.sroa.089.4.extract.trunc
  %.not340 = icmp eq i64 %.sroa.7.12.extract.shift, 0
  br i1 %.not340, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %bb.d
  %.sroa.089.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i55 to i32 ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32 ; 2 uses
  %i.de = add nsw i32 %.sroa.7.8.extract.trunc, %.sroa.089.0.extract.trunc ; 2 uses
  %.not49324 = icmp eq i32 %.sroa.7.8.extract.trunc, 0
  br i1 %.not49324, label %._crit_edge351, label %.lr.ph350.split

.lr.ph350.split:                                  ; preds = %.lr.ph350
  %i.df = load i32, ptr %i.cw, align 4, !tbaa !146 ; 3 uses
  br label %.lr.ph

._crit_edge351:                                   ; preds = %._crit_edge, %.lr.ph350, %bb.d
  %.1235.lcssa = phi i32 [ %.0234365, %bb.d ], [ %.0234365, %.lr.ph350 ], [ %.4.lcssa, %._crit_edge ]
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0366, %bb.d ], [ %.sroa.18.0366, %.lr.ph350 ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.sroa.0127.1.lcssa = phi i64 [ %.sroa.0127.0367, %bb.d ], [ %.sroa.0127.0367, %.lr.ph350 ], [ %.sroa.0127.3.lcssa, %._crit_edge ]
  %.sroa.51154.1.lcssa = phi i32 [ %.sroa.51154.0368, %bb.d ], [ %.sroa.51154.0368, %.lr.ph350 ], [ %.sroa.51154.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.63164.1.lcssa = phi i32 [ %.sroa.63164.0369, %bb.d ], [ %.sroa.63164.0369, %.lr.ph350 ], [ %i.ff, %._crit_edge ] ; 3 uses
  %.sroa.0174.1.lcssa = phi ptr [ %.sroa.0174.0370, %bb.d ], [ %.sroa.0174.0370, %.lr.ph350 ], [ %.sroa.0174.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0371, %bb.d ], [ %.0371, %.lr.ph350 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %i.dg = load i32, ptr %i.cy, align 4, !tbaa !228 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.dg, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !231   ; 2 uses
  %.pre399 = load i32, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !235 ; 4 uses
  %.pre400 = load ptr, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !236 ; 4 uses
  %.pre401 = load i32, ptr %.sroa.6109.0..sroa_idx, align 8, !tbaa !237 ; 2 uses
  %.pre402 = load i32, ptr %.sroa.8112.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %._crit_edge351
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre400, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %.lr.ph.i.i59
  %i.dj = phi i32 [ %.pre402, %.lr.ph.i.i59 ], [ %i.ee, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %i.dk = phi i32 [ %.pre3.i.i, %.lr.ph.i.i59 ], [ %i.dz, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %i.dl = phi i32 [ %.pre401, %.lr.ph.i.i59 ], [ %i.ef, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 4 uses
  %.02.i.i = phi i64 [ %i.dh, %.lr.ph.i.i59 ], [ %i.dm, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.dm = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dn = icmp slt i32 %i.dl, %i.dk
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i32 %i.dl, 1                ; 3 uses
  %i.dp = icmp eq i32 %i.do, %i.dk
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.dp, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre400, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !15
  %i.dq = load i64, ptr %.sroa.7111.0..sroa_idx, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.dq, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.dr = load i32, ptr %i.di, align 4, !tbaa !13
  %i.ds = sub nsw i32 %i.dr, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  call void @llvm.assume(i1 %i.dt)
  %i.du = sub nsw i32 %.pre399, %i.dj             ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1
  call void @llvm.assume(i1 %i.dv)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.du, i32 %i.ds) ; 2 uses
  %i.dw = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dj ; 5 uses
  store i32 %i.dw, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !238
  %i.dx = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.dx to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.dq, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7111.0..sroa_idx, align 8
  %i.dy = icmp sgt i32 %i.dw, -1
  call void @llvm.assume(i1 %i.dy)
  %i.dz = load i32, ptr %.pre400, align 4, !tbaa !11 ; 2 uses
  %i.ea = icmp slt i32 %i.dl, %i.dz
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp sle i32 %i.dw, %.pre399
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp eq i32 %i.dw, %.pre399
  %i.ed = trunc i64 %i.dq to i32
  br i1 %i.ec, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.do, ptr %.sroa.6109.0..sroa_idx, align 8, !tbaa !237
  store i32 0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !238
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ee = phi i32 [ 0, %bb.f ], [ %i.dw, %bb.e ]  ; 2 uses
  %i.ef = phi i32 [ %i.do, %bb.f ], [ %i.dl, %bb.e ] ; 2 uses
  %i.eg = load i32, ptr %i.di, align 4, !tbaa !13
  %i.eh = icmp eq i32 %i.dx, %i.eg
  br i1 %i.eh, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.cz, align 4, !tbaa !239
  %i.ei = add nsw i32 %.0.i.i.i.i.i.i.i, %i.ed
  store i32 %i.ei, ptr %.sroa.7111.0..sroa_idx, align 8, !tbaa !240
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !241

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %._crit_edge351
  %i.ej = phi i32 [ %.pre402, %._crit_edge351 ], [ %i.ee, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.ek = phi i32 [ %.pre401, %._crit_edge351 ], [ %i.ef, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.el = load ptr, ptr %.sroa.9114.0..sroa_idx, align 8, !tbaa !231, !nonnull !154, !align !242
  %i.em = icmp eq ptr %i.el, %i.bn
  call void @llvm.assume(i1 %i.em)
  %i.en = load i32, ptr %.sroa.10115.0..sroa_idx, align 8, !tbaa !235
  %i.eo = icmp eq i32 %i.en, %i.bm
  call void @llvm.assume(i1 %i.eo)
  %i.ep = load ptr, ptr %.sroa.11117.0..sroa_idx, align 8, !tbaa !236, !nonnull !154, !align !242
  %i.eq = icmp eq ptr %i.ep, %i.bi
  call void @llvm.assume(i1 %i.eq)
  %i.er = load i32, ptr %.sroa.12118.0..sroa_idx, align 8, !tbaa !237
  %i.es = icmp eq i32 %i.er, %.sroa.13176.1.i128.i
  %i.et = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.eu = icmp eq i32 %i.et, %.sroa.24.0.i126.i
  call void @llvm.assume(i1 %i.es)
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq ptr %.pre, %i.bn
  call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp eq i32 %.pre399, %i.bm
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq ptr %.pre400, %i.bi
  call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp eq i32 %i.ek, %.sroa.13176.1.i128.i
  %i.ez = icmp eq i32 %i.ej, %.sroa.24.0.i126.i
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %i.fa, label %._crit_edge373, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph350.split, %._crit_edge
  %.1348 = phi i32 [ %.0371, %.lr.ph350.split ], [ %.3, %._crit_edge ]
  %.045347 = phi i32 [ %.sroa.089.4.extract.trunc, %.lr.ph350.split ], [ %i.fg, %._crit_edge ] ; 3 uses
  %.sroa.0174.1346 = phi ptr [ %.sroa.0174.0370, %.lr.ph350.split ], [ %.sroa.0174.3, %._crit_edge ]
  %.sroa.63164.1345 = phi i32 [ %.sroa.63164.0369, %.lr.ph350.split ], [ %i.ff, %._crit_edge ]
  %.sroa.51154.1344 = phi i32 [ %.sroa.51154.0368, %.lr.ph350.split ], [ %.sroa.51154.3.lcssa, %._crit_edge ]
  %.sroa.0127.1343 = phi i64 [ %.sroa.0127.0367, %.lr.ph350.split ], [ %.sroa.0127.3.lcssa, %._crit_edge ]
  %.sroa.18.1342 = phi i32 [ %.sroa.18.0366, %.lr.ph350.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1235341 = phi i32 [ %.0234365, %.lr.ph350.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fb = icmp samesign ult i32 %.045347, %i.j    ; 2 uses
  %i.fc = mul nuw nsw i32 %.045347, %i.m
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fd ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3237, %bb.j ], [ %i.ft, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2326, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0127.3.lcssa = phi i64 [ %.sroa.0127.2327, %bb.j ], [ %.sroa.0127.6, %bb.k ] ; 3 uses
  %.sroa.51154.3.lcssa = phi i32 [ %.sroa.51154.2328, %bb.j ], [ %.sroa.51154.5, %bb.k ] ; 3 uses
  %.sroa.63164.3.lcssa = phi i32 [ %.sroa.63164.2329, %bb.j ], [ %.sroa.63164.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046331, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.ff = freeze i32 %.sroa.63164.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.de
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !308

._crit_edge:                                      ; preds = %.loopexit
  %i.fg = add nsw i32 %.045347, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fg, %i.dd
  br i1 %.not, label %._crit_edge351, label %.lr.ph, !llvm.loop !309

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2332 = phi i32 [ %.1348, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046331 = phi i32 [ %.sroa.089.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0174.2330 = phi ptr [ %.sroa.0174.1346, %.lr.ph ], [ %.sroa.0174.3, %.loopexit ] ; 2 uses
  %.sroa.63164.2329 = phi i32 [ %.sroa.63164.1345, %.lr.ph ], [ %i.ff, %.loopexit ] ; 2 uses
  %.sroa.51154.2328 = phi i32 [ %.sroa.51154.1344, %.lr.ph ], [ %.sroa.51154.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0127.2327 = phi i64 [ %.sroa.0127.1343, %.lr.ph ], [ %.sroa.0127.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2326 = phi i32 [ %.sroa.18.1342, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2236325 = phi i32 [ %.1235341, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.fh = icmp sge i32 %i.df, %.2236325
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp eq i32 %i.df, %.2236325
  br i1 %i.fi, label %.preheader239.preheader, label %bb.j

.preheader239.preheader:                          ; preds = %bb.i
  %6 = load <2 x i16>, ptr %.sroa.0174.2330, align 2, !tbaa !208
  store <2 x i16> %6, ptr %.sroa.0, align 4, !tbaa !208
  call void @llvm.assume(i1 %i.fb)
  %i.fj = icmp samesign ule i32 %.046331, %i.h
  call void @llvm.assume(i1 %i.fj)
  %i.fk = shl nuw nsw i32 %.046331, 1             ; 2 uses
  %i.fl = icmp ule i32 %i.fk, %invariant.op
  call void @llvm.assume(i1 %i.fl)
  %i.fm = zext nneg i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.fm
  %i.fo = add nsw i32 %.2332, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader239.preheader, %bb.i
  %.3237 = phi i32 [ 0, %.preheader239.preheader ], [ %.2236325, %bb.i ] ; 3 uses
  %.sroa.0174.3 = phi ptr [ %i.fn, %.preheader239.preheader ], [ %.sroa.0174.2330, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.fo, %.preheader239.preheader ], [ %.2332, %bb.i ] ; 3 uses
  %i.fp = sub nsw i32 %i.df, %.3237               ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = add nsw i32 %i.fp, %.046331
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.de) ; 4 uses
  %.not50312 = icmp eq i32 %.046331, %.sroa.speculated
  br i1 %.not50312, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.fs = add i32 %.3237, %.sroa.speculated
  %i.ft = sub i32 %i.fs, %.046331
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147318 = phi i32 [ %i.fw, %bb.k ], [ %.046331, %.preheader.preheader ] ; 2 uses
  %.sroa.63164.3317 = phi i32 [ %.sroa.63164.5, %bb.k ], [ %.sroa.63164.2329, %.preheader.preheader ]
  %.sroa.51154.3316 = phi i32 [ %.sroa.51154.5, %bb.k ], [ %.sroa.51154.2328, %.preheader.preheader ]
  %.sroa.0127.3315 = phi i64 [ %.sroa.0127.6, %bb.k ], [ %.sroa.0127.2327, %.preheader.preheader ]
  %.sroa.18.3314 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2326, %.preheader.preheader ]
  %i.fu = shl nsw i32 %.147318, 1
  %i.fv = zext i32 %i.fu to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.fw = add nsw i32 %.147318, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.fw, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !310

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.fx = phi i1 [ true, %.preheader ], [ false, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0, %.preheader ], [ %.sroa.0.2.gep486.sroa_idx487, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 2 uses
  %indvars.iv.sroa.phi490.sroa.speculated = phi ptr [ %i.r, %.preheader ], [ %i.t, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %.sroa.63164.4310 = phi i32 [ %.sroa.63164.3317, %.preheader ], [ %.sroa.63164.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51154.4307 = phi i32 [ %.sroa.51154.3316, %.preheader ], [ %.sroa.51154.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0127.4306 = phi i64 [ %.sroa.0127.3315, %.preheader ], [ %.sroa.0127.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4305 = phi i32 [ %.sroa.18.3314, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.fy = icmp samesign ult i32 %.sroa.18.4305, 65
  call void @llvm.assume(i1 %i.fy)
  %.not.i69 = icmp samesign ult i32 %.sroa.18.4305, 32
  br i1 %.not.i69, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.fz = add nuw nsw i32 %.sroa.51154.4307, 8
  %.not.i.i70 = icmp samesign ugt i32 %i.fz, %.sroa.234.0.copyload
  br i1 %.not.i.i70, label %bb.o, label %bb.n, !prof !192

bb.n:                                             ; preds = %bb.m
  %i.ga = zext nneg i32 %.sroa.51154.4307 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.ga
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gc = icmp samesign ugt i32 %.sroa.51154.4307, %i.cx
  br i1 %i.gc, label %bb.p, label %bb.q, !prof !192

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51154.4307) ; 3 uses
  %i.gd = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %i.gd)
  %i.ge = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.gf = icmp samesign ult i32 %i.ge, 9
  call void @llvm.assume(i1 %i.gf)
  %i.gg = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gg
  %i.gi = zext nneg i32 %i.ge to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.gh, i64 %i.gi, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.q, %bb.n
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.q ], [ %i.gb, %bb.n ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.gj = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.gk = icmp ne i8 %i.gj, -1
  %i.gl = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.gm = trunc i64 %i.gl to i8                   ; 3 uses
  %i.gn = icmp ne i8 %i.gm, -1
  %i.go = and i1 %i.gk, %i.gn
  %i.gp = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.gq = trunc i64 %i.gp to i8                   ; 2 uses
  %i.gr = icmp ne i8 %i.gq, -1
  %i.gs = and i1 %i.gr, %i.go
  %i.gt = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.gu = icmp ne i64 %i.gt, 4278190080
  %i.gv = and i1 %i.gu, %i.gs
  br i1 %i.gv, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.gw = zext nneg i32 %.sroa.18.4305 to i64     ; 8 uses
  %i.gx = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.gw, 8
  %i.gy = sub nuw nsw i64 56, %i.gw
  %i.gz = shl nuw i64 %i.gx, %i.gy
  %i.ha = or i64 %i.gz, %.sroa.0127.4306          ; 2 uses
  %.not.i79 = icmp eq i8 %i.gj, -1
  br i1 %.not.i79, label %bb.s, label %bb.u

bb.r:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hb = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.hc = call i32 @llvm.bswap.i32(i32 %i.hb)
  %i.hd = zext i32 %i.hc to i64
  %i.he = sub nuw nsw i32 32, %.sroa.18.4305
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = shl nuw i64 %i.hd, %i.hf
  %i.hh = or i64 %i.hg, %.sroa.0127.4306
  %i.hi = or disjoint i32 %.sroa.18.4305, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.s:                                             ; preds = %.preheader.i
  %i.hj = icmp eq i8 %i.gm, 0
  br i1 %i.hj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %.062.lcssa.i.neg377 = phi i32 [ 0, %bb.s ], [ -1, %bb.v ], [ -2, %bb.x ], [ -3, %bb.z ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.s ], [ %.2.ph.i, %bb.v ], [ %i.ib, %bb.x ], [ %i.im, %bb.z ]
  %.lcssa66.wide.i = phi i64 [ %i.gw, %bb.s ], [ %indvars.iv.next.i, %bb.v ], [ %indvars.iv.next.1.i, %bb.x ], [ %indvars.iv.next.2.i, %bb.z ]
  %.lcssa.i80 = phi i64 [ %i.ha, %bb.s ], [ %i.hv, %bb.v ], [ %i.ii, %bb.x ], [ %i.it, %bb.z ]
  %i.hk = add nuw nsw i32 %.01861.lcssa.i, %.sroa.51154.4307
  %i.hl = icmp slt i32 %.sroa.63164.4310, 0
  call void @llvm.assume(i1 %i.hl)
  %i.hm = lshr i64 -1, %.lcssa66.wide.i
  %i.hn = xor i64 %i.hm, -1
  %i.ho = and i64 %.lcssa.i80, %i.hn
  %.neg = sub nsw i32 %.sroa.234.0.copyload, %.sroa.51154.4307
  %reass.sub.i = add nsw i32 %.neg, %.062.lcssa.i.neg377 ; 2 uses
  %i.hp = add nuw nsw i32 %reass.sub.i, 4
  %i.hq = icmp ugt i32 %reass.sub.i, 1
  call void @llvm.assume(i1 %i.hq)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s, %.preheader.i
  %i.hr = phi i8 [ %i.gm, %.preheader.i ], [ %i.gq, %bb.s ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.s ] ; 3 uses
  %i.hs = zext i8 %i.hr to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.gw, 16
  %i.ht = sub nuw nsw i64 48, %i.gw
  %i.hu = shl nuw nsw i64 %i.hs, %i.ht
  %i.hv = or i64 %i.hu, %i.ha                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.hr, -1
  br i1 %.not.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hw = zext nneg i32 %.2.ph.i to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !191
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ 1, %bb.u ], [ 2, %bb.v ]
  %i.ib = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %i.ic ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !191 ; 2 uses
  %i.if = zext i8 %i.ie to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.gw, 24
  %i.ig = sub nuw nsw i64 40, %i.gw
  %i.ih = shl nuw nsw i64 %i.if, %i.ig
  %i.ii = or i64 %i.ih, %i.hv                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.ie, -1
  br i1 %.not.2.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !191
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink72.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.im = add nuw nsw i32 %.sink72.i, %i.ib       ; 3 uses
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %i.in ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !191 ; 2 uses
  %i.iq = zext i8 %i.ip to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.18.4305, 32
  %i.ir = sub nuw nsw i64 32, %i.gw
  %i.is = shl nuw nsw i64 %i.iq, %i.ir
  %i.it = or i64 %i.is, %i.ii                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.ip, -1
  br i1 %.not.3.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !191
  %i.iw = icmp eq i8 %i.iv, 0
  br i1 %i.iw, label %.loopexit.i, label %bb.t

.loopexit.i:                                      ; preds = %bb.z, %bb.y
  %.sink73.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.ix = add nuw nsw i32 %.sink73.i, %i.im
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i, %bb.t
  %.sroa.18.11 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.t ]
  %.sroa.0127.11 = phi i64 [ %i.it, %.loopexit.i ], [ %i.ho, %bb.t ]
  %.sroa.63164.6 = phi i32 [ %.sroa.63164.4310, %.loopexit.i ], [ %i.hk, %bb.t ]
  %.3.i = phi i32 [ %i.ix, %.loopexit.i ], [ %i.hp, %bb.t ] ; 2 uses
  %i.iy = icmp sgt i32 %.3.i, 4
  call void @llvm.assume(i1 %i.iy)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.r, %bb.aa
  %.sroa.18.12 = phi i32 [ %i.hi, %bb.r ], [ %.sroa.18.11, %bb.aa ]
  %.sroa.0127.12 = phi i64 [ %i.hh, %bb.r ], [ %.sroa.0127.11, %bb.aa ]
  %.sroa.63164.7 = phi i32 [ %.sroa.63164.4310, %bb.r ], [ %.sroa.63164.6, %bb.aa ]
  %.021.i = phi i32 [ 4, %bb.r ], [ %.3.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.iz = add nuw nsw i32 %.021.i, %.sroa.51154.4307
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.l, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.18.7 = phi i32 [ %.sroa.18.12, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.18.4305, %bb.l ]
  %.sroa.0127.7 = phi i64 [ %.sroa.0127.12, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0127.4306, %bb.l ] ; 2 uses
  %.sroa.51154.5 = phi i32 [ %i.iz, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.51154.4307, %bb.l ] ; 3 uses
  %.sroa.63164.5 = phi i32 [ %.sroa.63164.7, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.63164.4310, %bb.l ] ; 3 uses
  %i.ja = lshr i64 %.sroa.0127.7, 53              ; 3 uses
  %i.jb = trunc nuw nsw i64 %i.ja to i32          ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi490.sroa.speculated, i64 128
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !248
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.ja
end_hunk_0
