Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tracking_by_matching?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1322
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2cv6detail8tracking17TrackerByMatching11PredictRectEmmm:bb.a
  %i.gq = getelementptr i8, ptr %i.gp, i64 %.idx.i.i.i.i.i101
  %i.gr = getelementptr [40 x i8], ptr %i.gq, i64 %i.ex
  br label %_ZNK2cv6detail8tracking3tbm5TrackixEm.exit103

_ZNK2cv6detail8tracking3tbm5TrackixEm.exit103:    ; preds = %bb.ax, %bb.ba
  %storemerge.i.i.i.i.i102 = phi ptr [ %i.gr, %bb.ba ], [ %i.gi, %bb.ax ]
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i102, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !189
  %i.gu = sub nsw i32 %i.gg, %i.gt
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = fadd float %.050143, %i.gv              ; 2 uses
  %.0 = add nuw i64 %.0145, 1                     ; 2 uses
  %exitcond162.not = icmp eq i64 %.0, %i.bg
  br i1 %exitcond162.not, label %._crit_edge148, label %bb.ag, !llvm.loop !347

bb.bb:                                            ; preds = %._crit_edge148
  %i.gx = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !167
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 480
  br label %_ZNK2cv6detail8tracking3tbm5Track4backEv.exit

_ZNK2cv6detail8tracking3tbm5Track4backEv.exit:    ; preds = %._crit_edge148, %bb.bb
  %i.ha = phi ptr [ %i.gz, %bb.bb ], [ %i.y, %._crit_edge148 ] ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -40
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -32
  %i.hd = fmul <2 x float> %i.dl, splat (float 5.000000e-01)
  %i.he = uitofp i64 %i.ea to float
  %i.hf = load <2 x i32>, ptr %i.hb, align 4, !tbaa !29
  %i.hg = sitofp <2 x i32> %i.hf to <2 x double>
  %i.hh = load <2 x i32>, ptr %i.hc, align 4, !tbaa !29
  %i.hi = sitofp <2 x i32> %i.hh to <2 x double>
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hg)
  %i.hk = fptosi <2 x double> %i.hj to <2 x i32>
  %i.hl = sitofp <2 x i32> %i.hk to <2 x float>
  %i.hm = fsub <2 x float> %i.hl, %i.hd
  %i.hn = insertelement <2 x float> poison, float %i.he, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ho, <2 x float> %i.hm) ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0
  %i.hr = fptosi float %i.hq to i32
  %i.hs = extractelement <2 x float> %i.dl, i64 0
  %i.ht = fptosi float %i.hs to i32
  %.sroa.4123.8.insert.ext = zext i32 %i.ht to i64
  %i.hu = shufflevector <2 x float> %i.dl, <2 x float> %i.hp, <2 x i32> <i32 1, i32 3>
  %i.hv = fptosi <2 x float> %i.hu to <2 x i32>   ; 2 uses
  %i.hw = extractelement <2 x i32> %i.hv, i64 0
  %i.hx = zext i32 %i.hw to i64
  %.sroa.4123.12.insert.shift = shl nuw i64 %i.hx, 32
  %.sroa.4123.12.insert.insert = or disjoint i64 %.sroa.4123.12.insert.shift, %.sroa.4123.8.insert.ext
  %i.hy = extractelement <2 x i32> %i.hv, i64 1
  %i.hz = zext i32 %i.hy to i64
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK2cv6detail8tracking3tbm5Track4backEv.exit, %_ZNK2cv6detail8tracking3tbm5TrackixEm.exit
  %.sroa.0122.sroa.0.0 = phi i32 [ %.sroa.0122.sroa.0.0.extract.trunc, %_ZNK2cv6detail8tracking3tbm5TrackixEm.exit ], [ %i.hr, %_ZNK2cv6detail8tracking3tbm5Track4backEv.exit ]
  %.sroa.4123.0 = phi i64 [ %.sroa.4123.0.copyload, %_ZNK2cv6detail8tracking3tbm5TrackixEm.exit ], [ %.sroa.4123.12.insert.insert, %_ZNK2cv6detail8tracking3tbm5Track4backEv.exit ]
  %.sroa.0122.sroa.3.0 = phi i64 [ %.sroa.0122.sroa.3.0.extract.shift, %_ZNK2cv6detail8tracking3tbm5TrackixEm.exit ], [ %i.hz, %_ZNK2cv6detail8tracking3tbm5Track4backEv.exit ]
  %.sroa.0122.sroa.3.0.insert.shift = shl nuw i64 %.sroa.0122.sroa.3.0, 32
  %.sroa.0122.sroa.0.0.insert.ext = zext i32 %.sroa.0122.sroa.0.0 to i64
  %.sroa.0122.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0122.sroa.3.0.insert.shift, %.sroa.0122.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0122.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4123.0, 1
  ret { i64, i64 } %.fca.1.insert

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ]
  resume { ptr, i32 } %.pn60.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv6detail8tracking17TrackerByMatching28EraseTrackIfBBoxIsOutOfFrameEm(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %"struct.std::pair.109", align 8    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i64, ptr %i.c, align 8, !tbaa !184
  %.not.not.i.i = icmp eq i64 %i.d, 0             ; 3 uses
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  %i.h = icmp eq i64 %1, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, label %bb.c, !llvm.loop !7

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load i64, ptr %i.i, align 8, !tbaa !110  ; 3 uses
  %i.k = urem i64 %1, %i.j                        ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !185  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41
  %i.r = icmp eq i64 %1, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37.thread, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %1, %i.v
  br i1 %i.s, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.w = urem i64 %i.v, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.w, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, !llvm.loop !8

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit: ; preds = %bb.g, %bb.d
  br i1 %.not.not.i.i, label %bb.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37

bb.i:                                             ; preds = %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.x, %bb.i ], [ %.sroa.06.0.i.i.i, %bb.k ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  %i.aa = icmp eq i64 %1, %i.z
  br i1 %i.aa, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit, label %bb.j, !llvm.loop !7

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37: ; preds = %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !110 ; 2 uses
  %.pre65 = load ptr, ptr %i.b, align 8, !tbaa !109
  %.pre66 = urem i64 %1, %.pre                    ; 2 uses
  %.phi.trans.insert67 = getelementptr inbounds nuw [8 x i8], ptr %.pre65, i64 %.pre66
  %.pre68 = load ptr, ptr %.phi.trans.insert67, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre68, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37.thread

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37.thread: ; preds = %bb.f, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37
  %i.ab = phi i64 [ %.pre, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37 ], [ %i.j, %bb.f ]
  %.pre-phi82 = phi i64 [ %.pre66, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37 ], [ %i.k, %bb.f ]
  %i.ac = phi ptr [ %.pre68, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37 ], [ %i.n, %bb.f ]
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !146 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ag = icmp eq i64 %1, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit, label %.lr.ph.i.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.ah = icmp eq i64 %1, %i.ak
  br i1 %i.ah, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37.thread, %bb.l
  %.020.i.i.i.i.i = phi ptr [ %i.ai, %bb.l ], [ %i.ad, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37.thread ]
  %i.ai = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !146 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !41 ; 2 uses
  %i.al = urem i64 %i.ak, %i.ab
  %.not19.i.i.i.i.i = icmp eq i64 %i.al, %.pre-phi82
  br i1 %.not19.i.i.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.m
  br label %.loopexit.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.j, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.79) #26
  unreachable

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit: ; preds = %bb.l, %bb.k, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37.thread
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.k ], [ %i.ad, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread37.thread ], [ %i.ai, %bb.l ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = load <2 x i32>, ptr %i.am, align 8
  %.fr = freeze <2 x i32> %i.an                   ; 2 uses
  %3 = icmp slt <2 x i32> %.fr, splat (i32 1)
  %4 = bitcast <2 x i1> %3 to i2
  %.not108 = icmp eq i2 %4, 0
  br i1 %.not108, label %bb.n, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread

bb.n:                                             ; preds = %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 104
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 96
  %i.aq = load <2 x i32>, ptr %i.ao, align 4, !tbaa !29
  %i.ar = sitofp <2 x i32> %i.aq to <2 x double>
  %i.as = load <2 x i32>, ptr %i.ap, align 4, !tbaa !29
  %i.at = sitofp <2 x i32> %i.as to <2 x double>
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> splat (double 5.000000e-01), <2 x double> %i.at)
  %i.av = fptosi <2 x double> %i.au to <2 x i32>  ; 2 uses
  %.sroa.0.0.insert.insert.i = bitcast <2 x i32> %i.av to i64
  %i.aw = and i64 %.sroa.0.0.insert.insert.i, -9223372034707292160
  %or.cond.not = icmp ne i64 %i.aw, 0
  %i.ax = icmp slt <2 x i32> %.fr, %i.av          ; 2 uses
  %i.ay = extractelement <2 x i1> %i.ax, i64 0
  %or.cond = or i1 %i.ay, %or.cond.not
  %i.az = extractelement <2 x i1> %i.ax, i64 1
  %or.cond95 = or i1 %or.cond, %i.az
  br i1 %or.cond95, label %bb.o, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !201
  %i.bc = add i64 %i.bb, 1
  br i1 %.not.not.i.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.sroa.06.0.in.i.i.i17 = phi ptr [ %i.bd, %bb.p ], [ %.sroa.06.0.i.i.i18, %bb.r ]
  %.sroa.06.0.i.i.i18 = load ptr, ptr %.sroa.06.0.in.i.i.i17, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i19 = icmp eq ptr %.sroa.06.0.i.i.i18, null
  br i1 %.not.i.i.i19, label %.loopexit.i.i15, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i18, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !41
  %i.bg = icmp eq i64 %1, %i.bf
  br i1 %i.bg, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit20, label %bb.q, !llvm.loop !7

