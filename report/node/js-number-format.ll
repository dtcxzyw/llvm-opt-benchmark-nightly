inline.NumInlined: 3488
inline.NumDeleted: 1452
begin_hunk_0_@_ZN2v88internal14JSNumberFormat15ResolvedOptionsEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = select i1 %i.ex, i32 %i.fb, i32 %i.ez   ; 4 uses
  %i.fd = load i16, ptr %i.bu, align 8            ; 2 uses
  %i.fe = icmp slt i16 %i.fd, 0
  %i.ff = ashr i16 %i.fd, 5
  %i.fg = sext i16 %i.ff to i32
  %i.fh = load i32, ptr %i.bz, align 4
  %i.fi = select i1 %i.fe, i32 %i.fh, i32 %i.fg
  %i.fj = and i16 %i.ew, 1
  %.not.i.i18.i = icmp eq i16 %i.fj, 0
  br i1 %.not.i.i18.i, label %.sink.split.i.i.i20.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.thread.i

.sink.split.i.i.i20.i:                            ; preds = %bb.u
  %spec.select.i.i21.i = call i32 @llvm.smin.i32(i32 %i.fc, i32 0) ; 2 uses
  %i.fk = icmp slt i32 %i.fc, 0
  br i1 %i.fk, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.thread.i, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i22.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i22.i: ; preds = %.sink.split.i.i.i20.i
  %i.fl = sub nuw nsw i32 %i.fc, %spec.select.i.i21.i
  %i.fm = call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fl) ; 2 uses
  %.not.i23.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i23.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.thread.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.i

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.thread.i: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i22.i, %.sink.split.i.i.i20.i, %bb.u
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.v

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.i: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i22.i
  %i.fn = and i16 %i.ew, 2
  %.not.i.i.i24.i = icmp eq i16 %i.fn, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %26, i64 10
  %i.fp = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = select i1 %.not.i.i.i24.i, ptr %i.fq, ptr %i.fo
  %i.fs = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef %i.fr, i32 noundef %spec.select.i.i21.i, i32 noundef %i.fm, i32 noundef 0, i32 noundef %i.fi) #22
  %i.ft = icmp sgt i32 %i.fs, -1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br i1 %i.ft, label %_ZN2v88internal12_GLOBAL__N_121CurrencyDisplayStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.thread.i
  br label %_ZN2v88internal12_GLOBAL__N_121CurrencyDisplayStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit

_ZN2v88internal12_GLOBAL__N_121CurrencyDisplayStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit: ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.i196, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit17.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.i, %bb.v
  %.sink.i191 = phi i64 [ 7536, %bb.v ], [ 704, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit17.i ], [ 5640, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.i196 ], [ 2872, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit25.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i191
  %i.fv = call i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr %i.ak, ptr nonnull %i.cw, ptr nonnull %i.fu, i64 1) #22 ; 2 uses
  %i.fw = trunc i16 %i.fv to i1
  br i1 %i.fw, label %_ZNO2v85MaybeIbE8FromJustEv.exit172, label %bb.w, !prof !13

bb.w:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121CurrencyDisplayStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #22
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit172

_ZNO2v85MaybeIbE8FromJustEv.exit172:              ; preds = %_ZN2v88internal12_GLOBAL__N_121CurrencyDisplayStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit, %bb.w
  %i.fx = and i16 %i.fv, 256
  %.not487 = icmp eq i16 %i.fx, 0
  br i1 %.not487, label %bb.x, label %bb.y, !prof !5

bb.x:                                             ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit172
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.29) #23
  unreachable

