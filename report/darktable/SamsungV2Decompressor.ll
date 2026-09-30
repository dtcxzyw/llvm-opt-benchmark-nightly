Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  %i.fd = phi i32 [ %i.ee, %bb.n ], [ %i.fa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  store i32 %i.fd, ptr %i.w, align 4, !tbaa !144, !noalias !150
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.sroa.80211.1 = phi i32 [ %.sroa.80211.3, %bb.u ], [ %.sroa.80211.0407, %bb.g ] ; 17 uses
  %.sroa.30.1 = phi i32 [ %.sroa.30.3, %bb.u ], [ %.sroa.30.0408, %bb.g ] ; 7 uses
  %.sroa.0174.1 = phi i64 [ %.sroa.0174.3, %bb.u ], [ %.sroa.0174.0409, %bb.g ] ; 5 uses
  %i.fe = and i8 %i.cy, 2
  %.not325 = icmp eq i8 %i.fe, 0
  %i.ff = icmp samesign ult i32 %.sroa.30.1, 65
  tail call void @llvm.assume(i1 %i.ff), !noalias !150
  %i.fg = icmp sgt i32 %.sroa.80211.1, -1
  tail call void @llvm.assume(i1 %i.fg), !noalias !150
  %i.fh = and i32 %.sroa.80211.1, 3
  %i.fi = icmp eq i32 %i.fh, 0
  tail call void @llvm.assume(i1 %i.fi), !noalias !150
  %.not.i.i78 = icmp eq i32 %.sroa.30.1, 0        ; 2 uses
  br i1 %.not325, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i78, label %bb.x, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i63)
  %i.fj = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i67 = icmp samesign ugt i32 %i.fj, %i.r
  br i1 %.not.i.i.i67, label %bb.z, label %bb.y, !prof !119

bb.y:                                             ; preds = %bb.x
  %i.fk = zext nneg i32 %.sroa.80211.1 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69

bb.z:                                             ; preds = %bb.x
  %i.fm = icmp samesign ugt i32 %.sroa.80211.1, %i.ai
  br i1 %i.fm, label %bb.aa, label %bb.ab, !prof !119

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i32 0, ptr %.sroa.0.i.i.i63, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i74 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.1) ; 3 uses
  %i.fn = add nuw nsw i32 %.sroa.speculated27.i.i.i.i74, 4
  %.sroa.speculated.i.i.i.i75 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.fn)
  %i.fo = sub nsw i32 %.sroa.speculated.i.i.i.i75, %.sroa.speculated27.i.i.i.i74 ; 2 uses
  %i.fp = icmp samesign ult i32 %i.fo, 5
  tail call void @llvm.assume(i1 %i.fp), !noalias !150
  %i.fq = zext nneg i32 %.sroa.speculated27.i.i.i.i74 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fq
  %i.fs = zext nneg i32 %i.fo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i63, ptr align 1 %i.fr, i64 %i.fs, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69: ; preds = %bb.ab, %bb.y
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i70 = phi ptr [ %.sroa.0.i.i.i63, %bb.ab ], [ %i.fl, %bb.y ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i71 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i70, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i63)
  %i.ft = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i71 to i64
  %i.fu = shl nuw i64 %i.ft, 32
  %i.fv = or i64 %i.fu, %.sroa.0174.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76: ; preds = %bb.w, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69
  %.sroa.80211.13 = phi i32 [ %i.fj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.80211.1, %bb.w ]
  %i.fw = phi i64 [ %i.fv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.0174.1, %bb.w ] ; 2 uses
  %i.fx = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69 ], [ %.sroa.30.1, %bb.w ]
  %i.fy = add nsw i32 %i.fx, -1
  %i.fz = shl i64 %i.fw, 1
  %.not57.i = icmp sgt i64 %i.fw, -1
  %i.ga = select i1 %.not57.i, i32 7, i32 3
  br label %.sink.split

