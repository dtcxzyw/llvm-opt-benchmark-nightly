Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
bb.aw:                                            ; preds = %.split.us
  %.not61.i.us = icmp slt i32 %.0.i25.us, %i.cf
  br i1 %.not61.i.us, label %bb.ax, label %.split386.us

bb.ax:                                            ; preds = %bb.aw
  switch i32 %i.hn, label %bb.az [
    i32 4, label %bb.ay
    i32 2, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  %i.in = add nuw nsw i32 %.0.i25.us, 2           ; 2 uses
  %i.io = icmp samesign ult i32 %.048.i.us, %i.cs
  tail call void @llvm.assume(i1 %i.io)
  %i.ip = mul nuw nsw i32 %.048.i.us, %i.cv
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.iq ; 2 uses
  %i.is = zext nneg i32 %.0.i25.us to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !151
  %i.iv = zext i16 %i.iu to i32
  %i.iw = icmp samesign ult i32 %i.in, %i.cq
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = zext nneg i32 %i.in to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !151
  %i.ja = zext i16 %i.iz to i32
  %i.jb = add nuw nsw i32 %i.iv, 1
  %i.jc = add nuw nsw i32 %i.jb, %i.ja
  %i.jd = lshr i32 %i.jc, 1
  %i.je = trunc nuw i32 %i.jd to i16
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jf = icmp samesign ult i32 %.0.i25.us, %i.cq
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = icmp samesign ult i32 %.048.i.us, %i.cs
  tail call void @llvm.assume(i1 %i.jg)
  %i.jh = mul nuw nsw i32 %.048.i.us, %i.cv
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.ji
  %i.jk = zext nneg i32 %.0.i25.us to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !151
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sink632 = phi i16 [ %i.jm, %bb.az ], [ %i.je, %bb.ay ]
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv428
  store i16 %.sink632, ptr %i.jn, align 2, !tbaa !151
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next429, 16
  br i1 %exitcond431.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split.us, !llvm.loop !138

.split:                                           ; preds = %bb.av, %bb.bf
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bf ], [ 0, %bb.av ] ; 5 uses
  %i.jo = or disjoint i64 %indvars.iv, %indvars.iv458
  %i.jp = trunc i64 %indvars.iv to i32
  %i.jq = add i32 %1, %i.jp
  %i.jr = and i32 %i.jq, 1
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
  %.sroa.30.5 = phi i32 [ %.sroa.30.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 15 uses
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
  %5 = add nuw nsw i32 %.sroa.30.5, 30
  %i.mx = sub nuw nsw i32 34, %.sroa.30.5
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl nuw i64 %i.mw, %i.my
  %i.na = or i64 %i.mz, %i.ml
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread
  %.ph = phi i32 [ %i.mf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.sroa.80211.17.1.ph = phi i32 [ %i.lp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.ph583 = phi i64 [ %i.mh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.na, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %.ph584 = phi i32 [ %i.mg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %5, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
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
  %6 = add nuw nsw i32 %.sroa.30.5, 28
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
  %.ph590 = phi i32 [ %i.nd, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %6, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ] ; 2 uses
  %i.ny = add nsw i32 %.ph590, -2
  %i.nz = shl i64 %.ph589, 2
  %i.oa = icmp samesign ult i32 %.ph590, 67
  tail call void @llvm.assume(i1 %i.oa), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  %i.ob = add nsw i32 %.sroa.30.5, -6
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
  %7 = add nuw nsw i32 %.sroa.30.5, 26
  %i.oo = sub nuw nsw i32 38, %.sroa.30.5
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = shl nuw i64 %i.on, %i.op
  %i.or = or i64 %i.oq, %i.oc
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2
  %.in.in = phi i64 [ %i.ni, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ni, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph589, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.os = phi i32 [ %i.mk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.mk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph588, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.ot = phi i32 [ %i.nh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.nh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph587, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %.sroa.80211.17.3 = phi i32 [ %i.od, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %.sroa.80211.5, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.sroa.80211.17.2.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 10 uses
  %i.ou = phi i64 [ %i.or, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.oc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.nz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 2 uses
  %i.ov = phi i32 [ %7, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ob, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.ny, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 5 uses
  %.in = lshr i64 %.in.in, 62
  %i.ow = trunc nuw nsw i64 %.in to i32
  %i.ox = lshr i64 %i.ou, 62
  %i.oy = trunc nuw nsw i64 %i.ox to i32
  %i.oz = add nsw i32 %i.ov, -2                   ; 4 uses
  %i.pa = shl i64 %i.ou, 2                        ; 5 uses
  switch i32 %i.os, label %default.unreachable [
    i32 0, label %bb.dj
    i32 1, label %bb.dk
    i32 2, label %bb.dl
    i32 3, label %bb.do
  ]

.preheader327.1:                                  ; preds = %bb.du
  switch i32 %i.ot, label %default.unreachable [
    i32 0, label %bb.cm
    i32 1, label %bb.cl
    i32 2, label %bb.cj
    i32 3, label %bb.ce
  ]

bb.ce:                                            ; preds = %.preheader327.1
  %i.pb = icmp samesign ult i32 %.sroa.30.8, 65
  tail call void @llvm.assume(i1 %i.pb), !noalias !152
  %i.pc = icmp sgt i32 %.sroa.80211.8, -1
  tail call void @llvm.assume(i1 %i.pc), !noalias !152
  %i.pd = and i32 %.sroa.80211.8, 3
  %i.pe = icmp eq i32 %i.pd, 0
  tail call void @llvm.assume(i1 %i.pe), !noalias !152
  %.not.i.i143.1 = icmp samesign ult i32 %.sroa.30.8, 4
  br i1 %.not.i.i143.1, label %bb.cf, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.pf = add nuw nsw i32 %.sroa.80211.8, 4       ; 2 uses
  %.not.i.i.i146.1 = icmp samesign ugt i32 %i.pf, %i.r
  br i1 %.not.i.i.i146.1, label %bb.ch, label %bb.cg, !prof !119

bb.cg:                                            ; preds = %bb.cf
  %i.pg = zext nneg i32 %.sroa.80211.8 to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.pg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1

bb.ch:                                            ; preds = %bb.cf
  %i.pi = icmp samesign ugt i32 %.sroa.80211.8, %i.ai
  br i1 %i.pi, label %bb.ds, label %bb.ci, !prof !119

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8) ; 3 uses
  %i.pj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.1, 4
  %.sroa.speculated.i.i.i.i154.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.pj)
  %i.pk = sub nsw i32 %.sroa.speculated.i.i.i.i154.1, %.sroa.speculated27.i.i.i.i153.1 ; 2 uses
  %i.pl = icmp samesign ult i32 %i.pk, 5
  tail call void @llvm.assume(i1 %i.pl), !noalias !152
  %i.pm = zext nneg i32 %.sroa.speculated27.i.i.i.i153.1 to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.pm
  %i.po = zext nneg i32 %i.pk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.pn, i64 %i.po, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1: ; preds = %bb.ci, %bb.cg
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.1 = phi ptr [ %.sroa.0.i.i.i142, %bb.ci ], [ %i.ph, %bb.cg ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.1, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.pp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.1 to i64
  %i.pq = or disjoint i32 %.sroa.30.8, 32
  %i.pr = sub nuw nsw i32 32, %.sroa.30.8
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = shl nuw i64 %i.pp, %i.ps
  %i.pu = or i64 %i.pt, %.sroa.0174.8
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1, %bb.ce
  %.sroa.80211.18.1 = phi i32 [ %i.pf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.80211.8, %bb.ce ]
  %i.pv = phi i64 [ %i.pu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.0174.8, %bb.ce ] ; 2 uses
  %i.pw = phi i32 [ %i.pq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.1 ], [ %.sroa.30.8, %bb.ce ]
  %i.px = lshr i64 %i.pv, 60
  %i.py = trunc nuw nsw i64 %i.px to i32
  %i.pz = add nsw i32 %i.pw, -4
  %i.qa = shl i64 %i.pv, 4
  br label %bb.cn

bb.cj:                                            ; preds = %.preheader327.1
  %i.qb = load i32, ptr %i.bd, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %bb.dm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qd = add nsw i32 %i.qb, -1
  br label %bb.cn

bb.cl:                                            ; preds = %.preheader327.1
  %i.qe = load i32, ptr %i.be, align 8, !tbaa !20, !noalias !152
  %i.qf = add nsw i32 %i.qe, 1
  br label %bb.cn

bb.cm:                                            ; preds = %.preheader327.1
  %i.qg = load i32, ptr %i.bf, align 8, !tbaa !20, !noalias !152
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1
  %.sroa.0486.sroa.9.1 = phi i32 [ %i.qg, %bb.cm ], [ %i.qf, %bb.cl ], [ %i.qd, %bb.ck ], [ %i.py, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 4 uses
  %.sroa.80211.8.1 = phi i32 [ %.sroa.80211.8, %bb.cm ], [ %.sroa.80211.8, %bb.cl ], [ %.sroa.80211.8, %bb.ck ], [ %.sroa.80211.18.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 10 uses
  %.sroa.30.8.1 = phi i32 [ %.sroa.30.8, %bb.cm ], [ %.sroa.30.8, %bb.cl ], [ %.sroa.30.8, %bb.ck ], [ %i.pz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 8 uses
  %.sroa.0174.8.1 = phi i64 [ %.sroa.0174.8, %bb.cm ], [ %.sroa.0174.8, %bb.cl ], [ %.sroa.0174.8, %bb.ck ], [ %i.qa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.1 ] ; 5 uses
  %i.qh = load i32, ptr %i.bh, align 4, !tbaa !20, !noalias !152
  store i32 %i.qh, ptr %i.bg, align 8, !tbaa !20, !noalias !152
  store i32 %.sroa.0486.sroa.9.1, ptr %i.bh, align 4, !tbaa !20, !noalias !152
  %i.qi = icmp ugt i32 %.sroa.0486.sroa.9.1, %i.ui
  br i1 %i.qi, label %bb.dv, label %.preheader327.2

.preheader327.2:                                  ; preds = %bb.cn
  switch i32 %i.ow, label %default.unreachable [
    i32 0, label %bb.cw
    i32 1, label %bb.cv
    i32 2, label %bb.ct
    i32 3, label %bb.co
  ]

bb.co:                                            ; preds = %.preheader327.2
  %i.qj = icmp samesign ult i32 %.sroa.30.8.1, 65
  tail call void @llvm.assume(i1 %i.qj), !noalias !152
  %i.qk = icmp sgt i32 %.sroa.80211.8.1, -1
  tail call void @llvm.assume(i1 %i.qk), !noalias !152
  %i.ql = and i32 %.sroa.80211.8.1, 3
  %i.qm = icmp eq i32 %i.ql, 0
  tail call void @llvm.assume(i1 %i.qm), !noalias !152
  %.not.i.i143.2 = icmp samesign ult i32 %.sroa.30.8.1, 4
  br i1 %.not.i.i143.2, label %bb.cp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.qn = add nuw nsw i32 %.sroa.80211.8.1, 4     ; 2 uses
  %.not.i.i.i146.2 = icmp samesign ugt i32 %i.qn, %i.r
  br i1 %.not.i.i.i146.2, label %bb.cr, label %bb.cq, !prof !119

bb.cq:                                            ; preds = %bb.cp
  %i.qo = zext nneg i32 %.sroa.80211.8.1 to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.qo
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

bb.cr:                                            ; preds = %bb.cp
  %i.qq = icmp samesign ugt i32 %.sroa.80211.8.1, %i.ai
  br i1 %i.qq, label %bb.ds, label %bb.cs, !prof !119

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8.1) ; 3 uses
  %i.qr = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.2, 4
  %.sroa.speculated.i.i.i.i154.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.qr)
  %i.qs = sub nsw i32 %.sroa.speculated.i.i.i.i154.2, %.sroa.speculated27.i.i.i.i153.2 ; 2 uses
  %i.qt = icmp samesign ult i32 %i.qs, 5
  tail call void @llvm.assume(i1 %i.qt), !noalias !152
  %i.qu = zext nneg i32 %.sroa.speculated27.i.i.i.i153.2 to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.qu
  %i.qw = zext nneg i32 %i.qs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.qv, i64 %i.qw, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2: ; preds = %bb.cs, %bb.cq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2 = phi ptr [ %.sroa.0.i.i.i142, %bb.cs ], [ %i.qp, %bb.cq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.qx = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 to i64
  %i.qy = or disjoint i32 %.sroa.30.8.1, 32
  %i.qz = sub nuw nsw i32 32, %.sroa.30.8.1
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = shl nuw i64 %i.qx, %i.ra
  %i.rc = or i64 %i.rb, %.sroa.0174.8.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2, %bb.co
  %.sroa.80211.18.2 = phi i32 [ %i.qn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.80211.8.1, %bb.co ]
  %i.rd = phi i64 [ %i.rc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.0174.8.1, %bb.co ] ; 2 uses
  %i.re = phi i32 [ %i.qy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.30.8.1, %bb.co ]
  %i.rf = lshr i64 %i.rd, 60
  %i.rg = add nsw i32 %i.re, -4
  %i.rh = shl i64 %i.rd, 4
  br label %bb.cx

bb.ct:                                            ; preds = %.preheader327.2
  %i.ri = load i32, ptr %i.bi, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.dm, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.rk = add nsw i32 %i.ri, -1
  %.sroa.14491.8.insert.ext493 = zext i32 %i.rk to i64
  br label %bb.cx

bb.cv:                                            ; preds = %.preheader327.2
  %i.rl = load i32, ptr %i.bj, align 8, !tbaa !20, !noalias !152
  %i.rm = add nsw i32 %i.rl, 1
  %.sroa.14491.8.insert.ext497 = zext i32 %i.rm to i64
  br label %bb.cx

bb.cw:                                            ; preds = %.preheader327.2
  %i.rn = load i32, ptr %i.bk, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.8.insert.ext501 = zext i32 %i.rn to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2
  %.sroa.14491.1 = phi i64 [ %.sroa.14491.8.insert.ext501, %bb.cw ], [ %.sroa.14491.8.insert.ext497, %bb.cv ], [ %.sroa.14491.8.insert.ext493, %bb.cu ], [ %i.rf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 2 uses
  %.sroa.80211.8.2 = phi i32 [ %.sroa.80211.8.1, %bb.cw ], [ %.sroa.80211.8.1, %bb.cv ], [ %.sroa.80211.8.1, %bb.cu ], [ %.sroa.80211.18.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 10 uses
  %.sroa.30.8.2 = phi i32 [ %.sroa.30.8.1, %bb.cw ], [ %.sroa.30.8.1, %bb.cv ], [ %.sroa.30.8.1, %bb.cu ], [ %i.rg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 8 uses
  %.sroa.0174.8.2 = phi i64 [ %.sroa.0174.8.1, %bb.cw ], [ %.sroa.0174.8.1, %bb.cv ], [ %.sroa.0174.8.1, %bb.cu ], [ %i.rh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 5 uses
  %i.ro = load i32, ptr %i.bm, align 4, !tbaa !20, !noalias !152
  store i32 %i.ro, ptr %i.bl, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.8.extract.trunc = trunc nuw i64 %.sroa.14491.1 to i32 ; 3 uses
  store i32 %.sroa.14491.8.extract.trunc, ptr %i.bm, align 4, !tbaa !20, !noalias !152
  %i.rp = icmp ult i32 %i.ui, %.sroa.14491.8.extract.trunc
  br i1 %i.rp, label %bb.dv, label %.preheader327.3

.preheader327.3:                                  ; preds = %bb.cx
  switch i32 %i.oy, label %default.unreachable [
    i32 0, label %bb.dg
    i32 1, label %bb.df
    i32 2, label %bb.dd
    i32 3, label %bb.cy
  ]

bb.cy:                                            ; preds = %.preheader327.3
  %i.rq = icmp samesign ult i32 %.sroa.30.8.2, 65
  tail call void @llvm.assume(i1 %i.rq), !noalias !152
  %i.rr = icmp sgt i32 %.sroa.80211.8.2, -1
  tail call void @llvm.assume(i1 %i.rr), !noalias !152
  %i.rs = and i32 %.sroa.80211.8.2, 3
  %i.rt = icmp eq i32 %i.rs, 0
  tail call void @llvm.assume(i1 %i.rt), !noalias !152
  %.not.i.i143.3 = icmp samesign ult i32 %.sroa.30.8.2, 4
  br i1 %.not.i.i143.3, label %bb.cz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.ru = add nuw nsw i32 %.sroa.80211.8.2, 4     ; 2 uses
  %.not.i.i.i146.3 = icmp samesign ugt i32 %i.ru, %i.r
  br i1 %.not.i.i.i146.3, label %bb.db, label %bb.da, !prof !119

bb.da:                                            ; preds = %bb.cz
  %i.rv = zext nneg i32 %.sroa.80211.8.2 to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.rv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

bb.db:                                            ; preds = %bb.cz
  %i.rx = icmp samesign ugt i32 %.sroa.80211.8.2, %i.ai
  br i1 %i.rx, label %bb.ds, label %bb.dc, !prof !119

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8.2) ; 3 uses
  %i.ry = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.3, 4
  %.sroa.speculated.i.i.i.i154.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ry)
  %i.rz = sub nsw i32 %.sroa.speculated.i.i.i.i154.3, %.sroa.speculated27.i.i.i.i153.3 ; 2 uses
  %i.sa = icmp samesign ult i32 %i.rz, 5
  tail call void @llvm.assume(i1 %i.sa), !noalias !152
  %i.sb = zext nneg i32 %.sroa.speculated27.i.i.i.i153.3 to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.sb
  %i.sd = zext nneg i32 %i.rz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.sc, i64 %i.sd, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3: ; preds = %bb.dc, %bb.da
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3 = phi ptr [ %.sroa.0.i.i.i142, %bb.dc ], [ %i.rw, %bb.da ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.se = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 to i64
  %i.sf = or disjoint i32 %.sroa.30.8.2, 32
  %i.sg = sub nuw nsw i32 32, %.sroa.30.8.2
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = shl nuw i64 %i.se, %i.sh
  %i.sj = or i64 %i.si, %.sroa.0174.8.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3, %bb.cy
  %.sroa.80211.18.3 = phi i32 [ %i.ru, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.80211.8.2, %bb.cy ]
  %i.sk = phi i64 [ %i.sj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.0174.8.2, %bb.cy ] ; 2 uses
  %i.sl = phi i32 [ %i.sf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.30.8.2, %bb.cy ]
  %i.sm = add nsw i32 %i.sl, -4
  %i.sn = shl i64 %i.sk, 4
  %i.so = lshr i64 %i.sk, 28
  %.sroa.14491.12.insert.shift = and i64 %i.so, 64424509440
  br label %bb.dh

bb.dd:                                            ; preds = %.preheader327.3
  %i.sp = load i32, ptr %i.bn, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sr = add nsw i32 %i.sp, -1
  %.sroa.14491.12.insert.ext506 = zext i32 %i.sr to i64
  %.sroa.14491.12.insert.shift507 = shl nuw i64 %.sroa.14491.12.insert.ext506, 32
  br label %bb.dh

bb.df:                                            ; preds = %.preheader327.3
  %i.ss = load i32, ptr %i.bo, align 8, !tbaa !20, !noalias !152
  %i.st = add nsw i32 %i.ss, 1
  %.sroa.14491.12.insert.ext511 = zext i32 %i.st to i64
  %.sroa.14491.12.insert.shift512 = shl nuw i64 %.sroa.14491.12.insert.ext511, 32
  br label %bb.dh

bb.dg:                                            ; preds = %.preheader327.3
  %i.su = load i32, ptr %i.bp, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.12.insert.ext516 = zext i32 %i.su to i64
  %.sroa.14491.12.insert.shift517 = shl nuw i64 %.sroa.14491.12.insert.ext516, 32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3
  %.sroa.14491.12.insert.shift517.pn = phi i64 [ %.sroa.14491.12.insert.shift517, %bb.dg ], [ %.sroa.14491.12.insert.shift512, %bb.df ], [ %.sroa.14491.12.insert.shift507, %bb.de ], [ %.sroa.14491.12.insert.shift, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ] ; 2 uses
  %.sroa.80211.8.3 = phi i32 [ %.sroa.80211.8.2, %bb.dg ], [ %.sroa.80211.8.2, %bb.df ], [ %.sroa.80211.8.2, %bb.de ], [ %.sroa.80211.18.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.30.8.3 = phi i32 [ %.sroa.30.8.2, %bb.dg ], [ %.sroa.30.8.2, %bb.df ], [ %.sroa.30.8.2, %bb.de ], [ %i.sm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.0174.8.3 = phi i64 [ %.sroa.0174.8.2, %bb.dg ], [ %.sroa.0174.8.2, %bb.df ], [ %.sroa.0174.8.2, %bb.de ], [ %i.sn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %i.sv = load i32, ptr %i.br, align 4, !tbaa !20, !noalias !152
  store i32 %i.sv, ptr %i.bq, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.12.extract.shift = lshr exact i64 %.sroa.14491.12.insert.shift517.pn, 32
  %.sroa.14491.12.extract.trunc = trunc nuw i64 %.sroa.14491.12.extract.shift to i32 ; 3 uses
  store i32 %.sroa.14491.12.extract.trunc, ptr %i.br, align 4, !tbaa !20, !noalias !152
  %i.sw = icmp ult i32 %i.ui, %.sroa.14491.12.extract.trunc
  br i1 %i.sw, label %bb.dv, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.sroa.14491.2 = or disjoint i64 %.sroa.14491.1, %.sroa.14491.12.insert.shift517.pn
  %i.sx = zext i32 %.sroa.0486.sroa.9.1 to i64
  %i.sy = shl nuw i64 %i.sx, 32
  %i.sz = zext i32 %.sroa.0486.sroa.0.0 to i64
  %i.ta = or disjoint i64 %i.sy, %i.sz
  br label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.dj:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tb = load i32, ptr %i.ba, align 8, !tbaa !20, !noalias !152
  br label %bb.du

bb.dk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tc = load i32, ptr %i.az, align 8, !tbaa !20, !noalias !152
  %i.td = add nsw i32 %i.tc, 1
  br label %bb.du

bb.dl:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.te = load i32, ptr %i.ay, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dd, %bb.ct, %bb.cj, %bb.dl
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei) #11, !noalias !152
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.tg = add nsw i32 %i.te, -1
  br label %bb.du

bb.do:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.th = icmp samesign ult i32 %i.ov, 67
  tail call void @llvm.assume(i1 %i.th), !noalias !152
  %i.ti = icmp sgt i32 %.sroa.80211.17.3, -1
  tail call void @llvm.assume(i1 %i.ti), !noalias !152
  %i.tj = and i32 %.sroa.80211.17.3, 3
  %i.tk = icmp eq i32 %i.tj, 0
  tail call void @llvm.assume(i1 %i.tk), !noalias !152
  %.not.i.i143 = icmp samesign ult i32 %i.ov, 6
  br i1 %.not.i.i143, label %bb.dp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tl = add nuw nsw i32 %.sroa.80211.17.3, 4    ; 2 uses
  %.not.i.i.i146 = icmp samesign ugt i32 %i.tl, %i.r
  br i1 %.not.i.i.i146, label %bb.dr, label %bb.dq, !prof !119

bb.dq:                                            ; preds = %bb.dp
  %i.tm = zext nneg i32 %.sroa.80211.17.3 to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.tm
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

bb.dr:                                            ; preds = %bb.dp
  %i.to = icmp samesign ugt i32 %.sroa.80211.17.3, %i.ai
  br i1 %i.to, label %bb.ds, label %bb.dt, !prof !119

bb.ds:                                            ; preds = %bb.db, %bb.cr, %bb.ch, %bb.dr
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.17.3) ; 3 uses
  %i.tp = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153, 4
  %.sroa.speculated.i.i.i.i154 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.tp)
  %i.tq = sub nsw i32 %.sroa.speculated.i.i.i.i154, %.sroa.speculated27.i.i.i.i153 ; 2 uses
  %i.tr = icmp samesign ult i32 %i.tq, 5
  tail call void @llvm.assume(i1 %i.tr), !noalias !152
  %i.ts = zext nneg i32 %.sroa.speculated27.i.i.i.i153 to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ts
  %i.tu = zext nneg i32 %i.tq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.tt, i64 %i.tu, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148: ; preds = %bb.dt, %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149 = phi ptr [ %.sroa.0.i.i.i142, %bb.dt ], [ %i.tn, %bb.dq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tv = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 to i64
  %8 = add nuw nsw i32 %i.ov, 30
  %i.tw = sub nuw nsw i32 34, %i.ov
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = shl nuw i64 %i.tv, %i.tx
  %i.tz = or i64 %i.ty, %i.pa
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155: ; preds = %bb.do, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148
  %.sroa.80211.18 = phi i32 [ %i.tl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %.sroa.80211.17.3, %bb.do ]
  %i.ua = phi i64 [ %i.tz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pa, %bb.do ] ; 2 uses
  %i.ub = phi i32 [ %8, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.oz, %bb.do ]
  %i.uc = lshr i64 %i.ua, 60
  %i.ud = trunc nuw nsw i64 %i.uc to i32
  %i.ue = add nsw i32 %i.ub, -4
  %i.uf = shl i64 %i.ua, 4
  br label %bb.du

default.unreachable:                              ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3, %.preheader327.3, %.preheader327.2, %.preheader327.1
  unreachable

bb.du:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155, %bb.dn, %bb.dk, %bb.dj
  %.sroa.0486.sroa.0.0 = phi i32 [ %i.tb, %bb.dj ], [ %i.td, %bb.dk ], [ %i.tg, %bb.dn ], [ %i.ud, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 4 uses
  %.sroa.80211.8 = phi i32 [ %.sroa.80211.17.3, %bb.dj ], [ %.sroa.80211.17.3, %bb.dk ], [ %.sroa.80211.17.3, %bb.dn ], [ %.sroa.80211.18, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 10 uses
  %.sroa.30.8 = phi i32 [ %i.oz, %bb.dj ], [ %i.oz, %bb.dk ], [ %i.oz, %bb.dn ], [ %i.ue, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 8 uses
  %.sroa.0174.8 = phi i64 [ %i.pa, %bb.dj ], [ %i.pa, %bb.dk ], [ %i.pa, %bb.dn ], [ %i.uf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 5 uses
  %i.ug = load i32, ptr %i.bc, align 4, !tbaa !20, !noalias !152
  store i32 %i.ug, ptr %i.bb, align 8, !tbaa !20, !noalias !152
  store i32 %.sroa.0486.sroa.0.0, ptr %i.bc, align 4, !tbaa !20, !noalias !152
  %i.uh = load i32, ptr %i.an, align 8, !tbaa !106, !noalias !152
  %i.ui = add i32 %i.uh, 1                        ; 4 uses
  %i.uj = icmp ugt i32 %.sroa.0486.sroa.0.0, %i.ui
  br i1 %i.uj, label %bb.dv, label %.preheader327.1

bb.dv:                                            ; preds = %bb.dh, %bb.cx, %bb.cn, %bb.du
  %.lcssa416 = phi i32 [ %.sroa.0486.sroa.0.0, %bb.du ], [ %.sroa.0486.sroa.9.1, %bb.cn ], [ %.sroa.14491.8.extract.trunc, %bb.cx ], [ %.sroa.14491.12.extract.trunc, %bb.dh ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei, i32 noundef %.lcssa416) #11, !noalias !152
  unreachable

_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %bb.di
  %.sroa.14491.0 = phi i64 [ %.sroa.14491.2, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.80211.9 = phi i32 [ %.sroa.80211.8.3, %bb.di ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.30.9 = phi i32 [ %.sroa.30.8.3, %bb.di ], [ %i.lm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0174.9 = phi i64 [ %.sroa.0174.8.3, %bb.di ], [ %i.ln, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0486.sroa.0.0.insert.insert = phi i64 [ %i.ta, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  store i64 %.sroa.0486.sroa.0.0.insert.insert, ptr %2, align 8, !noalias !152
  store i64 %.sroa.14491.0, ptr %i.ao, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !152
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.uk = load i16, ptr %3, align 2, !tbaa !151, !noalias !152 ; 2 uses
  br i1 %.not32.i, label %bb.ee, label %bb.ef

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  %indvars.iv444 = phi i64 [ 0, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %indvars.iv.next445, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.0174.4401 = phi i64 [ %.sroa.0174.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.0174.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.30.4400 = phi i32 [ %.sroa.30.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.30.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 6 uses
  %.sroa.80211.4399 = phi i32 [ %.sroa.80211.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.80211.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 8 uses
  %i.ul = lshr i64 %indvars.iv444, 2
  %i.um = and i64 %i.ul, 1073741823
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.um
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !20, !noalias !152 ; 6 uses
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.uq = icmp ult i32 %i.uo, 16
  tail call void @llvm.assume(i1 %i.uq), !noalias !152
  %i.ur = icmp samesign ult i32 %.sroa.30.4400, 65
  tail call void @llvm.assume(i1 %i.ur), !noalias !152
  %i.us = icmp sgt i32 %.sroa.80211.4399, -1
  tail call void @llvm.assume(i1 %i.us), !noalias !152
  %i.ut = and i32 %.sroa.80211.4399, 3
  %i.uu = icmp eq i32 %i.ut, 0
  tail call void @llvm.assume(i1 %i.uu), !noalias !152
  %.not.i.i157 = icmp samesign ult i32 %.sroa.30.4400, %i.uo
  br i1 %.not.i.i157, label %bb.dz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.uv = add nuw nsw i32 %.sroa.80211.4399, 4    ; 2 uses
  %.not.i.i.i160 = icmp samesign ugt i32 %i.uv, %i.r
  br i1 %.not.i.i.i160, label %bb.eb, label %bb.ea, !prof !119

bb.ea:                                            ; preds = %bb.dz
  %i.uw = zext nneg i32 %.sroa.80211.4399 to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.uw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

bb.eb:                                            ; preds = %bb.dz
  %i.uy = icmp samesign ugt i32 %.sroa.80211.4399, %i.ai
  br i1 %i.uy, label %bb.ec, label %bb.ed, !prof !119

bb.ec:                                            ; preds = %bb.eb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store i32 0, ptr %.sroa.0.i.i.i156, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i167 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.4399) ; 3 uses
  %i.uz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i167, 4
  %.sroa.speculated.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.uz)
  %i.va = sub nsw i32 %.sroa.speculated.i.i.i.i168, %.sroa.speculated27.i.i.i.i167 ; 2 uses
  %i.vb = icmp samesign ult i32 %i.va, 5
  tail call void @llvm.assume(i1 %i.vb), !noalias !152
  %i.vc = zext nneg i32 %.sroa.speculated27.i.i.i.i167 to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vc
  %i.ve = zext nneg i32 %i.va to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i156, ptr align 1 %i.vd, i64 %i.ve, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162: ; preds = %bb.ed, %bb.ea
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163 = phi ptr [ %.sroa.0.i.i.i156, %bb.ed ], [ %i.ux, %bb.ea ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 to i64
  %i.vg = add nuw nsw i32 %.sroa.30.4400, 32
  %i.vh = sub nuw nsw i32 32, %.sroa.30.4400
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = shl nuw i64 %i.vf, %i.vi
  %i.vk = or i64 %i.vj, %.sroa.0174.4401
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169: ; preds = %bb.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162
  %.sroa.80211.19 = phi i32 [ %i.uv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.80211.4399, %bb.dy ]
  %i.vl = phi i64 [ %i.vk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.0174.4401, %bb.dy ] ; 2 uses
  %i.vm = phi i32 [ %i.vg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.30.4400, %bb.dy ]
  %i.vn = sub nuw nsw i32 64, %i.uo
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = sub nuw nsw i32 %i.vm, %i.uo
  %i.vq = zext nneg i32 %i.uo to i64
  %i.vr = shl i64 %i.vl, %i.vq
  %i.vs = ashr i64 %i.vl, %i.vo
  %i.vt = trunc nsw i64 %i.vs to i16
  br label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit

_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit: ; preds = %bb.dx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169
  %.sroa.80211.10 = phi i32 [ %.sroa.80211.4399, %bb.dx ], [ %.sroa.80211.19, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 5 uses
  %.sroa.30.10 = phi i32 [ %.sroa.30.4400, %bb.dx ], [ %i.vp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 4 uses
  %.sroa.0174.10 = phi i64 [ %.sroa.0174.4401, %bb.dx ], [ %i.vr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 2 uses
  %.0.i42 = phi i16 [ 0, %bb.dx ], [ %i.vt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ]
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv444
  store i16 %.0.i42, ptr %i.vu, align 2, !tbaa !151, !noalias !152
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 16
  br i1 %exitcond447.not, label %bb.dw, label %bb.dx, !llvm.loop !141

bb.ee:                                            ; preds = %bb.dw
  store i16 %i.uk, ptr %.sroa.0.2..sroa_idx691, align 2, !tbaa !151, !noalias !152
  %i.vv = load i16, ptr %i.ar, align 2, !tbaa !151, !noalias !152
  store i16 %i.vv, ptr %.sroa.0.30..sroa_idx699, align 2, !tbaa !151, !noalias !152
  %i.vw = load i16, ptr %i.as, align 2, !tbaa !151, !noalias !152
  store i16 %i.vw, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.vx = load <12 x i16>, ptr %i.ap, align 2, !tbaa !151, !noalias !152
  %i.vy = shufflevector <12 x i16> %i.vx, <12 x i16> poison, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  store <8 x i16> %i.vy, ptr %.sroa.0.4..sroa_idx692, align 2, !tbaa !151, !noalias !152
  %i.vz = load <10 x i16>, ptr %i.aq, align 2, !tbaa !151, !noalias !152
  %i.wa = shufflevector <10 x i16> %i.vz, <10 x i16> poison, <4 x i32> <i32 8, i32 0, i32 9, i32 1>
  store <4 x i16> %i.wa, ptr %.sroa.0.20..sroa_idx694, align 2, !tbaa !151, !noalias !152
  br label %.preheader

bb.ef:                                            ; preds = %bb.dw
  store i16 %i.uk, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.wb = load i16, ptr %i.av, align 2, !tbaa !151, !noalias !152
  store i16 %i.wb, ptr %.sroa.0.28..sroa_idx697, align 2, !tbaa !151, !noalias !152
  %i.wc = load <11 x i16>, ptr %i.at, align 2, !tbaa !151, !noalias !152
  %i.wd = shufflevector <11 x i16> %i.wc, <11 x i16> poison, <8 x i32> <i32 7, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3>
  store <8 x i16> %i.wd, ptr %.sroa.0.2..sroa_idx690, align 2, !tbaa !151, !noalias !152
  %i.we = load <9 x i16>, ptr %i.au, align 2, !tbaa !151, !noalias !152
  %i.wf = shufflevector <9 x i16> %i.we, <9 x i16> poison, <4 x i32> <i32 7, i32 0, i32 8, i32 1>
  store <4 x i16> %i.wf, ptr %.sroa.0.18..sroa_idx693, align 2, !tbaa !151, !noalias !152
  %i.wg = load i16, ptr %i.aw, align 2, !tbaa !151, !noalias !152
  store i16 %i.wg, ptr %.sroa.0.26..sroa_idx695, align 2, !tbaa !151, !noalias !152
  br label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ee
  %.024.i.15.sroa.phi = phi ptr [ %.sroa.0.28.gep.sroa_idx696, %bb.ee ], [ %.sroa.0.30.gep688.sroa_idx698, %bb.ef ]
  %i.wh = load i16, ptr %i.ax, align 2, !tbaa !151, !noalias !152
  store i16 %i.wh, ptr %.024.i.15.sroa.phi, align 2, !tbaa !151, !noalias !152
  %i.wi = load i32, ptr %i.w, align 4, !tbaa !144, !noalias !152 ; 2 uses
  %i.wj = icmp samesign ult i32 %1, %i.cs
  %i.wk = mul nuw nsw i32 %i.cv, %1
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.wl
  %i.wn = zext nneg i32 %i.cq to i64
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.wm, i64 %indvars.iv458
  %indvars.iv.next461.14 = or disjoint i64 %indvars.iv458, 15
  %i.wp = icmp samesign ult i64 %indvars.iv.next461.14, %i.wn
  %i.wq = shl nsw i32 %i.wi, 1
  %i.wr = or disjoint i32 %i.wq, 1
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 2, !tbaa !151
  %i.ws = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  %i.wt = insertelement <16 x i32> poison, i32 %i.wr, i64 0
  %i.wu = shufflevector <16 x i32> %i.wt, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.wv = mul nsw <16 x i32> %i.wu, %i.ws
  %i.ww = insertelement <16 x i32> poison, i32 %i.wi, i64 0
  %i.wx = shufflevector <16 x i32> %i.ww, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.wy = add nsw <16 x i32> %i.wv, %i.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !152
  %i.wz = load i32, ptr %i.an, align 8, !tbaa !106 ; 2 uses
  %i.xa = icmp ult i32 %i.wz, 17
  tail call void @llvm.assume(i1 %i.xa)
  %notmask.i = shl nsw i32 -1, %i.wz
  %i.xb = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.wj)
  %i.xc = load <16 x i16>, ptr %4, align 2, !tbaa !151
  %i.xd = zext <16 x i16> %i.xc to <16 x i32>
  %i.xe = add nsw <16 x i32> %i.wy, %i.xd         ; 2 uses
end_hunk_0
