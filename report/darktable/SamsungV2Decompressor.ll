Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ue
  %i.ug = zext nneg i32 %i.uc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.uf, i64 %i.ug, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148: ; preds = %bb.dt, %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149 = phi ptr [ %.sroa.0.i.i.i142, %bb.dt ], [ %i.tz, %bb.dq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.uh = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 to i64
  %i.ui = or disjoint i32 %i.pl, 32
  %i.uj = sub nuw nsw i32 34, %i.ph
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = shl nuw i64 %i.uh, %i.uk
  %i.um = or i64 %i.ul, %i.pm
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155: ; preds = %bb.do, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148
  %.sroa.80211.18 = phi i32 [ %i.tx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %.sroa.80211.17.3, %bb.do ]
  %i.un = phi i64 [ %i.um, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pm, %bb.do ] ; 2 uses
  %i.uo = phi i32 [ %i.ui, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pl, %bb.do ]
  %i.up = lshr i64 %i.un, 60
  %i.uq = trunc nuw nsw i64 %i.up to i32
  %i.ur = add nsw i32 %i.uo, -4
  %i.us = shl i64 %i.un, 4
  br label %bb.du

default.unreachable:                              ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3, %.preheader327.3, %.preheader327.2, %.preheader327.1
  unreachable

bb.du:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155, %bb.dn, %bb.dk, %bb.dj
  %.sroa.0486.sroa.0.0 = phi i32 [ %i.tn, %bb.dj ], [ %i.tp, %bb.dk ], [ %i.ts, %bb.dn ], [ %i.uq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 4 uses
  %.sroa.80211.8 = phi i32 [ %.sroa.80211.17.3, %bb.dj ], [ %.sroa.80211.17.3, %bb.dk ], [ %.sroa.80211.17.3, %bb.dn ], [ %.sroa.80211.18, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 10 uses
  %.sroa.30.8 = phi i32 [ %i.pl, %bb.dj ], [ %i.pl, %bb.dk ], [ %i.pl, %bb.dn ], [ %i.ur, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 8 uses
  %.sroa.0174.8 = phi i64 [ %i.pm, %bb.dj ], [ %i.pm, %bb.dk ], [ %i.pm, %bb.dn ], [ %i.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 5 uses
  %i.ut = load i32, ptr %i.bi, align 4, !tbaa !19, !noalias !148
  store i32 %i.ut, ptr %i.bh, align 8, !tbaa !19, !noalias !148
  store i32 %.sroa.0486.sroa.0.0, ptr %i.bi, align 4, !tbaa !19, !noalias !148
  %i.uu = load i32, ptr %i.an, align 8, !tbaa !101, !noalias !148
  %i.uv = add i32 %i.uu, 1                        ; 4 uses
  %i.uw = icmp ugt i32 %.sroa.0486.sroa.0.0, %i.uv
  br i1 %i.uw, label %bb.dv, label %.preheader327.1

bb.dv:                                            ; preds = %bb.dh, %bb.cx, %bb.cn, %bb.du
  %.lcssa416 = phi i32 [ %.sroa.0486.sroa.0.0, %bb.du ], [ %.sroa.0486.sroa.9.1, %bb.cn ], [ %.sroa.14491.8.extract.trunc, %bb.cx ], [ %.sroa.14491.12.extract.trunc, %bb.dh ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei, i32 noundef %.lcssa416) #11, !noalias !148
  unreachable

_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %bb.di
  %.sroa.14491.0 = phi i64 [ %.sroa.14491.2, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.80211.9 = phi i32 [ %.sroa.80211.8.3, %bb.di ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.30.9 = phi i32 [ %.sroa.30.8.3, %bb.di ], [ %i.lt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0174.9 = phi i64 [ %.sroa.0174.8.3, %bb.di ], [ %i.lu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0486.sroa.0.0.insert.insert = phi i64 [ %i.tm, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  store i64 %.sroa.0486.sroa.0.0.insert.insert, ptr %2, align 8, !noalias !148
  store i64 %.sroa.14491.0, ptr %i.ao, align 8, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !148
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ux = load i16, ptr %3, align 2, !tbaa !145, !noalias !148 ; 2 uses
  br i1 %.not32.i, label %bb.ee, label %bb.ef

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  %indvars.iv444 = phi i64 [ 0, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %indvars.iv.next445, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.0174.4401 = phi i64 [ %.sroa.0174.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.0174.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.30.4400 = phi i32 [ %.sroa.30.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.30.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 6 uses
  %.sroa.80211.4399 = phi i32 [ %.sroa.80211.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.80211.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 8 uses
  %i.uy = lshr i64 %indvars.iv444, 2
  %i.uz = and i64 %i.uy, 1073741823
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uz
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !19, !noalias !148 ; 6 uses
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vd = icmp ult i32 %i.vb, 16
  tail call void @llvm.assume(i1 %i.vd), !noalias !148
  %i.ve = icmp samesign ult i32 %.sroa.30.4400, 65
  tail call void @llvm.assume(i1 %i.ve), !noalias !148
  %i.vf = icmp sgt i32 %.sroa.80211.4399, -1
  tail call void @llvm.assume(i1 %i.vf), !noalias !148
  %i.vg = and i32 %.sroa.80211.4399, 3
  %i.vh = icmp eq i32 %i.vg, 0
  tail call void @llvm.assume(i1 %i.vh), !noalias !148
  %.not.i.i157 = icmp samesign ult i32 %.sroa.30.4400, %i.vb
  br i1 %.not.i.i157, label %bb.dz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vi = add nuw nsw i32 %.sroa.80211.4399, 4    ; 2 uses
  %.not.i.i.i160 = icmp samesign ugt i32 %i.vi, %i.r
  br i1 %.not.i.i.i160, label %bb.eb, label %bb.ea, !prof !132

bb.ea:                                            ; preds = %bb.dz
  %i.vj = zext nneg i32 %.sroa.80211.4399 to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vj
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

bb.eb:                                            ; preds = %bb.dz
  %i.vl = icmp samesign ugt i32 %.sroa.80211.4399, %i.ai
  br i1 %i.vl, label %bb.ec, label %bb.ed, !prof !132

bb.ec:                                            ; preds = %bb.eb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store i32 0, ptr %.sroa.0.i.i.i156, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i167 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.4399) ; 3 uses
  %i.vm = add nuw nsw i32 %.sroa.speculated27.i.i.i.i167, 4
  %.sroa.speculated.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.vm)
  %i.vn = sub nsw i32 %.sroa.speculated.i.i.i.i168, %.sroa.speculated27.i.i.i.i167 ; 2 uses
  %i.vo = icmp samesign ult i32 %i.vn, 5
  tail call void @llvm.assume(i1 %i.vo), !noalias !148
  %i.vp = zext nneg i32 %.sroa.speculated27.i.i.i.i167 to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vp
  %i.vr = zext nneg i32 %i.vn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i156, ptr align 1 %i.vq, i64 %i.vr, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162: ; preds = %bb.ed, %bb.ea
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163 = phi ptr [ %.sroa.0.i.i.i156, %bb.ed ], [ %i.vk, %bb.ea ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vs = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 to i64
  %i.vt = add nuw nsw i32 %.sroa.30.4400, 32
  %i.vu = sub nuw nsw i32 32, %.sroa.30.4400
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = shl nuw i64 %i.vs, %i.vv
  %i.vx = or i64 %i.vw, %.sroa.0174.4401
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169: ; preds = %bb.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162
  %.sroa.80211.19 = phi i32 [ %i.vi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.80211.4399, %bb.dy ]
  %i.vy = phi i64 [ %i.vx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.0174.4401, %bb.dy ] ; 2 uses
  %i.vz = phi i32 [ %i.vt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.30.4400, %bb.dy ]
  %i.wa = sub nuw nsw i32 64, %i.vb
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = sub nuw nsw i32 %i.vz, %i.vb
  %i.wd = zext nneg i32 %i.vb to i64
  %i.we = shl i64 %i.vy, %i.wd
  %i.wf = ashr i64 %i.vy, %i.wb
  %i.wg = trunc nsw i64 %i.wf to i16
  br label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit

_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit: ; preds = %bb.dx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169
  %.sroa.80211.10 = phi i32 [ %.sroa.80211.4399, %bb.dx ], [ %.sroa.80211.19, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 5 uses
  %.sroa.30.10 = phi i32 [ %.sroa.30.4400, %bb.dx ], [ %i.wc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 4 uses
  %.sroa.0174.10 = phi i64 [ %.sroa.0174.4401, %bb.dx ], [ %i.we, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 2 uses
  %.0.i42 = phi i16 [ 0, %bb.dx ], [ %i.wg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ]
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv444
  store i16 %.0.i42, ptr %i.wh, align 2, !tbaa !145, !noalias !148
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 16
  br i1 %exitcond447.not, label %bb.dw, label %bb.dx, !llvm.loop !151

bb.ee:                                            ; preds = %bb.dw
  store i16 %i.ux, ptr %.sroa.0.2..sroa_idx695, align 2, !tbaa !145, !noalias !148
  %i.wi = load i16, ptr %i.aq, align 2, !tbaa !145, !noalias !148
  store i16 %i.wi, ptr %.sroa.0.22..sroa_idx700, align 2, !tbaa !145, !noalias !148
  %i.wj = load i16, ptr %i.ar, align 2, !tbaa !145, !noalias !148
  store i16 %i.wj, ptr %.sroa.0.26..sroa_idx704, align 2, !tbaa !145, !noalias !148
  %i.wk = load i16, ptr %i.as, align 2, !tbaa !145, !noalias !148
  store i16 %i.wk, ptr %.sroa.0.30..sroa_idx709, align 2, !tbaa !145, !noalias !148
  %i.wl = load i16, ptr %i.at, align 2, !tbaa !145, !noalias !148
  store i16 %i.wl, ptr %.sroa.0, align 32, !tbaa !145, !noalias !148
  %i.wm = load <12 x i16>, ptr %i.ap, align 2, !tbaa !145, !noalias !148
  %i.wn = shufflevector <12 x i16> %i.wm, <12 x i16> poison, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  store <8 x i16> %i.wn, ptr %.sroa.0.4..sroa_idx696, align 4, !tbaa !145, !noalias !148
  %i.wo = load i16, ptr %i.au, align 2, !tbaa !145, !noalias !148
  store i16 %i.wo, ptr %.sroa.0.20..sroa_idx698, align 4, !tbaa !145, !noalias !148
  %i.wp = load i16, ptr %i.av, align 2, !tbaa !145, !noalias !148
  store i16 %i.wp, ptr %.sroa.0.24..sroa_idx702, align 8, !tbaa !145, !noalias !148
  br label %.preheader

bb.ef:                                            ; preds = %bb.dw
  store i16 %i.ux, ptr %.sroa.0, align 32, !tbaa !145, !noalias !148
  %i.wq = load i16, ptr %i.ax, align 2, !tbaa !145, !noalias !148
  store i16 %i.wq, ptr %.sroa.0.20..sroa_idx699, align 4, !tbaa !145, !noalias !148
  %i.wr = load i16, ptr %i.ay, align 2, !tbaa !145, !noalias !148
  store i16 %i.wr, ptr %.sroa.0.24..sroa_idx703, align 8, !tbaa !145, !noalias !148
  %i.ws = load i16, ptr %i.az, align 2, !tbaa !145, !noalias !148
  store i16 %i.ws, ptr %.sroa.0.28..sroa_idx707, align 4, !tbaa !145, !noalias !148
  %i.wt = load <11 x i16>, ptr %i.aw, align 2, !tbaa !145, !noalias !148
  %i.wu = shufflevector <11 x i16> %i.wt, <11 x i16> poison, <8 x i32> <i32 7, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3>
  store <8 x i16> %i.wu, ptr %.sroa.0.2..sroa_idx694, align 2, !tbaa !145, !noalias !148
  %i.wv = load i16, ptr %i.ba, align 2, !tbaa !145, !noalias !148
  store i16 %i.wv, ptr %.sroa.0.18..sroa_idx697, align 2, !tbaa !145, !noalias !148
  %i.ww = load i16, ptr %i.bb, align 2, !tbaa !145, !noalias !148
  store i16 %i.ww, ptr %.sroa.0.22..sroa_idx701, align 2, !tbaa !145, !noalias !148
  %i.wx = load i16, ptr %i.bc, align 2, !tbaa !145, !noalias !148
  store i16 %i.wx, ptr %.sroa.0.26..sroa_idx705, align 2, !tbaa !145, !noalias !148
  br label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ee
  %.024.i.15.sroa.phi = phi ptr [ %.sroa.0.28.gep.sroa_idx706, %bb.ee ], [ %.sroa.0.30.gep688.sroa_idx708, %bb.ef ]
  %i.wy = load i16, ptr %i.bd, align 2, !tbaa !145, !noalias !148
  store i16 %i.wy, ptr %.024.i.15.sroa.phi, align 2, !tbaa !145, !noalias !148
  %i.wz = load i32, ptr %i.w, align 4, !tbaa !134, !noalias !148 ; 2 uses
  %5 = shl nsw i32 %i.wz, 1
  %6 = or disjoint i32 %5, 1
  %i.xa = icmp samesign ult i32 %1, %i.cy
  %i.xb = mul nuw nsw i32 %i.db, %1
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.xc
  %i.xe = zext nneg i32 %i.cw to i64
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xd, i64 %indvars.iv458
  %indvars.iv.next461.14 = or disjoint i64 %indvars.iv458, 15
  %i.xg = icmp samesign ult i64 %indvars.iv.next461.14, %i.xe
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 32, !tbaa !145
  %i.xh = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  %7 = insertelement <16 x i32> poison, i32 %6, i64 0
  %8 = shufflevector <16 x i32> %7, <16 x i32> poison, <16 x i32> zeroinitializer
  %9 = mul nsw <16 x i32> %8, %i.xh
  %10 = insertelement <16 x i32> poison, i32 %i.wz, i64 0
  %11 = shufflevector <16 x i32> %10, <16 x i32> poison, <16 x i32> zeroinitializer
  %12 = add nsw <16 x i32> %9, %11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !148
  %13 = load i32, ptr %i.an, align 8, !tbaa !101  ; 2 uses
  %14 = icmp ult i32 %13, 17
  tail call void @llvm.assume(i1 %14)
  %notmask.i = shl nsw i32 -1, %13
  %15 = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.xa)
  %i.xi = load <16 x i16>, ptr %4, align 2, !tbaa !145
  %i.xj = zext <16 x i16> %i.xi to <16 x i32>
  %i.xk = add nsw <16 x i32> %12, %i.xj           ; 2 uses
  %16 = insertelement <16 x i32> poison, i32 %15, i64 0
  %17 = shufflevector <16 x i32> %16, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.xl = icmp sgt <16 x i32> %i.xk, %17
  %i.xm = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.xk, <16 x i32> zeroinitializer)
  %i.xn = select <16 x i1> %i.xl, <16 x i32> %17, <16 x i32> %i.xm
  %i.xo = trunc <16 x i32> %i.xn to <16 x i16>
  tail call void @llvm.assume(i1 %i.xg)
  store <16 x i16> %i.xo, ptr %i.xf, align 2, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 16 ; 2 uses
  %i.xp = load i32, ptr %i.ac, align 4, !tbaa !109 ; 2 uses
  %i.xq = trunc nuw i64 %indvars.iv.next459 to i32
  %i.xr = icmp sgt i32 %i.xp, %i.xq
  br i1 %i.xr, label %bb.g, label %._crit_edge, !llvm.loop !152
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV2Decompressor10decompressEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.03)
  %i.d = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !110
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !153
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !123, !inline_history !154
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !131, !inline_history !154
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #17
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.7, ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
end_hunk_0
