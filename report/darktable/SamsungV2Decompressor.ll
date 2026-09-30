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
  %i.io = add nuw nsw i32 %.0.i25.us, 2           ; 2 uses
  %i.ip = icmp samesign ult i32 %.048.i.us, %i.cs
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = mul nuw nsw i32 %.048.i.us, %i.cv
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.ir ; 2 uses
  %i.it = zext nneg i32 %.0.i25.us to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !151
  %i.iw = zext i16 %i.iv to i32
  %i.ix = icmp samesign ult i32 %i.io, %i.cq
  tail call void @llvm.assume(i1 %i.ix)
  %i.iy = zext nneg i32 %i.io to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !151
  %i.jb = zext i16 %i.ja to i32
  %i.jc = add nuw nsw i32 %i.iw, 1
  %i.jd = add nuw nsw i32 %i.jc, %i.jb
  %i.je = lshr i32 %i.jd, 1
  %i.jf = trunc nuw i32 %i.je to i16
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jg = icmp samesign ult i32 %.0.i25.us, %i.cq
  tail call void @llvm.assume(i1 %i.jg)
  %i.jh = icmp samesign ult i32 %.048.i.us, %i.cs
  tail call void @llvm.assume(i1 %i.jh)
  %i.ji = mul nuw nsw i32 %.048.i.us, %i.cv
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.jj
  %i.jl = zext nneg i32 %.0.i25.us to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !151
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sink632 = phi i16 [ %i.jn, %bb.az ], [ %i.jf, %bb.ay ]
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv428
  store i16 %.sink632, ptr %i.jo, align 2, !tbaa !151
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next429, 16
  br i1 %exitcond431.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split.us, !llvm.loop !138

.split:                                           ; preds = %bb.av, %bb.bf
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bf ], [ 0, %bb.av ] ; 5 uses
  %i.jp = or disjoint i64 %indvars.iv, %indvars.iv458
  %i.jq = trunc i64 %indvars.iv to i32
  %i.jr = add i32 %1, %i.jq
  %i.js = and i32 %i.jr, 1
  %.not59.i = icmp eq i32 %i.js, 0                ; 2 uses
  %i.jt = and i64 %indvars.iv, 1
  %.not60.i = icmp eq i64 %i.jt, 0
  %i.ju = select i1 %.not60.i, i32 1, i32 -1
  %.048.i = select i1 %.not59.i, i32 %i.al, i32 %i.ak ; 2 uses
  %i.jv = select i1 %.not59.i, i32 %i.ju, i32 0
  %i.jw = trunc i64 %i.jp to i32
  %i.jx = add i32 %i.ib, %i.jw
  %.0.i25 = add nsw i32 %i.jx, %i.jv              ; 5 uses
  %i.jy = icmp slt i32 %.0.i25, 0
  br i1 %i.jy, label %.split384.us, label %bb.bb

.split384.us:                                     ; preds = %.split, %.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.bb:                                            ; preds = %.split
  %.not61.i = icmp slt i32 %.0.i25, %i.cf
  br i1 %.not61.i, label %bb.bc, label %.split386.us

bb.bc:                                            ; preds = %bb.bb
  %i.jz = add nuw nsw i32 %.0.i25, 2              ; 3 uses
  %.not63.i = icmp samesign ult i32 %i.jz, %i.cf
  br i1 %.not63.i, label %bb.bd, label %.split386.us