bb.y:                                             ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit172
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2272
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull @.str.92) #22
  %i.fz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ga = load i16, ptr %i.fz, align 8            ; 4 uses
  %i.gb = icmp slt i16 %i.ga, 0
  %i.gc = ashr i16 %i.ga, 5
  %i.gd = sext i16 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = select i1 %i.gb, i32 %i.gf, i32 %i.gd   ; 4 uses
  %i.gh = load i16, ptr %i.bu, align 8            ; 2 uses
  %i.gi = icmp slt i16 %i.gh, 0
  %i.gj = ashr i16 %i.gh, 5
  %i.gk = sext i16 %i.gj to i32
  %i.gl = load i32, ptr %i.bz, align 4
  %i.gm = select i1 %i.gi, i32 %i.gl, i32 %i.gk
  %i.gn = and i16 %i.ga, 1
  %.not.i.i.i201 = icmp eq i16 %i.gn, 0
  br i1 %.not.i.i.i201, label %.sink.split.i.i.i.i204, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread.i202

.sink.split.i.i.i.i204:                           ; preds = %bb.y
  %spec.select.i.i.i205 = call i32 @llvm.smin.i32(i32 %i.gg, i32 0) ; 2 uses
  %i.go = icmp slt i32 %i.gg, 0
  br i1 %i.go, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread.i202, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i.i206

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i.i206: ; preds = %.sink.split.i.i.i.i204
  %i.gp = sub nuw nsw i32 %i.gg, %spec.select.i.i.i205
  %i.gq = call i32 @llvm.umin.i32(i32 %i.gg, i32 %i.gp) ; 2 uses
  %.not.i.i207 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i207, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread.i202, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.i208

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread.i202: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i.i206, %.sink.split.i.i.i.i204, %bb.y
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.z

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.i208: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i.i206
  %i.gr = and i16 %i.ga, 2
  %.not.i.i.i.i209 = icmp eq i16 %i.gr, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %23, i64 10
  %i.gt = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = select i1 %.not.i.i.i.i209, ptr %i.gu, ptr %i.gs
  %i.gw = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef %i.gv, i32 noundef %spec.select.i.i.i205, i32 noundef %i.gq, i32 noundef 0, i32 noundef %i.gm) #22
  %i.gx = icmp sgt i32 %i.gw, -1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br i1 %i.gx, label %_ZN2v88internal12_GLOBAL__N_118CurrencySignStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.i208, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread.i202
  br label %_ZN2v88internal12_GLOBAL__N_118CurrencySignStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit

_ZN2v88internal12_GLOBAL__N_118CurrencySignStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit: ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.i208, %bb.z
  %.sink.i203 = phi i64 [ 3080, %bb.z ], [ 2168, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.i208 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i203
  %i.gz = call i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr %i.ak, ptr nonnull %i.fy, ptr nonnull %i.gy, i64 1) #22 ; 2 uses
  %i.ha = trunc i16 %i.gz to i1
  br i1 %i.ha, label %_ZNO2v85MaybeIbE8FromJustEv.exit171, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_118CurrencySignStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #22
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit171

_ZNO2v85MaybeIbE8FromJustEv.exit171:              ; preds = %_ZN2v88internal12_GLOBAL__N_118CurrencySignStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE.exit, %bb.aa
  %i.hb = and i16 %i.gz, 256
  %.not488 = icmp eq i16 %i.hb, 0
  br i1 %.not488, label %bb.ab, label %bb.ac, !prof !5

bb.ab:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit171
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.30) #23
  unreachable

