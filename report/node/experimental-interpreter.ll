Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/experimental-interpreter?download=true
inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal29ExperimentalRegExpInterpreter11FindMatchesEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS6_INS0_6StringEEEiPiiPNS0_4ZoneE:bb.a
  br i1 %i.gm, label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i, label %._crit_edge82.i, !prof !15, !llvm.loop !32

bb.aj:                                            ; preds = %bb.t
  %i.gn = load i32, ptr %i.ds, align 4            ; 3 uses
  store i8 0, ptr %i.dj, align 8
  %i.go = load ptr, ptr %i.dp, align 8            ; 3 uses
  store ptr null, ptr %i.di, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 2 uses
  store i32 %i.gn, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %24, i64 380 ; 4 uses
  store i32 0, ptr %i.gq, align 4
  %i.gr = icmp sgt i32 %i.gn, 0
  br i1 %i.gr, label %bb.ak, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i: ; preds = %bb.aj
  store i8 1, ptr %i.dj, align 8
  br label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i

bb.ak:                                            ; preds = %bb.aj
  %narrow.i.i.i.i.i.i = add nuw i32 %i.gn, 7
  %i.gs = and i32 %narrow.i.i.i.i.i.i, -8
  %i.gt = zext i32 %i.gs to i64                   ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 3 uses
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = sub i64 %i.gv, %i.gx
  %i.gz = icmp ult i64 %i.gy, %i.gt
  br i1 %i.gz, label %bb.al, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i, !prof !12

bb.al:                                            ; preds = %bb.ak
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.go, i64 noundef %i.gt) #8
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8
  br label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i: ; preds = %bb.al, %bb.ak
  %i.ha = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.al ], [ %i.gx, %bb.ak ] ; 2 uses
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = add i64 %i.ha, %i.gt
  store i64 %i.hc, ptr %i.gw, align 8
  %.pre.i = load i32, ptr %i.ds, align 4          ; 2 uses
  %.pre87.i = load ptr, ptr %i.dp, align 8
  store ptr %i.hb, ptr %i.di, align 8
  store i8 1, ptr %i.dj, align 8
  %i.hd = icmp sgt i32 %.pre.i, 0
  br i1 %i.hd, label %.lr.ph.i.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i
  %.08.i.i = phi i32 [ %i.hn, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i ], [ 0, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i ]
  %i.he = load i32, ptr %i.gq, align 4            ; 2 uses
  %i.hf = load i32, ptr %i.gp, align 8            ; 2 uses
  %i.hg = icmp slt i32 %i.he, %i.hf
  br i1 %i.hg, label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.hh = shl nsw i32 %i.hf, 1
  %i.hi = or disjoint i32 %i.hh, 1
  call void @_ZN2v88internal8ZoneListIbE6ResizeEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i32 noundef %i.hi, ptr noundef %.pre87.i)
  %i.hj = load i32, ptr %i.gq, align 4
  br label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i: ; preds = %bb.am, %.lr.ph.i.i
  %.sink10.i.i.i = phi i32 [ %i.hj, %bb.am ], [ %i.he, %.lr.ph.i.i ] ; 2 uses
  %.sink6.i.i.i = load ptr, ptr %i.di, align 8
  %i.hk = add nsw i32 %.sink10.i.i.i, 1
  store i32 %i.hk, ptr %i.gq, align 4
  %i.hl = sext i32 %.sink10.i.i.i to i64
  %i.hm = getelementptr inbounds i8, ptr %.sink6.i.i.i, i64 %i.hl
  store i8 0, ptr %i.hm, align 1
  %i.hn = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.hn, %.pre.i
  br i1 %exitcond.not.i.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i, label %.lr.ph.i.i, !llvm.loop !33

bb.an:                                            ; preds = %bb.t
  %i.ho = load ptr, ptr %i.dp, align 8            ; 3 uses
  store ptr %i.ho, ptr %i.cy, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %24, i64 184
  store ptr null, ptr %i.hp, align 8
  store i8 1, ptr %i.cz, align 8
  store ptr %i.ho, ptr %i.cw, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %24, i64 160
  store ptr null, ptr %i.hq, align 8
  store i8 1, ptr %i.cx, align 8
  store ptr %i.ho, ptr %i.dg, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %24, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.dh, align 8
  %i.hs = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph85.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i

.lr.ph85.i:                                       ; preds = %bb.an, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %.0.in83.i = phi i32 [ %.0.i21, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.hs, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.hu = load i64, ptr %i.by, align 8            ; 2 uses
  %i.hv = icmp ult i64 %i.hu, 2147483648
  br i1 %i.hv, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %.lr.ph85.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %.lr.ph85.i
  %.0.i21 = add nsw i32 %.0.in83.i, -1
  %i.hw = trunc nuw nsw i64 %i.hu to i32
  %i.hx = add nuw nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.b, align 4
  %i.hy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS1_IbEEE12emplace_backIJiRPNS0_4ZoneEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.dp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.hz = icmp sgt i32 %.0.in83.i, 1
  br i1 %i.hz, label %.lr.ph85.i, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i, !llvm.loop !34

_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i, %bb.an, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i
  %i.ia = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i
  %i.ic = load ptr, ptr %i.dp, align 8            ; 2 uses
  store ptr %i.ic, ptr %i.da, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 208
  store ptr null, ptr %i.id, align 8
  store i8 1, ptr %i.db, align 8
  store ptr %i.ic, ptr %i.dc, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %24, i64 232
  store ptr null, ptr %i.ie, align 8
  store i8 1, ptr %i.dd, align 8
  %i.if = load i32, ptr %i.bs, align 8
  %i.ig = sext i32 %i.if to i64
  %i.ih = load i32, ptr %i.bt, align 4
  %i.ii = sext i32 %i.ih to i64
  %i.ij = load i32, ptr %i.ds, align 4
  %i.ik = sext i32 %i.ij to i64
  %i.il = add nsw i64 %i.ik, %i.ig                ; 2 uses
  %i.im = add nsw i64 %i.il, %i.ii
  %i.in = shl nsw i64 %i.im, 3
  %i.io = shl nsw i64 %i.il, 2
  %i.ip = add nsw i64 %i.io, 56
  %i.iq = add nsw i64 %i.ip, %i.in
  %i.ir = getelementptr inbounds nuw i8, ptr %24, i64 408
  store i64 %i.iq, ptr %i.ir, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i
  %.val34.i = load i64, ptr %i.cs, align 8        ; 2 uses
  %.not5.i.i.i.i = icmp eq i64 %.val34.i, 0
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.aq
  %.idx.i = shl i64 %.val34.i, 3
  %.val32.i = load ptr, ptr %i.cc, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %.val32.i, i8 -1, i64 %.idx.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit: ; preds = %bb.aq, %.lr.ph.i.i.i.preheader.i
  %i.is = load i32, ptr %i.bs, align 8
  %i.it = sdiv i32 %7, %i.is                      ; 3 uses
  %i.iu = load i8, ptr %i.dk, align 8, !range !9, !noundef !10
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.cm, label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.iw = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE19FillLookaroundTableEv.exit.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val33.i.i = load i64, ptr %i.cs, align 8      ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i64 %.val33.i.i, 0
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.as
  %.idx.i.i = shl i64 %.val33.i.i, 3
  %.val.i.i = load ptr, ptr %i.cc, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %.val.i.i, i8 -1, i64 %.idx.i.i, i1 false)
  %.pre.i.i = load i32, ptr %i.ds, align 4
  br label %_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i