bb.ac:                                            ; preds = %bb.v
  br i1 %.not.i.i78, label %bb.ad, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i77)
  %i.gb = add nuw nsw i32 %.sroa.80211.1, 4       ; 3 uses
  %.not.i.i.i81 = icmp samesign ugt i32 %i.gb, %i.r
  br i1 %.not.i.i.i81, label %bb.af, label %bb.ae, !prof !119

bb.ae:                                            ; preds = %bb.ad
  %i.gc = zext nneg i32 %.sroa.80211.1 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gc
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread

bb.af:                                            ; preds = %bb.ad
  %i.ge = icmp samesign ugt i32 %.sroa.80211.1, %i.ai
  br i1 %i.ge, label %bb.ag, label %bb.ah, !prof !119

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %.sroa.0.i.i.i77, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i88 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.1) ; 3 uses
  %i.gf = add nuw nsw i32 %.sroa.speculated27.i.i.i.i88, 4
  %.sroa.speculated.i.i.i.i89 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gf)
  %i.gg = sub nsw i32 %.sroa.speculated.i.i.i.i89, %.sroa.speculated27.i.i.i.i88 ; 2 uses
  %i.gh = icmp samesign ult i32 %i.gg, 5
  tail call void @llvm.assume(i1 %i.gh), !noalias !150
  %i.gi = zext nneg i32 %.sroa.speculated27.i.i.i.i88 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gi
  %i.gk = zext nneg i32 %i.gg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i77, ptr align 1 %i.gj, i64 %i.gk, i1 false), !noalias !150
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90: ; preds = %bb.ac
  %i.gl = add nsw i32 %.sroa.30.1, -1             ; 2 uses
  %i.gm = shl i64 %.sroa.0174.1, 1                ; 3 uses
  %.not.i = icmp sgt i64 %.sroa.0174.1, -1
  br i1 %.not.i, label %bb.ai, label %bb.ao

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread: ; preds = %bb.ae, %bb.ah
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i84 = phi ptr [ %.sroa.0.i.i.i77, %bb.ah ], [ %i.gd, %bb.ae ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i84, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i77)
  %i.gn = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 to i64
  %i.go = shl nuw i64 %i.gn, 32
  %i.gp = or i64 %i.go, %.sroa.0174.1             ; 2 uses
  %i.gq = shl i64 %i.gp, 1                        ; 2 uses
  %.not.i576 = icmp sgt i64 %i.gp, -1
  br i1 %.not.i576, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104, label %bb.ao

bb.ai:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.not.i.i92 = icmp samesign ult i32 %.sroa.30.1, 4
  br i1 %.not.i.i92, label %bb.aj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.gr = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i95 = icmp samesign ugt i32 %i.gr, %i.r
  br i1 %.not.i.i.i95, label %bb.al, label %bb.ak, !prof !119

bb.ak:                                            ; preds = %bb.aj
  %i.gs = zext nneg i32 %.sroa.80211.1 to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gs
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