bb.ac:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit171, %_ZN2v88internal12_GLOBAL__N_120CurrencyFromSkeletonERKN6icu_7813UnicodeStringE.exit
  %i.hc = icmp eq i32 %i.bf, 3
  br i1 %i.hc, label %bb.ad, label %bb.az

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22, !noalias !17
  %i.hd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.hd, ptr %21, align 8, !noalias !17
  %i.he = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.he, align 8, !noalias !17
  store i8 0, ptr %i.hd, align 8, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22, !noalias !17
  %i.hf = load i16, ptr %i.bu, align 8, !noalias !17 ; 2 uses
  %i.hg = icmp slt i16 %i.hf, 0
  %i.hh = ashr i16 %i.hf, 5
  %i.hi = sext i16 %i.hh to i32
  %i.hj = load i32, ptr %i.bz, align 4, !noalias !17
  %i.hk = select i1 %i.hg, i32 %i.hj, i32 %i.hi   ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %20, align 8, !noalias !17
  %i.hl = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %21, ptr %i.hl, align 8, !noalias !17
  %or.cond63.i = icmp sgt i32 %i.hk, 15
  br i1 %or.cond63.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit.i, label %_ZNK6icu_7813UnicodeString12toUTF8StringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERT_S9_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit.i: ; preds = %bb.ad
  %i.hm = call i32 @llvm.umax.i32(i32 %i.hk, i32 30)
  %.0.i37.i = zext nneg i32 %i.hm to i64          ; 2 uses
  %i.hn = add nuw nsw i64 %.0.i37.i, 1
  %i.ho = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #24, !noalias !17 ; 2 uses
  store i8 0, ptr %i.ho, align 1, !noalias !17
  store ptr %i.ho, ptr %21, align 8, !noalias !17
  store i64 %.0.i37.i, ptr %i.hd, align 8, !noalias !17
  br label %_ZNK6icu_7813UnicodeString12toUTF8StringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERT_S9_.exit.i

_ZNK6icu_7813UnicodeString12toUTF8StringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERT_S9_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit.i, %bb.ad
  call void @_ZNK6icu_7813UnicodeString6toUTF8ERNS_8ByteSinkE(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(8) %20) #22, !noalias !17
  call void @_ZN6icu_788ByteSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #22, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22, !noalias !17
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.hp, ptr %22, align 8, !noalias !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.hp, ptr noundef nonnull align 1 dereferenceable(5) @.str.86, i64 5, i1 false), !noalias !17
  %i.hq = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 5, ptr %i.hq, align 8, !noalias !17
  %i.hr = getelementptr inbounds nuw i8, ptr %22, i64 21
  store i8 0, ptr %i.hr, align 1, !noalias !17
  %i.hs = load i64, ptr %i.he, align 8, !noalias !17 ; 12 uses
  %.pre.pre = load ptr, ptr %21, align 8, !noalias !17 ; 9 uses
  %i.ht = icmp ult i64 %i.hs, 5
  br i1 %i.ht, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6icu_7813UnicodeString12toUTF8StringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERT_S9_.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.hs
  %i.hv = ptrtoint ptr %i.hu to i64               ; 2 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.ae, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %i.hs, %.lr.ph.i.i.i ], [ %i.in, %bb.ae ]
  %.02840.i.i.i = phi ptr [ %.pre.pre, %.lr.ph.i.i.i ], [ %i.il, %bb.ae ]
  %.reass.reass.i.reass.reass.i.i = add i64 %.041.i.i.i, -4
  %i.hw = call ptr @memchr(ptr noundef %.02840.i.i.i, i32 noundef 117, i64 noundef %.reass.reass.i.reass.reass.i.i) #22 ; 5 uses
  %.not34.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not34.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.hx = load i32, ptr %i.hw, align 1
  %i.hy = load i32, ptr %i.hp, align 1
  %i.hz = xor i32 %i.hx, %i.hy
  %i.ia = getelementptr i8, ptr %i.hw, i64 4
  %i.ib = getelementptr i8, ptr %i.hp, i64 4
  %i.ic = load i8, ptr %i.ia, align 1
  %i.id = load i8, ptr %i.ib, align 1
  %i.ie = zext i8 %i.ic to i32
  %i.if = zext i8 %i.id to i32
  %i.ig = xor i32 %i.ie, %i.if
  %i.ih = or i32 %i.hz, %i.ig
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = zext i1 %i.ii to i32
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 2 uses
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.hv, %i.im                    ; 2 uses
  %.not33.i.i.i = icmp ult i64 %i.in, 5
  br i1 %.not33.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.io = ptrtoint ptr %i.hw to i64
  %i.ip = ptrtoint ptr %.pre.pre to i64           ; 2 uses
  %i.iq = sub i64 %i.io, %i.ip                    ; 2 uses
  %i.ir = icmp eq i64 %i.iq, -1
  br i1 %i.ir, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i: ; preds = %bb.ae, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i
  %.not3339.i.i13.i = icmp ult i64 %i.hs, 7
  br i1 %.not3339.i.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, %bb.af
  %.041.i.i15.i = phi i64 [ %i.je, %bb.af ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i ]
  %.02840.i.i16.i = phi ptr [ %i.jc, %bb.af ], [ %.pre.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i ]
  %.reass.reass.i.reass.reass.i18.i = add i64 %.041.i.i15.i, -6
  %i.is = call ptr @memchr(ptr noundef %.02840.i.i16.i, i32 noundef 112, i64 noundef %.reass.reass.i.reass.reass.i18.i) #22 ; 5 uses
  %.not34.i.i20.i = icmp eq ptr %i.is, null
  br i1 %.not34.i.i20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19.i
  %i.it = load i32, ptr %i.is, align 1
  %i.iu = xor i32 %i.it, 1668441456
  %i.iv = getelementptr i8, ptr %i.is, i64 3
  %i.iw = load i32, ptr %i.iv, align 1
  %i.ix = xor i32 %i.iw, 1953391971
  %i.iy = or i32 %i.iu, %i.ix
  %i.iz = icmp ne i32 %i.iy, 0
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = sub i64 %i.hv, %i.jd                    ; 2 uses
  %.not33.i.i23.i = icmp ult i64 %i.je, 7
  br i1 %.not33.i.i23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19.i, !llvm.loop !20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21.i
  %i.jf = ptrtoint ptr %i.is to i64
  %i.jg = ptrtoint ptr %.pre.pre to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %.not.i = icmp eq i64 %i.jh, -1
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i, label %._crit_edge.i.i24.i