_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader.i.i, %bb.as
  %i.iy = phi i32 [ %.pre.i.i, %.lr.ph.i.i.i.preheader.i.i ], [ %i.iw, %bb.as ] ; 2 uses
  %i.iz = load i32, ptr %i.ca, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %24, i64 120
  %i.jb = getelementptr inbounds nuw i8, ptr %24, i64 132 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %24, i64 208 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %24, i64 232 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %24, i64 344 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %24, i64 336 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %24, i64 184 ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %24, i64 160 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %24, i64 116 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %24, i64 112 ; 2 uses
  %i.jk = icmp slt i32 %i.iy, 1
  br i1 %i.jk, label %.thread.i.i, label %.lr.ph794

.lr.ph794:                                        ; preds = %_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterIhE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i
  %i.jl = zext nneg i32 %i.iy to i64
  br label %bb.au

bb.at:                                            ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i.i
  %i.jm = icmp slt i64 %indvars.iv.next.i.i793.in, 2
  br i1 %i.jm, label %.thread.i.i, label %bb.au, !llvm.loop !35

bb.au:                                            ; preds = %.lr.ph794, %bb.at
  %indvars.iv.next.i.i793.in = phi i64 [ %i.jl, %.lr.ph794 ], [ %indvars.iv.next.i.i793, %bb.at ] ; 2 uses
  %indvars.iv.next.i.i793 = add nsw i64 %indvars.iv.next.i.i793.in, -1 ; 3 uses
  %.val36.i.i = load ptr, ptr %i.ja, align 8      ; 2 uses
  %.val40.i.i = load i32, ptr %i.jb, align 4      ; 2 uses
  %i.jn = sext i32 %.val40.i.i to i64
  %.idx109.i.i = mul nsw i64 %i.jn, 56
  %i.jo = getelementptr inbounds i8, ptr %.val36.i.i, i64 %.idx109.i.i
  %.not102.i.i = icmp eq i32 %.val40.i.i, 0
  br i1 %.not102.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i23

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, %bb.au
  store i32 0, ptr %i.jb, align 4
  %.val35.i.i = load ptr, ptr %i.ct, align 8      ; 2 uses
  %.val38.i.i = load i32, ptr %i.ji, align 4      ; 2 uses
  %i.jp = sext i32 %.val38.i.i to i64
  %.idx110.i.i = mul nsw i64 %i.jp, 56
  %i.jq = getelementptr inbounds i8, ptr %.val35.i.i, i64 %.idx110.i.i
  %.not30104.i.i = icmp eq i32 %.val38.i.i, 0
  br i1 %.not30104.i.i, label %._crit_edge108.i.i, label %.lr.ph107.i.i

.lr.ph.i.i23:                                     ; preds = %bb.au, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i
  %.024103.i.i = phi ptr [ %i.ln, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i ], [ %.val36.i.i, %bb.au ] ; 6 uses
  %.sroa.475.0..024.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.024103.i.i, i64 8
  %.sroa.475.0.copyload.i.i = load ptr, ptr %.sroa.475.0..024.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.576.0..024.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.024103.i.i, i64 16
  %.sroa.576.0.copyload.i.i = load ptr, ptr %.sroa.576.0..024.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.677.0..024.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.024103.i.i, i64 24
  %.sroa.677.0.copyload.i.i = load ptr, ptr %.sroa.677.0..024.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.778.0..024.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.024103.i.i, i64 32
  %.sroa.778.0.copyload.i.i = load ptr, ptr %.sroa.778.0..024.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.879.0..024.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.024103.i.i, i64 40
  %.sroa.879.0.copyload.i.i = load ptr, ptr %.sroa.879.0..024.sroa_idx.i.i, align 8 ; 3 uses
  %i.jr = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.js = sext i32 %i.jr to i64                   ; 2 uses
  %i.jt = icmp ult i32 %i.jr, 4
  br i1 %i.jt, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i23
  %i.ju = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i43.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i64, ptr %i.jv, align 8
  %.not7.i.i.i.i.i = icmp ugt i64 %i.jw, %i.js
  br i1 %.not7.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.475.0.copyload.i.i, i64 8
  store i64 %i.js, ptr %i.jx, align 8
  %i.jy = load ptr, ptr %i.cv, align 8
  store ptr %i.jy, ptr %.sroa.475.0.copyload.i.i, align 8
  store ptr %.sroa.475.0.copyload.i.i, ptr %i.cv, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i.i.i: ; preds = %bb.ax, %bb.aw, %.lr.ph.i.i23
  %i.jz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ay, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i

bb.ay:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i.i.i
  %i.kb = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = icmp ult i32 %i.kb, 2
  br i1 %i.kd, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ke = load ptr, ptr %i.jc, align 8            ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i1.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i64, ptr %i.kf, align 8
  %.not7.i.i2.i.i.i = icmp ugt i64 %i.kg, %i.kc
  br i1 %.not7.i.i2.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.677.0.copyload.i.i, i64 8
  store i64 %i.kc, ptr %i.kh, align 8
  %i.ki = load ptr, ptr %i.jc, align 8
  store ptr %i.ki, ptr %.sroa.677.0.copyload.i.i, align 8
  store ptr %.sroa.677.0.copyload.i.i, ptr %i.jc, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i.i.i: ; preds = %bb.bb, %bb.ba, %bb.ay
  %i.kj = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.kk = sext i32 %i.kj to i64                   ; 2 uses
  %i.kl = icmp ult i32 %i.kj, 2
  br i1 %i.kl, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i.i.i
  %i.km = load ptr, ptr %i.jd, align 8            ; 2 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i3.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i64, ptr %i.kn, align 8
  %.not7.i.i4.i.i.i = icmp ugt i64 %i.ko, %i.kk
  br i1 %.not7.i.i4.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.778.0.copyload.i.i, i64 8
  store i64 %i.kk, ptr %i.kp, align 8
  %i.kq = load ptr, ptr %i.jd, align 8
  store ptr %i.kq, ptr %.sroa.778.0.copyload.i.i, align 8
  store ptr %.sroa.778.0.copyload.i.i, ptr %i.jd, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i.i.i: ; preds = %bb.be, %bb.bd, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i.i.i
  %i.kr = load i8, ptr %i.dk, align 8, !range !9, !noundef !10
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i.i.i
  %i.kt = load ptr, ptr %i.je, align 8
  %i.ku = load ptr, ptr %i.jf, align 8
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = ashr exact i64 %i.kx, 5                 ; 5 uses
  %i.kz = and i64 %i.ky, 2305843009213693950
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lb = load ptr, ptr %i.jg, align 8            ; 2 uses
  %.not.i.i5.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i5.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load i64, ptr %i.lc, align 8
  %.not7.i.i6.i.i.i = icmp ugt i64 %i.ld, %i.ky
  br i1 %.not7.i.i6.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.879.0.copyload.i.i, i64 8
  store i64 %i.ky, ptr %i.le, align 8
  %i.lf = load ptr, ptr %i.jg, align 8
  store ptr %i.lf, ptr %.sroa.879.0.copyload.i.i, align 8
  store ptr %.sroa.879.0.copyload.i.i, ptr %i.jg, align 8
  %.pre.i.i.i25 = load ptr, ptr %i.je, align 8
  %.pre9.i.i.i = load ptr, ptr %i.jf, align 8
  %.pre10.i.i.i = ptrtoint ptr %.pre.i.i.i25 to i64
  %.pre11.i.i.i = ptrtoint ptr %.pre9.i.i.i to i64
  %.pre13.i.i.i = sub i64 %.pre10.i.i.i, %.pre11.i.i.i
  %.pre15.i.i.i = ashr exact i64 %.pre13.i.i.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bf
  %.pre-phi16.i.i.i = phi i64 [ %i.ky, %bb.bf ], [ %i.ky, %bb.bh ], [ %.pre15.i.i.i, %bb.bi ] ; 3 uses
  %i.lg = and i64 %.pre-phi16.i.i.i, 4611686018427387900
  %i.lh = icmp eq i64 %i.lg, 0
  br i1 %i.lh, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i.i.i
  %i.li = load ptr, ptr %i.jh, align 8            ; 2 uses
  %.not.i.i7.i.i.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i7.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8
  %.not7.i.i8.i.i.i = icmp ugt i64 %i.lk, %.pre-phi16.i.i.i
  br i1 %.not7.i.i8.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.576.0.copyload.i.i, i64 8
  store i64 %.pre-phi16.i.i.i, ptr %i.ll, align 8
  %i.lm = load ptr, ptr %i.jh, align 8
  store ptr %i.lm, ptr %.sroa.576.0.copyload.i.i, align 8
  store ptr %.sroa.576.0.copyload.i.i, ptr %i.jh, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i: ; preds = %bb.bl, %bb.bk, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.024103.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ln, %i.jo
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i23

