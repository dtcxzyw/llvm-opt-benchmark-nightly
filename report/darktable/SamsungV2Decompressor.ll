Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  %.not59.i = icmp eq i32 %i.jr, 0                ; 2 uses
  %i.js = and i64 %indvars.iv, 1
  %.not60.i = icmp eq i64 %i.js, 0
  %i.jt = select i1 %.not60.i, i32 1, i32 -1
  %.048.i = select i1 %.not59.i, i32 %i.al, i32 %i.ak ; 2 uses
  %i.ju = select i1 %.not59.i, i32 %i.jt, i32 0
  %i.jv = trunc i64 %i.jo to i32
  %i.jw = add i32 %i.ia, %i.jv
  %.0.i25 = add nsw i32 %i.jw, %i.ju              ; 5 uses
  %i.jx = icmp slt i32 %.0.i25, 0
  br i1 %i.jx, label %.split384.us, label %bb.bb

.split384.us:                                     ; preds = %.split, %.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.bb:                                            ; preds = %.split
  %.not61.i = icmp slt i32 %.0.i25, %i.cf
  br i1 %.not61.i, label %bb.bc, label %.split386.us

bb.bc:                                            ; preds = %bb.bb
  %i.jy = add nuw nsw i32 %.0.i25, 2              ; 3 uses
  %.not63.i = icmp samesign ult i32 %i.jy, %i.cf
  br i1 %.not63.i, label %bb.bd, label %.split386.us