._crit_edge.i.i24.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr %i.ji, ptr %31, align 8, !alias.scope !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ji, ptr noundef nonnull align 1 dereferenceable(7) @.str.49, i64 7, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 7, ptr %i.jj, align 8, !alias.scope !17
  %i.jk = getelementptr inbounds nuw i8, ptr %31, i64 23
  store i8 0, ptr %i.jk, align 1, !alias.scope !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i: ; preds = %bb.af, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19.i, %_ZNK6icu_7813UnicodeString12toUTF8StringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERT_S9_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i
  %i.jl = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr %i.jl, ptr %31, align 8, !alias.scope !17
  %i.jm = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.jm, align 8, !alias.scope !17
  store i8 0, ptr %i.jl, align 8, !alias.scope !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread52.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i
  %i.jn = add i64 %i.iq, 5                        ; 9 uses
  %i.jo = icmp eq i64 %i.jn, -1
  br i1 %i.jo, label %._crit_edge.i.i30.i, label %bb.ag

._crit_edge.i.i30.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread52.i
  %i.jp = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr %i.jp, ptr %31, align 8, !alias.scope !17
  %i.jq = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.jq, align 8, !alias.scope !17
  store i8 0, ptr %i.jp, align 8, !alias.scope !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread52.i
  %i.jr = icmp ult i64 %i.jn, %i.hs
  br i1 %i.jr, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.ag
  %i.js = sub nuw i64 %i.hs, %i.jn
  %i.jt = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.jn
  %i.ju = call ptr @memchr(ptr noundef %i.jt, i32 noundef 32, i64 noundef %i.js) #22, !noalias !17 ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.ju, null
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = sub i64 %i.jv, %i.ip                    ; 2 uses
  %i.jx = icmp eq i64 %i.jw, -1
  %or.cond.i = or i1 %.not.i.i213, %i.jx
  br i1 %or.cond.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.ag
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.0.i = phi i64 [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i ], [ %i.jw, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.jy = icmp ugt i64 %i.jn, %i.hs
  br i1 %i.jy, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i64 noundef %i.jn, i64 noundef %i.hs) #23, !noalias !24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.jz = sub i64 %.0.i, %i.jn
  %i.ka = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  store ptr %i.ka, ptr %31, align 8, !alias.scope !24
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.jn ; 2 uses
  %i.kc = sub nuw i64 %i.hs, %i.jn
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.jz, i64 %i.kc) ; 8 uses
  %i.kd = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.kd, label %bb.aj, label %._crit_edge.i.i.i.i

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ke = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.ke, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #23
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.kf = add nuw i64 %spec.select.i.i.i.i, 1     ; 2 uses
  %i.kg = icmp slt i64 %i.kf, 0
  br i1 %i.kg, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.al
  %i.kh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #24 ; 2 uses
  store ptr %i.kh, ptr %31, align 8, !alias.scope !24
  store i64 %spec.select.i.i.i.i, ptr %i.ka, align 8, !alias.scope !24
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ki = phi ptr [ %i.kh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i.i, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.kj = load i8, ptr %i.kb, align 1
  store i8 %i.kj, ptr %i.ki, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr align 1 %i.kb, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %spec.select.i.i.i.i, ptr %i.kk, align 8, !alias.scope !24
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %spec.select.i.i.i.i
  store i8 0, ptr %i.kl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i, %._crit_edge.i.i30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i, %._crit_edge.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22, !noalias !17
  %i.km = icmp eq ptr %.pre.pre, %i.hd
  br i1 %i.km, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kn = icmp ult i64 %i.hs, 16
  call void @llvm.assume(i1 %i.kn)
  br label %_ZN2v88internal12_GLOBAL__N_116UnitFromSkeletonB5cxx11ERKN6icu_7813UnicodeStringE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ko = load i64, ptr %i.hd, align 8, !noalias !17
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.kp) #25
  br label %_ZN2v88internal12_GLOBAL__N_116UnitFromSkeletonB5cxx11ERKN6icu_7813UnicodeStringE.exit