._crit_edge108.i.i:                               ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, %._crit_edge.i.i
  store i32 0, ptr %i.ji, align 4
  %26 = trunc nsw i64 %indvars.iv.next.i.i793 to i32
  store i32 %26, ptr %i.dm, align 4
  %.val42.i.i = load ptr, ptr %i.df, align 8
  %i.lo = getelementptr inbounds [12 x i8], ptr %.val42.i.i, i64 %indvars.iv.next.i.i793 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = icmp eq i32 %i.lq, 0                    ; 2 uses
  %i.ls = zext i1 %i.lr to i8
  store i8 %i.ls, ptr %i.dl, align 1
  br i1 %i.lr, label %bb.cd, label %bb.cf

.lr.ph107.i.i:                                    ; preds = %._crit_edge.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i
  %.0105.i.i = phi ptr [ %i.np, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i ], [ %.val35.i.i, %._crit_edge.i.i ] ; 6 uses
  %.sroa.495.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 8
  %.sroa.495.0.copyload.i.i = load ptr, ptr %.sroa.495.0..0.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.596.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 16
  %.sroa.596.0.copyload.i.i = load ptr, ptr %.sroa.596.0..0.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.697.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 24
  %.sroa.697.0.copyload.i.i = load ptr, ptr %.sroa.697.0..0.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.798.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 32
  %.sroa.798.0.copyload.i.i = load ptr, ptr %.sroa.798.0..0.sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.899.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 40
  %.sroa.899.0.copyload.i.i = load ptr, ptr %.sroa.899.0..0.sroa_idx.i.i, align 8 ; 3 uses
  %i.lt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  %i.lv = icmp ult i32 %i.lt, 4
  br i1 %i.lv, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i46.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph107.i.i
  %i.lw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i.i.i44.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i44.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i64, ptr %i.lx, align 8
  %.not7.i.i.i45.i.i = icmp ugt i64 %i.ly, %i.lu
  br i1 %.not7.i.i.i45.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i46.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.495.0.copyload.i.i, i64 8
  store i64 %i.lu, ptr %i.lz, align 8
  %i.ma = load ptr, ptr %i.cv, align 8
  store ptr %i.ma, ptr %.sroa.495.0.copyload.i.i, align 8
  store ptr %.sroa.495.0.copyload.i.i, ptr %i.cv, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i46.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i46.i.i: ; preds = %bb.bo, %bb.bn, %.lr.ph107.i.i
  %i.mb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.bp, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i

bb.bp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i46.i.i
  %i.md = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = icmp ult i32 %i.md, 2
  br i1 %i.mf, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i49.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mg = load ptr, ptr %i.jc, align 8            ; 2 uses
  %.not.i.i1.i47.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i1.i47.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i64, ptr %i.mh, align 8
  %.not7.i.i2.i48.i.i = icmp ugt i64 %i.mi, %i.me
  br i1 %.not7.i.i2.i48.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i49.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.697.0.copyload.i.i, i64 8
  store i64 %i.me, ptr %i.mj, align 8
  %i.mk = load ptr, ptr %i.jc, align 8
  store ptr %i.mk, ptr %.sroa.697.0.copyload.i.i, align 8
  store ptr %.sroa.697.0.copyload.i.i, ptr %i.jc, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i49.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i49.i.i: ; preds = %bb.bs, %bb.br, %bb.bp
  %i.ml = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = icmp ult i32 %i.ml, 2
  br i1 %i.mn, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i52.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i49.i.i
  %i.mo = load ptr, ptr %i.jd, align 8            ; 2 uses
  %.not.i.i3.i50.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i3.i50.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i64, ptr %i.mp, align 8
  %.not7.i.i4.i51.i.i = icmp ugt i64 %i.mq, %i.mm
  br i1 %.not7.i.i4.i51.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i52.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.798.0.copyload.i.i, i64 8
  store i64 %i.mm, ptr %i.mr, align 8
  %i.ms = load ptr, ptr %i.jd, align 8
  store ptr %i.ms, ptr %.sroa.798.0.copyload.i.i, align 8
  store ptr %.sroa.798.0.copyload.i.i, ptr %i.jd, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i52.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i52.i.i: ; preds = %bb.bv, %bb.bu, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i49.i.i
  %i.mt = load i8, ptr %i.dk, align 8, !range !9, !noundef !10
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i52.i.i
  %i.mv = load ptr, ptr %i.je, align 8
  %i.mw = load ptr, ptr %i.jf, align 8
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = ashr exact i64 %i.mz, 5                 ; 5 uses
  %i.nb = and i64 %i.na, 2305843009213693950
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i61.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nd = load ptr, ptr %i.jg, align 8            ; 2 uses
  %.not.i.i5.i53.i.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i5.i53.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load i64, ptr %i.ne, align 8
  %.not7.i.i6.i54.i.i = icmp ugt i64 %i.nf, %i.na
  br i1 %.not7.i.i6.i54.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i61.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.899.0.copyload.i.i, i64 8
  store i64 %i.na, ptr %i.ng, align 8
  %i.nh = load ptr, ptr %i.jg, align 8
  store ptr %i.nh, ptr %.sroa.899.0.copyload.i.i, align 8
  store ptr %.sroa.899.0.copyload.i.i, ptr %i.jg, align 8
  %.pre.i55.i.i = load ptr, ptr %i.je, align 8
  %.pre9.i56.i.i = load ptr, ptr %i.jf, align 8
  %.pre10.i57.i.i = ptrtoint ptr %.pre.i55.i.i to i64
  %.pre11.i58.i.i = ptrtoint ptr %.pre9.i56.i.i to i64
  %.pre13.i59.i.i = sub i64 %.pre10.i57.i.i, %.pre11.i58.i.i
  %.pre15.i60.i.i = ashr exact i64 %.pre13.i59.i.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i61.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i61.i.i: ; preds = %bb.bz, %bb.by, %bb.bw
  %.pre-phi16.i62.i.i = phi i64 [ %i.na, %bb.bw ], [ %i.na, %bb.by ], [ %.pre15.i60.i.i, %bb.bz ] ; 3 uses
  %i.ni = and i64 %.pre-phi16.i62.i.i, 4611686018427387900
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, label %bb.ca