.split386.us:                                     ; preds = %bb.bb, %bb.bc, %bb.aw
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.jz = icmp samesign ult i32 %.0.i25, %i.cq
  tail call void @llvm.assume(i1 %i.jz)
  %i.ka = icmp samesign ult i32 %.048.i, %i.cs
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = mul nuw nsw i32 %.048.i, %i.cv
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.kc ; 2 uses
  %i.ke = zext nneg i32 %.0.i25 to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !151 ; 2 uses
  switch i32 %i.hn, label %bb.bf [
    i32 4, label %bb.be
    i32 2, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  %i.kh = zext i16 %i.kg to i32
  %i.ki = icmp samesign ult i32 %i.jy, %i.cq
  tail call void @llvm.assume(i1 %i.ki)
  %i.kj = zext nneg i32 %i.jy to i64
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %i.kj
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !151
  %i.km = zext i16 %i.kl to i32
  %i.kn = add nuw nsw i32 %i.kh, 1
  %i.ko = add nuw nsw i32 %i.kn, %i.km
  %i.kp = lshr i32 %i.ko, 1
  %i.kq = trunc nuw i32 %i.kp to i16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink634 = phi i16 [ %i.kq, %bb.be ], [ %i.kg, %bb.bd ]
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink634, ptr %i.kr, align 2, !tbaa !151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split, !llvm.loop !138

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split: ; preds = %.preheader328.preheader, %bb.as
  %i.ks = phi <16 x i16> [ %i.hq, %bb.as ], [ %i.hx, %.preheader328.preheader ]
  store <16 x i16> %i.ks, ptr %4, align 2, !tbaa !151
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit: ; preds = %bb.bf, %bb.ba, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !152
  %i.kt = and i8 %i.cy, 1
  %.not326 = icmp eq i8 %i.kt, 0
  br i1 %.not326, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %i.ku = icmp samesign ult i32 %.sroa.30.2, 65
  tail call void @llvm.assume(i1 %i.ku), !noalias !152
  %i.kv = and i32 %.sroa.80211.2, 3
  %i.kw = icmp eq i32 %i.kv, 0
  tail call void @llvm.assume(i1 %i.kw), !noalias !152
  %.not.i.i115 = icmp eq i32 %.sroa.30.2, 0
  br i1 %.not.i.i115, label %bb.bh, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.kx = add nuw nsw i32 %.sroa.80211.2, 4       ; 2 uses
  %.not.i.i.i118 = icmp samesign ugt i32 %i.kx, %i.r
  br i1 %.not.i.i.i118, label %bb.bj, label %bb.bi, !prof !119

bb.bi:                                            ; preds = %bb.bh
  %i.ky = zext nneg i32 %.sroa.80211.2 to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ky
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

bb.bj:                                            ; preds = %bb.bh
  %i.la = icmp samesign ugt i32 %.sroa.80211.2, %i.ai
  br i1 %i.la, label %bb.bk, label %bb.bl, !prof !119

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.bl:                                            ; preds = %bb.bj
  store i32 0, ptr %.sroa.0.i.i.i114, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i125 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.2) ; 3 uses
  %i.lb = add nuw nsw i32 %.sroa.speculated27.i.i.i.i125, 4
  %.sroa.speculated.i.i.i.i126 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.lb)
  %i.lc = sub nsw i32 %.sroa.speculated.i.i.i.i126, %.sroa.speculated27.i.i.i.i125 ; 2 uses
  %i.ld = icmp samesign ult i32 %i.lc, 5
  tail call void @llvm.assume(i1 %i.ld), !noalias !152
  %i.le = zext nneg i32 %.sroa.speculated27.i.i.i.i125 to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.le
  %i.lg = zext nneg i32 %i.lc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i114, ptr align 1 %i.lf, i64 %i.lg, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120: ; preds = %bb.bl, %bb.bi
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121 = phi ptr [ %.sroa.0.i.i.i114, %bb.bl ], [ %i.kz, %bb.bi ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.lh = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 to i64
  %i.li = shl nuw i64 %i.lh, 32
  %i.lj = or i64 %i.li, %.sroa.0174.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127: ; preds = %bb.bg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120
  %.sroa.80211.16 = phi i32 [ %i.kx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.80211.2, %bb.bg ] ; 2 uses
  %i.lk = phi i64 [ %i.lj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.0174.2, %bb.bg ] ; 2 uses
  %i.ll = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.30.2, %bb.bg ]
  %i.lm = add nsw i32 %i.ll, -1                   ; 2 uses
  %i.ln = shl i64 %i.lk, 1                        ; 2 uses
  %.not.i40 = icmp sgt i64 %i.lk, -1
  br i1 %.not.i40, label %bb.bm, label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.bm:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %.sroa.80211.5 = phi i32 [ %.sroa.80211.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 17 uses
  %.sroa.30.5 = phi i32 [ %.sroa.30.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 14 uses
  %.sroa.0174.5 = phi i64 [ %.sroa.0174.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.ln, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 5 uses
  %i.lo = icmp samesign ult i32 %.sroa.30.5, 65
  tail call void @llvm.assume(i1 %i.lo), !noalias !152
  %.not.i.i129 = icmp samesign ult i32 %.sroa.30.5, 2
  br i1 %.not.i.i129, label %bb.bn, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.lp = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132 = icmp samesign ugt i32 %i.lp, %i.r
  br i1 %.not.i.i.i132, label %bb.bp, label %bb.bo, !prof !119

bb.bo:                                            ; preds = %bb.bn
  %i.lq = zext nneg i32 %.sroa.80211.5 to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lq
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

bb.bp:                                            ; preds = %bb.bn
  %i.ls = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.ls, label %bb.bq, label %bb.br, !prof !119

bb.bq:                                            ; preds = %bb.cc, %bb.by, %bb.bu, %bb.bp
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.br:                                            ; preds = %bb.bp
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.lt = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139, 4
  %.sroa.speculated.i.i.i.i140 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.lt)
  %i.lu = sub nsw i32 %.sroa.speculated.i.i.i.i140, %.sroa.speculated27.i.i.i.i139 ; 2 uses
  %i.lv = icmp samesign ult i32 %i.lu, 5
  tail call void @llvm.assume(i1 %i.lv), !noalias !152
  %i.lw = zext nneg i32 %.sroa.speculated27.i.i.i.i139 to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lw
  %i.ly = zext nneg i32 %i.lu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.lx, i64 %i.ly, i1 false), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread: ; preds = %bb.bo, %bb.br
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135 = phi ptr [ %.sroa.0.i.i.i128, %bb.br ], [ %i.lr, %bb.bo ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.lz = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 to i64
  %i.ma = sub nuw nsw i32 32, %.sroa.30.5
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = shl nuw i64 %i.lz, %i.mb
  %i.md = or i64 %i.mc, %.sroa.0174.5             ; 2 uses
  %i.me = lshr i64 %i.md, 62
  %i.mf = trunc nuw nsw i64 %i.me to i32
  %i.mg = or disjoint i32 %.sroa.30.5, 30
  %i.mh = shl i64 %i.md, 2
  %i.mi = icmp ult i32 %.sroa.30.5, 35
  tail call void @llvm.assume(i1 %i.mi), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141: ; preds = %bb.bm
  %i.mj = lshr i64 %.sroa.0174.5, 62
  %i.mk = trunc nuw nsw i64 %i.mj to i32          ; 4 uses
  %5 = add nsw i32 %.sroa.30.5, -2
  %i.ml = shl i64 %.sroa.0174.5, 2                ; 2 uses
  %.not.i.i129.1 = icmp samesign ult i32 %.sroa.30.5, 4
  br i1 %.not.i.i129.1, label %bb.bs, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1

bb.bs:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mm = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.1 = icmp samesign ugt i32 %i.mm, %i.r
  br i1 %.not.i.i.i132.1, label %bb.bu, label %bb.bt, !prof !119

bb.bt:                                            ; preds = %bb.bs
  %i.mn = zext nneg i32 %.sroa.80211.5 to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mn
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

bb.bu:                                            ; preds = %bb.bs
  %i.mp = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.mp, label %bb.bq, label %bb.bv, !prof !119

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.mq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.1, 4
  %.sroa.speculated.i.i.i.i140.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.mq)
  %i.mr = sub nsw i32 %.sroa.speculated.i.i.i.i140.1, %.sroa.speculated27.i.i.i.i139.1 ; 2 uses
  %i.ms = icmp samesign ult i32 %i.mr, 5
  tail call void @llvm.assume(i1 %i.ms), !noalias !152
  %i.mt = zext nneg i32 %.sroa.speculated27.i.i.i.i139.1 to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mt
  %i.mv = zext nneg i32 %i.mr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.mu, i64 %i.mv, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1: ; preds = %bb.bv, %bb.bt
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1 = phi ptr [ %.sroa.0.i.i.i128, %bb.bv ], [ %i.mo, %bb.bt ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mw = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 to i64
  %6 = or disjoint i32 %5, 32
  %i.mx = sub nuw nsw i32 34, %.sroa.30.5
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl nuw i64 %i.mw, %i.my
  %i.na = or i64 %i.mz, %i.ml
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread
  %.ph = phi i32 [ %i.mf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.sroa.80211.17.1.ph = phi i32 [ %i.lp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.ph583 = phi i64 [ %i.mh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.na, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %.ph584 = phi i32 [ %i.mg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %6, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %i.nb = lshr i64 %.ph583, 62
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = add nsw i32 %.ph584, -2
  %i.ne = shl i64 %.ph583, 2
  %i.nf = icmp samesign ult i32 %.ph584, 67
  tail call void @llvm.assume(i1 %i.nf), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  %i.ng = lshr i64 %i.ml, 62
  %i.nh = trunc nuw nsw i64 %i.ng to i32          ; 3 uses
  %7 = add nsw i32 %.sroa.30.5, -4
  %i.ni = shl i64 %.sroa.0174.5, 4                ; 3 uses
  %.not.i.i129.2 = icmp samesign ult i32 %.sroa.30.5, 6
  br i1 %.not.i.i129.2, label %bb.bw, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2

bb.bw:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.nj = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.2 = icmp samesign ugt i32 %i.nj, %i.r
  br i1 %.not.i.i.i132.2, label %bb.by, label %bb.bx, !prof !119

bb.bx:                                            ; preds = %bb.bw
  %i.nk = zext nneg i32 %.sroa.80211.5 to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2

bb.by:                                            ; preds = %bb.bw
  %i.nm = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.nm, label %bb.bq, label %bb.bz, !prof !119

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.nn = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.2, 4
  %.sroa.speculated.i.i.i.i140.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.nn)
  %i.no = sub nsw i32 %.sroa.speculated.i.i.i.i140.2, %.sroa.speculated27.i.i.i.i139.2 ; 2 uses
  %i.np = icmp samesign ult i32 %i.no, 5
  tail call void @llvm.assume(i1 %i.np), !noalias !152
  %i.nq = zext nneg i32 %.sroa.speculated27.i.i.i.i139.2 to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nq
  %i.ns = zext nneg i32 %i.no to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.nr, i64 %i.ns, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2: ; preds = %bb.bz, %bb.bx
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.2 = phi ptr [ %.sroa.0.i.i.i128, %bb.bz ], [ %i.nl, %bb.bx ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.2, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.nt = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.2 to i64
  %8 = or disjoint i32 %7, 32
  %i.nu = sub nuw nsw i32 36, %.sroa.30.5
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = shl nuw i64 %i.nt, %i.nv
  %i.nx = or i64 %i.nw, %i.ni
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread
  %.ph587 = phi i32 [ %i.nc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.nh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.ph588 = phi i32 [ %.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.mk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.sroa.80211.17.2.ph = phi i32 [ %.sroa.80211.17.1.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.nj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.ph589 = phi i64 [ %i.ne, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.nx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ] ; 2 uses
  %.ph590 = phi i32 [ %i.nd, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %8, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ] ; 2 uses
  %i.ny = add nsw i32 %.ph590, -2
  %i.nz = shl i64 %.ph589, 2
  %i.oa = icmp samesign ult i32 %.ph590, 67
  tail call void @llvm.assume(i1 %i.oa), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  %i.ob = add nsw i32 %.sroa.30.5, -6             ; 2 uses
  %i.oc = shl i64 %.sroa.0174.5, 6                ; 2 uses
  %.not.i.i129.3 = icmp samesign ult i32 %.sroa.30.5, 8
  br i1 %.not.i.i129.3, label %bb.ca, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

bb.ca:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.od = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.3 = icmp samesign ugt i32 %i.od, %i.r
  br i1 %.not.i.i.i132.3, label %bb.cc, label %bb.cb, !prof !119

bb.cb:                                            ; preds = %bb.ca
  %i.oe = zext nneg i32 %.sroa.80211.5 to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.oe
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3

bb.cc:                                            ; preds = %bb.ca
  %i.og = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.og, label %bb.bq, label %bb.cd, !prof !119

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.oh = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.3, 4
  %.sroa.speculated.i.i.i.i140.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.oh)
  %i.oi = sub nsw i32 %.sroa.speculated.i.i.i.i140.3, %.sroa.speculated27.i.i.i.i139.3 ; 2 uses
  %i.oj = icmp samesign ult i32 %i.oi, 5
  tail call void @llvm.assume(i1 %i.oj), !noalias !152
  %i.ok = zext nneg i32 %.sroa.speculated27.i.i.i.i139.3 to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ok
  %i.om = zext nneg i32 %i.oi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.ol, i64 %i.om, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3: ; preds = %bb.cd, %bb.cb
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.3 = phi ptr [ %.sroa.0.i.i.i128, %bb.cd ], [ %i.of, %bb.cb ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.3, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.on = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.3 to i64
  %i.oo = or disjoint i32 %i.ob, 32
  %i.op = sub nuw nsw i32 38, %.sroa.30.5
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = shl nuw i64 %i.on, %i.oq
  %i.os = or i64 %i.or, %i.oc
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2
  %.in.in = phi i64 [ %i.ni, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ni, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph589, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.ot = phi i32 [ %i.mk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.mk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph588, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.ou = phi i32 [ %i.nh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.nh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph587, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %.sroa.80211.17.3 = phi i32 [ %i.od, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %.sroa.80211.5, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.sroa.80211.17.2.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 10 uses
  %i.ov = phi i64 [ %i.os, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.oc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.nz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 2 uses
  %i.ow = phi i32 [ %i.oo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ob, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.ny, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 4 uses
  %.in = lshr i64 %.in.in, 62
  %i.ox = trunc nuw nsw i64 %.in to i32
  %i.oy = lshr i64 %i.ov, 62
  %i.oz = trunc nuw nsw i64 %i.oy to i32
  %i.pa = add nsw i32 %i.ow, -2                   ; 5 uses
  %i.pb = shl i64 %i.ov, 2                        ; 5 uses
  switch i32 %i.ot, label %default.unreachable [
    i32 0, label %bb.dj
    i32 1, label %bb.dk
    i32 2, label %bb.dl
    i32 3, label %bb.do
  ]

.preheader327.1:                                  ; preds = %bb.du
  switch i32 %i.ou, label %default.unreachable [
    i32 0, label %bb.cm
    i32 1, label %bb.cl
    i32 2, label %bb.cj
    i32 3, label %bb.ce
  ]

bb.ce:                                            ; preds = %.preheader327.1
  %i.pc = icmp samesign ult i32 %.sroa.30.8, 65
  tail call void @llvm.assume(i1 %i.pc), !noalias !152
  %i.pd = icmp sgt i32 %.sroa.80211.8, -1
  tail call void @llvm.assume(i1 %i.pd), !noalias !152
  %i.pe = and i32 %.sroa.80211.8, 3
  %i.pf = icmp eq i32 %i.pe, 0
  tail call void @llvm.assume(i1 %i.pf), !noalias !152
  %.not.i.i143.1 = icmp samesign ult i32 %.sroa.30.8, 4
  br i1 %.not.i.i143.1, label %bb.cf, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.pg = add nuw nsw i32 %.sroa.80211.8, 4       ; 2 uses
  %.not.i.i.i146.1 = icmp samesign ugt i32 %i.pg, %i.r
  br i1 %.not.i.i.i146.1, label %bb.ch, label %bb.cg, !prof !119

bb.cg:                                            ; preds = %bb.cf
  %i.ph = zext nneg i32 %.sroa.80211.8 to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ph
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1

bb.ch:                                            ; preds = %bb.cf
  %i.pj = icmp samesign ugt i32 %.sroa.80211.8, %i.ai
  br i1 %i.pj, label %bb.ds, label %bb.ci, !prof !119

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8) ; 3 uses
  %i.pk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.1, 4
  %.sroa.speculated.i.i.i.i154.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.pk)
  %i.pl = sub nsw i32 %.sroa.speculated.i.i.i.i154.1, %.sroa.speculated27.i.i.i.i153.1 ; 2 uses
  %i.pm = icmp samesign ult i32 %i.pl, 5
  tail call void @llvm.assume(i1 %i.pm), !noalias !152
  %i.pn = zext nneg i32 %.sroa.speculated27.i.i.i.i153.1 to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.pn
  %i.pp = zext nneg i32 %i.pl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.po, i64 %i.pp, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1: ; preds = %bb.ci, %bb.cg
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.1 = phi ptr [ %.sroa.0.i.i.i142, %bb.ci ], [ %i.pi, %bb.cg ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.1, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.pq = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.1 to i64
  %i.pr = or disjoint i32 %.sroa.30.8, 32
  %i.ps = sub nuw nsw i32 32, %.sroa.30.8
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = shl nuw i64 %i.pq, %i.pt
  %i.pv = or i64 %i.pu, %.sroa.0174.8
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1, %bb.ce
  %.sroa.80211.18.1 = phi i32 [ %i.pg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.80211.8, %bb.ce ]
  %i.pw = phi i64 [ %i.pv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.0174.8, %bb.ce ] ; 2 uses
  %i.px = phi i32 [ %i.pr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.30.8, %bb.ce ]
  %i.py = lshr i64 %i.pw, 60
  %i.pz = trunc nuw nsw i64 %i.py to i32
  %i.qa = add nsw i32 %i.px, -4
  %i.qb = shl i64 %i.pw, 4
  br label %bb.cn

bb.cj:                                            ; preds = %.preheader327.1
  %i.qc = load i32, ptr %i.bd, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.dm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qe = add nsw i32 %i.qc, -1
  br label %bb.cn

bb.cl:                                            ; preds = %.preheader327.1
  %i.qf = load i32, ptr %i.be, align 8, !tbaa !20, !noalias !152
  %i.qg = add nsw i32 %i.qf, 1
  br label %bb.cn

bb.cm:                                            ; preds = %.preheader327.1
  %i.qh = load i32, ptr %i.bf, align 8, !tbaa !20, !noalias !152
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1
  %.sroa.0486.sroa.9.1 = phi i32 [ %i.qh, %bb.cm ], [ %i.qg, %bb.cl ], [ %i.qe, %bb.ck ], [ %i.pz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 4 uses
  %.sroa.80211.8.1 = phi i32 [ %.sroa.80211.8, %bb.cm ], [ %.sroa.80211.8, %bb.cl ], [ %.sroa.80211.8, %bb.ck ], [ %.sroa.80211.18.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 10 uses
  %.sroa.30.8.1 = phi i32 [ %.sroa.30.8, %bb.cm ], [ %.sroa.30.8, %bb.cl ], [ %.sroa.30.8, %bb.ck ], [ %i.qa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 8 uses
  %.sroa.0174.8.1 = phi i64 [ %.sroa.0174.8, %bb.cm ], [ %.sroa.0174.8, %bb.cl ], [ %.sroa.0174.8, %bb.ck ], [ %i.qb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 5 uses
  %i.qi = load i32, ptr %i.bh, align 4, !tbaa !20, !noalias !152
  store i32 %i.qi, ptr %i.bg, align 8, !tbaa !20, !noalias !152
  store i32 %.sroa.0486.sroa.9.1, ptr %i.bh, align 4, !tbaa !20, !noalias !152
  %i.qj = icmp ugt i32 %.sroa.0486.sroa.9.1, %i.uk
  br i1 %i.qj, label %bb.dv, label %.preheader327.2

.preheader327.2:                                  ; preds = %bb.cn
  switch i32 %i.ox, label %default.unreachable [
    i32 0, label %bb.cw
    i32 1, label %bb.cv
    i32 2, label %bb.ct
    i32 3, label %bb.co
  ]

bb.co:                                            ; preds = %.preheader327.2
  %i.qk = icmp samesign ult i32 %.sroa.30.8.1, 65
  tail call void @llvm.assume(i1 %i.qk), !noalias !152
  %i.ql = icmp sgt i32 %.sroa.80211.8.1, -1
  tail call void @llvm.assume(i1 %i.ql), !noalias !152
  %i.qm = and i32 %.sroa.80211.8.1, 3
  %i.qn = icmp eq i32 %i.qm, 0
  tail call void @llvm.assume(i1 %i.qn), !noalias !152
  %.not.i.i143.2 = icmp samesign ult i32 %.sroa.30.8.1, 4
  br i1 %.not.i.i143.2, label %bb.cp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.qo = add nuw nsw i32 %.sroa.80211.8.1, 4     ; 2 uses
  %.not.i.i.i146.2 = icmp samesign ugt i32 %i.qo, %i.r
  br i1 %.not.i.i.i146.2, label %bb.cr, label %bb.cq, !prof !119

bb.cq:                                            ; preds = %bb.cp
  %i.qp = zext nneg i32 %.sroa.80211.8.1 to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.qp
end_hunk_0