bb.al:                                            ; preds = %bb.aj
  %i.gu = icmp samesign ugt i32 %.sroa.80211.1, %i.ai
  br i1 %i.gu, label %bb.am, label %bb.an, !prof !119

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %.sroa.0.i.i.i91, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i102 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.1) ; 3 uses
  %i.gv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i102, 4
  %.sroa.speculated.i.i.i.i103 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.gv)
  %i.gw = sub nsw i32 %.sroa.speculated.i.i.i.i103, %.sroa.speculated27.i.i.i.i102 ; 2 uses
  %i.gx = icmp samesign ult i32 %i.gw, 5
  tail call void @llvm.assume(i1 %i.gx), !noalias !150
  %i.gy = zext nneg i32 %.sroa.speculated27.i.i.i.i102 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gy
  %i.ha = zext nneg i32 %i.gw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i91, ptr align 1 %i.gz, i64 %i.ha, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97: ; preds = %bb.an, %bb.ak
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98 = phi ptr [ %.sroa.0.i.i.i91, %bb.an ], [ %i.gt, %bb.ak ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.hb = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 to i64
  %i.hc = add nuw nsw i32 %.sroa.30.1, 31
  %i.hd = sub nuw nsw i32 33, %.sroa.30.1
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl nuw i64 %i.hb, %i.he
  %i.hg = or i64 %i.hf, %i.gm
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %bb.ai, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97
  %.sroa.80211.15 = phi i32 [ %i.gr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %.sroa.80211.1, %bb.ai ], [ %i.gb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.hh = phi i64 [ %i.hg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gm, %bb.ai ], [ %i.gq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ] ; 2 uses
  %i.hi = phi i32 [ %i.hc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gl, %bb.ai ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.hj = lshr i64 %i.hh, 61
  %i.hk = trunc nuw nsw i64 %i.hj to i32
  %i.hl = add nsw i32 %i.hi, -3
  %i.hm = shl i64 %i.hh, 3
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104
  %.sink = phi i32 [ %i.hk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.ga, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.80211.2.ph = phi i32 [ %.sroa.80211.15, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %.sroa.80211.13, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.30.2.ph = phi i32 [ %i.hl, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.fy, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.0174.2.ph = phi i64 [ %i.hm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.fz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  store i32 %.sink, ptr %i.v, align 8, !tbaa !143, !noalias !150
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.sroa.80211.2 = phi i32 [ %.sroa.80211.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.gb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.80211.2.ph, %.sink.split ] ; 7 uses
  %.sroa.30.2 = phi i32 [ %i.gl, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.30.2.ph, %.sink.split ] ; 4 uses
  %.sroa.0174.2 = phi i64 [ %i.gm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.gq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.0174.2.ph, %.sink.split ] ; 3 uses
  %i.hn = load i32, ptr %i.v, align 8, !tbaa !143, !noalias !150 ; 8 uses
  %.not58.i = icmp eq i32 %i.hn, 7
  br i1 %.not58.i, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.x, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !150
  unreachable

.thread:                                          ; preds = %bb.ao
  %i.ho = icmp eq i64 %indvars.iv458, 0
  br i1 %i.ho, label %bb.ar, label %.preheader328.preheader

bb.ar:                                            ; preds = %.thread
  %i.hp = load i16, ptr %i.am, align 2, !tbaa !151
  %i.hq = insertelement <16 x i16> poison, i16 %i.hp, i64 0
  %i.hr = shufflevector <16 x i16> %i.hq, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

.preheader328.preheader:                          ; preds = %.thread
  %i.hs = icmp samesign ult i32 %1, %i.cs
  tail call void @llvm.assume(i1 %i.hs), !noalias !150
  %i.ht = mul nuw nsw i32 %i.cv, %1
  %i.hu = zext nneg i32 %i.ht to i64
  %scevgep = getelementptr i8, ptr %i.cl, i64 28
  %i.hv = shl nuw nsw i64 %i.hu, 1
  %i.hw = getelementptr i8, ptr %scevgep, i64 %i.ci
  %scevgep432 = getelementptr i8, ptr %i.hw, i64 %i.hv
  %i.hx = load <2 x i16>, ptr %scevgep432, align 2, !tbaa !151, !noalias !150
  %i.hy = shufflevector <2 x i16> %i.hx, <2 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

bb.as:                                            ; preds = %bb.ap
  br i1 %i.aj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !150
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hz = sext i32 %i.hn to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE12motionOffset, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !20, !noalias !150 ; 2 uses
  %i.ic = icmp ne i32 %i.hn, 2
  %i.id = icmp ne i32 %i.hn, 4
  %.not62.i = and i1 %i.ic, %i.id
  %.not62.i.fr = freeze i1 %.not62.i
  br i1 %.not62.i.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.au, %bb.az
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %bb.az ], [ 0, %bb.au ] ; 5 uses
  %i.ie = or disjoint i64 %indvars.iv428, %indvars.iv458
  %i.if = trunc i64 %indvars.iv428 to i32
  %i.ig = add i32 %1, %i.if
  %i.ih = and i32 %i.ig, 1
  %.not59.i.us = icmp eq i32 %i.ih, 0             ; 2 uses
  %i.ii = and i64 %indvars.iv428, 1
  %.not60.i.us = icmp eq i64 %i.ii, 0
  %i.ij = select i1 %.not60.i.us, i32 1, i32 -1
  %.048.i.us = select i1 %.not59.i.us, i32 %i.al, i32 %i.ak ; 4 uses
  %i.ik = select i1 %.not59.i.us, i32 %i.ij, i32 0
  %i.il = trunc i64 %i.ie to i32
  %i.im = add i32 %i.ib, %i.il
  %.0.i25.us = add nsw i32 %i.im, %i.ik           ; 6 uses
  %i.in = icmp slt i32 %.0.i25.us, 0
  br i1 %i.in, label %.split384.us, label %bb.av

bb.av:                                            ; preds = %.split.us
  %.not61.i.us = icmp slt i32 %.0.i25.us, %i.cf
  br i1 %.not61.i.us, label %bb.aw, label %.split386.us

bb.aw:                                            ; preds = %bb.av
  switch i32 %i.hn, label %bb.ay [
    i32 4, label %bb.ax
    i32 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
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
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
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
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink632 = phi i16 [ %i.jn, %bb.ay ], [ %i.jf, %bb.ax ]
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv428
  store i16 %.sink632, ptr %i.jo, align 2, !tbaa !151
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next429, 16
  br i1 %exitcond431.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split.us, !llvm.loop !138

.split:                                           ; preds = %bb.au, %bb.be
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.be ], [ 0, %bb.au ] ; 5 uses
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
  br i1 %i.jy, label %.split384.us, label %bb.ba

.split384.us:                                     ; preds = %.split, %.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.ba:                                            ; preds = %.split
  %.not61.i = icmp slt i32 %.0.i25, %i.cf
  br i1 %.not61.i, label %bb.bb, label %.split386.us

bb.bb:                                            ; preds = %bb.ba
  %i.jz = add nuw nsw i32 %.0.i25, 2              ; 3 uses
  %.not63.i = icmp samesign ult i32 %i.jz, %i.cf
  br i1 %.not63.i, label %bb.bc, label %.split386.us

.split386.us:                                     ; preds = %bb.ba, %bb.bb, %bb.av
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.hn) #11
  unreachable

bb.bc:                                            ; preds = %bb.bb
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
  switch i32 %i.hn, label %bb.be [
    i32 4, label %bb.bd
    i32 2, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
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
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.sink634 = phi i16 [ %i.kr, %bb.bd ], [ %i.kh, %bb.bc ]
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink634, ptr %i.ks, align 2, !tbaa !151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split, !llvm.loop !138

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split: ; preds = %.preheader328.preheader, %bb.ar
  %i.kt = phi <16 x i16> [ %i.hr, %bb.ar ], [ %i.hy, %.preheader328.preheader ]
  store <16 x i16> %i.kt, ptr %4, align 2, !tbaa !151
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit: ; preds = %bb.be, %bb.az, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !152
  %i.ku = and i8 %i.cy, 1
  %.not326 = icmp eq i8 %i.ku, 0
  br i1 %.not326, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %i.kv = icmp samesign ult i32 %.sroa.30.2, 65
  tail call void @llvm.assume(i1 %i.kv), !noalias !152
  %i.kw = and i32 %.sroa.80211.2, 3
  %i.kx = icmp eq i32 %i.kw, 0
  tail call void @llvm.assume(i1 %i.kx), !noalias !152
  %.not.i.i115 = icmp eq i32 %.sroa.30.2, 0
  br i1 %.not.i.i115, label %bb.bg, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.ky = add nuw nsw i32 %.sroa.80211.2, 4       ; 2 uses
  %.not.i.i.i118 = icmp samesign ugt i32 %i.ky, %i.r
  br i1 %.not.i.i.i118, label %bb.bi, label %bb.bh, !prof !119

bb.bh:                                            ; preds = %bb.bg
  %i.kz = zext nneg i32 %.sroa.80211.2 to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.kz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

bb.bi:                                            ; preds = %bb.bg
  %i.lb = icmp samesign ugt i32 %.sroa.80211.2, %i.ai
  br i1 %i.lb, label %bb.bj, label %bb.bk, !prof !119

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

end_hunk_0