bb.ca:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i61.i.i
  %i.nk = load ptr, ptr %i.jh, align 8            ; 2 uses
  %.not.i.i7.i63.i.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i7.i63.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load i64, ptr %i.nl, align 8
  %.not7.i.i8.i64.i.i = icmp ugt i64 %i.nm, %.pre-phi16.i62.i.i
  br i1 %.not7.i.i8.i64.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.596.0.copyload.i.i, i64 8
  store i64 %.pre-phi16.i62.i.i, ptr %i.nn, align 8
  %i.no = load ptr, ptr %i.jh, align 8
  store ptr %i.no, ptr %.sroa.596.0.copyload.i.i, align 8
  store ptr %.sroa.596.0.copyload.i.i, ptr %i.jh, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i: ; preds = %bb.cc, %bb.cb, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i61.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i52.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i46.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 56 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.np, %i.jq
  br i1 %.not30.i.i, label %._crit_edge108.i.i, label %.lr.ph107.i.i

bb.cd:                                            ; preds = %._crit_edge108.i.i
  %i.nq = load i64, ptr %i.by, align 8            ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 2147483648
  br i1 %i.nr, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, label %bb.ce, !prof !11

bb.ce:                                            ; preds = %bb.cd
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i:        ; preds = %bb.cd
  %i.ns = trunc nuw nsw i64 %i.nq to i32
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, %._crit_edge108.i.i
  %i.nt = phi i32 [ %i.ns, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ], [ 0, %._crit_edge108.i.i ]
  store i32 %i.nt, ptr %i.ca, align 8
  %i.nu = load i32, ptr %i.lo, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE14NewEmptyThreadEi(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(424) %24, i32 noundef %i.nu)
  %i.nv = load ptr, ptr %i.dp, align 8            ; 3 uses
  %i.nw = load i32, ptr %i.ji, align 4            ; 2 uses
  %i.nx = load i32, ptr %i.jj, align 8            ; 3 uses
  %i.ny = icmp slt i32 %i.nw, %i.nx
  br i1 %i.ny, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nz = load ptr, ptr %i.ct, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.oa = shl nsw i32 %i.nx, 1
  %i.ob = or disjoint i32 %i.oa, 1                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal29ExperimentalRegExpInterpreter11FindMatchesEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS6_INS0_6StringEEEiPiiPNS0_4ZoneE:bb.a
  br i1 %i.akr, label %_ZNK2v84base6VectorIKNS_8internal17RegExpInstructionEE6lengthEv.exit.i35, label %._crit_edge82.i33, !prof !15, !llvm.loop !39

bb.ie:                                            ; preds = %bb.ho
  %i.aks = load i32, ptr %i.ahx, align 4          ; 3 uses
  store i8 0, ptr %i.aho, align 8
  %i.akt = load ptr, ptr %i.ahu, align 8          ; 3 uses
  store ptr null, ptr %i.ahn, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %25, i64 376 ; 2 uses
  store i32 %i.aks, ptr %i.aku, align 8
  %i.akv = getelementptr inbounds nuw i8, ptr %25, i64 380 ; 4 uses
  store i32 0, ptr %i.akv, align 4
  %i.akw = icmp sgt i32 %i.aks, 0
  br i1 %i.akw, label %bb.if, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i51

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i51: ; preds = %bb.ie
  store i8 1, ptr %i.aho, align 8
  br label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42

bb.if:                                            ; preds = %bb.ie
  %narrow.i.i.i.i.i.i52 = add nuw i32 %i.aks, 7
  %i.akx = and i32 %narrow.i.i.i.i.i.i52, -8
  %i.aky = zext i32 %i.akx to i64                 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.ala = load i64, ptr %i.akz, align 8
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akt, i64 16 ; 3 uses
  %i.alc = load i64, ptr %i.alb, align 8          ; 2 uses
  %i.ald = sub i64 %i.ala, %i.alc
  %i.ale = icmp ult i64 %i.ald, %i.aky
  br i1 %i.ale, label %bb.ig, label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53, !prof !12

bb.ig:                                            ; preds = %bb.if
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.akt, i64 noundef %i.aky) #8
  %.pre.i.i.i.i.i.i.i.i62 = load i64, ptr %i.alb, align 8
  br label %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53

_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53: ; preds = %bb.ig, %bb.if
  %i.alf = phi i64 [ %.pre.i.i.i.i.i.i.i.i62, %bb.ig ], [ %i.alc, %bb.if ] ; 2 uses
  %i.alg = inttoptr i64 %i.alf to ptr
  %i.alh = add i64 %i.alf, %i.aky
  store i64 %i.alh, ptr %i.alb, align 8
  %.pre.i54 = load i32, ptr %i.ahx, align 4       ; 2 uses
  %.pre87.i55 = load ptr, ptr %i.ahu, align 8
  store ptr %i.alg, ptr %i.ahn, align 8
  store i8 1, ptr %i.aho, align 8
  %i.ali = icmp sgt i32 %.pre.i54, 0
  br i1 %i.ali, label %.lr.ph.i.i56, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42

.lr.ph.i.i56:                                     ; preds = %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58
  %.08.i.i57 = phi i32 [ %i.als, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58 ], [ 0, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53 ]
  %i.alj = load i32, ptr %i.akv, align 4          ; 2 uses
  %i.alk = load i32, ptr %i.aku, align 8          ; 2 uses
  %i.all = icmp slt i32 %i.alj, %i.alk
  br i1 %i.all, label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph.i.i56
  %i.alm = shl nsw i32 %i.alk, 1
  %i.aln = or disjoint i32 %i.alm, 1
  call void @_ZN2v88internal8ZoneListIbE6ResizeEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.ahn, i32 noundef %i.aln, ptr noundef %.pre87.i55)
  %i.alo = load i32, ptr %i.akv, align 4
  br label %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58

_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58: ; preds = %bb.ih, %.lr.ph.i.i56
  %.sink10.i.i.i59 = phi i32 [ %i.alo, %bb.ih ], [ %i.alj, %.lr.ph.i.i56 ] ; 2 uses
  %.sink6.i.i.i60 = load ptr, ptr %i.ahn, align 8
  %i.alp = add nsw i32 %.sink10.i.i.i59, 1
  store i32 %i.alp, ptr %i.akv, align 4
  %i.alq = sext i32 %.sink10.i.i.i59 to i64
  %i.alr = getelementptr inbounds i8, ptr %.sink6.i.i.i60, i64 %i.alq
  store i8 0, ptr %i.alr, align 1
  %i.als = add nuw nsw i32 %.08.i.i57, 1          ; 2 uses
  %exitcond.not.i.i61 = icmp eq i32 %i.als, %.pre.i54
  br i1 %exitcond.not.i.i61, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42, label %.lr.ph.i.i56, !llvm.loop !33

bb.ii:                                            ; preds = %bb.ho
  %i.alt = load ptr, ptr %i.ahu, align 8          ; 3 uses
  store ptr %i.alt, ptr %i.ahd, align 8
  %i.alu = getelementptr inbounds nuw i8, ptr %25, i64 184
  store ptr null, ptr %i.alu, align 8
  store i8 1, ptr %i.ahe, align 8
  store ptr %i.alt, ptr %i.ahb, align 8
  %i.alv = getelementptr inbounds nuw i8, ptr %25, i64 160
  store ptr null, ptr %i.alv, align 8
  store i8 1, ptr %i.ahc, align 8
  store ptr %i.alt, ptr %i.ahl, align 8
  %i.alw = getelementptr inbounds nuw i8, ptr %25, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alw, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ahm, align 8
  %i.alx = load i32, ptr %i.ahx, align 4          ; 2 uses
  %i.aly = icmp sgt i32 %i.alx, 0
  br i1 %i.aly, label %.lr.ph85.i48, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42