.split386.us:                                     ; preds = %bb.bb, %bb.bc, %bb.aw
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.ka = icmp samesign ult i32 %.0.i25, %i.cq
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = icmp samesign ult i32 %.048.i, %i.cs
  tail call void @llvm.assume(i1 %i.kb)
  %i.kc = mul nuw nsw i32 %.048.i, %i.cv
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.kd ; 2 uses
  %i.kf = zext nneg i32 %.0.i25 to i64
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.kf
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !151 ; 2 uses
  switch i32 %i.hn, label %bb.bf [
    i32 4, label %bb.be
    i32 2, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  %i.ki = zext i16 %i.kh to i32
  %i.kj = icmp samesign ult i32 %i.jz, %i.cq
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = zext nneg i32 %i.jz to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !151
  %i.kn = zext i16 %i.km to i32
  %i.ko = add nuw nsw i32 %i.ki, 1
  %i.kp = add nuw nsw i32 %i.ko, %i.kn
  %i.kq = lshr i32 %i.kp, 1
  %i.kr = trunc nuw i32 %i.kq to i16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink634 = phi i16 [ %i.kr, %bb.be ], [ %i.kh, %bb.bd ]
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink634, ptr %i.ks, align 2, !tbaa !151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split, !llvm.loop !138

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split: ; preds = %.preheader328.preheader, %bb.as
  %i.kt = phi <16 x i16> [ %i.hr, %bb.as ], [ %i.hy, %.preheader328.preheader ]
  store <16 x i16> %i.kt, ptr %4, align 2, !tbaa !151
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit: ; preds = %bb.bf, %bb.ba, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !152
  %i.ku = and i8 %i.cy, 1
  %.not326 = icmp eq i8 %i.ku, 0
  br i1 %.not326, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %i.kv = icmp samesign ult i32 %.sroa.30.2, 65
  tail call void @llvm.assume(i1 %i.kv), !noalias !152
  %i.kw = and i32 %.sroa.80211.2, 3
  %i.kx = icmp eq i32 %i.kw, 0
  tail call void @llvm.assume(i1 %i.kx), !noalias !152
  %.not.i.i115 = icmp eq i32 %.sroa.30.2, 0
  br i1 %.not.i.i115, label %bb.bh, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.ky = add nuw nsw i32 %.sroa.80211.2, 4       ; 2 uses
  %.not.i.i.i118 = icmp samesign ugt i32 %i.ky, %i.r
  br i1 %.not.i.i.i118, label %bb.bj, label %bb.bi, !prof !119

bb.bi:                                            ; preds = %bb.bh
  %i.kz = zext nneg i32 %.sroa.80211.2 to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.kz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

bb.bj:                                            ; preds = %bb.bh
  %i.lb = icmp samesign ugt i32 %.sroa.80211.2, %i.ai
  br i1 %i.lb, label %bb.bk, label %bb.bl, !prof !119

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.bl:                                            ; preds = %bb.bj
  store i32 0, ptr %.sroa.0.i.i.i114, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i125 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.2) ; 3 uses
  %i.lc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i125, 4
  %.sroa.speculated.i.i.i.i126 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.lc)
  %i.ld = sub nsw i32 %.sroa.speculated.i.i.i.i126, %.sroa.speculated27.i.i.i.i125 ; 2 uses
  %i.le = icmp samesign ult i32 %i.ld, 5
  tail call void @llvm.assume(i1 %i.le), !noalias !152
  %i.lf = zext nneg i32 %.sroa.speculated27.i.i.i.i125 to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lf
  %i.lh = zext nneg i32 %i.ld to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i114, ptr align 1 %i.lg, i64 %i.lh, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120: ; preds = %bb.bl, %bb.bi
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121 = phi ptr [ %.sroa.0.i.i.i114, %bb.bl ], [ %i.la, %bb.bi ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.li = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 to i64
  %i.lj = shl nuw i64 %i.li, 32
  %i.lk = or i64 %i.lj, %.sroa.0174.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127: ; preds = %bb.bg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120
  %.sroa.80211.16 = phi i32 [ %i.ky, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.80211.2, %bb.bg ] ; 2 uses
  %i.ll = phi i64 [ %i.lk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.0174.2, %bb.bg ] ; 2 uses
  %i.lm = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.30.2, %bb.bg ]
  %i.ln = add nsw i32 %i.lm, -1                   ; 2 uses
  %i.lo = shl i64 %i.ll, 1                        ; 2 uses
  %.not.i40 = icmp sgt i64 %i.ll, -1
  br i1 %.not.i40, label %bb.bm, label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.bm:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %.sroa.80211.5 = phi i32 [ %.sroa.80211.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 17 uses
  %.sroa.30.5 = phi i32 [ %.sroa.30.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.ln, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 14 uses
  %.sroa.0174.5 = phi i64 [ %.sroa.0174.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lo, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 5 uses
  %i.lp = icmp samesign ult i32 %.sroa.30.5, 65
  tail call void @llvm.assume(i1 %i.lp), !noalias !152
  %.not.i.i129 = icmp samesign ult i32 %.sroa.30.5, 2
  br i1 %.not.i.i129, label %bb.bn, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.lq = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132 = icmp samesign ugt i32 %i.lq, %i.r
  br i1 %.not.i.i.i132, label %bb.bp, label %bb.bo, !prof !119

bb.bo:                                            ; preds = %bb.bn
  %i.lr = zext nneg i32 %.sroa.80211.5 to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lr
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

bb.bp:                                            ; preds = %bb.bn
  %i.lt = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.lt, label %bb.bq, label %bb.br, !prof !119

bb.bq:                                            ; preds = %bb.cc, %bb.by, %bb.bu, %bb.bp
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.br:                                            ; preds = %bb.bp
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.lu = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139, 4
  %.sroa.speculated.i.i.i.i140 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.lu)
  %i.lv = sub nsw i32 %.sroa.speculated.i.i.i.i140, %.sroa.speculated27.i.i.i.i139 ; 2 uses
  %i.lw = icmp samesign ult i32 %i.lv, 5
  tail call void @llvm.assume(i1 %i.lw), !noalias !152
  %i.lx = zext nneg i32 %.sroa.speculated27.i.i.i.i139 to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lx
  %i.lz = zext nneg i32 %i.lv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.ly, i64 %i.lz, i1 false), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread: ; preds = %bb.bo, %bb.br
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135 = phi ptr [ %.sroa.0.i.i.i128, %bb.br ], [ %i.ls, %bb.bo ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.ma = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 to i64
  %i.mb = sub nuw nsw i32 32, %.sroa.30.5
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = shl nuw i64 %i.ma, %i.mc
  %i.me = or i64 %i.md, %.sroa.0174.5             ; 2 uses
  %i.mf = lshr i64 %i.me, 62
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %i.mh = or disjoint i32 %.sroa.30.5, 30
  %i.mi = shl i64 %i.me, 2
  %i.mj = icmp ult i32 %.sroa.30.5, 35
  tail call void @llvm.assume(i1 %i.mj), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141: ; preds = %bb.bm
  %i.mk = lshr i64 %.sroa.0174.5, 62
  %i.ml = trunc nuw nsw i64 %i.mk to i32          ; 4 uses
  %5 = add nsw i32 %.sroa.30.5, -2
  %i.mm = shl i64 %.sroa.0174.5, 2                ; 2 uses
  %.not.i.i129.1 = icmp samesign ult i32 %.sroa.30.5, 4
  br i1 %.not.i.i129.1, label %bb.bs, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1

bb.bs:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mn = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.1 = icmp samesign ugt i32 %i.mn, %i.r
  br i1 %.not.i.i.i132.1, label %bb.bu, label %bb.bt, !prof !119

bb.bt:                                            ; preds = %bb.bs
  %i.mo = zext nneg i32 %.sroa.80211.5 to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mo
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

bb.bu:                                            ; preds = %bb.bs
  %i.mq = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.mq, label %bb.bq, label %bb.bv, !prof !119

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.mr = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.1, 4
  %.sroa.speculated.i.i.i.i140.1 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.mr)
  %i.ms = sub nsw i32 %.sroa.speculated.i.i.i.i140.1, %.sroa.speculated27.i.i.i.i139.1 ; 2 uses
  %i.mt = icmp samesign ult i32 %i.ms, 5
  tail call void @llvm.assume(i1 %i.mt), !noalias !152
  %i.mu = zext nneg i32 %.sroa.speculated27.i.i.i.i139.1 to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mu
  %i.mw = zext nneg i32 %i.ms to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.mv, i64 %i.mw, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1: ; preds = %bb.bv, %bb.bt
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1 = phi ptr [ %.sroa.0.i.i.i128, %bb.bv ], [ %i.mp, %bb.bt ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mx = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 to i64
  %6 = or disjoint i32 %5, 32
  %i.my = sub nuw nsw i32 34, %.sroa.30.5
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = shl nuw i64 %i.mx, %i.mz
  %i.nb = or i64 %i.na, %i.mm
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread
  %.ph = phi i32 [ %i.mg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.ml, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.sroa.80211.17.1.ph = phi i32 [ %i.lq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.ph583 = phi i64 [ %i.mi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.nb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %.ph584 = phi i32 [ %i.mh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %6, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %i.nc = lshr i64 %.ph583, 62
  %i.nd = trunc nuw nsw i64 %i.nc to i32
  %i.ne = add nsw i32 %.ph584, -2
  %i.nf = shl i64 %.ph583, 2
  %i.ng = icmp samesign ult i32 %.ph584, 67
  tail call void @llvm.assume(i1 %i.ng), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  %i.nh = lshr i64 %i.mm, 62
  %i.ni = trunc nuw nsw i64 %i.nh to i32          ; 3 uses
  %7 = add nsw i32 %.sroa.30.5, -4
  %i.nj = shl i64 %.sroa.0174.5, 4                ; 3 uses
  %.not.i.i129.2 = icmp samesign ult i32 %.sroa.30.5, 6
  br i1 %.not.i.i129.2, label %bb.bw, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2

bb.bw:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.nk = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.2 = icmp samesign ugt i32 %i.nk, %i.r
  br i1 %.not.i.i.i132.2, label %bb.by, label %bb.bx, !prof !119

bb.bx:                                            ; preds = %bb.bw
  %i.nl = zext nneg i32 %.sroa.80211.5 to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nl
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2

bb.by:                                            ; preds = %bb.bw
  %i.nn = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.nn, label %bb.bq, label %bb.bz, !prof !119

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.no = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.2, 4
  %.sroa.speculated.i.i.i.i140.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.no)
  %i.np = sub nsw i32 %.sroa.speculated.i.i.i.i140.2, %.sroa.speculated27.i.i.i.i139.2 ; 2 uses
  %i.nq = icmp samesign ult i32 %i.np, 5
  tail call void @llvm.assume(i1 %i.nq), !noalias !152
  %i.nr = zext nneg i32 %.sroa.speculated27.i.i.i.i139.2 to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nr
  %i.nt = zext nneg i32 %i.np to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.ns, i64 %i.nt, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2: ; preds = %bb.bz, %bb.bx
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.2 = phi ptr [ %.sroa.0.i.i.i128, %bb.bz ], [ %i.nm, %bb.bx ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.2, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.nu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.2 to i64
  %8 = or disjoint i32 %7, 32
  %i.nv = sub nuw nsw i32 36, %.sroa.30.5
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = shl nuw i64 %i.nu, %i.nw
  %i.ny = or i64 %i.nx, %i.nj
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread
  %.ph587 = phi i32 [ %i.nd, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.ni, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.ph588 = phi i32 [ %.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.ml, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.sroa.80211.17.2.ph = phi i32 [ %.sroa.80211.17.1.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.nk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ]
  %.ph589 = phi i64 [ %i.nf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %i.ny, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ] ; 2 uses
  %.ph590 = phi i32 [ %i.ne, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread ], [ %8, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.2 ] ; 2 uses
  %i.nz = add nsw i32 %.ph590, -2
  %i.oa = shl i64 %.ph589, 2
  %i.ob = icmp samesign ult i32 %.ph590, 67
  tail call void @llvm.assume(i1 %i.ob), !noalias !152
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  %i.oc = add nsw i32 %.sroa.30.5, -6             ; 2 uses
  %i.od = shl i64 %.sroa.0174.5, 6                ; 2 uses
  %.not.i.i129.3 = icmp samesign ult i32 %.sroa.30.5, 8
  br i1 %.not.i.i129.3, label %bb.ca, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

bb.ca:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.oe = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.3 = icmp samesign ugt i32 %i.oe, %i.r
  br i1 %.not.i.i.i132.3, label %bb.cc, label %bb.cb, !prof !119

bb.cb:                                            ; preds = %bb.ca
  %i.of = zext nneg i32 %.sroa.80211.5 to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.of
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3

bb.cc:                                            ; preds = %bb.ca
  %i.oh = icmp samesign ugt i32 %.sroa.80211.5, %i.ai
  br i1 %i.oh, label %bb.bq, label %bb.cd, !prof !119

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i139.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.5) ; 3 uses
  %i.oi = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.3, 4
  %.sroa.speculated.i.i.i.i140.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.oi)
  %i.oj = sub nsw i32 %.sroa.speculated.i.i.i.i140.3, %.sroa.speculated27.i.i.i.i139.3 ; 2 uses
  %i.ok = icmp samesign ult i32 %i.oj, 5
  tail call void @llvm.assume(i1 %i.ok), !noalias !152
  %i.ol = zext nneg i32 %.sroa.speculated27.i.i.i.i139.3 to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ol
  %i.on = zext nneg i32 %i.oj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.om, i64 %i.on, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3: ; preds = %bb.cd, %bb.cb
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.3 = phi ptr [ %.sroa.0.i.i.i128, %bb.cd ], [ %i.og, %bb.cb ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.3, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.oo = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.3 to i64
  %9 = or disjoint i32 %i.oc, 32
  %i.op = sub nuw nsw i32 38, %.sroa.30.5
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = shl nuw i64 %i.oo, %i.oq
  %i.os = or i64 %i.or, %i.od
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2
  %.in.in = phi i64 [ %i.nj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.nj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph589, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.ot = phi i32 [ %i.ml, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ml, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph588, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %i.ou = phi i32 [ %i.ni, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.ni, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.ph587, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ]
  %.sroa.80211.17.3 = phi i32 [ %i.oe, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %.sroa.80211.5, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %.sroa.80211.17.2.ph, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 10 uses
  %i.ov = phi i64 [ %i.os, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.od, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.oa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 2 uses
  %i.ow = phi i32 [ %9, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.3 ], [ %i.oc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2 ], [ %i.nz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread ] ; 4 uses
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
  %i.qj = icmp ugt i32 %.sroa.0486.sroa.9.1, %i.uj
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
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

bb.cr:                                            ; preds = %bb.cp
  %i.qr = icmp samesign ugt i32 %.sroa.80211.8.1, %i.ai
  br i1 %i.qr, label %bb.ds, label %bb.cs, !prof !119

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8.1) ; 3 uses
  %i.qs = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.2, 4
  %.sroa.speculated.i.i.i.i154.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.qs)
  %i.qt = sub nsw i32 %.sroa.speculated.i.i.i.i154.2, %.sroa.speculated27.i.i.i.i153.2 ; 2 uses
  %i.qu = icmp samesign ult i32 %i.qt, 5
  tail call void @llvm.assume(i1 %i.qu), !noalias !152
  %i.qv = zext nneg i32 %.sroa.speculated27.i.i.i.i153.2 to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.qv
  %i.qx = zext nneg i32 %i.qt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.qw, i64 %i.qx, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2: ; preds = %bb.cs, %bb.cq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2 = phi ptr [ %.sroa.0.i.i.i142, %bb.cs ], [ %i.qq, %bb.cq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.qy = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 to i64
  %i.qz = or disjoint i32 %.sroa.30.8.1, 32
  %i.ra = sub nuw nsw i32 32, %.sroa.30.8.1
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = shl nuw i64 %i.qy, %i.rb
  %i.rd = or i64 %i.rc, %.sroa.0174.8.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2, %bb.co
  %.sroa.80211.18.2 = phi i32 [ %i.qo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.80211.8.1, %bb.co ]
  %i.re = phi i64 [ %i.rd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.0174.8.1, %bb.co ] ; 2 uses
  %i.rf = phi i32 [ %i.qz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.30.8.1, %bb.co ]
  %i.rg = lshr i64 %i.re, 60
  %i.rh = add nsw i32 %i.rf, -4
  %i.ri = shl i64 %i.re, 4
  br label %bb.cx

bb.ct:                                            ; preds = %.preheader327.2
  %i.rj = load i32, ptr %i.bi, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.dm, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.rl = add nsw i32 %i.rj, -1
  %.sroa.14491.8.insert.ext493 = zext i32 %i.rl to i64
  br label %bb.cx

bb.cv:                                            ; preds = %.preheader327.2
  %i.rm = load i32, ptr %i.bj, align 8, !tbaa !20, !noalias !152
  %i.rn = add nsw i32 %i.rm, 1
  %.sroa.14491.8.insert.ext497 = zext i32 %i.rn to i64
  br label %bb.cx

bb.cw:                                            ; preds = %.preheader327.2
  %i.ro = load i32, ptr %i.bk, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.8.insert.ext501 = zext i32 %i.ro to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2
  %.sroa.14491.1 = phi i64 [ %.sroa.14491.8.insert.ext501, %bb.cw ], [ %.sroa.14491.8.insert.ext497, %bb.cv ], [ %.sroa.14491.8.insert.ext493, %bb.cu ], [ %i.rg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 2 uses
  %.sroa.80211.8.2 = phi i32 [ %.sroa.80211.8.1, %bb.cw ], [ %.sroa.80211.8.1, %bb.cv ], [ %.sroa.80211.8.1, %bb.cu ], [ %.sroa.80211.18.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 10 uses
  %.sroa.30.8.2 = phi i32 [ %.sroa.30.8.1, %bb.cw ], [ %.sroa.30.8.1, %bb.cv ], [ %.sroa.30.8.1, %bb.cu ], [ %i.rh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 8 uses
  %.sroa.0174.8.2 = phi i64 [ %.sroa.0174.8.1, %bb.cw ], [ %.sroa.0174.8.1, %bb.cv ], [ %.sroa.0174.8.1, %bb.cu ], [ %i.ri, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 5 uses
  %i.rp = load i32, ptr %i.bm, align 4, !tbaa !20, !noalias !152
  store i32 %i.rp, ptr %i.bl, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.8.extract.trunc = trunc nuw i64 %.sroa.14491.1 to i32 ; 3 uses
  store i32 %.sroa.14491.8.extract.trunc, ptr %i.bm, align 4, !tbaa !20, !noalias !152
  %i.rq = icmp ult i32 %i.uj, %.sroa.14491.8.extract.trunc
  br i1 %i.rq, label %bb.dv, label %.preheader327.3

.preheader327.3:                                  ; preds = %bb.cx
  switch i32 %i.oz, label %default.unreachable [
    i32 0, label %bb.dg
    i32 1, label %bb.df
    i32 2, label %bb.dd
    i32 3, label %bb.cy
  ]

bb.cy:                                            ; preds = %.preheader327.3
  %i.rr = icmp samesign ult i32 %.sroa.30.8.2, 65
  tail call void @llvm.assume(i1 %i.rr), !noalias !152
  %i.rs = icmp sgt i32 %.sroa.80211.8.2, -1
  tail call void @llvm.assume(i1 %i.rs), !noalias !152
  %i.rt = and i32 %.sroa.80211.8.2, 3
  %i.ru = icmp eq i32 %i.rt, 0
  tail call void @llvm.assume(i1 %i.ru), !noalias !152
  %.not.i.i143.3 = icmp samesign ult i32 %.sroa.30.8.2, 4
  br i1 %.not.i.i143.3, label %bb.cz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.rv = add nuw nsw i32 %.sroa.80211.8.2, 4     ; 2 uses
  %.not.i.i.i146.3 = icmp samesign ugt i32 %i.rv, %i.r
  br i1 %.not.i.i.i146.3, label %bb.db, label %bb.da, !prof !119

bb.da:                                            ; preds = %bb.cz
  %i.rw = zext nneg i32 %.sroa.80211.8.2 to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.rw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

bb.db:                                            ; preds = %bb.cz
  %i.ry = icmp samesign ugt i32 %.sroa.80211.8.2, %i.ai
  br i1 %i.ry, label %bb.ds, label %bb.dc, !prof !119

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8.2) ; 3 uses
  %i.rz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.3, 4
  %.sroa.speculated.i.i.i.i154.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.rz)
  %i.sa = sub nsw i32 %.sroa.speculated.i.i.i.i154.3, %.sroa.speculated27.i.i.i.i153.3 ; 2 uses
  %i.sb = icmp samesign ult i32 %i.sa, 5
  tail call void @llvm.assume(i1 %i.sb), !noalias !152
  %i.sc = zext nneg i32 %.sroa.speculated27.i.i.i.i153.3 to i64
  %i.sd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.sc
  %i.se = zext nneg i32 %i.sa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.sd, i64 %i.se, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3: ; preds = %bb.dc, %bb.da
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3 = phi ptr [ %.sroa.0.i.i.i142, %bb.dc ], [ %i.rx, %bb.da ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.sf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 to i64
  %i.sg = or disjoint i32 %.sroa.30.8.2, 32
  %i.sh = sub nuw nsw i32 32, %.sroa.30.8.2
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl nuw i64 %i.sf, %i.si
  %i.sk = or i64 %i.sj, %.sroa.0174.8.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3, %bb.cy
  %.sroa.80211.18.3 = phi i32 [ %i.rv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.80211.8.2, %bb.cy ]
  %i.sl = phi i64 [ %i.sk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.0174.8.2, %bb.cy ] ; 2 uses
  %i.sm = phi i32 [ %i.sg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.30.8.2, %bb.cy ]
  %i.sn = add nsw i32 %i.sm, -4
  %i.so = shl i64 %i.sl, 4
  %i.sp = lshr i64 %i.sl, 28
  %.sroa.14491.12.insert.shift = and i64 %i.sp, 64424509440
  br label %bb.dh

bb.dd:                                            ; preds = %.preheader327.3
  %i.sq = load i32, ptr %i.bn, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ss = add nsw i32 %i.sq, -1
  %.sroa.14491.12.insert.ext506 = zext i32 %i.ss to i64
  %.sroa.14491.12.insert.shift507 = shl nuw i64 %.sroa.14491.12.insert.ext506, 32
  br label %bb.dh

bb.df:                                            ; preds = %.preheader327.3
  %i.st = load i32, ptr %i.bo, align 8, !tbaa !20, !noalias !152
  %i.su = add nsw i32 %i.st, 1
  %.sroa.14491.12.insert.ext511 = zext i32 %i.su to i64
  %.sroa.14491.12.insert.shift512 = shl nuw i64 %.sroa.14491.12.insert.ext511, 32
  br label %bb.dh

bb.dg:                                            ; preds = %.preheader327.3
  %i.sv = load i32, ptr %i.bp, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.12.insert.ext516 = zext i32 %i.sv to i64
  %.sroa.14491.12.insert.shift517 = shl nuw i64 %.sroa.14491.12.insert.ext516, 32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3
  %.sroa.14491.12.insert.shift517.pn = phi i64 [ %.sroa.14491.12.insert.shift517, %bb.dg ], [ %.sroa.14491.12.insert.shift512, %bb.df ], [ %.sroa.14491.12.insert.shift507, %bb.de ], [ %.sroa.14491.12.insert.shift, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ] ; 2 uses
  %.sroa.80211.8.3 = phi i32 [ %.sroa.80211.8.2, %bb.dg ], [ %.sroa.80211.8.2, %bb.df ], [ %.sroa.80211.8.2, %bb.de ], [ %.sroa.80211.18.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.30.8.3 = phi i32 [ %.sroa.30.8.2, %bb.dg ], [ %.sroa.30.8.2, %bb.df ], [ %.sroa.30.8.2, %bb.de ], [ %i.sn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.0174.8.3 = phi i64 [ %.sroa.0174.8.2, %bb.dg ], [ %.sroa.0174.8.2, %bb.df ], [ %.sroa.0174.8.2, %bb.de ], [ %i.so, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %i.sw = load i32, ptr %i.br, align 4, !tbaa !20, !noalias !152
  store i32 %i.sw, ptr %i.bq, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.12.extract.shift = lshr exact i64 %.sroa.14491.12.insert.shift517.pn, 32
  %.sroa.14491.12.extract.trunc = trunc nuw i64 %.sroa.14491.12.extract.shift to i32 ; 3 uses
  store i32 %.sroa.14491.12.extract.trunc, ptr %i.br, align 4, !tbaa !20, !noalias !152
  %i.sx = icmp ult i32 %i.uj, %.sroa.14491.12.extract.trunc
  br i1 %i.sx, label %bb.dv, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.sroa.14491.2 = or disjoint i64 %.sroa.14491.1, %.sroa.14491.12.insert.shift517.pn
  %i.sy = zext i32 %.sroa.0486.sroa.9.1 to i64
  %i.sz = shl nuw i64 %i.sy, 32
  %i.ta = zext i32 %.sroa.0486.sroa.0.0 to i64
  %i.tb = or disjoint i64 %i.sz, %i.ta
  br label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.dj:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tc = load i32, ptr %i.ba, align 8, !tbaa !20, !noalias !152
  br label %bb.du

bb.dk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.td = load i32, ptr %i.az, align 8, !tbaa !20, !noalias !152
  %i.te = add nsw i32 %i.td, 1
  br label %bb.du

bb.dl:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tf = load i32, ptr %i.ay, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dd, %bb.ct, %bb.cj, %bb.dl
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei) #11, !noalias !152
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.th = add nsw i32 %i.tf, -1
  br label %bb.du

bb.do:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.ti = icmp samesign ult i32 %i.ow, 67
  tail call void @llvm.assume(i1 %i.ti), !noalias !152
  %i.tj = icmp sgt i32 %.sroa.80211.17.3, -1
  tail call void @llvm.assume(i1 %i.tj), !noalias !152
  %i.tk = and i32 %.sroa.80211.17.3, 3
  %i.tl = icmp eq i32 %i.tk, 0
  tail call void @llvm.assume(i1 %i.tl), !noalias !152
  %.not.i.i143 = icmp samesign ult i32 %i.ow, 6
  br i1 %.not.i.i143, label %bb.dp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tm = add nuw nsw i32 %.sroa.80211.17.3, 4    ; 2 uses
  %.not.i.i.i146 = icmp samesign ugt i32 %i.tm, %i.r
  br i1 %.not.i.i.i146, label %bb.dr, label %bb.dq, !prof !119

bb.dq:                                            ; preds = %bb.dp
  %i.tn = zext nneg i32 %.sroa.80211.17.3 to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.tn
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

bb.dr:                                            ; preds = %bb.dp
  %i.tp = icmp samesign ugt i32 %.sroa.80211.17.3, %i.ai
  br i1 %i.tp, label %bb.ds, label %bb.dt, !prof !119

bb.ds:                                            ; preds = %bb.db, %bb.cr, %bb.ch, %bb.dr
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.17.3) ; 3 uses
  %i.tq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153, 4
  %.sroa.speculated.i.i.i.i154 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.tq)
  %i.tr = sub nsw i32 %.sroa.speculated.i.i.i.i154, %.sroa.speculated27.i.i.i.i153 ; 2 uses
  %i.ts = icmp samesign ult i32 %i.tr, 5
  tail call void @llvm.assume(i1 %i.ts), !noalias !152
  %i.tt = zext nneg i32 %.sroa.speculated27.i.i.i.i153 to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.tt
  %i.tv = zext nneg i32 %i.tr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.tu, i64 %i.tv, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148: ; preds = %bb.dt, %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149 = phi ptr [ %.sroa.0.i.i.i142, %bb.dt ], [ %i.to, %bb.dq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tw = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 to i64
  %10 = or disjoint i32 %i.pa, 32
  %i.tx = sub nuw nsw i32 34, %i.ow
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = shl nuw i64 %i.tw, %i.ty
  %i.ua = or i64 %i.tz, %i.pb
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155: ; preds = %bb.do, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148
  %.sroa.80211.18 = phi i32 [ %i.tm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %.sroa.80211.17.3, %bb.do ]
  %i.ub = phi i64 [ %i.ua, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pb, %bb.do ] ; 2 uses
  %i.uc = phi i32 [ %10, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pa, %bb.do ]
  %i.ud = lshr i64 %i.ub, 60
  %i.ue = trunc nuw nsw i64 %i.ud to i32
  %i.uf = add nsw i32 %i.uc, -4
  %i.ug = shl i64 %i.ub, 4
  br label %bb.du

default.unreachable:                              ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3, %.preheader327.3, %.preheader327.2, %.preheader327.1
  unreachable

bb.du:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155, %bb.dn, %bb.dk, %bb.dj
  %.sroa.0486.sroa.0.0 = phi i32 [ %i.tc, %bb.dj ], [ %i.te, %bb.dk ], [ %i.th, %bb.dn ], [ %i.ue, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 4 uses
  %.sroa.80211.8 = phi i32 [ %.sroa.80211.17.3, %bb.dj ], [ %.sroa.80211.17.3, %bb.dk ], [ %.sroa.80211.17.3, %bb.dn ], [ %.sroa.80211.18, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 10 uses
  %.sroa.30.8 = phi i32 [ %i.pa, %bb.dj ], [ %i.pa, %bb.dk ], [ %i.pa, %bb.dn ], [ %i.uf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 8 uses
  %.sroa.0174.8 = phi i64 [ %i.pb, %bb.dj ], [ %i.pb, %bb.dk ], [ %i.pb, %bb.dn ], [ %i.ug, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 5 uses
  %i.uh = load i32, ptr %i.bc, align 4, !tbaa !20, !noalias !152
  store i32 %i.uh, ptr %i.bb, align 8, !tbaa !20, !noalias !152
  store i32 %.sroa.0486.sroa.0.0, ptr %i.bc, align 4, !tbaa !20, !noalias !152
  %i.ui = load i32, ptr %i.an, align 8, !tbaa !106, !noalias !152
  %i.uj = add i32 %i.ui, 1                        ; 4 uses
  %i.uk = icmp ugt i32 %.sroa.0486.sroa.0.0, %i.uj
  br i1 %i.uk, label %bb.dv, label %.preheader327.1

bb.dv:                                            ; preds = %bb.dh, %bb.cx, %bb.cn, %bb.du
  %.lcssa416 = phi i32 [ %.sroa.0486.sroa.0.0, %bb.du ], [ %.sroa.0486.sroa.9.1, %bb.cn ], [ %.sroa.14491.8.extract.trunc, %bb.cx ], [ %.sroa.14491.12.extract.trunc, %bb.dh ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei, i32 noundef %.lcssa416) #11, !noalias !152
  unreachable

_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %bb.di
  %.sroa.14491.0 = phi i64 [ %.sroa.14491.2, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.80211.9 = phi i32 [ %.sroa.80211.8.3, %bb.di ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.30.9 = phi i32 [ %.sroa.30.8.3, %bb.di ], [ %i.ln, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0174.9 = phi i64 [ %.sroa.0174.8.3, %bb.di ], [ %i.lo, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0486.sroa.0.0.insert.insert = phi i64 [ %i.tb, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  store i64 %.sroa.0486.sroa.0.0.insert.insert, ptr %2, align 8, !noalias !152
  store i64 %.sroa.14491.0, ptr %i.ao, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !152
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ul = load i16, ptr %3, align 2, !tbaa !151, !noalias !152 ; 2 uses
  br i1 %.not32.i, label %bb.ee, label %bb.ef

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  %indvars.iv444 = phi i64 [ 0, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %indvars.iv.next445, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.0174.4401 = phi i64 [ %.sroa.0174.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.0174.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.30.4400 = phi i32 [ %.sroa.30.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.30.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 6 uses
  %.sroa.80211.4399 = phi i32 [ %.sroa.80211.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.80211.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 8 uses
  %i.um = lshr i64 %indvars.iv444, 2
  %i.un = and i64 %i.um, 1073741823
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !20, !noalias !152 ; 6 uses
  %i.uq = icmp eq i32 %i.up, 0
  br i1 %i.uq, label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ur = icmp ult i32 %i.up, 16
  tail call void @llvm.assume(i1 %i.ur), !noalias !152
  %i.us = icmp samesign ult i32 %.sroa.30.4400, 65
  tail call void @llvm.assume(i1 %i.us), !noalias !152
  %i.ut = icmp sgt i32 %.sroa.80211.4399, -1
  tail call void @llvm.assume(i1 %i.ut), !noalias !152
  %i.uu = and i32 %.sroa.80211.4399, 3
  %i.uv = icmp eq i32 %i.uu, 0
  tail call void @llvm.assume(i1 %i.uv), !noalias !152
  %.not.i.i157 = icmp samesign ult i32 %.sroa.30.4400, %i.up
  br i1 %.not.i.i157, label %bb.dz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.uw = add nuw nsw i32 %.sroa.80211.4399, 4    ; 2 uses
  %.not.i.i.i160 = icmp samesign ugt i32 %i.uw, %i.r
  br i1 %.not.i.i.i160, label %bb.eb, label %bb.ea, !prof !119

bb.ea:                                            ; preds = %bb.dz
  %i.ux = zext nneg i32 %.sroa.80211.4399 to i64
  %i.uy = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ux
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

bb.eb:                                            ; preds = %bb.dz
  %i.uz = icmp samesign ugt i32 %.sroa.80211.4399, %i.ai
  br i1 %i.uz, label %bb.ec, label %bb.ed, !prof !119

bb.ec:                                            ; preds = %bb.eb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store i32 0, ptr %.sroa.0.i.i.i156, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i167 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.4399) ; 3 uses
  %i.va = add nuw nsw i32 %.sroa.speculated27.i.i.i.i167, 4
  %.sroa.speculated.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.va)
  %i.vb = sub nsw i32 %.sroa.speculated.i.i.i.i168, %.sroa.speculated27.i.i.i.i167 ; 2 uses
  %i.vc = icmp samesign ult i32 %i.vb, 5
  tail call void @llvm.assume(i1 %i.vc), !noalias !152
  %i.vd = zext nneg i32 %.sroa.speculated27.i.i.i.i167 to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vd
  %i.vf = zext nneg i32 %i.vb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i156, ptr align 1 %i.ve, i64 %i.vf, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162: ; preds = %bb.ed, %bb.ea
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163 = phi ptr [ %.sroa.0.i.i.i156, %bb.ed ], [ %i.uy, %bb.ea ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vg = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 to i64
  %i.vh = add nuw nsw i32 %.sroa.30.4400, 32
  %i.vi = sub nuw nsw i32 32, %.sroa.30.4400
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = shl nuw i64 %i.vg, %i.vj
  %i.vl = or i64 %i.vk, %.sroa.0174.4401
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169: ; preds = %bb.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162
  %.sroa.80211.19 = phi i32 [ %i.uw, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.80211.4399, %bb.dy ]
  %i.vm = phi i64 [ %i.vl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.0174.4401, %bb.dy ] ; 2 uses
  %i.vn = phi i32 [ %i.vh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.30.4400, %bb.dy ]
  %i.vo = sub nuw nsw i32 64, %i.up
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = sub nuw nsw i32 %i.vn, %i.up
  %i.vr = zext nneg i32 %i.up to i64
  %i.vs = shl i64 %i.vm, %i.vr
  %i.vt = ashr i64 %i.vm, %i.vp
  %i.vu = trunc nsw i64 %i.vt to i16
  br label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit

_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit: ; preds = %bb.dx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169
  %.sroa.80211.10 = phi i32 [ %.sroa.80211.4399, %bb.dx ], [ %.sroa.80211.19, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 5 uses
  %.sroa.30.10 = phi i32 [ %.sroa.30.4400, %bb.dx ], [ %i.vq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 4 uses
  %.sroa.0174.10 = phi i64 [ %.sroa.0174.4401, %bb.dx ], [ %i.vs, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 2 uses
  %.0.i42 = phi i16 [ 0, %bb.dx ], [ %i.vu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ]
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv444
  store i16 %.0.i42, ptr %i.vv, align 2, !tbaa !151, !noalias !152
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 16
  br i1 %exitcond447.not, label %bb.dw, label %bb.dx, !llvm.loop !141

bb.ee:                                            ; preds = %bb.dw
  store i16 %i.ul, ptr %.sroa.0.2..sroa_idx691, align 2, !tbaa !151, !noalias !152
  %i.vw = load i16, ptr %i.ar, align 2, !tbaa !151, !noalias !152
  store i16 %i.vw, ptr %.sroa.0.30..sroa_idx699, align 2, !tbaa !151, !noalias !152
  %i.vx = load i16, ptr %i.as, align 2, !tbaa !151, !noalias !152
  store i16 %i.vx, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.vy = load <12 x i16>, ptr %i.ap, align 2, !tbaa !151, !noalias !152
  %i.vz = shufflevector <12 x i16> %i.vy, <12 x i16> poison, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  store <8 x i16> %i.vz, ptr %.sroa.0.4..sroa_idx692, align 2, !tbaa !151, !noalias !152
  %i.wa = load <10 x i16>, ptr %i.aq, align 2, !tbaa !151, !noalias !152
  %i.wb = shufflevector <10 x i16> %i.wa, <10 x i16> poison, <4 x i32> <i32 8, i32 0, i32 9, i32 1>
  store <4 x i16> %i.wb, ptr %.sroa.0.20..sroa_idx694, align 2, !tbaa !151, !noalias !152
  br label %.preheader

bb.ef:                                            ; preds = %bb.dw
  store i16 %i.ul, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.wc = load i16, ptr %i.av, align 2, !tbaa !151, !noalias !152
  store i16 %i.wc, ptr %.sroa.0.28..sroa_idx697, align 2, !tbaa !151, !noalias !152
  %i.wd = load <11 x i16>, ptr %i.at, align 2, !tbaa !151, !noalias !152
  %i.we = shufflevector <11 x i16> %i.wd, <11 x i16> poison, <8 x i32> <i32 7, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3>
  store <8 x i16> %i.we, ptr %.sroa.0.2..sroa_idx690, align 2, !tbaa !151, !noalias !152
  %i.wf = load <9 x i16>, ptr %i.au, align 2, !tbaa !151, !noalias !152
  %i.wg = shufflevector <9 x i16> %i.wf, <9 x i16> poison, <4 x i32> <i32 7, i32 0, i32 8, i32 1>
  store <4 x i16> %i.wg, ptr %.sroa.0.18..sroa_idx693, align 2, !tbaa !151, !noalias !152
  %i.wh = load i16, ptr %i.aw, align 2, !tbaa !151, !noalias !152
  store i16 %i.wh, ptr %.sroa.0.26..sroa_idx695, align 2, !tbaa !151, !noalias !152
  br label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ee
  %.024.i.15.sroa.phi = phi ptr [ %.sroa.0.28.gep.sroa_idx696, %bb.ee ], [ %.sroa.0.30.gep688.sroa_idx698, %bb.ef ]
  %i.wi = load i16, ptr %i.ax, align 2, !tbaa !151, !noalias !152
  store i16 %i.wi, ptr %.024.i.15.sroa.phi, align 2, !tbaa !151, !noalias !152
  %i.wj = load i32, ptr %i.w, align 4, !tbaa !144, !noalias !152 ; 2 uses
  %i.wk = icmp samesign ult i32 %1, %i.cs
  %i.wl = mul nuw nsw i32 %i.cv, %1
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.wm
  %i.wo = zext nneg i32 %i.cq to i64
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.wn, i64 %indvars.iv458
  %indvars.iv.next461.14 = or disjoint i64 %indvars.iv458, 15
  %i.wq = icmp samesign ult i64 %indvars.iv.next461.14, %i.wo
  %i.wr = shl nsw i32 %i.wj, 1
  %i.ws = or disjoint i32 %i.wr, 1
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 2, !tbaa !151
  %i.wt = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  %i.wu = insertelement <16 x i32> poison, i32 %i.ws, i64 0
  %i.wv = shufflevector <16 x i32> %i.wu, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ww = mul nsw <16 x i32> %i.wv, %i.wt
  %i.wx = insertelement <16 x i32> poison, i32 %i.wj, i64 0
  %i.wy = shufflevector <16 x i32> %i.wx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.wz = add nsw <16 x i32> %i.ww, %i.wy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !152
  %i.xa = load i32, ptr %i.an, align 8, !tbaa !106 ; 2 uses
  %i.xb = icmp ult i32 %i.xa, 17
  tail call void @llvm.assume(i1 %i.xb)
  %notmask.i = shl nsw i32 -1, %i.xa
  %i.xc = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.wk)
  %i.xd = load <16 x i16>, ptr %4, align 2, !tbaa !151
  %i.xe = zext <16 x i16> %i.xd to <16 x i32>
  %i.xf = add nsw <16 x i32> %i.wz, %i.xe         ; 2 uses
end_hunk_0