bb.s:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = urem i64 %1, %i.bi                      ; 2 uses
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i9, label %.loopexit.i.i15, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !146 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !41
  %i.bq = icmp eq i64 %1, %i.bp
  br i1 %i.bq, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit20, label %.lr.ph.i.i.i.i.i10

bb.u:                                             ; preds = %bb.v
  %i.br = icmp eq i64 %1, %i.bu
  br i1 %i.br, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit20, label %.lr.ph.i.i.i.i.i10, !llvm.loop !8

.lr.ph.i.i.i.i.i10:                               ; preds = %bb.t, %bb.u
  %.020.i.i.i.i.i11 = phi ptr [ %i.bs, %bb.u ], [ %i.bn, %bb.t ]
  %i.bs = load ptr, ptr %.020.i.i.i.i.i11, align 8, !tbaa !146 ; 4 uses
  %.not18.i.i.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not18.i.i.i.i.i12, label %.loopexit.i.i15, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !41 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bi
  %.not19.i.i.i.i.i13 = icmp eq i64 %i.bv, %i.bj
  br i1 %.not19.i.i.i.i.i13, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i.i14, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i14:               ; preds = %bb.v
  br label %.loopexit.i.i15, !llvm.loop !8

.loopexit.i.i15:                                  ; preds = %.lr.ph.i.i.i.i.i10, %bb.q, %..loopexit_crit_edge21.i.i.i.i.i14, %bb.s
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.79) #26
  unreachable

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit20: ; preds = %bb.u, %bb.r, %bb.t
  %.sroa.06.1.i.i.i16 = phi ptr [ %.sroa.06.0.i.i.i18, %bb.r ], [ %i.bn, %bb.t ], [ %i.bs, %bb.u ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i16, i64 736
  store i64 %i.bc, ptr %i.bw, align 8, !tbaa !206
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !101 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not51 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit20
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.w

._crit_edge:                                      ; preds = %bb.w, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit20
  %i.cd = call noundef i64 @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE5eraseERKm(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.031.052 = phi ptr [ %i.bz, %.lr.ph ], [ %i.ch, %bb.w ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.031.052, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !41 ; 2 uses
  %.sroa.speculated26 = call i64 @llvm.umin.i64(i64 %1, i64 %i.cf)
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.cf, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %.sroa.speculated26, ptr %2, align 8, !tbaa !208
  store i64 %.sroa.speculated, ptr %i.cc, align 8, !tbaa !209
  %i.cg = call noundef i64 @_ZNSt10_HashtableISt4pairImmES0_IKS1_fESaIS3_ENSt8__detail10_Select1stESt8equal_toIS1_EN2cv6detail8tracking17TrackerByMatching9pair_hashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ch = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.031.052) #30 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.ca
  br i1 %.not, label %._crit_edge, label %bb.w

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.n, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %._crit_edge, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit
  %.1 = phi i1 [ false, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit ], [ true, %._crit_edge ], [ false, %bb.n ], [ true, %..loopexit_crit_edge21.i.i.i.i ], [ true, %bb.c ], [ true, %bb.e ], [ true, %.lr.ph.i.i.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv6detail8tracking17TrackerByMatching37EraseTrackIfItWasLostTooManyFramesAgoEm(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %"struct.std::pair.109", align 8    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i64, ptr %i.c, align 8, !tbaa !184
  %.not.not.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  %i.h = icmp eq i64 %1, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, label %bb.c, !llvm.loop !7

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load i64, ptr %i.i, align 8, !tbaa !110  ; 3 uses
  %i.k = urem i64 %1, %i.j                        ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !185  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41
  %i.r = icmp eq i64 %1, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread20.thread, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %1, %i.v
  br i1 %i.s, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.w = urem i64 %i.v, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.w, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, !llvm.loop !8

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit: ; preds = %bb.g, %bb.d
  br i1 %.not.not.i.i, label %bb.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread20

bb.i:                                             ; preds = %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.x, %bb.i ], [ %.sroa.06.0.i.i.i, %bb.k ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  %i.aa = icmp eq i64 %1, %i.z
  br i1 %i.aa, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE2atERSA_.exit, label %bb.j, !llvm.loop !7

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread20: ; preds = %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !110 ; 2 uses
  %.pre38 = load ptr, ptr %i.b, align 8, !tbaa !109
  %.pre39 = urem i64 %1, %.pre                    ; 2 uses
  %.phi.trans.insert40 = getelementptr inbounds nuw [8 x i8], ptr %.pre38, i64 %.pre39
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre41, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread20.thread

_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread20.thread: ; preds = %bb.f, %_ZNSt13unordered_mapImN2cv6detail8tracking3tbm5TrackESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread20
end_hunk_0