.lr.ph85.i48:                                     ; preds = %bb.ii, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %.0.in83.i49 = phi i32 [ %.0.i50, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ], [ %i.alx, %bb.ii ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.alz = load i64, ptr %i.agd, align 8          ; 2 uses
  %i.ama = icmp ult i64 %i.alz, 2147483648
  br i1 %i.ama, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.ij, !prof !11

bb.ij:                                            ; preds = %.lr.ph85.i48
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %.lr.ph85.i48
  %.0.i50 = add nsw i32 %.0.in83.i49, -1
  %i.amb = trunc nuw nsw i64 %i.alz to i32
  %i.amc = add nuw nsw i32 %i.amb, 1
  store i32 %i.amc, ptr %i.a, align 4
  %i.amd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS1_IbEEE12emplace_backIJiRPNS0_4ZoneEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ahl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.ahu) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ame = icmp sgt i32 %.0.in83.i49, 1
  br i1 %i.ame, label %.lr.ph85.i48, label %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42, !llvm.loop !40

_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, %_ZN2v88internal8ZoneListIbE3AddERKbPNS0_4ZoneE.exit.i.i58, %bb.ii, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.i53, %_ZNSt8optionalIN2v88internal8ZoneListIbEEE7emplaceIJiRPNS1_4ZoneEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSA_.exit.thread.i51
  %i.amf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.amg = trunc nuw i8 %i.amf to i1
  br i1 %i.amg, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42
  %i.amh = load ptr, ptr %i.ahu, align 8          ; 2 uses
  store ptr %i.amh, ptr %i.ahf, align 8
  %i.ami = getelementptr inbounds nuw i8, ptr %25, i64 208
  store ptr null, ptr %i.ami, align 8
  store i8 1, ptr %i.ahg, align 8
  store ptr %i.amh, ptr %i.ahh, align 8
  %i.amj = getelementptr inbounds nuw i8, ptr %25, i64 232
  store ptr null, ptr %i.amj, align 8
  store i8 1, ptr %i.ahi, align 8
  %i.amk = load i32, ptr %i.afx, align 8
  %i.aml = sext i32 %i.amk to i64
  %i.amm = load i32, ptr %i.afy, align 4
  %i.amn = sext i32 %i.amm to i64
  %i.amo = load i32, ptr %i.ahx, align 4
  %i.amp = sext i32 %i.amo to i64
  %i.amq = add nsw i64 %i.amp, %i.aml             ; 2 uses
  %i.amr = add nsw i64 %i.amq, %i.amn
  %i.ams = shl nsw i64 %i.amr, 3
  %i.amt = shl nsw i64 %i.amq, 2
  %i.amu = add nsw i64 %i.amt, 56
  %i.amv = add nsw i64 %i.amu, %i.ams
  %i.amw = getelementptr inbounds nuw i8, ptr %25, i64 408
  store i64 %i.amv, ptr %i.amw, align 8
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %_ZN2v88internal8ZoneListIbE8AddBlockEbiPNS0_4ZoneE.exit.i42
  %.val34.i43 = load i64, ptr %i.agx, align 8     ; 2 uses
  %.not5.i.i.i.i44 = icmp eq i64 %.val34.i43, 0
  br i1 %.not5.i.i.i.i44, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit, label %.lr.ph.i.i.i.preheader.i45

.lr.ph.i.i.i.preheader.i45:                       ; preds = %bb.il
  %.idx.i46 = shl i64 %.val34.i43, 3
  %.val32.i47 = load ptr, ptr %i.agh, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %.val32.i47, i8 -1, i64 %.idx.i46, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit: ; preds = %bb.il, %.lr.ph.i.i.i.preheader.i45
  %i.amx = load i32, ptr %i.afx, align 8
  %i.amy = sdiv i32 %7, %i.amx                    ; 3 uses
  %i.amz = load i8, ptr %i.ahp, align 8, !range !9, !noundef !10
  %i.ana = trunc nuw i8 %i.amz to i1
  br i1 %i.ana, label %bb.kh, label %bb.im

bb.im:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItEC2EPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS8_INS0_6StringEEEiPNS0_4ZoneE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.anb = load i32, ptr %i.ahx, align 4          ; 2 uses
  %i.anc = icmp eq i32 %i.anb, 0
  br i1 %i.anc, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE19FillLookaroundTableEv.exit.thread.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %.val33.i.i98 = load i64, ptr %i.agx, align 8   ; 2 uses
  %.not5.i.i.i.i.i99 = icmp eq i64 %.val33.i.i98, 0
  br i1 %.not5.i.i.i.i.i99, label %_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i, label %.lr.ph.i.i.i.preheader.i.i100

.lr.ph.i.i.i.preheader.i.i100:                    ; preds = %bb.in
  %.idx.i.i101 = shl i64 %.val33.i.i98, 3
  %.val.i.i102 = load ptr, ptr %i.agh, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %.val.i.i102, i8 -1, i64 %.idx.i.i101, i1 false)
  %.pre.i.i103 = load i32, ptr %i.ahx, align 4
  br label %_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i

_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader.i.i100, %bb.in
  %i.and = phi i32 [ %.pre.i.i103, %.lr.ph.i.i.i.preheader.i.i100 ], [ %i.anb, %bb.in ] ; 2 uses
  %i.ane = load i32, ptr %i.agf, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %25, i64 120
  %i.ang = getelementptr inbounds nuw i8, ptr %25, i64 132 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %25, i64 208 ; 6 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %25, i64 232 ; 6 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %25, i64 344 ; 4 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %25, i64 336 ; 4 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %25, i64 184 ; 6 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %25, i64 160 ; 6 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %25, i64 116 ; 6 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %25, i64 112 ; 2 uses
  %i.anp = icmp slt i32 %i.and, 1
  br i1 %i.anp, label %.thread.i.i183, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4fillIPN2v88internal12_GLOBAL__N_114NfaInterpreterItE14LastInputIndexES5_EvT_S7_RKT0_.exit.i.i
  %i.anq = zext nneg i32 %i.and to i64
  br label %bb.ip

bb.io:                                            ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i.i
  %i.anr = icmp slt i64 %indvars.iv.next.i.i105791.in, 2
  br i1 %i.anr, label %.thread.i.i183, label %bb.ip, !llvm.loop !41

bb.ip:                                            ; preds = %.lr.ph, %bb.io
  %indvars.iv.next.i.i105791.in = phi i64 [ %i.anq, %.lr.ph ], [ %indvars.iv.next.i.i105791, %bb.io ] ; 2 uses
  %indvars.iv.next.i.i105791 = add nsw i64 %indvars.iv.next.i.i105791.in, -1 ; 3 uses
  %.val36.i.i106 = load ptr, ptr %i.anf, align 8  ; 2 uses
  %.val40.i.i107 = load i32, ptr %i.ang, align 4  ; 2 uses
  %i.ans = sext i32 %.val40.i.i107 to i64
  %.idx109.i.i108 = mul nsw i64 %i.ans, 56
  %i.ant = getelementptr inbounds i8, ptr %.val36.i.i106, i64 %.idx109.i.i108
  %.not102.i.i109 = icmp eq i32 %.val40.i.i107, 0
  br i1 %.not102.i.i109, label %._crit_edge.i.i125, label %.lr.ph.i.i110

