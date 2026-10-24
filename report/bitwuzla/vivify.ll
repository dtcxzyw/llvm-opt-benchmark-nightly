Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/vivify?download=true
inline.NumInlined: 1487
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal13vivify_clauseERNS_8VivifierEPNS_6ClauseE:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !178
  %.not181 = icmp eq ptr %i.er, null
  br i1 %.not181, label %bb.aw, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = icmp sgt i8 %i.ek, 0                    ; 3 uses
  %brmerge.not = and i1 %i.es, %i.d
  %.mux = select i1 %i.es, i32 %i.eg, i32 0
  %.mux245 = select i1 %i.es, i32 %.0134283, i32 %i.eg
  br i1 %brmerge.not, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !214
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.em ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 1
  %i.ey = or i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.fa = load i32, ptr %.sroa.0210.0281, align 4, !tbaa !171
  %i.fb = sub nsw i32 0, %i.fa                    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !169 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !181
  %.not.i.i199 = icmp eq ptr %i.fd, %i.ff
  br i1 %.not.i.i199, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !171
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store ptr %i.fg, ptr %i.fc, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.af:                                            ; preds = %bb.ad
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !170 ; 4 uses
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775804
  br i1 %i.fl, label %bb.ag, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.fm = ashr exact i64 %i.fk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 2305843009213693951)
  %i.fq = select i1 %i.fo, i64 2305843009213693951, i64 %i.fp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #20 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i32 %i.fb, ptr %i.ft, align 4, !tbaa !171
  %i.fu = icmp sgt i64 %i.fk, 0
  br i1 %i.fu, label %bb.ah, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.fh, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.fh) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fs, ptr %i.ez, align 8, !tbaa !170
  store ptr %i.fv, ptr %i.fc, align 8, !tbaa !169
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fw, ptr %i.fe, align 8, !tbaa !181
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.fx = load ptr, ptr %i.et, align 8, !tbaa !178
  call void @_ZN7CaDiCaL8Internal24vivify_analyze_redundantERNS_8VivifierEPNS_6ClauseERb(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.fy = load i8, ptr %i.a, align 1, !tbaa !213, !range !198, !noundef !199 ; 2 uses
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  tail call void @_ZN7CaDiCaL8Internal28vivify_post_process_analysisEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2, i32 noundef %i.eg)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !295
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !295
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 5096 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !300
  %i.gh = add nsw i64 %i.gg, 1
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !300
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !197, !range !198, !noundef !199
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gl = load i32, ptr %.sroa.0210.0281, align 4, !tbaa !171
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !178
  tail call void @_ZN7CaDiCaL8Internal17vivify_build_lratEiPNS_6ClauseERSt6vectorISt5tupleIJiS2_bEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.gl, ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gn = load i32, ptr %i.bt, align 4, !tbaa !168
  %i.go = add nsw i32 %i.gn, -1
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.go)
  br label %.loopexit

bb.ao:                                            ; preds = %bb.z
  %i.gp = load i64, ptr %i.ef, align 8, !tbaa !301
  %i.gq = add nsw i64 %i.gp, 1
  store i64 %i.gq, ptr %i.ef, align 8, !tbaa !301
  %i.gr = sub nsw i32 0, %i.eg
  tail call void @_ZN7CaDiCaL8Internal13vivify_assumeEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.gr)
  %i.gs = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal16vivify_propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.gs, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.d, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !186
  call void @_ZN7CaDiCaL8Internal24vivify_analyze_redundantERNS_8VivifierEPNS_6ClauseERb(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.gu, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.gv = load i8, ptr %i.a, align 1, !tbaa !213, !range !198, !noundef !199 ; 3 uses
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN7CaDiCaL8Internal28vivify_post_process_analysisEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2, i32 noundef -2147483648)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !295
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !295
  %i.hb = icmp eq ptr %i.gy, %i.ha
  br i1 %i.hb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 5104 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !302
  %i.he = add nsw i64 %i.hd, 1
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !302
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !197, !range !198, !noundef !199
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hi = load ptr, ptr %i.gt, align 8, !tbaa !186
  tail call void @_ZN7CaDiCaL8Internal17vivify_build_lratEiPNS_6ClauseERSt6vectorISt5tupleIJiS2_bEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0, ptr noundef %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.ap
  %i.hj = phi i8 [ %i.gv, %bb.at ], [ %i.gv, %bb.au ], [ 0, %bb.ap ]
  %i.hk = load i32, ptr %i.bt, align 4, !tbaa !168
  %i.hl = add nsw i32 %i.hk, -1
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr null, ptr %i.hm, align 8, !tbaa !186
  br label %.thread240

