Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211-radio?download=true
inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@dissect_wlan_radio_phdr:bb.a
  %i.vx = load i32, ptr %i.vw, align 8
  %i.vy = icmp eq i32 %i.vx, 0
  %i.vz = add i32 %i.b, 4
  %spec.select868 = select i1 %i.vy, i32 %i.vz, i32 %i.b ; 6 uses
  %i.wa = fcmp ogt float %.9, 0.000000e+00
  %or.cond17 = select i1 %i.rt, i1 %i.wa, i1 false
  br i1 %or.cond17, label %bb.ek, label %proto_item_set_generated.exit902

bb.ek:                                            ; preds = %bb.ej
  %i.wb = icmp eq i32 %.1690, 6
  br i1 %i.wb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.wc = insertelement <4 x float> poison, float %.9, i64 0
  %i.wd = shufflevector <4 x float> %i.wc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.we = fcmp oeq <4 x float> %i.wd, <float 1.000000e+00, float 2.000000e+00, float 5.500000e+00, float 1.100000e+01>
  %i.wf = fcmp oeq float %.9, 2.200000e+01
  %i.wg = fcmp oeq float %.9, 3.300000e+01
  %i.wh = bitcast <4 x i1> %i.we to i4
  %i.wi = icmp ne i4 %i.wh, 0
  %op.rdx = or i1 %i.wi, %i.wf
  %op.rdx1081 = or i1 %op.rdx, %i.wg
  br i1 %op.rdx1081, label %.critedge.thread927, label %.critedge.thread

bb.em:                                            ; preds = %bb.ek
  br i1 %.not775, label %bb.en, label %.critedge

bb.en:                                            ; preds = %bb.em
  %i.wj = insertelement <4 x float> poison, float %.9, i64 0
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wl = fcmp oeq <4 x float> %i.wk, <float 1.000000e+00, float 2.000000e+00, float 5.500000e+00, float 1.100000e+01>
  %i.wm = fcmp oeq float %.9, 2.200000e+01
  %i.wn = fcmp oeq float %.9, 3.300000e+01
  %i.wo = bitcast <4 x i1> %i.wl to i4
  %i.wp = icmp ne i4 %i.wo, 0
  %op.rdx1082 = or i1 %i.wp, %i.wm
  %op.rdx1083 = or i1 %op.rdx1082, %i.wn
  br i1 %op.rdx1083, label %.critedge.thread927, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wq = insertelement <8 x float> poison, float %.9, i64 0
  %i.wr = shufflevector <8 x float> %i.wq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ws = fcmp oeq <8 x float> %i.wr, <float 6.000000e+00, float 9.000000e+00, float 1.200000e+01, float 1.800000e+01, float 2.400000e+01, float 3.600000e+01, float 4.800000e+01, float 5.400000e+01>
  %i.wt = bitcast <8 x i1> %i.ws to i8
  %.not1084 = icmp eq i8 %i.wt, 0
  br i1 %.not1084, label %proto_item_set_generated.exit902, label %.critedge.thread

.critedge:                                        ; preds = %bb.em
  switch i32 %.1690, label %proto_item_set_generated.exit902 [
    i32 8, label %bb.fe
    i32 4, label %.critedge.thread927
    i32 5, label %.critedge.thread
    i32 7, label %bb.ep
  ]

.critedge.thread927:                              ; preds = %bb.en, %bb.el, %.critedge
  %i.wu = load i8, ptr @wlan_radio_always_short_preamble, align 1, !range !8
  %i.wv = trunc nuw i8 %i.wu to i1
  %or.cond71 = select i1 %.0727, i1 true, i1 %i.wv ; 2 uses
  %i.ww = select i1 %or.cond71, i1 true, i1 %.1725
  %i.wx = select i1 %i.ww, i32 96, i32 192        ; 2 uses
  %i.wy = uitofp nneg i32 %i.wx to float
  %i.wz = shl i32 %spec.select868, 3
  %i.xa = uitofp i32 %i.wz to float
  %i.xb = fdiv float %i.xa, %.9
  %i.xc = fadd float %i.xb, %i.wy
  %i.xd = tail call float @llvm.ceil.f32(float %i.xc)
  %i.xe = fptoui float %i.xd to i32
  br label %bb.fi