._crit_edge.i.i125:                               ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, %bb.ip
  store i32 0, ptr %i.ang, align 4
  %.val35.i.i126 = load ptr, ptr %i.agy, align 8  ; 2 uses
  %.val38.i.i127 = load i32, ptr %i.ann, align 4  ; 2 uses
  %i.anu = sext i32 %.val38.i.i127 to i64
  %.idx110.i.i128 = mul nsw i64 %i.anu, 56
  %i.anv = getelementptr inbounds i8, ptr %.val35.i.i126, i64 %.idx110.i.i128
  %.not30104.i.i129 = icmp eq i32 %.val38.i.i127, 0
  br i1 %.not30104.i.i129, label %._crit_edge108.i.i145, label %.lr.ph107.i.i130

.lr.ph.i.i110:                                    ; preds = %bb.ip, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i
  %.024103.i.i111 = phi ptr [ %i.aps, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i ], [ %.val36.i.i106, %bb.ip ] ; 6 uses
  %.sroa.475.0..024.sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %.024103.i.i111, i64 8
  %.sroa.475.0.copyload.i.i113 = load ptr, ptr %.sroa.475.0..024.sroa_idx.i.i112, align 8 ; 3 uses
  %.sroa.576.0..024.sroa_idx.i.i114 = getelementptr inbounds nuw i8, ptr %.024103.i.i111, i64 16
  %.sroa.576.0.copyload.i.i115 = load ptr, ptr %.sroa.576.0..024.sroa_idx.i.i114, align 8 ; 3 uses
  %.sroa.677.0..024.sroa_idx.i.i116 = getelementptr inbounds nuw i8, ptr %.024103.i.i111, i64 24
  %.sroa.677.0.copyload.i.i117 = load ptr, ptr %.sroa.677.0..024.sroa_idx.i.i116, align 8 ; 3 uses
  %.sroa.778.0..024.sroa_idx.i.i118 = getelementptr inbounds nuw i8, ptr %.024103.i.i111, i64 32
  %.sroa.778.0.copyload.i.i119 = load ptr, ptr %.sroa.778.0..024.sroa_idx.i.i118, align 8 ; 3 uses
  %.sroa.879.0..024.sroa_idx.i.i120 = getelementptr inbounds nuw i8, ptr %.024103.i.i111, i64 40
  %.sroa.879.0.copyload.i.i121 = load ptr, ptr %.sroa.879.0..024.sroa_idx.i.i120, align 8 ; 3 uses
  %i.anw = load i32, ptr %i.afx, align 8          ; 2 uses
  %i.anx = sext i32 %i.anw to i64                 ; 2 uses
  %i.any = icmp ult i32 %i.anw, 4
  br i1 %i.any, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i.i.i, label %bb.iq

bb.iq:                                            ; preds = %.lr.ph.i.i110
  %i.anz = load ptr, ptr %i.aha, align 8          ; 2 uses
  %.not.i.i.i43.i.i122 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i.i43.i.i122, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  %i.aob = load i64, ptr %i.aoa, align 8
  %.not7.i.i.i.i.i123 = icmp ugt i64 %i.aob, %i.anx
  br i1 %.not7.i.i.i.i.i123, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i.i.i, label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.475.0.copyload.i.i113, i64 8
  store i64 %i.anx, ptr %i.aoc, align 8
  %i.aod = load ptr, ptr %i.aha, align 8
  store ptr %i.aod, ptr %.sroa.475.0.copyload.i.i113, align 8
  store ptr %.sroa.475.0.copyload.i.i113, ptr %i.aha, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i.i.i: ; preds = %bb.is, %bb.ir, %.lr.ph.i.i110
  %i.aoe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.aof = trunc nuw i8 %i.aoe to i1
  br i1 %i.aof, label %bb.it, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i

bb.it:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i.i.i
  %i.aog = load i32, ptr %i.afy, align 4          ; 2 uses
  %i.aoh = sext i32 %i.aog to i64                 ; 2 uses
  %i.aoi = icmp ult i32 %i.aog, 2
  br i1 %i.aoi, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aoj = load ptr, ptr %i.anh, align 8          ; 2 uses
  %.not.i.i1.i.i.i168 = icmp eq ptr %i.aoj, null
  br i1 %.not.i.i1.i.i.i168, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aol = load i64, ptr %i.aok, align 8
  %.not7.i.i2.i.i.i169 = icmp ugt i64 %i.aol, %i.aoh
  br i1 %.not7.i.i2.i.i.i169, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.677.0.copyload.i.i117, i64 8
  store i64 %i.aoh, ptr %i.aom, align 8
  %i.aon = load ptr, ptr %i.anh, align 8
  store ptr %i.aon, ptr %.sroa.677.0.copyload.i.i117, align 8
  store ptr %.sroa.677.0.copyload.i.i117, ptr %i.anh, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i.i.i: ; preds = %bb.iw, %bb.iv, %bb.it
  %i.aoo = load i32, ptr %i.afx, align 8          ; 2 uses
  %i.aop = sext i32 %i.aoo to i64                 ; 2 uses
  %i.aoq = icmp ult i32 %i.aoo, 2
  br i1 %i.aoq, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i.i.i, label %bb.ix

bb.ix:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i.i.i
  %i.aor = load ptr, ptr %i.ani, align 8          ; 2 uses
  %.not.i.i3.i.i.i170 = icmp eq ptr %i.aor, null
  br i1 %.not.i.i3.i.i.i170, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  %i.aot = load i64, ptr %i.aos, align 8
  %.not7.i.i4.i.i.i171 = icmp ugt i64 %i.aot, %i.aop
  br i1 %.not7.i.i4.i.i.i171, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i.i.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.aou = getelementptr inbounds nuw i8, ptr %.sroa.778.0.copyload.i.i119, i64 8
  store i64 %i.aop, ptr %i.aou, align 8
  %i.aov = load ptr, ptr %i.ani, align 8
  store ptr %i.aov, ptr %.sroa.778.0.copyload.i.i119, align 8
  store ptr %.sroa.778.0.copyload.i.i119, ptr %i.ani, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i.i.i: ; preds = %bb.iz, %bb.iy, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i.i.i
  %i.aow = load i8, ptr %i.ahp, align 8, !range !9, !noundef !10
  %i.aox = trunc nuw i8 %i.aow to i1
  br i1 %i.aox, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, label %bb.ja