bb.aw:                                            ; preds = %bb.ac, %bb.ao, %bb.ab, %bb.aa
  %.4139.ph = phi i32 [ %.mux, %bb.ac ], [ 0, %bb.ao ], [ 0, %bb.aa ], [ 0, %bb.ab ] ; 2 uses
  %.4.ph = phi i32 [ %.mux245, %bb.ac ], [ %.0134283, %bb.ao ], [ %.0134283, %bb.aa ], [ %.0134283, %bb.ab ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0210.0281, i64 4 ; 2 uses
  %.not248 = icmp eq ptr %i.hn, %i.ec
  br i1 %.not248, label %.loopexit, label %bb.y

.thread240:                                       ; preds = %bb.y, %bb.av
  %i.ho = phi i8 [ %i.hj, %bb.av ], [ 0, %bb.y ]
  store ptr null, ptr %i.ea, align 8, !tbaa !191
  br label %bb.bc

.loopexit:                                        ; preds = %bb.aw, %.thread225, %bb.an
  %i.hp = phi i8 [ %i.fy, %bb.an ], [ 0, %.thread225 ], [ 0, %bb.aw ]
  %.0134255 = phi i32 [ %.0134283, %bb.an ], [ 0, %.thread225 ], [ %.4.ph, %bb.aw ] ; 3 uses
  %.5140 = phi i32 [ %i.eg, %bb.an ], [ 0, %.thread225 ], [ %.4139.ph, %bb.aw ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !303
  %i.hs = icmp eq i32 %i.hr, 0
  %i.ht = icmp ne i32 %.5140, 0                   ; 2 uses
  %or.cond = or i1 %i.ht, %i.hs
  br i1 %or.cond, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %i.hu = load ptr, ptr %i.m, align 8, !tbaa !295
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !171 ; 3 uses
  %.not182 = icmp eq i32 %.0134255, %i.hw
  br i1 %.not182, label %.thread342, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hx = load i32, ptr %i.bt, align 4, !tbaa !168
  %i.hy = add nsw i32 %i.hx, -1
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !301
  %i.ib = add nsw i64 %i.ia, 1
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !301
  tail call void @_ZN7CaDiCaL8Internal13vivify_assumeEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.hw)
  %i.ic = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal16vivify_propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.ic, label %.thread342, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 5120 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !304
  %i.if = add nsw i64 %i.ie, 1
  store i64 %i.if, ptr %i.id, align 8, !tbaa !304
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !197, !range !198, !noundef !199
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ba, label %.split

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN7CaDiCaL8Internal17vivify_build_lratEiPNS_6ClauseERSt6vectorISt5tupleIJiS2_bEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !186
  tail call void @_ZN7CaDiCaL8Internal17vivify_build_lratEiPNS_6ClauseERSt6vectorISt5tupleIJiS2_bEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0, ptr noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.split

.split:                                           ; preds = %bb.ba, %bb.az
  %i.il = load i32, ptr %i.bt, align 4, !tbaa !168
  %i.im = add nsw i32 %i.il, -1
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false)
  br label %bb.bi

.thread342:                                       ; preds = %bb.ax, %bb.ay
  store ptr null, ptr %i.ea, align 8, !tbaa !191
  br label %bb.bi