.critedge.thread:                                 ; preds = %bb.eo, %bb.el, %.critedge
  %i.xf = shl i32 %spec.select868, 3
  %i.xg = add i32 %i.xf, 22
  %i.xh = uitofp i32 %i.xg to float
  %i.xi = fmul nnan float %.9, 4.000000e+00
  %i.xj = fdiv float %i.xh, %i.xi
  %i.xk = tail call float @llvm.ceil.f32(float %i.xj)
  %i.xl = fptoui float %i.xk to i32
  %i.xm = shl i32 %i.xl, 2
  %i.xn = add i32 %i.xm, 20
  br label %bb.fi

bb.ep:                                            ; preds = %.critedge
  %i.xo = load i8, ptr %.1688, align 4            ; 6 uses
  %i.xp = and i8 %i.xo, 1
  %.not828 = icmp eq i8 %i.xp, 0
  br i1 %.not828, label %proto_item_set_generated.exit902, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.xq = getelementptr i8, ptr %.1688, i64 2
  %i.xr = load i16, ptr %i.xq, align 2            ; 2 uses
  %i.xs = icmp ugt i16 %i.xr, 76
  %i.xt = and i8 %i.xo, 6
  %i.xu = icmp ne i8 %i.xt, 6
  %or.cond873 = or i1 %i.xu, %i.xs
  br i1 %or.cond873, label %proto_item_set_generated.exit902, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.xv = and i8 %i.xo, 8
  %.not831 = icmp eq i8 %i.xv, 0                  ; 3 uses
  br i1 %.not831, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.xw = getelementptr i8, ptr %.1688, i64 8
  %i.xx = load i8, ptr %i.xw, align 4
  %i.xy = and i8 %i.xx, 2
  %.not832 = icmp eq i8 %i.xy, 0
  %i.xz = select i1 %.not832, i32 32, i32 24
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es
  %.0709 = phi i32 [ %i.xz, %bb.es ], [ 32, %bb.er ]
  %i.ya = and i8 %i.xo, 32
  %.not833 = icmp eq i8 %i.ya, 0                  ; 4 uses
  br i1 %.not833, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.yb = getelementptr i8, ptr %.1688, i64 8
  %i.yc = load i8, ptr %i.yb, align 4
  %i.yd = lshr i8 %i.yc, 3
  %i.ye = and i8 %i.yd, 3
  %i.yf = zext nneg i8 %i.ye to i32
  br label %bb.ev

bb.ev:                                            ; preds = %bb.et, %bb.eu
  %.0663 = phi i32 [ %i.yf, %bb.eu ], [ 0, %bb.et ]
  %i.yg = and i8 %i.xo, 64
  %.not834 = icmp eq i8 %i.yg, 0                  ; 3 uses
  br i1 %.not834, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yh = getelementptr i8, ptr %.1688, i64 12
  %i.yi = load i32, ptr %i.yh, align 4            ; 2 uses
  %i.yj = icmp ugt i32 %i.yi, 3
  br i1 %i.yj, label %proto_item_set_generated.exit902, label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.ew
  %.0 = phi i32 [ %i.yi, %bb.ew ], [ 0, %bb.ev ]
  %i.yk = zext nneg i16 %i.xr to i64
  %i.yl = getelementptr i8, ptr @ieee80211_ht_streams, i64 %i.yk
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = zext i8 %i.ym to i32
  %i.yo = add nuw nsw i32 %.0663, %i.yn           ; 2 uses
  %i.yp = add nsw i32 %i.yo, -5
  %or.cond970 = icmp ult i32 %i.yp, -4
  br i1 %or.cond970, label %proto_item_set_generated.exit902, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.yq = zext nneg i32 %i.yo to i64
  %i.yr = getelementptr [4 x i8], ptr @dissect_wlan_radio_phdr.Nhtdltf, i64 %i.yq
  %i.ys = getelementptr i8, ptr %i.yr, i64 -4
  %i.yt = load i32, ptr %i.ys, align 4
  %i.yu = zext nneg i32 %.0 to i64
  %i.yv = getelementptr [4 x i8], ptr @dissect_wlan_radio_phdr.Nhteltf, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = add i32 %i.yw, %i.yt
  %i.yy = shl i32 %i.yx, 2
  %i.yz = add i32 %i.yy, %.0709                   ; 4 uses
  br i1 %.not833, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.za = getelementptr i8, ptr %.1688, i64 8
  %i.zb = load i8, ptr %i.za, align 4
  %i.zc = lshr i8 %i.zb, 3
  %i.zd = and i8 %i.zc, 3
  %i.ze = zext nneg i8 %i.zd to i32
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %.1 = phi i32 [ %i.ze, %bb.ez ], [ 0, %bb.ey ]  ; 3 uses
  %i.zf = and i8 %i.xo, 16
  %.not837 = icmp eq i8 %i.zf, 0                  ; 2 uses
  %.not838 = icmp eq ptr %.0692, null
  br i1 %.not838, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.zg = load ptr, ptr %.0692, align 8
  %.not839 = icmp eq ptr %i.zg, null
  br i1 %.not839, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.zh = getelementptr i8, ptr %.0692, i64 8
  %i.zi = load i32, ptr %i.zh, align 8            ; 3 uses
  %.not840 = icmp eq i32 %i.zi, 0
  %spec.select875 = select i1 %.not840, i32 %i.yz, i32 0 ; 2 uses
  %i.zj = tail call fastcc i32 @calculate_11n_duration(i32 noundef %i.zi, ptr noundef %.1688, i32 noundef %.1) ; 2 uses
  %i.zk = add i32 %i.zi, %spec.select868
  %i.zl = tail call fastcc i32 @calculate_11n_duration(i32 noundef %i.zk, ptr noundef %.1688, i32 noundef %.1)
  %i.zm = sub nsw i32 %i.zl, %i.zj
  %i.zn = add i32 %i.zm, %spec.select875
  br label %bb.fi