bb.ja:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i.i.i
  %i.aoy = load ptr, ptr %i.anj, align 8
  %i.aoz = load ptr, ptr %i.ank, align 8
  %i.apa = ptrtoint ptr %i.aoy to i64
  %i.apb = ptrtoint ptr %i.aoz to i64
  %i.apc = sub i64 %i.apa, %i.apb
  %i.apd = ashr exact i64 %i.apc, 5               ; 5 uses
  %i.ape = and i64 %i.apd, 2305843009213693950
  %i.apf = icmp eq i64 %i.ape, 0
  br i1 %i.apf, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i.i.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.apg = load ptr, ptr %i.anl, align 8          ; 2 uses
  %.not.i.i5.i.i.i172 = icmp eq ptr %i.apg, null
  br i1 %.not.i.i5.i.i.i172, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  %i.api = load i64, ptr %i.aph, align 8
  %.not7.i.i6.i.i.i173 = icmp ugt i64 %i.api, %i.apd
  br i1 %.not7.i.i6.i.i.i173, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.apj = getelementptr inbounds nuw i8, ptr %.sroa.879.0.copyload.i.i121, i64 8
  store i64 %i.apd, ptr %i.apj, align 8
  %i.apk = load ptr, ptr %i.anl, align 8
  store ptr %i.apk, ptr %.sroa.879.0.copyload.i.i121, align 8
  store ptr %.sroa.879.0.copyload.i.i121, ptr %i.anl, align 8
  %.pre.i.i.i174 = load ptr, ptr %i.anj, align 8
  %.pre9.i.i.i175 = load ptr, ptr %i.ank, align 8
  %.pre10.i.i.i176 = ptrtoint ptr %.pre.i.i.i174 to i64
  %.pre11.i.i.i177 = ptrtoint ptr %.pre9.i.i.i175 to i64
  %.pre13.i.i.i178 = sub i64 %.pre10.i.i.i176, %.pre11.i.i.i177
  %.pre15.i.i.i179 = ashr exact i64 %.pre13.i.i.i178, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i.i.i: ; preds = %bb.jd, %bb.jc, %bb.ja
  %.pre-phi16.i.i.i180 = phi i64 [ %i.apd, %bb.ja ], [ %i.apd, %bb.jc ], [ %.pre15.i.i.i179, %bb.jd ] ; 3 uses
  %i.apl = and i64 %.pre-phi16.i.i.i180, 4611686018427387900
  %i.apm = icmp eq i64 %i.apl, 0
  br i1 %i.apm, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, label %bb.je

bb.je:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i.i.i
  %i.apn = load ptr, ptr %i.anm, align 8          ; 2 uses
  %.not.i.i7.i.i.i181 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i7.i.i.i181, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  %i.app = load i64, ptr %i.apo, align 8
  %.not7.i.i8.i.i.i182 = icmp ugt i64 %i.app, %.pre-phi16.i.i.i180
  br i1 %.not7.i.i8.i.i.i182, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.576.0.copyload.i.i115, i64 8
  store i64 %.pre-phi16.i.i.i180, ptr %i.apq, align 8
  %i.apr = load ptr, ptr %i.anm, align 8
  store ptr %i.apr, ptr %.sroa.576.0.copyload.i.i115, align 8
  store ptr %.sroa.576.0.copyload.i.i115, ptr %i.anm, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit.i.i: ; preds = %bb.jg, %bb.jf, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i.i.i
  %i.aps = getelementptr inbounds nuw i8, ptr %.024103.i.i111, i64 56 ; 2 uses
  %.not.i.i124 = icmp eq ptr %i.aps, %i.ant
  br i1 %.not.i.i124, label %._crit_edge.i.i125, label %.lr.ph.i.i110

._crit_edge108.i.i145:                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, %._crit_edge.i.i125
  store i32 0, ptr %i.ann, align 4
  %27 = trunc nsw i64 %indvars.iv.next.i.i105791 to i32
  store i32 %27, ptr %i.ahr, align 4
  %.val42.i.i146 = load ptr, ptr %i.ahk, align 8
  %i.apt = getelementptr inbounds [12 x i8], ptr %.val42.i.i146, i64 %indvars.iv.next.i.i105791 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %i.apv = load i32, ptr %i.apu, align 4
  %i.apw = icmp eq i32 %i.apv, 0                  ; 2 uses
  %i.apx = zext i1 %i.apw to i8
  store i8 %i.apx, ptr %i.ahq, align 1
  br i1 %i.apw, label %bb.jy, label %bb.ka

.lr.ph107.i.i130:                                 ; preds = %._crit_edge.i.i125, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i
  %.0105.i.i131 = phi ptr [ %i.aru, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i ], [ %.val35.i.i126, %._crit_edge.i.i125 ] ; 6 uses
  %.sroa.495.0..0.sroa_idx.i.i132 = getelementptr inbounds nuw i8, ptr %.0105.i.i131, i64 8
  %.sroa.495.0.copyload.i.i133 = load ptr, ptr %.sroa.495.0..0.sroa_idx.i.i132, align 8 ; 3 uses
  %.sroa.596.0..0.sroa_idx.i.i134 = getelementptr inbounds nuw i8, ptr %.0105.i.i131, i64 16
  %.sroa.596.0.copyload.i.i135 = load ptr, ptr %.sroa.596.0..0.sroa_idx.i.i134, align 8 ; 3 uses
  %.sroa.697.0..0.sroa_idx.i.i136 = getelementptr inbounds nuw i8, ptr %.0105.i.i131, i64 24
  %.sroa.697.0.copyload.i.i137 = load ptr, ptr %.sroa.697.0..0.sroa_idx.i.i136, align 8 ; 3 uses
  %.sroa.798.0..0.sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %.0105.i.i131, i64 32
  %.sroa.798.0.copyload.i.i139 = load ptr, ptr %.sroa.798.0..0.sroa_idx.i.i138, align 8 ; 3 uses
  %.sroa.899.0..0.sroa_idx.i.i140 = getelementptr inbounds nuw i8, ptr %.0105.i.i131, i64 40
  %.sroa.899.0.copyload.i.i141 = load ptr, ptr %.sroa.899.0..0.sroa_idx.i.i140, align 8 ; 3 uses
  %i.apy = load i32, ptr %i.afx, align 8          ; 2 uses
  %i.apz = sext i32 %i.apy to i64                 ; 2 uses
  %i.aqa = icmp ult i32 %i.apy, 4
  br i1 %i.aqa, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i46.i.i, label %bb.jh

bb.jh:                                            ; preds = %.lr.ph107.i.i130
  %i.aqb = load ptr, ptr %i.aha, align 8          ; 2 uses
  %.not.i.i.i44.i.i142 = icmp eq ptr %i.aqb, null
  br i1 %.not.i.i.i44.i.i142, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %i.aqd = load i64, ptr %i.aqc, align 8
  %.not7.i.i.i45.i.i143 = icmp ugt i64 %i.aqd, %i.apz
  br i1 %.not7.i.i.i45.i.i143, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i46.i.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.aqe = getelementptr inbounds nuw i8, ptr %.sroa.495.0.copyload.i.i133, i64 8
  store i64 %i.apz, ptr %i.aqe, align 8
  %i.aqf = load ptr, ptr %i.aha, align 8
  store ptr %i.aqf, ptr %.sroa.495.0.copyload.i.i133, align 8
  store ptr %.sroa.495.0.copyload.i.i133, ptr %i.aha, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i46.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i46.i.i: ; preds = %bb.jj, %bb.ji, %.lr.ph107.i.i130
  %i.aqg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.aqh = trunc nuw i8 %i.aqg to i1
  br i1 %i.aqh, label %bb.jk, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i