bb.bb:                                            ; preds = %.loopexit
  store ptr null, ptr %i.ea, align 8, !tbaa !191
  br i1 %i.ht, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %.thread240, %bb.bb
  %i.io = phi i8 [ %i.ho, %.thread240 ], [ %i.hp, %bb.bb ]
  %.not = xor i1 %i.d, true
  %i.ip = trunc nuw i8 %i.io to i1
  %or.cond11 = select i1 %.not, i1 true, i1 %i.ip
  br i1 %or.cond11, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !295
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !295
  %i.iu = icmp eq ptr %i.ir, %i.it
  br i1 %i.iu, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZN7CaDiCaL8Internal17vivify_strengthenEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2)
  br label %bb.bu

bb.bf:                                            ; preds = %bb.bd
  %i.iv = load i32, ptr %i.e, align 8             ; 2 uses
  %i.iw = and i32 %i.iv, 2048
  %.not187 = icmp eq i32 %i.iw, 0
  br i1 %.not187, label %bb.bg, label %bb.bu

bb.bg:                                            ; preds = %bb.bf
  %i.ix = or i32 %i.iv, 131072
  store i32 %i.ix, ptr %i.e, align 8
  br label %bb.bu

bb.bh:                                            ; preds = %bb.bc
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !204
  %i.ja = add nsw i64 %i.iz, 1
  store i64 %i.ja, ptr %i.iy, align 8, !tbaa !204
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2)
  br label %bb.bu

bb.bi:                                            ; preds = %.thread342, %.split, %bb.bb
  %.8242 = phi i32 [ %i.hw, %.split ], [ %.0134255, %bb.bb ], [ %.0134255, %.thread342 ] ; 2 uses
  %.not183 = icmp eq i32 %.8242, 0
  br i1 %.not183, label %bb.bu, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jb = load i32, ptr %i.q, align 8, !tbaa !171 ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %.idx290 = shl nsw i64 %i.jc, 2
  %i.jd = getelementptr inbounds i8, ptr %i.p, i64 %.idx290
  %.not184286 = icmp eq i32 %i.jb, 0
  br i1 %.not184286, label %._crit_edge, label %.lr.ph288

.lr.ph288:                                        ; preds = %bb.bj
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  br label %bb.bk

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit207, %bb.bj
  %. = select i1 %i.d, i64 5088, i64 5080
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !201
  %i.jk = add nsw i64 %i.jj, 1
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !201
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !197, !range !198, !noundef !199
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.br, label %bb.bt

bb.bk:                                            ; preds = %.lr.ph288, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit207
  %.0287 = phi ptr [ %i.p, %.lr.ph288 ], [ %i.kr, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit207 ] ; 3 uses
  %i.jo = load i32, ptr %.0287, align 4, !tbaa !171 ; 3 uses
  %i.jp = tail call noundef i32 @llvm.abs.i32(i32 %i.jo, i1 true)
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = load ptr, ptr %i.je, align 8, !tbaa !174
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.jq ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !176
  %.not185 = icmp eq i32 %i.jt, 0
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  %.not186 = icmp ne ptr %i.jv, null
  %or.cond190.not250 = select i1 %.not185, i1 true, i1 %.not186
  %i.jw = icmp eq i32 %i.jo, %.8242
  %or.cond246 = or i1 %i.jw, %or.cond190.not250
  br i1 %or.cond246, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit207, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jx = load ptr, ptr %i.jg, align 8, !tbaa !169 ; 4 uses
  %i.jy = load ptr, ptr %i.jh, align 8, !tbaa !181
  %.not.i200 = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i200, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.jo, ptr %i.jx, align 4, !tbaa !171
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store ptr %i.jz, ptr %i.jg, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit207