bb.fd:                                            ; preds = %bb.fb, %bb.fa
  %i.zo = tail call fastcc i32 @calculate_11n_duration(i32 noundef %spec.select868, ptr noundef %.1688, i32 noundef %.1)
  %i.zp = add i32 %i.zo, %i.yz
  br label %bb.fi

bb.fe:                                            ; preds = %.critedge
  %i.zq = load i16, ptr %.1688, align 4           ; 2 uses
  %i.zr = and i16 %i.zq, 1
  %.not = icmp eq i16 %i.zr, 0                    ; 3 uses
  %i.zs = getelementptr i8, ptr %.1688, i64 7
  %i.zt = load i8, ptr %i.zs, align 1
  %i.zu = zext i8 %i.zt to i32
  %i.zv = shl nuw nsw i32 %i.zu, 2
  %4 = lshr i16 %i.zq, 10
  %i.zw = and i16 %4, 1
  %narrow = select i1 %.not, i16 0, i16 %i.zw
  %i.zx = zext nneg i16 %narrow to i32
  %i.zy = shl nuw nsw i32 %i.zv, %i.zx
  %i.zz = add nuw nsw i32 %i.zy, 32               ; 4 uses
  %.not842 = icmp eq ptr %.0692, null
  br i1 %.not842, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aaa = load ptr, ptr %.0692, align 8
  %.not843 = icmp eq ptr %i.aaa, null
  br i1 %.not843, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aab = getelementptr i8, ptr %.0692, i64 8
  %i.aac = load i32, ptr %i.aab, align 8          ; 3 uses
  %.not844 = icmp eq i32 %i.aac, 0
  %spec.select876 = select i1 %.not844, i32 %i.zz, i32 0 ; 2 uses
  %i.aad = add i32 %i.aac, %spec.select868
  %i.aae = shl i32 %i.aac, 3
  %i.aaf = add i32 %i.aae, 16
  %i.aag = uitofp i32 %i.aaf to float
  %i.aah = shl i32 %i.aad, 3
  %i.aai = add i32 %i.aah, 16
  %i.aaj = uitofp i32 %i.aai to float
  %i.aak = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aal = insertelement <2 x float> %i.aak, float %i.aaj, i64 1
  %i.aam = insertelement <2 x float> poison, float %.9, i64 0
  %i.aan = shufflevector <2 x float> %i.aam, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aao = fdiv <2 x float> %i.aal, %i.aan        ; 2 uses
  %i.aap = extractelement <2 x float> %i.aao, i64 0
  %i.aaq = fptoui float %i.aap to i32             ; 2 uses
  %i.aar = extractelement <2 x float> %i.aao, i64 1
  %i.aas = fptoui float %i.aar to i32
  %i.aat = sub i32 %spec.select876, %i.aaq
  %i.aau = add i32 %i.aat, %i.aas
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fe
  %i.aav = shl i32 %spec.select868, 3
  %i.aaw = add i32 %i.aav, 16
  %i.aax = uitofp i32 %i.aaw to float
  %i.aay = fdiv float %i.aax, %.9
  %i.aaz = fptoui float %i.aay to i32
  %i.aba = add i32 %i.zz, %i.aaz
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh, %bb.fd, %bb.fc, %.critedge.thread, %.critedge.thread927
  %.6715 = phi i32 [ %spec.select875, %bb.fc ], [ %i.yz, %bb.fd ], [ %i.wx, %.critedge.thread927 ], [ 20, %.critedge.thread ], [ %spec.select876, %bb.fg ], [ %i.zz, %bb.fh ] ; 3 uses
  %.3708 = phi i32 [ %i.yz, %bb.fc ], [ 0, %bb.fd ], [ 0, %.critedge.thread927 ], [ 0, %.critedge.thread ], [ %i.zz, %bb.fg ], [ 0, %bb.fh ] ; 4 uses
  %.3700 = phi i32 [ %i.zn, %bb.fc ], [ %i.zp, %bb.fd ], [ %i.xe, %.critedge.thread927 ], [ %i.xn, %.critedge.thread ], [ %i.aau, %bb.fg ], [ %i.aba, %bb.fh ] ; 7 uses
  %.3696 = phi i32 [ %i.zj, %bb.fc ], [ 0, %bb.fd ], [ 0, %.critedge.thread927 ], [ 0, %.critedge.thread ], [ %i.aaq, %bb.fg ], [ 0, %bb.fh ] ; 5 uses
  %.1682 = phi i1 [ false, %bb.fc ], [ false, %bb.fd ], [ %or.cond71, %.critedge.thread927 ], [ false, %.critedge.thread ], [ false, %bb.fg ], [ false, %bb.fh ]
  %.2680 = phi i1 [ %.not831, %bb.fc ], [ %.not831, %bb.fd ], [ false, %.critedge.thread927 ], [ false, %.critedge.thread ], [ false, %bb.fg ], [ false, %bb.fh ]
  %.4677 = phi i1 [ %.not833, %bb.fc ], [ %.not833, %bb.fd ], [ false, %.critedge.thread927 ], [ false, %.critedge.thread ], [ %.not, %bb.fg ], [ %.not, %bb.fh ]
  %.3672 = phi i1 [ %.not834, %bb.fc ], [ %.not834, %bb.fd ], [ false, %.critedge.thread927 ], [ false, %.critedge.thread ], [ false, %bb.fg ], [ false, %bb.fh ]
  %.2668 = phi i1 [ %.not837, %bb.fc ], [ %.not837, %bb.fd ], [ false, %.critedge.thread927 ], [ false, %.critedge.thread ], [ false, %bb.fg ], [ false, %bb.fh ]
  %i.abb = load ptr, ptr %i.p, align 8
  %i.abc = getelementptr i8, ptr %i.abb, i64 53
  %i.abd = load i16, ptr %i.abc, align 1
  %i.abe = and i16 %i.abd, 8
  %i.abf = icmp eq i16 %i.abe, 0
  br i1 %i.abf, label %bb.fj, label %bb.gg