bb.jk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i46.i.i
  %i.aqi = load i32, ptr %i.afy, align 4          ; 2 uses
  %i.aqj = sext i32 %i.aqi to i64                 ; 2 uses
  %i.aqk = icmp ult i32 %i.aqi, 2
  br i1 %i.aqk, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i49.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aql = load ptr, ptr %i.anh, align 8          ; 2 uses
  %.not.i.i1.i47.i.i153 = icmp eq ptr %i.aql, null
  br i1 %.not.i.i1.i47.i.i153, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.aqn = load i64, ptr %i.aqm, align 8
  %.not7.i.i2.i48.i.i154 = icmp ugt i64 %i.aqn, %i.aqj
  br i1 %.not7.i.i2.i48.i.i154, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i49.i.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %i.aqo = getelementptr inbounds nuw i8, ptr %.sroa.697.0.copyload.i.i137, i64 8
  store i64 %i.aqj, ptr %i.aqo, align 8
  %i.aqp = load ptr, ptr %i.anh, align 8
  store ptr %i.aqp, ptr %.sroa.697.0.copyload.i.i137, align 8
  store ptr %.sroa.697.0.copyload.i.i137, ptr %i.anh, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i49.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i49.i.i: ; preds = %bb.jn, %bb.jm, %bb.jk
  %i.aqq = load i32, ptr %i.afx, align 8          ; 2 uses
  %i.aqr = sext i32 %i.aqq to i64                 ; 2 uses
  %i.aqs = icmp ult i32 %i.aqq, 2
  br i1 %i.aqs, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i52.i.i, label %bb.jo

bb.jo:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i49.i.i
  %i.aqt = load ptr, ptr %i.ani, align 8          ; 2 uses
  %.not.i.i3.i50.i.i155 = icmp eq ptr %i.aqt, null
  br i1 %.not.i.i3.i50.i.i155, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  %i.aqv = load i64, ptr %i.aqu, align 8
  %.not7.i.i4.i51.i.i156 = icmp ugt i64 %i.aqv, %i.aqr
  br i1 %.not7.i.i4.i51.i.i156, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i52.i.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.aqw = getelementptr inbounds nuw i8, ptr %.sroa.798.0.copyload.i.i139, i64 8
  store i64 %i.aqr, ptr %i.aqw, align 8
  %i.aqx = load ptr, ptr %i.ani, align 8
  store ptr %i.aqx, ptr %.sroa.798.0.copyload.i.i139, align 8
  store ptr %.sroa.798.0.copyload.i.i139, ptr %i.ani, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i52.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i52.i.i: ; preds = %bb.jq, %bb.jp, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i49.i.i
  %i.aqy = load i8, ptr %i.ahp, align 8, !range !9, !noundef !10
  %i.aqz = trunc nuw i8 %i.aqy to i1
  br i1 %i.aqz, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, label %bb.jr

bb.jr:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i52.i.i
  %i.ara = load ptr, ptr %i.anj, align 8
  %i.arb = load ptr, ptr %i.ank, align 8
  %i.arc = ptrtoint ptr %i.ara to i64
  %i.ard = ptrtoint ptr %i.arb to i64
  %i.are = sub i64 %i.arc, %i.ard
  %i.arf = ashr exact i64 %i.are, 5               ; 5 uses
  %i.arg = and i64 %i.arf, 2305843009213693950
  %i.arh = icmp eq i64 %i.arg, 0
  br i1 %i.arh, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i61.i.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.ari = load ptr, ptr %i.anl, align 8          ; 2 uses
  %.not.i.i5.i53.i.i157 = icmp eq ptr %i.ari, null
  br i1 %.not.i.i5.i53.i.i157, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 8
  %i.ark = load i64, ptr %i.arj, align 8
  %.not7.i.i6.i54.i.i158 = icmp ugt i64 %i.ark, %i.arf
  br i1 %.not7.i.i6.i54.i.i158, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i61.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.899.0.copyload.i.i141, i64 8
  store i64 %i.arf, ptr %i.arl, align 8
  %i.arm = load ptr, ptr %i.anl, align 8
  store ptr %i.arm, ptr %.sroa.899.0.copyload.i.i141, align 8
  store ptr %.sroa.899.0.copyload.i.i141, ptr %i.anl, align 8
  %.pre.i55.i.i159 = load ptr, ptr %i.anj, align 8
  %.pre9.i56.i.i160 = load ptr, ptr %i.ank, align 8
  %.pre10.i57.i.i161 = ptrtoint ptr %.pre.i55.i.i159 to i64
  %.pre11.i58.i.i162 = ptrtoint ptr %.pre9.i56.i.i160 to i64
  %.pre13.i59.i.i163 = sub i64 %.pre10.i57.i.i161, %.pre11.i58.i.i162
  %.pre15.i60.i.i164 = ashr exact i64 %.pre13.i59.i.i163, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i61.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i61.i.i: ; preds = %bb.ju, %bb.jt, %bb.jr
  %.pre-phi16.i62.i.i165 = phi i64 [ %i.arf, %bb.jr ], [ %i.arf, %bb.jt ], [ %.pre15.i60.i.i164, %bb.ju ] ; 3 uses
  %i.arn = and i64 %.pre-phi16.i62.i.i165, 4611686018427387900
  %i.aro = icmp eq i64 %i.arn, 0
  br i1 %i.aro, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, label %bb.jv

bb.jv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i61.i.i
  %i.arp = load ptr, ptr %i.anm, align 8          ; 2 uses
  %.not.i.i7.i63.i.i166 = icmp eq ptr %i.arp, null
  br i1 %.not.i.i7.i63.i.i166, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %i.arr = load i64, ptr %i.arq, align 8
  %.not7.i.i8.i64.i.i167 = icmp ugt i64 %i.arr, %.pre-phi16.i62.i.i165
  br i1 %.not7.i.i8.i64.i.i167, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.ars = getelementptr inbounds nuw i8, ptr %.sroa.596.0.copyload.i.i135, i64 8
  store i64 %.pre-phi16.i62.i.i165, ptr %i.ars, align 8
  %i.art = load ptr, ptr %i.anm, align 8
  store ptr %i.art, ptr %.sroa.596.0.copyload.i.i135, align 8
  store ptr %.sroa.596.0.copyload.i.i135, ptr %i.anm, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE13DestroyThreadENS3_17InterpreterThreadE.exit65.i.i: ; preds = %bb.jx, %bb.jw, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i61.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i52.i.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i46.i.i
  %i.aru = getelementptr inbounds nuw i8, ptr %.0105.i.i131, i64 56 ; 2 uses
  %.not30.i.i144 = icmp eq ptr %i.aru, %i.anv
  br i1 %.not30.i.i144, label %._crit_edge108.i.i145, label %.lr.ph107.i.i130

bb.jy:                                            ; preds = %._crit_edge108.i.i145
  %i.arv = load i64, ptr %i.agd, align 8          ; 2 uses
  %i.arw = icmp ult i64 %i.arv, 2147483648
  br i1 %i.arw, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, label %bb.jz, !prof !11

bb.jz:                                            ; preds = %bb.jy
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i:        ; preds = %bb.jy
  %i.arx = trunc nuw nsw i64 %i.arv to i32
  br label %bb.ka

bb.ka:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, %._crit_edge108.i.i145
  %i.ary = phi i32 [ %i.arx, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ 0, %._crit_edge108.i.i145 ]
  store i32 %i.ary, ptr %i.agf, align 8
  %i.arz = load i32, ptr %i.apt, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE14NewEmptyThreadEi(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(424) %25, i32 noundef %i.arz)
  %i.asa = load ptr, ptr %i.ahu, align 8          ; 3 uses
  %i.asb = load i32, ptr %i.ann, align 4          ; 2 uses
  %i.asc = load i32, ptr %i.ano, align 8          ; 3 uses
  %i.asd = icmp slt i32 %i.asb, %i.asc
  br i1 %i.asd, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.ase = load ptr, ptr %i.agy, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i.i

bb.kc:                                            ; preds = %bb.ka
  %i.asf = shl nsw i32 %i.asc, 1
  %i.asg = or disjoint i32 %i.asf, 1              ; 2 uses
end_hunk_1