bb.bn:                                            ; preds = %bb.bl
  %i.ka = load ptr, ptr %i.jf, align 8, !tbaa !170 ; 4 uses
  %i.kb = ptrtoint ptr %i.jx to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc                    ; 5 uses
  %i.ke = icmp eq i64 %i.kd, 9223372036854775804
  br i1 %i.ke, label %bb.bo, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i201

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i201: ; preds = %bb.bn
  %i.kf = ashr exact i64 %i.kd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i202 = tail call i64 @llvm.umax.i64(i64 %i.kf, i64 1)
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i202, %i.kf ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.kf
  %i.ki = tail call i64 @llvm.umin.i64(i64 %i.kg, i64 2305843009213693951)
  %i.kj = select i1 %i.kh, i64 2305843009213693951, i64 %i.ki ; 3 uses
  %.not.i.i.i203 = icmp ne i64 %i.kj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i203)
  %i.kk = shl nuw nsw i64 %i.kj, 2
  %i.kl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #20 ; 4 uses
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 %i.kd ; 2 uses
  %i.kn = load i32, ptr %.0287, align 4, !tbaa !171
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !171
  %i.ko = icmp sgt i64 %i.kd, 0
  br i1 %i.ko, label %bb.bp, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i204

bb.bp:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i201
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kl, ptr align 4 %i.ka, i64 %i.kd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i204

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i204: ; preds = %bb.bp, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i201
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %.not.i17.i.i205 = icmp eq ptr %i.ka, null
  br i1 %.not.i17.i.i205, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i206, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i204
  tail call void @_ZdlPv(ptr noundef nonnull %i.ka) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i206

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i206: ; preds = %bb.bq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i204
  store ptr %i.kl, ptr %i.jf, align 8, !tbaa !170
  store ptr %i.kp, ptr %i.jg, align 8, !tbaa !169
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kj
  store ptr %i.kq, ptr %i.jh, align 8, !tbaa !181
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit207

_ZNSt6vectorIiSaIiEE9push_backERKi.exit207:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i206, %bb.bm, %bb.bk
  %i.kr = getelementptr inbounds nuw i8, ptr %.0287, i64 4 ; 2 uses
  %.not184 = icmp eq ptr %i.kr, %i.jd
  br i1 %.not184, label %._crit_edge, label %bb.bk

bb.br:                                            ; preds = %._crit_edge
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !305
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !305
  %i.kw = icmp eq ptr %i.kt, %i.kv
  br i1 %i.kw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  tail call void @_ZN7CaDiCaL8Internal17vivify_build_lratEiPNS_6ClauseERSt6vectorISt5tupleIJiS2_bEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %._crit_edge
  tail call void @_ZN7CaDiCaL8Internal17vivify_strengthenEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !187 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !188
  %.not.i.i208 = icmp eq ptr %i.la, %i.ky
  br i1 %.not.i.i208, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bu
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !188
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.bu, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bv

bb.bv:                                            ; preds = %bb.m, %_ZNSt6vectorImSaImEE5clearEv.exit, %bb.a
  ret void
}

declare void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal17vivify_build_lratEiPNS_6ClauseERSt6vectorISt5tupleIJiS2_bEESaIS5_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple", align 8        ; 6 uses
  %5 = alloca %"class.std::tuple", align 8        ; 6 uses
  %6 = alloca %"class.std::tuple", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i8 0, ptr %4, align 8, !tbaa !308
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !310
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %1, ptr %i.b, align 8, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !226
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %2 to i64
  store i8 0, ptr %i.d, align 1, !tbaa !213
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !189
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %1, ptr %i.i, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !225
  br label %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(20) %4)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !313
  br label %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.l = load ptr, ptr %3, align 8, !tbaa !313
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EE5clearEv.exit, label %.lr.ph77

.lr.ph77:                                         ; preds = %_ZNSt6vectorISt5tupleIJiPN7CaDiCaL6ClauseEbEESaIS4_EE9push_backEOS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph77, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.aa = phi ptr [ %i.k, %.lr.ph77 ], [ %i.fi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !171 ; 8 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !189 ; 6 uses
  %i.ag = load i8, ptr %i.ab, align 8, !tbaa !213, !range !198, !noundef !199
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !225
  %.not = icmp eq i32 %i.ad, 0                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = call noundef i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !214
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.f, !llvm.loop !306

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.an = trunc nuw i8 %i.ag to i1
  br i1 %i.an, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !188 ; 4 uses
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !201
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !201
end_hunk_0