bb.fj:                                            ; preds = %bb.fi
  %i.abg = load i16, ptr %i.i, align 8
  %i.abh = and i16 %i.abg, 512
  %.not845 = icmp eq i16 %i.abh, 0
  br i1 %.not845, label %bb.gg, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.abi = load ptr, ptr @current_aggregate, align 8 ; 3 uses
  %.not846 = icmp ne ptr %i.abi, null             ; 3 uses
  br i1 %.not846, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  %i.abj = add i32 %.3696, %.3700
  %i.abk = add i32 %i.abj, %.3708
  %i.abl = getelementptr i8, ptr %i.abi, i64 28
  store i32 %i.abk, ptr %i.abl, align 4
  %i.abm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @previous_frame, i64 48), align 8 ; 3 uses
  %.not847 = icmp eq ptr %i.abm, null
  br i1 %.not847, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.abn = load ptr, ptr %i.abm, align 8
  %i.abo = icmp eq ptr %i.abn, %i.abi
  br i1 %i.abo, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.abp = getelementptr i8, ptr %i.abm, i64 40
  store i16 0, ptr %i.abp, align 8
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fl, %bb.fm, %bb.fn, %bb.fk
  %i.abq = getelementptr i8, ptr %3, i64 48       ; 4 uses
  %i.abr = load i64, ptr %i.abq, align 8          ; 4 uses
  %i.abs = icmp eq i64 %i.abr, -1
  br i1 %i.abs, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.abt = select i1 %.not846, i32 %.3708, i32 0
  %i.abu = add i32 %i.abt, %.3696
  %i.abv = zext i32 %i.abu to i64
  %i.abw = getelementptr i8, ptr %.0692, i64 16
  store i64 %i.abv, ptr %i.abw, align 8
  %i.abx = add i32 %.3696, %.3700
  %i.aby = load ptr, ptr @current_aggregate, align 8
  %.not850 = icmp eq ptr %i.aby, null
  %i.abz = select i1 %.not850, i32 0, i32 %.3708
  %i.aca = add i32 %i.abx, %i.abz
  %i.acb = zext i32 %i.aca to i64
  %i.acc = getelementptr i8, ptr %.0692, i64 24
  store i64 %i.acb, ptr %i.acc, align 8
  %i.acd = load ptr, ptr @agg_tracker_list, align 8 ; 2 uses
  %i.ace = icmp eq ptr %i.acd, null
  br i1 %i.ace, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.acf = tail call ptr @wmem_list_new(ptr noundef null) ; 2 uses
  store ptr %i.acf, ptr @agg_tracker_list, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.acg = phi ptr [ %i.acf, %bb.fq ], [ %i.acd, %bb.fp ]
  tail call void @wmem_list_append(ptr noundef %i.acg, ptr noundef %.0692)
  br label %bb.fy