_ZN2v88internal12_GLOBAL__N_116UnitFromSkeletonB5cxx11ERKN6icu_7813UnicodeStringE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22, !noalias !17
  %i.kq = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116UnitFromSkeletonB5cxx11ERKN6icu_7813UnicodeStringE.exit
  %i.kt = load ptr, ptr %31, align 8              ; 2 uses
  %i.ku = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kt) #26
  %i.kv = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.kt, i64 %i.ku, i8 noundef zeroext 0) #22 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %bb.aq, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !5

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #23
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.ap
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 7728
  %i.ky = call i16 @_ZN2v88internal10JSReceiver18CreateDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr %i.ak, ptr nonnull %i.kx, ptr nonnull %i.kv, i64 1) #22 ; 2 uses
  %i.kz = trunc i16 %i.ky to i1
  br i1 %i.kz, label %_ZNO2v85MaybeIbE8FromJustEv.exit170, label %bb.ar, !prof !13

bb.ar:                                            ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #22
  br label %_ZNO2v85MaybeIbE8FromJustEv.exit170

_ZNO2v85MaybeIbE8FromJustEv.exit170:              ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, %bb.ar
  %i.la = and i16 %i.ky, 256
  %.not489 = icmp eq i16 %i.la, 0
  br i1 %.not489, label %bb.as, label %bb.at, !prof !5

bb.as:                                            ; preds = %_ZNO2v85MaybeIbE8FromJustEv.exit170
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31) #23
  unreachable

bb.at:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116UnitFromSkeletonB5cxx11ERKN6icu_7813UnicodeStringE.exit, %_ZNO2v85MaybeIbE8FromJustEv.exit170
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 3216
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
end_hunk_0