bb.fs:                                            ; preds = %bb.fo
  %i.ach = load i8, ptr @wlan_radio_tsf_at_end, align 1, !range !8
  %i.aci = trunc nuw i8 %i.ach to i1              ; 2 uses
  %or.cond77 = select i1 %.not846, i1 %i.aci, i1 false
  br i1 %or.cond77, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.acj = zext i32 %.3700 to i64
  %i.ack = sub i64 %i.abr, %i.acj
  %i.acl = getelementptr i8, ptr %.0692, i64 16
  store i64 %i.ack, ptr %i.acl, align 8
  %i.acm = load i64, ptr %i.abq, align 8          ; 2 uses
  %i.acn = getelementptr i8, ptr %.0692, i64 24
  store i64 %i.acm, ptr %i.acn, align 8
  %i.aco = load ptr, ptr @agg_tracker_list, align 8 ; 2 uses
  %.not848 = icmp eq ptr %i.aco, null
  br i1 %.not848, label %bb.fy, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.acp = add i32 %.3696, %.3700
  %i.acq = add i32 %i.acp, %.3708
  %i.acr = zext i32 %i.acq to i64
  %i.acs = sub i64 %i.acm, %i.acr
  store i64 %i.acs, ptr %i.a, align 8
  call void @wmem_list_foreach(ptr noundef nonnull %i.aco, ptr noundef nonnull @adjust_agg_tsf, ptr noundef nonnull %i.a)
  %i.act = load ptr, ptr @agg_tracker_list, align 8
  call void @wmem_destroy_list(ptr noundef %i.act)
  store ptr null, ptr @agg_tracker_list, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.fy

bb.fv:                                            ; preds = %bb.fs
  br i1 %i.aci, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.acu = zext i32 %.3700 to i64
  %i.acv = sub i64 %i.abr, %i.acu
  %i.acw = getelementptr i8, ptr %.0692, i64 16
  store i64 %i.acv, ptr %i.acw, align 8
  %i.acx = load i64, ptr %i.abq, align 8
  %i.acy = getelementptr i8, ptr %.0692, i64 24
  store i64 %i.acx, ptr %i.acy, align 8
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.acz = zext i32 %.3696 to i64                 ; 2 uses
  %i.ada = zext i32 %.6715 to i64                 ; 2 uses
  %i.adb = sub nsw i64 %i.acz, %i.ada
  %i.adc = add i64 %i.adb, %i.abr
  %i.add = getelementptr i8, ptr %.0692, i64 16
  store i64 %i.adc, ptr %i.add, align 8
  %i.ade = load i64, ptr %i.abq, align 8
  %i.adf = zext i32 %.3700 to i64
  %i.adg = sub nsw i64 %i.adf, %i.ada
  %i.adh = add nsw i64 %i.adg, %i.acz
  %i.adi = add i64 %i.adh, %i.ade
  %i.adj = getelementptr i8, ptr %.0692, i64 24
  store i64 %i.adi, ptr %i.adj, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fu, %bb.ft, %bb.fx, %bb.fw, %bb.fr
  %i.adk = load ptr, ptr %i.p, align 8
  %i.adl = load i32, ptr %i.adk, align 8
  %i.adm = icmp ugt i32 %i.adl, 1
  %i.adn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @previous_frame, i64 48), align 8 ; 2 uses
  %i.ado = icmp ne ptr %i.adn, null
  %or.cond80 = select i1 %i.adm, i1 %i.ado, i1 false
  br i1 %or.cond80, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.adp = getelementptr i8, ptr %.0692, i64 16
  %i.adq = load i64, ptr %i.adp, align 8
  %i.adr = getelementptr i8, ptr %i.adn, i64 24
  %i.ads = load i64, ptr %i.adr, align 8
end_hunk_0
