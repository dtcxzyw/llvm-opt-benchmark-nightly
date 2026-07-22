inline.NumInlined: 3452
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal29Runtime_RegExpMatchGlobalAtomEiPmPNS0_7IsolateE:bb.a
bb.t:                                             ; preds = %bb.s
  %i.dv = load ptr, ptr %i.dp, align 8, !noalias !170
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !170
  %i.dy = call noundef zeroext i1 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dp) #21, !noalias !170, !inline_history !26
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #21, !noalias !170
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !170
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.eb = load ptr, ptr %i.dp, align 8, !noalias !170
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !170
  %i.ee = call noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #21, !noalias !170, !inline_history !26
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.w:                                             ; preds = %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22, !noalias !173
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.u, %bb.q, %bb.v, %bb.r, %bb.n, %bb.m
  %.sroa.076.sroa.0.0.ph = phi ptr [ %i.ea, %bb.u ], [ %i.di, %bb.q ], [ %i.ee, %bb.v ], [ %i.dm, %bb.r ], [ %i.cu, %bb.n ], [ %i.ct, %bb.m ]
  %.sroa.076.sroa.8.0.ph = phi i32 [ 2, %bb.u ], [ 1, %bb.q ], [ 2, %bb.v ], [ 1, %bb.r ], [ 2, %bb.n ], [ 1, %bb.m ]
  store ptr %.sroa.076.sroa.0.0.ph, ptr %10, align 8
  %.sroa.076.sroa.7.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.cn, ptr %.sroa.076.sroa.7.0..sroa_idx153, align 8
  %.sroa.076.sroa.8.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.076.sroa.8.0.ph, ptr %.sroa.076.sroa.8.0..sroa_idx159, align 4
  %.sroa.076.sroa.9.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %.sroa.076.sroa.9.0..sroa_idx165, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit2

bb.x:                                             ; preds = %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit, %_ZN2v88internal13direct_handleINS0_6StringEEENS0_12DirectHandleIT_EENS0_6TaggedIS4_EEPNS0_7IsolateE.exit
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %10, ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit2

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit2: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 8, !range !28, !noundef !29
  %i.eh = trunc nuw i8 %i.eg to i1
  store i8 0, ptr %i.ef, align 8
  br i1 %i.eh, label %bb.y, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.y:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit2
  %i.ei = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit2, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !177, !noalias !174
  %i.ej = load i32, ptr %i.bz, align 4, !noalias !180
  %i.ek = load atomic volatile i64, ptr %i.by acquire, align 8, !noalias !183
  %i.el = add i64 %i.ek, 11
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = load atomic volatile i16, ptr %i.em monotonic, align 2, !noalias !183
  %i.eo = and i16 %i.en, 15
  switch i16 %i.eo, label %bb.ak [
    i16 8, label %bb.aa
    i16 0, label %bb.ab
    i16 9, label %bb.al
    i16 1, label %bb.al
    i16 10, label %bb.ac
    i16 2, label %bb.ag
    i16 11, label %bb.al
    i16 3, label %bb.al
    i16 13, label %bb.al
    i16 5, label %bb.al
  ]

bb.aa:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20

bb.ab:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20

bb.ac:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.es = load i64, ptr %i.er, align 8, !noalias !186
  %i.et = inttoptr i64 %i.es to ptr               ; 6 uses
  %i.eu = load atomic volatile i64, ptr %i.by monotonic, align 8, !noalias !186
  %i.ev = add i64 %i.eu, 11
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load atomic volatile i16, ptr %i.ew monotonic, align 2, !noalias !186
  %i.ey = and i16 %i.ex, 16
  %.not.i14 = icmp eq i16 %i.ey, 0
  br i1 %.not.i14, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ez = load ptr, ptr %i.et, align 8, !noalias !186
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !186
  %i.fc = call noundef zeroext i1 %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.et) #21, !noalias !186, !inline_history !22
  br i1 %i.fc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #21, !noalias !186
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !186
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.ff = load ptr, ptr %i.et, align 8, !noalias !186
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !186
  %i.fi = call noundef ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #21, !noalias !186, !inline_history !22
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20

bb.ag:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !191
  %i.fl = inttoptr i64 %i.fk to ptr               ; 6 uses
  %i.fm = load atomic volatile i64, ptr %i.by monotonic, align 8, !noalias !191
  %i.fn = add i64 %i.fm, 11
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load atomic volatile i16, ptr %i.fo monotonic, align 2, !noalias !191
  %i.fq = and i16 %i.fp, 16
  %.not.i17 = icmp eq i16 %i.fq, 0
  br i1 %.not.i17, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fr = load ptr, ptr %i.fl, align 8, !noalias !191
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !191
  %i.fu = call noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fl) #21, !noalias !191, !inline_history !26
  br i1 %i.fu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #21, !noalias !191
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !191
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.fx = load ptr, ptr %i.fl, align 8, !noalias !191
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !191
  %i.ga = call noundef ptr %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #21, !noalias !191, !inline_history !26
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20

bb.ak:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22, !noalias !194
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20: ; preds = %bb.ai, %bb.ae, %bb.aj, %bb.af, %bb.ab, %bb.aa
  %.sroa.073.sroa.0.0.ph = phi ptr [ %i.fw, %bb.ai ], [ %i.fe, %bb.ae ], [ %i.ga, %bb.aj ], [ %i.fi, %bb.af ], [ %i.eq, %bb.ab ], [ %i.ep, %bb.aa ]
  %.sroa.073.sroa.8.0.ph = phi i32 [ 2, %bb.ai ], [ 1, %bb.ae ], [ 2, %bb.aj ], [ 1, %bb.af ], [ 2, %bb.ab ], [ 1, %bb.aa ]
  store ptr %.sroa.073.sroa.0.0.ph, ptr %11, align 8
  %.sroa.073.sroa.7.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.ej, ptr %.sroa.073.sroa.7.0..sroa_idx193, align 8
  %.sroa.073.sroa.8.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %.sroa.073.sroa.8.0.ph, ptr %.sroa.073.sroa.8.0..sroa_idx199, align 4
  %.sroa.073.sroa.9.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %9, ptr %.sroa.073.sroa.9.0..sroa_idx205, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.al:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %11, ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(16) %8) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit20, %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 8, !range !28, !noundef !29
  %i.gd = trunc nuw i8 %i.gc to i1
  store i8 0, ptr %i.gb, align 8
  br i1 %i.gd, label %bb.am, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit22

bb.am:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ge = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i21, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit22, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ge) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit22

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit22: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !174
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = icmp eq i32 %i.gg, 1
  %i.gi = load ptr, ptr %11, align 8              ; 16 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gk = load i32, ptr %i.gj, align 8            ; 26 uses
  %i.gl = zext i32 %i.gk to i64                   ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = icmp eq i32 %i.gn, 1                    ; 2 uses
  %i.gp = load ptr, ptr %10, align 8              ; 30 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gr = load i32, ptr %i.gq, align 8            ; 15 uses
  %i.gs = zext i32 %i.gr to i64                   ; 20 uses
  br i1 %i.gh, label %bb.ao, label %bb.bk

bb.ao:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit22
  %i.gt = icmp eq i32 %i.gk, 1                    ; 2 uses
  br i1 %i.go, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.gt, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.gu = load i8, ptr %i.gi, align 1             ; 4 uses
  %i.gv = ptrtoint ptr %i.gp to i64               ; 3 uses
  %i.gw = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.gy = icmp sgt i32 %i.gr, -1
  br i1 %i.gy, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, label %bb.ar, !prof !31

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i:        ; preds = %bb.aq
  %i.gz = sext i32 %.0.i to i64                   ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gp, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gs ; 4 uses
  %i.hc = add nsw i64 %i.gz, 4080
  %.not44.i.i = icmp sgt i64 %i.hc, %i.gs
  br i1 %.not44.i.i, label %.preheader.i.i, label %.preheader38.i.i

.preheader38.i.i:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i, %bb.as
  %.048.i.i = phi i32 [ %i.hu, %bb.as ], [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ]
  %.06547.i.i = phi ptr [ %.267.i.i, %bb.as ], [ null, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ]
  %.sroa.047.046.i.i = phi <2 x i64> [ %.sroa.047.2.i.i, %bb.as ], [ undef, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ]
  %.06845.i.i = phi ptr [ %scevgep75.i.i, %bb.as ], [ %i.ha, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ] ; 3 uses
  br label %bb.at

.preheader.i.i:                                   ; preds = %bb.as, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i
  %.068.lcssa.i.i = phi ptr [ %i.ha, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ], [ %scevgep75.i.i, %bb.as ] ; 3 uses
  %.sroa.047.0.lcssa.i.i = phi <2 x i64> [ undef, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ], [ %.sroa.047.2.i.i, %bb.as ] ; 2 uses
  %.065.lcssa.i.i = phi ptr [ null, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ], [ %.267.i.i, %bb.as ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i ], [ %i.hu, %bb.as ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.068.lcssa.i.i, i64 16 ; 2 uses
  %.not7552.i.i = icmp ugt ptr %i.hd, %i.hb
  br i1 %.not7552.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.as:                                            ; preds = %bb.at
  %scevgep75.i.i = getelementptr i8, ptr %.06845.i.i, i64 4080 ; 2 uses
  %i.he = bitcast <16 x i8> %i.ib to <8 x i16>
  %i.hf = lshr <8 x i16> %i.he, splat (i16 8)
  %i.hg = bitcast <16 x i8> %i.ib to <8 x i16>
  %i.hh = and <8 x i16> %i.hg, splat (i16 255)
  %i.hi = add nuw nsw <8 x i16> %i.hh, %i.hf      ; 2 uses
  %i.hj = bitcast <8 x i16> %i.hi to <4 x i32>
  %i.hk = shufflevector <4 x i32> %i.hj, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.hl = bitcast <4 x i32> %i.hk to <8 x i16>
  %i.hm = shufflevector <8 x i16> %i.hl, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.hn = add nuw nsw <8 x i16> %i.hm, %i.hi      ; 2 uses
  %i.ho = shufflevector <8 x i16> %i.hn, <8 x i16> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.hp = add <8 x i16> %i.ho, %i.hn              ; 2 uses
  %i.hq = shufflevector <8 x i16> %i.hp, <8 x i16> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hr = add <8 x i16> %i.hq, %i.hp
  %i.hs = extractelement <8 x i16> %i.hr, i64 0
  %i.ht = zext i16 %i.hs to i32
  %i.hu = add nuw nsw i32 %.048.i.i, %i.ht        ; 2 uses
  %i.hv = getelementptr i8, ptr %.06845.i.i, i64 8160
  %.not.i.i = icmp ugt ptr %i.hv, %i.hb
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader38.i.i, !llvm.loop !195

bb.at:                                            ; preds = %bb.au, %.preheader38.i.i
  %i.hw = phi <16 x i8> [ zeroinitializer, %.preheader38.i.i ], [ %i.ij, %bb.au ]
  %.16642.i.i = phi ptr [ %.06547.i.i, %.preheader38.i.i ], [ %.267.i.i.1, %bb.au ]
  %.sroa.047.141.i.i = phi <2 x i64> [ %.sroa.047.046.i.i, %.preheader38.i.i ], [ %.sroa.047.2.i.i.1, %bb.au ]
  %.16940.i.i = phi ptr [ %.06845.i.i, %.preheader38.i.i ], [ %i.in, %bb.au ] ; 4 uses
  %.07239.i.i = phi i32 [ 0, %.preheader38.i.i ], [ %i.im, %bb.au ] ; 2 uses
  %i.hx = load <16 x i8>, ptr %.16940.i.i, align 1
  %i.hy = icmp eq <16 x i8> %i.hx, %i.gx          ; 2 uses
  %i.hz = sext <16 x i1> %i.hy to <16 x i8>       ; 2 uses
  %i.ia = bitcast <16 x i8> %i.hz to <2 x i64>
  %i.ib = sub <16 x i8> %i.hw, %i.hz              ; 3 uses
  %i.ic = bitcast <16 x i1> %i.hy to i16
  %i.id = icmp eq i16 %i.ic, 0                    ; 2 uses
  %.sroa.047.2.i.i = select i1 %i.id, <2 x i64> %.sroa.047.141.i.i, <2 x i64> %i.ia ; 3 uses
  %.267.i.i = select i1 %i.id, ptr %.16642.i.i, ptr %.16940.i.i ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %.07239.i.i, 254
  br i1 %exitcond.not.i.i, label %bb.as, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ie = getelementptr inbounds nuw i8, ptr %.16940.i.i, i64 16 ; 2 uses
  %i.if = load <16 x i8>, ptr %i.ie, align 1
  %i.ig = icmp eq <16 x i8> %i.if, %i.gx          ; 2 uses
  %i.ih = sext <16 x i1> %i.ig to <16 x i8>       ; 2 uses
  %i.ii = bitcast <16 x i8> %i.ih to <2 x i64>
  %i.ij = sub <16 x i8> %i.ib, %i.ih
  %i.ik = bitcast <16 x i1> %i.ig to i16
  %i.il = icmp eq i16 %i.ik, 0                    ; 2 uses
  %.sroa.047.2.i.i.1 = select i1 %i.il, <2 x i64> %.sroa.047.2.i.i, <2 x i64> %i.ii
  %.267.i.i.1 = select i1 %i.il, ptr %.267.i.i, ptr %i.ie
  %i.im = add nuw nsw i32 %.07239.i.i, 2
  %i.in = getelementptr inbounds nuw i8, ptr %.16940.i.i, i64 32
  br label %bb.at

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.io = phi ptr [ %i.ix, %.lr.ph.i.i ], [ %i.hd, %.preheader.i.i ] ; 3 uses
  %i.ip = phi <16 x i8> [ %i.iu, %.lr.ph.i.i ], [ zeroinitializer, %.preheader.i.i ]
  %.355.i.i = phi ptr [ %.4.i.i, %.lr.ph.i.i ], [ %.065.lcssa.i.i, %.preheader.i.i ]
  %.sroa.047.354.i.i = phi <2 x i64> [ %.sroa.047.4.i.i, %.lr.ph.i.i ], [ %.sroa.047.0.lcssa.i.i, %.preheader.i.i ]
  %.27053.i.i = phi ptr [ %i.io, %.lr.ph.i.i ], [ %.068.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.iq = load <16 x i8>, ptr %.27053.i.i, align 1
  %i.ir = icmp eq <16 x i8> %i.iq, %i.gx          ; 2 uses
  %i.is = sext <16 x i1> %i.ir to <16 x i8>       ; 2 uses
  %i.it = bitcast <16 x i8> %i.is to <2 x i64>
  %i.iu = sub <16 x i8> %i.ip, %i.is              ; 2 uses
  %i.iv = bitcast <16 x i1> %i.ir to i16
  %i.iw = icmp eq i16 %i.iv, 0                    ; 2 uses
  %.sroa.047.4.i.i = select i1 %i.iw, <2 x i64> %.sroa.047.354.i.i, <2 x i64> %i.it ; 2 uses
  %.4.i.i = select i1 %i.iw, ptr %.355.i.i, ptr %.27053.i.i ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %.not75.i.i = icmp ugt ptr %i.ix, %i.hb
  br i1 %.not75.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !196

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.iy = bitcast <16 x i8> %i.iu to <8 x i16>
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.270.lcssa.i.i = phi ptr [ %.068.lcssa.i.i, %.preheader.i.i ], [ %i.io, %._crit_edge.loopexit.i.i ] ; 7 uses
  %.sroa.047.3.lcssa.i.i = phi <2 x i64> [ %.sroa.047.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.047.4.i.i, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.3.lcssa.i.i = phi ptr [ %.065.lcssa.i.i, %.preheader.i.i ], [ %.4.i.i, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.sroa.050.2.lcssa.i.i = phi <8 x i16> [ zeroinitializer, %.preheader.i.i ], [ %i.iy, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.iz = lshr <8 x i16> %.sroa.050.2.lcssa.i.i, splat (i16 8)
  %i.ja = and <8 x i16> %.sroa.050.2.lcssa.i.i, splat (i16 255)
  %i.jb = add nuw nsw <8 x i16> %i.ja, %i.iz      ; 2 uses
  %i.jc = bitcast <8 x i16> %i.jb to <4 x i32>
  %i.jd = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.je = bitcast <4 x i32> %i.jd to <8 x i16>
  %i.jf = shufflevector <8 x i16> %i.je, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.jg = add nuw nsw <8 x i16> %i.jf, %i.jb      ; 2 uses
  %i.jh = shufflevector <8 x i16> %i.jg, <8 x i16> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ji = add <8 x i16> %i.jh, %i.jg              ; 2 uses
  %i.jj = shufflevector <8 x i16> %i.ji, <8 x i16> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jk = add <8 x i16> %i.jj, %i.ji
  %i.jl = extractelement <8 x i16> %i.jk, i64 0
  %i.jm = zext i16 %i.jl to i32
  %i.jn = add nuw nsw i32 %.0.lcssa.i.i, %i.jm    ; 3 uses
  %i.jo = icmp ult ptr %.270.lcssa.i.i, %i.hb
  br i1 %i.jo, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %.270.lcssa76.i.i = ptrtoint ptr %.270.lcssa.i.i to i64 ; 2 uses
  %i.jp = add i64 %i.gs, %i.gv
  %i.jq = sub i64 %i.jp, %.270.lcssa76.i.i        ; 2 uses
  %scevgep77.i.i = getelementptr i8, ptr %.270.lcssa.i.i, i64 %i.jq
  %i.jr = add i64 %i.gv, %i.gs
  %.neg = add i64 %.270.lcssa76.i.i, 1
  %xtraiter = and i64 %i.jq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol

.lr.ph66.i.i.prol:                                ; preds = %.lr.ph66.preheader.i.i
  %i.js = load i8, ptr %.270.lcssa.i.i, align 1
  %.not77.i.i.prol = icmp eq i8 %i.js, %i.gu      ; 3 uses
  %.sroa.047.6.i.i.prol = select i1 %.not77.i.i.prol, <2 x i64> <i64 255, i64 0>, <2 x i64> %.sroa.047.3.lcssa.i.i ; 2 uses
  %.6.i.i.prol = select i1 %.not77.i.i.prol, ptr %.270.lcssa.i.i, ptr %.3.lcssa.i.i ; 2 uses
  %i.jt = zext i1 %.not77.i.i.prol to i32
  %.2.i.i.prol = add nuw nsw i32 %i.jn, %i.jt     ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.270.lcssa.i.i, i64 1
  br label %.lr.ph66.i.i.prol.loopexit

.lr.ph66.i.i.prol.loopexit:                       ; preds = %.lr.ph66.i.i.prol, %.lr.ph66.preheader.i.i
  %.sroa.047.6.i.i.lcssa.unr = phi <2 x i64> [ poison, %.lr.ph66.preheader.i.i ], [ %.sroa.047.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.6.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph66.preheader.i.i ], [ %.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.2.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph66.preheader.i.i ], [ %.2.i.i.prol, %.lr.ph66.i.i.prol ]
  %.164.i.i.unr = phi i32 [ %i.jn, %.lr.ph66.preheader.i.i ], [ %.2.i.i.prol, %.lr.ph66.i.i.prol ]
  %.563.i.i.unr = phi ptr [ %.3.lcssa.i.i, %.lr.ph66.preheader.i.i ], [ %.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.sroa.047.562.i.i.unr = phi <2 x i64> [ %.sroa.047.3.lcssa.i.i, %.lr.ph66.preheader.i.i ], [ %.sroa.047.6.i.i.prol, %.lr.ph66.i.i.prol ]
  %.37161.i.i.unr = phi ptr [ %.270.lcssa.i.i, %.lr.ph66.preheader.i.i ], [ %i.ju, %.lr.ph66.i.i.prol ]
  %i.jv = icmp eq i64 %i.jr, %.neg
  br i1 %i.jv, label %._crit_edge67.i.i, label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i
  %.164.i.i = phi i32 [ %.2.i.i.1, %.lr.ph66.i.i ], [ %.164.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.563.i.i = phi ptr [ %.6.i.i.1, %.lr.ph66.i.i ], [ %.563.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.sroa.047.562.i.i = phi <2 x i64> [ %.sroa.047.6.i.i.1, %.lr.ph66.i.i ], [ %.sroa.047.562.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.37161.i.i = phi ptr [ %i.kc, %.lr.ph66.i.i ], [ %.37161.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 4 uses
  %i.jw = load i8, ptr %.37161.i.i, align 1
  %.not77.i.i = icmp eq i8 %i.jw, %i.gu           ; 3 uses
  %.6.i.i = select i1 %.not77.i.i, ptr %.37161.i.i, ptr %.563.i.i
  %i.jx = zext i1 %.not77.i.i to i32
  %.2.i.i = add nuw nsw i32 %.164.i.i, %i.jx
  %i.jy = getelementptr inbounds nuw i8, ptr %.37161.i.i, i64 1 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1
  %.not77.i.i.1 = icmp eq i8 %i.jz, %i.gu         ; 3 uses
  %i.ka = select i1 %.not77.i.i.1, i1 true, i1 %.not77.i.i
  %.sroa.047.6.i.i.1 = select i1 %i.ka, <2 x i64> <i64 255, i64 0>, <2 x i64> %.sroa.047.562.i.i ; 2 uses
  %.6.i.i.1 = select i1 %.not77.i.i.1, ptr %i.jy, ptr %.6.i.i ; 2 uses
  %i.kb = zext i1 %.not77.i.i.1 to i32
  %.2.i.i.1 = add nuw nsw i32 %.2.i.i, %i.kb      ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.37161.i.i, i64 2 ; 2 uses
  %exitcond78.not.i.i.1 = icmp eq ptr %i.kc, %scevgep77.i.i
  br i1 %exitcond78.not.i.i.1, label %._crit_edge67.i.i, label %.lr.ph66.i.i, !llvm.loop !197

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i, %._crit_edge.i.i
  %.sroa.047.5.lcssa.i.i = phi <2 x i64> [ %.sroa.047.3.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.047.6.i.i.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %.sroa.047.6.i.i.1, %.lr.ph66.i.i ]
  %.5.lcssa.i.i = phi ptr [ %.3.lcssa.i.i, %._crit_edge.i.i ], [ %.6.i.i.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %.6.i.i.1, %.lr.ph66.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi i32 [ %i.jn, %._crit_edge.i.i ], [ %.2.i.i.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph66.i.i ]
  %i.kd = load i32, ptr %i.a, align 4
  %i.ke = add nsw i32 %i.kd, %.1.lcssa.i.i
  store i32 %i.ke, ptr %i.a, align 4
  %.not76.i.i = icmp eq ptr %.5.lcssa.i.i, null
  br i1 %.not76.i.i, label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split, label %bb.av

bb.av:                                            ; preds = %._crit_edge67.i.i
  %i.kf = bitcast <2 x i64> %.sroa.047.5.lcssa.i.i to <16 x i8>
  %i.kg = icmp slt <16 x i8> %i.kf, zeroinitializer
  %i.kh = bitcast <16 x i1> %i.kg to i16
  %i.ki = zext i16 %i.kh to i32
  %i.kj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ki, i1 true)
  %i.kk = xor i32 %i.kj, 31
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %.5.lcssa.i.i, i64 %i.kl
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.gv
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  store i32 %i.kp, ptr %i.b, align 4
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

bb.aw:                                            ; preds = %bb.ap
  %i.kq = icmp sgt i32 %i.gk, -1
  br i1 %i.kq, label %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i, label %bb.ax, !prof !31

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i:     ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %2, ptr %6, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.gi, ptr %i.kr, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.gl, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.speculated.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.gk, i32 250)
  store i32 %.sroa.speculated.i.i.i, ptr %i.ks, align 8
  %i.kt = icmp samesign ult i32 %i.gk, 7
  %spec.select.i = select i1 %i.kt, ptr @_ZN2v88internal12StringSearchIhhE12LinearSearchEPS2_NS_4base6VectorIKhEEi, ptr @_ZN2v88internal12StringSearchIhhE13InitialSearchEPS2_NS_4base6VectorIKhEEi ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %spec.select.i, ptr %i.ku, align 8
  %i.kv = call noundef i32 %spec.select.i(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !198 ; 4 uses
  %i.kw = icmp eq i32 %i.kv, -1
  br i1 %i.kw, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i81.i

.lr.ph.i81.i:                                     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i
  %.not.i82.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i82.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i81.i
  %i.kx = icmp sgt i32 %i.gr, -1
  br i1 %i.kx, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, label %.lr.ph.split.us.split.i.i, !prof !31

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i: ; preds = %.lr.ph.split.us.i.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i
  %i.ky = phi i32 [ %i.ld, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %i.kv, %.lr.ph.split.us.i.i ]
  %.02.us.us.i.i = phi i32 [ %i.lb, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %.0.i, %.lr.ph.split.us.i.i ]
  %i.kz = load i32, ptr %i.a, align 4
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.a, align 4
  store i32 %i.ky, ptr %i.b, align 4
  %i.lb = add nsw i32 %.02.us.us.i.i, 1           ; 2 uses
  %i.lc = load ptr, ptr %i.ku, align 8
  %i.ld = call noundef i32 %i.lc(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %i.gp, i64 %i.gs, i32 noundef %i.lb) #21, !inline_history !198 ; 2 uses
  %i.le = icmp eq i32 %i.ld, -1
  br i1 %i.le, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, !llvm.loop !199

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.lf = load i32, ptr %i.a, align 4
  %i.lg = add nsw i32 %i.lf, 1
  store i32 %i.lg, ptr %i.a, align 4
  store i32 %i.kv, ptr %i.b, align 4
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i81.i, %.lr.ph.split.i.i
  %i.lh = phi i32 [ %i.lm, %.lr.ph.split.i.i ], [ %i.kv, %.lr.ph.i81.i ] ; 2 uses
  %i.li = load i32, ptr %i.a, align 4
  %i.lj = add nsw i32 %i.li, 1
  store i32 %i.lj, ptr %i.a, align 4
  store i32 %i.lh, ptr %i.b, align 4
  %i.lk = add nsw i32 %i.lh, %i.gk
  %i.ll = load ptr, ptr %i.ku, align 8
  %i.lm = call noundef i32 %i.ll(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %i.gp, i64 %i.gs, i32 noundef %i.lk) #21, !inline_history !198 ; 2 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.split.i.i, !llvm.loop !199

_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhhEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i: ; preds = %.lr.ph.split.i.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split

bb.ay:                                            ; preds = %bb.ao
  br i1 %i.gt, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.lo = load i8, ptr %i.gi, align 1
  %i.lp = zext i8 %i.lo to i16                    ; 2 uses
  %i.lq = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %i.lr = shufflevector <8 x i16> %i.lq, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ls = icmp sgt i32 %i.gr, -1
  br i1 %i.ls, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, label %bb.ba, !prof !31

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i:        ; preds = %bb.az
  %i.lt = sext i32 %.0.i to i64
  %.idx.i.i = shl nsw i64 %i.lt, 1                ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.gp, i64 %.idx.i.i ; 2 uses
  %.idx49.i.i = shl nuw nsw i64 %i.gs, 1          ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx49.i.i ; 5 uses
  %i.lw = add nsw i64 %.idx.i.i, 1048560
  %.not22.i.i = icmp sgt i64 %i.lw, %.idx49.i.i
  br i1 %.not22.i.i, label %.preheader.i90.i, label %.preheader16.i.i

.preheader16.i.i:                                 ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i, %bb.bb
  %.026.i.i = phi i32 [ %i.me, %bb.bb ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ]
  %.06525.i.i = phi ptr [ %.267.i87.i, %bb.bb ], [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ]
  %.sroa.047.024.i.i = phi <2 x i64> [ %.sroa.047.2.i86.i, %bb.bb ], [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ]
  %.06823.i.i = phi ptr [ %scevgep54.i.i, %bb.bb ], [ %i.lu, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ] ; 3 uses
  br label %bb.bc

.preheader.i90.i:                                 ; preds = %bb.bb, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i
  %.068.lcssa.i91.i = phi ptr [ %i.lu, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %scevgep54.i.i, %bb.bb ] ; 3 uses
  %.sroa.047.0.lcssa.i92.i = phi <2 x i64> [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %.sroa.047.2.i86.i, %bb.bb ] ; 2 uses
  %.065.lcssa.i93.i = phi ptr [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %.267.i87.i, %bb.bb ] ; 2 uses
  %.0.lcssa.i94.i = phi i32 [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i ], [ %i.me, %bb.bb ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.068.lcssa.i91.i, i64 16 ; 2 uses
  %.not7530.i.i = icmp ugt ptr %i.lx, %i.lv
  br i1 %.not7530.i.i, label %._crit_edge.i100.i, label %.lr.ph.i95.i

bb.bb:                                            ; preds = %bb.bc
  %scevgep54.i.i = getelementptr i8, ptr %.06823.i.i, i64 1048560 ; 2 uses
  %i.ly = bitcast <8 x i16> %i.ml to <4 x i32>
  %i.lz = lshr <4 x i32> %i.ly, splat (i32 16)
  %i.ma = bitcast <8 x i16> %i.ml to <4 x i32>
  %i.mb = and <4 x i32> %i.ma, splat (i32 65535)
  %i.mc = add nuw nsw <4 x i32> %i.mb, %i.lz
  %i.md = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.mc)
  %i.me = add i32 %i.md, %.026.i.i                ; 2 uses
  %i.mf = getelementptr i8, ptr %.06823.i.i, i64 2097120
  %.not.i89.i = icmp ugt ptr %i.mf, %i.lv
  br i1 %.not.i89.i, label %.preheader.i90.i, label %.preheader16.i.i, !llvm.loop !200

bb.bc:                                            ; preds = %bb.bd, %.preheader16.i.i
  %i.mg = phi <8 x i16> [ zeroinitializer, %.preheader16.i.i ], [ %i.mv, %bb.bd ]
  %.16620.i.i = phi ptr [ %.06525.i.i, %.preheader16.i.i ], [ %.267.i87.i.1, %bb.bd ]
  %.sroa.047.119.i.i = phi <2 x i64> [ %.sroa.047.024.i.i, %.preheader16.i.i ], [ %.sroa.047.2.i86.i.1, %bb.bd ]
  %.16918.i.i = phi ptr [ %.06823.i.i, %.preheader16.i.i ], [ %i.nb, %bb.bd ] ; 4 uses
  %.07217.i.i = phi i32 [ 0, %.preheader16.i.i ], [ %i.na, %bb.bd ] ; 2 uses
  %i.mh = load <8 x i16>, ptr %.16918.i.i, align 1, !alias.scope !201
  %i.mi = icmp eq <8 x i16> %i.mh, %i.lr
  %i.mj = sext <8 x i1> %i.mi to <8 x i16>        ; 3 uses
  %i.mk = bitcast <8 x i16> %i.mj to <2 x i64>
  %i.ml = sub <8 x i16> %i.mg, %i.mj              ; 3 uses
  %i.mm = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mj, <8 x i16> zeroinitializer)
  %i.mn = icmp slt <16 x i8> %i.mm, zeroinitializer
  %i.mo = bitcast <16 x i1> %i.mn to i16
  %i.mp = icmp eq i16 %i.mo, 0                    ; 2 uses
  %.sroa.047.2.i86.i = select i1 %i.mp, <2 x i64> %.sroa.047.119.i.i, <2 x i64> %i.mk ; 3 uses
  %.267.i87.i = select i1 %i.mp, ptr %.16620.i.i, ptr %.16918.i.i ; 3 uses
  %exitcond.not.i88.i = icmp eq i32 %.07217.i.i, 65534
  br i1 %exitcond.not.i88.i, label %bb.bb, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mq = getelementptr inbounds nuw i8, ptr %.16918.i.i, i64 16 ; 2 uses
  %i.mr = load <8 x i16>, ptr %i.mq, align 1, !alias.scope !201
  %i.ms = icmp eq <8 x i16> %i.mr, %i.lr
  %i.mt = sext <8 x i1> %i.ms to <8 x i16>        ; 3 uses
  %i.mu = bitcast <8 x i16> %i.mt to <2 x i64>
  %i.mv = sub <8 x i16> %i.ml, %i.mt
  %i.mw = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mt, <8 x i16> zeroinitializer)
  %i.mx = icmp slt <16 x i8> %i.mw, zeroinitializer
  %i.my = bitcast <16 x i1> %i.mx to i16
  %i.mz = icmp eq i16 %i.my, 0                    ; 2 uses
  %.sroa.047.2.i86.i.1 = select i1 %i.mz, <2 x i64> %.sroa.047.2.i86.i, <2 x i64> %i.mu
  %.267.i87.i.1 = select i1 %i.mz, ptr %.267.i87.i, ptr %i.mq
  %i.na = add nuw nsw i32 %.07217.i.i, 2
  %i.nb = getelementptr inbounds nuw i8, ptr %.16918.i.i, i64 32
  br label %bb.bc

.lr.ph.i95.i:                                     ; preds = %.preheader.i90.i, %.lr.ph.i95.i
  %i.nc = phi ptr [ %i.nn, %.lr.ph.i95.i ], [ %i.lx, %.preheader.i90.i ] ; 3 uses
  %i.nd = phi <8 x i16> [ %i.ni, %.lr.ph.i95.i ], [ zeroinitializer, %.preheader.i90.i ]
  %.333.i.i = phi ptr [ %.4.i97.i, %.lr.ph.i95.i ], [ %.065.lcssa.i93.i, %.preheader.i90.i ]
  %.sroa.047.332.i.i = phi <2 x i64> [ %.sroa.047.4.i96.i, %.lr.ph.i95.i ], [ %.sroa.047.0.lcssa.i92.i, %.preheader.i90.i ]
  %.27031.i.i = phi ptr [ %i.nc, %.lr.ph.i95.i ], [ %.068.lcssa.i91.i, %.preheader.i90.i ] ; 2 uses
  %i.ne = load <8 x i16>, ptr %.27031.i.i, align 1, !alias.scope !204
  %i.nf = icmp eq <8 x i16> %i.ne, %i.lr
  %i.ng = sext <8 x i1> %i.nf to <8 x i16>        ; 3 uses
  %i.nh = bitcast <8 x i16> %i.ng to <2 x i64>
  %i.ni = sub <8 x i16> %i.nd, %i.ng              ; 2 uses
  %i.nj = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ng, <8 x i16> zeroinitializer)
  %i.nk = icmp slt <16 x i8> %i.nj, zeroinitializer
  %i.nl = bitcast <16 x i1> %i.nk to i16
  %i.nm = icmp eq i16 %i.nl, 0                    ; 2 uses
  %.sroa.047.4.i96.i = select i1 %i.nm, <2 x i64> %.sroa.047.332.i.i, <2 x i64> %i.nh ; 2 uses
  %.4.i97.i = select i1 %i.nm, ptr %.333.i.i, ptr %.27031.i.i ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %.not75.i98.i = icmp ugt ptr %i.nn, %i.lv
  br i1 %.not75.i98.i, label %._crit_edge.loopexit.i99.i, label %.lr.ph.i95.i, !llvm.loop !207

._crit_edge.loopexit.i99.i:                       ; preds = %.lr.ph.i95.i
  %i.no = bitcast <8 x i16> %i.ni to <4 x i32>
  br label %._crit_edge.i100.i

._crit_edge.i100.i:                               ; preds = %._crit_edge.loopexit.i99.i, %.preheader.i90.i
  %.270.lcssa.i101.i = phi ptr [ %.068.lcssa.i91.i, %.preheader.i90.i ], [ %i.nc, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %.sroa.047.3.lcssa.i102.i = phi <2 x i64> [ %.sroa.047.0.lcssa.i92.i, %.preheader.i90.i ], [ %.sroa.047.4.i96.i, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %.3.lcssa.i103.i = phi ptr [ %.065.lcssa.i93.i, %.preheader.i90.i ], [ %.4.i97.i, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %.sroa.050.2.lcssa.i104.i = phi <4 x i32> [ zeroinitializer, %.preheader.i90.i ], [ %i.no, %._crit_edge.loopexit.i99.i ] ; 2 uses
  %i.np = lshr <4 x i32> %.sroa.050.2.lcssa.i104.i, splat (i32 16)
  %i.nq = and <4 x i32> %.sroa.050.2.lcssa.i104.i, splat (i32 65535)
  %i.nr = add nuw nsw <4 x i32> %i.nq, %i.np
  %i.ns = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.nr)
  %i.nt = add i32 %i.ns, %.0.lcssa.i94.i          ; 2 uses
  %i.nu = icmp ult ptr %.270.lcssa.i101.i, %i.lv
  br i1 %i.nu, label %.lr.ph44.i.i, label %._crit_edge45.i.i

.lr.ph44.i.i:                                     ; preds = %._crit_edge.i100.i, %.lr.ph44.i.i
  %.142.i.i = phi i32 [ %.2.i112.i, %.lr.ph44.i.i ], [ %i.nt, %._crit_edge.i100.i ]
  %.541.i.i = phi ptr [ %.6.i111.i, %.lr.ph44.i.i ], [ %.3.lcssa.i103.i, %._crit_edge.i100.i ]
  %.sroa.047.540.i.i = phi <2 x i64> [ %.sroa.047.6.i110.i, %.lr.ph44.i.i ], [ %.sroa.047.3.lcssa.i102.i, %._crit_edge.i100.i ]
  %.37139.i.i = phi ptr [ %i.nx, %.lr.ph44.i.i ], [ %.270.lcssa.i101.i, %._crit_edge.i100.i ] ; 3 uses
  %i.nv = load i16, ptr %.37139.i.i, align 2
  %.not77.i109.i = icmp eq i16 %i.nv, %i.lp       ; 3 uses
  %.sroa.047.6.i110.i = select i1 %.not77.i109.i, <2 x i64> <i64 65535, i64 0>, <2 x i64> %.sroa.047.540.i.i ; 2 uses
  %.6.i111.i = select i1 %.not77.i109.i, ptr %.37139.i.i, ptr %.541.i.i ; 2 uses
  %i.nw = zext i1 %.not77.i109.i to i32
  %.2.i112.i = add nsw i32 %.142.i.i, %i.nw       ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.37139.i.i, i64 2 ; 2 uses
  %i.ny = icmp ult ptr %i.nx, %i.lv
  br i1 %i.ny, label %.lr.ph44.i.i, label %._crit_edge45.i.i, !llvm.loop !208

._crit_edge45.i.i:                                ; preds = %.lr.ph44.i.i, %._crit_edge.i100.i
  %.sroa.047.5.lcssa.i105.i = phi <2 x i64> [ %.sroa.047.3.lcssa.i102.i, %._crit_edge.i100.i ], [ %.sroa.047.6.i110.i, %.lr.ph44.i.i ]
  %.5.lcssa.i106.i = phi ptr [ %.3.lcssa.i103.i, %._crit_edge.i100.i ], [ %.6.i111.i, %.lr.ph44.i.i ] ; 2 uses
  %.1.lcssa.i107.i = phi i32 [ %i.nt, %._crit_edge.i100.i ], [ %.2.i112.i, %.lr.ph44.i.i ]
  %i.nz = load i32, ptr %i.a, align 4
  %i.oa = add nsw i32 %i.nz, %.1.lcssa.i107.i
  store i32 %i.oa, ptr %i.a, align 4
  %.not76.i108.i = icmp eq ptr %.5.lcssa.i106.i, null
  br i1 %.not76.i108.i, label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split, label %bb.be

bb.be:                                            ; preds = %._crit_edge45.i.i
  %i.ob = bitcast <2 x i64> %.sroa.047.5.lcssa.i105.i to <8 x i16>
  %i.oc = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ob, <8 x i16> zeroinitializer)
  %i.od = icmp slt <16 x i8> %i.oc, zeroinitializer
  %i.oe = bitcast <16 x i1> %i.od to i16
  %i.of = zext i16 %i.oe to i32
  %i.og = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.of, i1 true)
  %i.oh = xor i32 %i.og, 31
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.5.lcssa.i106.i, i64 %i.oi
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = ptrtoint ptr %i.gp to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = lshr exact i64 %i.om, 1
  %i.oo = trunc i64 %i.on to i32                  ; 2 uses
  store i32 %i.oo, ptr %i.b, align 4
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

bb.bf:                                            ; preds = %bb.ay
  %i.op = icmp sgt i32 %i.gk, -1
  br i1 %i.op, label %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i113.i, label %bb.bg, !prof !31

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i113.i:  ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %2, ptr %5, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gi, ptr %i.oq, align 8
  %.sroa.2.0..sroa_idx.i.i114.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.gl, ptr %.sroa.2.0..sroa_idx.i.i114.i, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.speculated.i.i115.i = call i32 @llvm.usub.sat.i32(i32 %i.gk, i32 250)
  store i32 %.sroa.speculated.i.i115.i, ptr %i.or, align 8
  %i.os = icmp samesign ult i32 %i.gk, 7
  %spec.select109.i = select i1 %i.os, ptr @_ZN2v88internal12StringSearchIhtE12LinearSearchEPS2_NS_4base6VectorIKtEEi, ptr @_ZN2v88internal12StringSearchIhtE13InitialSearchEPS2_NS_4base6VectorIKtEEi ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %spec.select109.i, ptr %i.ot, align 8
  %i.ou = call noundef i32 %spec.select109.i(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !209 ; 5 uses
  %i.ov = icmp eq i32 %i.ou, -1
  br i1 %i.ov, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i116.i

.lr.ph.i116.i:                                    ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit3.i.i113.i
  %.not.i117.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i117.i, label %.lr.ph.split.us.i119.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i.i

.lr.ph.split.us.i119.i:                           ; preds = %.lr.ph.i116.i
  %i.ow = icmp sgt i32 %i.gr, -1
  br i1 %i.ow, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i120.i, !prof !31

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i119.i
  br i1 %.not396, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.i.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i
  %i.ox = phi i32 [ %i.pc, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i ], [ %i.ou, %.lr.ph.split.us.split.us.i.i ]
  %.02.us.us.us.i.i = phi i32 [ %i.pa, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i ], [ %.0.i, %.lr.ph.split.us.split.us.i.i ]
  %i.oy = load i32, ptr %i.a, align 4
  %i.oz = add nsw i32 %i.oy, 1
  store i32 %i.oz, ptr %i.a, align 4
  store i32 %i.ox, ptr %i.b, align 4
  %i.pa = add nsw i32 %.02.us.us.us.i.i, 1        ; 2 uses
  %i.pb = load ptr, ptr %i.ot, align 8
  %i.pc = call noundef i32 %i.pb(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr %i.gp, i64 %i.gs, i32 noundef %i.pa) #21, !inline_history !209 ; 2 uses
  %i.pd = icmp eq i32 %i.pc, -1
  br i1 %i.pd, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIthEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i.i, !llvm.loop !210

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.i.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i
  %i.pe = phi i32 [ %i.pw, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %i.ou, %.lr.ph.split.us.split.us.i.i ]
  %.02.us.us.i121.i = phi i32 [ %i.pu, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i.i ], [ %.0.i, %.lr.ph.split.us.split.us.i.i ] ; 5 uses
  %i.pf = load i32, ptr %i.a, align 4
  %i.pg = add nsw i32 %i.pf, 1
  store i32 %i.pg, ptr %i.a, align 4
  store i32 %i.pe, ptr %i.b, align 4
  %i.ph = icmp slt i32 %.02.us.us.i121.i, %i.gr
  br i1 %i.ph, label %bb.bh, label %.thread.i.us.us.i.i

bb.bh:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i.i
  %i.pi = sext i32 %.02.us.us.i121.i to i64
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.pi
  %i.pk = load i16, ptr %i.pj, align 2
  %i.pl = and i16 %i.pk, -1024
  %or.cond.i.us.us.i.i = icmp eq i16 %i.pl, -10240
  br i1 %or.cond.i.us.us.i.i, label %bb.bi, label %.thread.i.us.us.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.pm = add nsw i32 %.02.us.us.i121.i, 1        ; 2 uses
  %i.pn = icmp slt i32 %i.pm, %i.gr
  br i1 %i.pn, label %bb.bj, label %.thread.i.us.us.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.po = sext i32 %i.pm to i64
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.po
  %i.pq = load i16, ptr %i.pp, align 2
  %i.pr = and i16 %i.pq, -1024
  %or.cond6.not.not.i.us.us.i.i = icmp eq i16 %i.pr, -9216
  %i.ps = add nsw i32 %.02.us.us.i121.i, 2
end_hunk_0
begin_hunk_1_@_ZN2v88internal29Runtime_RegExpMatchGlobalAtomEiPmPNS0_7IsolateE:bb.a
  br i1 %i.qy, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !87

.lr.ph30.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %bb.bn
  %.129.i.i.i.i.i.i = phi ptr [ %i.rb, %bb.bn ], [ %.021.lcssa.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.qz = load i64, ptr %.129.i.i.i.i.i.i, align 8
  %i.ra = and i64 %i.qz, -71777214294589696
  %.not22.i.i.i.i.i.i = icmp eq i64 %i.ra, 0
  br i1 %.not22.i.i.i.i.i.i, label %bb.bn, label %.loopexit.i.i.i.i.i.i

bb.bn:                                            ; preds = %.lr.ph30.i.i.i.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.129.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.129.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i23 = icmp ugt ptr %i.rc, %i.qk
  br i1 %.not.i.i.i.i.i.i23, label %.loopexit.i.i.i.i.i.i, label %.lr.ph30.i.i.i.i.i.i, !llvm.loop !88

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.bn, %.lr.ph30.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.gi, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i.i ], [ %.021.lcssa.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.129.i.i.i.i.i.i, %.lr.ph30.i.i.i.i.i.i ], [ %i.rb, %bb.bn ] ; 3 uses
  %i.rd = icmp ult ptr %.2.i.i.i.i.i.i, %i.qk
  br i1 %i.rd, label %.lr.ph35.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph35.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.bp
  %.334.i.i.i.i.i.i = phi ptr [ %i.rj, %bb.bp ], [ %.2.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.re = load i16, ptr %.334.i.i.i.i.i.i, align 2
  %i.rf = icmp ugt i16 %i.re, 255
  br i1 %i.rf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph35.i.i.i.i.i.i
  %i.rg = ptrtoint ptr %.334.i.i.i.i.i.i to i64
  %i.rh = ptrtoint ptr %i.gi to i64
  %i.ri = sub i64 %i.rg, %i.rh
  br label %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i

bb.bp:                                            ; preds = %.lr.ph35.i.i.i.i.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.334.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.rk = icmp ult ptr %i.rj, %i.qk
  br i1 %i.rk, label %.lr.ph35.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !89

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bp, %.loopexit.i.i.i.i.i.i
  %.3.lcssa.i.i.i.i.i.i = phi ptr [ %.2.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.rj, %bb.bp ]
  %i.rl = ptrtoint ptr %.3.lcssa.i.i.i.i.i.i to i64
  %i.rm = ptrtoint ptr %i.gi to i64
  %i.rn = sub i64 %i.rl, %i.rm
  br label %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i

_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.bo, %.lr.ph.i._crit_edge.i.i.i.i.i
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.qu, %.lr.ph.i._crit_edge.i.i.i.i.i ], [ %i.ri, %bb.bo ], [ %i.rn, %._crit_edge.i.i.i.i.i.i ]
  %.0.in.i.i.i.i.i.i = lshr exact i64 %.0.in.in.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i = trunc i64 %.0.in.i.i.i.i.i.i to i32
  %.not.i.i.i = icmp ugt i32 %i.gk, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i, label %bb.bq, label %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i

bb.bq:                                            ; preds = %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.ro, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i

_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i:     ; preds = %_ZN2v88internal16StringSearchBase15IsOneByteStringENS_4base6VectorIKtEE.exit.i.i.i
  %i.rp = icmp ult i32 %i.gk, 7
  br i1 %i.rp, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i
  %i.rq = icmp eq i32 %i.gk, 1
  %i.rr = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  br i1 %i.rq, label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.rr, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i

bb.bt:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.rs, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i

_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i: ; preds = %bb.bt, %bb.bs, %bb.bq
  %i.rt = phi ptr [ @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi, %bb.bq ], [ @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, %bb.bt ], [ @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, %bb.bs ]
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.rv = call noundef i32 %i.rt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !211 ; 4 uses
  %i.rw = icmp eq i32 %i.rv, -1
  br i1 %i.rw, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i127.i

_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i: ; preds = %bb.br
  store ptr @_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.rr, align 8
  %i.rx = load i16, ptr %i.gi, align 2            ; 3 uses
  %i.ry = icmp ugt i16 %i.rx, 255
  br i1 %i.ry, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i
  %i.rz = icmp sgt i32 %i.gr, -1
  br i1 %i.rz, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i, label %bb.bv, !prof !31

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i:      ; preds = %bb.bu
  %i.sa = add nsw i32 %i.gr, -1
  %i.sb = trunc nuw i16 %i.rx to i8
  %i.sc = zext nneg i16 %i.rx to i32
  %i.sd = ptrtoint ptr %i.gp to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i
  %.016.i.i211.i = phi i32 [ %.0.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i.i ], [ %i.sq, %bb.by ] ; 2 uses
  %i.se = sext i32 %.016.i.i211.i to i64
  %i.sf = getelementptr inbounds i8, ptr %i.gp, i64 %i.se
  %i.sg = sub i32 %i.gr, %.016.i.i211.i
  %i.sh = sext i32 %i.sg to i64
  %i.si = call noundef ptr @memchr(ptr noundef %i.sf, i32 noundef %i.sc, i64 noundef %i.sh) #23 ; 2 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = sub i64 %i.sk, %i.sd                    ; 2 uses
  %i.sm = trunc i64 %i.sl to i32                  ; 4 uses
  %sext.i.i212.i = shl i64 %i.sl, 32
  %i.sn = ashr exact i64 %sext.i.i212.i, 32
  %i.so = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1
  %.not.i.i213.i = icmp eq i8 %i.sp, %i.sb
  br i1 %.not.i.i213.i, label %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sq = add nsw i32 %i.sm, 1
  %i.sr = icmp sgt i32 %i.sa, %i.sm
  br i1 %i.sr, label %bb.bw, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, !llvm.loop !212

_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i: ; preds = %bb.bx
  %i.ss = icmp eq i32 %i.sm, -1
  br i1 %i.ss, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.split.preheader.i129.i

.lr.ph.i127.i:                                    ; preds = %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i
  %.not.i128.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i128.i, label %.lr.ph.split.us.i132.i, label %.lr.ph.split.preheader.i129.i

.lr.ph.split.preheader.i129.i:                    ; preds = %.lr.ph.i127.i, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i
  %i.st = phi ptr [ %i.ru, %.lr.ph.i127.i ], [ %i.rr, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i ]
  %i.su = phi i32 [ %i.rv, %.lr.ph.i127.i ], [ %i.sm, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i ]
  br label %.lr.ph.split.i130.i

.lr.ph.split.us.i132.i:                           ; preds = %.lr.ph.i127.i
  %i.sv = icmp sgt i32 %i.gr, -1
  br i1 %i.sv, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i, label %.lr.ph.split.us.split.i133.i, !prof !31

_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i: ; preds = %.lr.ph.split.us.i132.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i
  %i.sw = phi i32 [ %i.tb, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i ], [ %i.rv, %.lr.ph.split.us.i132.i ]
  %.07.us.us.i.i = phi i32 [ %i.sz, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i ], [ %.0.i, %.lr.ph.split.us.i132.i ]
  %i.sx = load i32, ptr %i.a, align 4
  %i.sy = add nsw i32 %i.sx, 1
  store i32 %i.sy, ptr %i.a, align 4
  store i32 %i.sw, ptr %i.b, align 4
  %i.sz = add nsw i32 %.07.us.us.i.i, 1           ; 2 uses
  %i.ta = load ptr, ptr %i.ru, align 8
  %i.tb = call noundef i32 %i.ta(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr %i.gp, i64 %i.gs, i32 noundef %i.sz) #21, !inline_history !211 ; 2 uses
  %i.tc = icmp eq i32 %i.tb, -1
  br i1 %i.tc, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i, !llvm.loop !213

.lr.ph.split.us.split.i133.i:                     ; preds = %.lr.ph.split.us.i132.i
  %i.td = load i32, ptr %i.a, align 4
  %i.te = add nsw i32 %i.td, 1
  store i32 %i.te, ptr %i.a, align 4
  store i32 %i.rv, ptr %i.b, align 4
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

.lr.ph.split.i130.i:                              ; preds = %.lr.ph.split.i130.i, %.lr.ph.split.preheader.i129.i
  %i.tf = phi i32 [ %i.tk, %.lr.ph.split.i130.i ], [ %i.su, %.lr.ph.split.preheader.i129.i ] ; 2 uses
  %i.tg = load i32, ptr %i.a, align 4
  %i.th = add nsw i32 %i.tg, 1
  store i32 %i.th, ptr %i.a, align 4
  store i32 %i.tf, ptr %i.b, align 4
  %i.ti = add nsw i32 %i.tf, %i.gk
  %i.tj = load ptr, ptr %i.st, align 8
  %i.tk = call noundef i32 %i.tj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr %i.gp, i64 %i.gs, i32 noundef %i.ti) #21, !inline_history !211 ; 2 uses
  %i.tl = icmp eq i32 %i.tk, -1
  br i1 %i.tl, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.split.i130.i, !llvm.loop !213

_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIhtEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i: ; preds = %bb.by, %bb.bw, %.lr.ph.split.i130.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexIhEEiNS_4base6VectorIKT_EEib.exit.us.us.i134.i, %_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi.exit.i, %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.thread.i.i, %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split

bb.bz:                                            ; preds = %bb.bk
  %i.tm = icmp eq i32 %i.gk, 1
  br i1 %i.tm, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.tn = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.to = insertelement <8 x i16> poison, i16 %i.tn, i64 0
  %i.tp = shufflevector <8 x i16> %i.to, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.tq = icmp sgt i32 %i.gr, -1
  br i1 %i.tq, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i, label %bb.cb, !prof !31

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i:     ; preds = %bb.ca
  %i.tr = sext i32 %.0.i to i64
  %.idx.i138.i = shl nsw i64 %i.tr, 1             ; 2 uses
  %i.ts = getelementptr inbounds i8, ptr %i.gp, i64 %.idx.i138.i ; 2 uses
  %.idx49.i139.i = shl nuw nsw i64 %i.gs, 1       ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx49.i139.i ; 5 uses
  %i.tu = add nsw i64 %.idx.i138.i, 1048560
  %.not22.i140.i = icmp sgt i64 %i.tu, %.idx49.i139.i
  br i1 %.not22.i140.i, label %.preheader.i155.i, label %.preheader16.i141.i

.preheader16.i141.i:                              ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i, %bb.cc
  %.026.i142.i = phi i32 [ %i.uc, %bb.cc ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ]
  %.06525.i143.i = phi ptr [ %.267.i151.i, %bb.cc ], [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ]
  %.sroa.047.024.i144.i = phi <2 x i64> [ %.sroa.047.2.i150.i, %bb.cc ], [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ]
  %.06823.i145.i = phi ptr [ %scevgep54.i153.i, %bb.cc ], [ %i.ts, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ] ; 3 uses
  br label %bb.cd

.preheader.i155.i:                                ; preds = %bb.cc, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i
  %.068.lcssa.i156.i = phi ptr [ %i.ts, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %scevgep54.i153.i, %bb.cc ] ; 3 uses
  %.sroa.047.0.lcssa.i157.i = phi <2 x i64> [ undef, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %.sroa.047.2.i150.i, %bb.cc ] ; 2 uses
  %.065.lcssa.i158.i = phi ptr [ null, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %.267.i151.i, %bb.cc ] ; 2 uses
  %.0.lcssa.i159.i = phi i32 [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i137.i ], [ %i.uc, %bb.cc ]
  %i.tv = getelementptr inbounds nuw i8, ptr %.068.lcssa.i156.i, i64 16 ; 2 uses
  %.not7530.i160.i = icmp ugt ptr %i.tv, %i.tt
  br i1 %.not7530.i160.i, label %._crit_edge.i169.i, label %.lr.ph.i161.i

bb.cc:                                            ; preds = %bb.cd
  %scevgep54.i153.i = getelementptr i8, ptr %.06823.i145.i, i64 1048560 ; 2 uses
  %i.tw = bitcast <8 x i16> %i.uj to <4 x i32>
  %i.tx = lshr <4 x i32> %i.tw, splat (i32 16)
  %i.ty = bitcast <8 x i16> %i.uj to <4 x i32>
  %i.tz = and <4 x i32> %i.ty, splat (i32 65535)
  %i.ua = add nuw nsw <4 x i32> %i.tz, %i.tx
  %i.ub = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ua)
  %i.uc = add i32 %i.ub, %.026.i142.i             ; 2 uses
  %i.ud = getelementptr i8, ptr %.06823.i145.i, i64 2097120
  %.not.i154.i = icmp ugt ptr %i.ud, %i.tt
  br i1 %.not.i154.i, label %.preheader.i155.i, label %.preheader16.i141.i, !llvm.loop !214

bb.cd:                                            ; preds = %bb.ce, %.preheader16.i141.i
  %i.ue = phi <8 x i16> [ zeroinitializer, %.preheader16.i141.i ], [ %i.ut, %bb.ce ]
  %.16620.i146.i = phi ptr [ %.06525.i143.i, %.preheader16.i141.i ], [ %.267.i151.i.1, %bb.ce ]
  %.sroa.047.119.i147.i = phi <2 x i64> [ %.sroa.047.024.i144.i, %.preheader16.i141.i ], [ %.sroa.047.2.i150.i.1, %bb.ce ]
  %.16918.i148.i = phi ptr [ %.06823.i145.i, %.preheader16.i141.i ], [ %i.uz, %bb.ce ] ; 4 uses
  %.07217.i149.i = phi i32 [ 0, %.preheader16.i141.i ], [ %i.uy, %bb.ce ] ; 2 uses
  %i.uf = load <8 x i16>, ptr %.16918.i148.i, align 1, !alias.scope !215
  %i.ug = icmp eq <8 x i16> %i.uf, %i.tp
  %i.uh = sext <8 x i1> %i.ug to <8 x i16>        ; 3 uses
  %i.ui = bitcast <8 x i16> %i.uh to <2 x i64>
  %i.uj = sub <8 x i16> %i.ue, %i.uh              ; 3 uses
  %i.uk = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.uh, <8 x i16> zeroinitializer)
  %i.ul = icmp slt <16 x i8> %i.uk, zeroinitializer
  %i.um = bitcast <16 x i1> %i.ul to i16
  %i.un = icmp eq i16 %i.um, 0                    ; 2 uses
  %.sroa.047.2.i150.i = select i1 %i.un, <2 x i64> %.sroa.047.119.i147.i, <2 x i64> %i.ui ; 3 uses
  %.267.i151.i = select i1 %i.un, ptr %.16620.i146.i, ptr %.16918.i148.i ; 3 uses
  %exitcond.not.i152.i = icmp eq i32 %.07217.i149.i, 65534
  br i1 %exitcond.not.i152.i, label %bb.cc, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.uo = getelementptr inbounds nuw i8, ptr %.16918.i148.i, i64 16 ; 2 uses
  %i.up = load <8 x i16>, ptr %i.uo, align 1, !alias.scope !215
  %i.uq = icmp eq <8 x i16> %i.up, %i.tp
  %i.ur = sext <8 x i1> %i.uq to <8 x i16>        ; 3 uses
  %i.us = bitcast <8 x i16> %i.ur to <2 x i64>
  %i.ut = sub <8 x i16> %i.uj, %i.ur
  %i.uu = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ur, <8 x i16> zeroinitializer)
  %i.uv = icmp slt <16 x i8> %i.uu, zeroinitializer
  %i.uw = bitcast <16 x i1> %i.uv to i16
  %i.ux = icmp eq i16 %i.uw, 0                    ; 2 uses
  %.sroa.047.2.i150.i.1 = select i1 %i.ux, <2 x i64> %.sroa.047.2.i150.i, <2 x i64> %i.us
  %.267.i151.i.1 = select i1 %i.ux, ptr %.267.i151.i, ptr %i.uo
  %i.uy = add nuw nsw i32 %.07217.i149.i, 2
  %i.uz = getelementptr inbounds nuw i8, ptr %.16918.i148.i, i64 32
  br label %bb.cd

.lr.ph.i161.i:                                    ; preds = %.preheader.i155.i, %.lr.ph.i161.i
  %i.va = phi ptr [ %i.vl, %.lr.ph.i161.i ], [ %i.tv, %.preheader.i155.i ] ; 3 uses
  %i.vb = phi <8 x i16> [ %i.vg, %.lr.ph.i161.i ], [ zeroinitializer, %.preheader.i155.i ]
  %.333.i162.i = phi ptr [ %.4.i166.i, %.lr.ph.i161.i ], [ %.065.lcssa.i158.i, %.preheader.i155.i ]
  %.sroa.047.332.i163.i = phi <2 x i64> [ %.sroa.047.4.i165.i, %.lr.ph.i161.i ], [ %.sroa.047.0.lcssa.i157.i, %.preheader.i155.i ]
  %.27031.i164.i = phi ptr [ %i.va, %.lr.ph.i161.i ], [ %.068.lcssa.i156.i, %.preheader.i155.i ] ; 2 uses
  %i.vc = load <8 x i16>, ptr %.27031.i164.i, align 1, !alias.scope !218
  %i.vd = icmp eq <8 x i16> %i.vc, %i.tp
  %i.ve = sext <8 x i1> %i.vd to <8 x i16>        ; 3 uses
  %i.vf = bitcast <8 x i16> %i.ve to <2 x i64>
  %i.vg = sub <8 x i16> %i.vb, %i.ve              ; 2 uses
  %i.vh = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ve, <8 x i16> zeroinitializer)
  %i.vi = icmp slt <16 x i8> %i.vh, zeroinitializer
  %i.vj = bitcast <16 x i1> %i.vi to i16
  %i.vk = icmp eq i16 %i.vj, 0                    ; 2 uses
  %.sroa.047.4.i165.i = select i1 %i.vk, <2 x i64> %.sroa.047.332.i163.i, <2 x i64> %i.vf ; 2 uses
  %.4.i166.i = select i1 %i.vk, ptr %.333.i162.i, ptr %.27031.i164.i ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.va, i64 16 ; 2 uses
  %.not75.i167.i = icmp ugt ptr %i.vl, %i.tt
  br i1 %.not75.i167.i, label %._crit_edge.loopexit.i168.i, label %.lr.ph.i161.i, !llvm.loop !221

._crit_edge.loopexit.i168.i:                      ; preds = %.lr.ph.i161.i
  %i.vm = bitcast <8 x i16> %i.vg to <4 x i32>
  br label %._crit_edge.i169.i

._crit_edge.i169.i:                               ; preds = %._crit_edge.loopexit.i168.i, %.preheader.i155.i
  %.270.lcssa.i170.i = phi ptr [ %.068.lcssa.i156.i, %.preheader.i155.i ], [ %i.va, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %.sroa.047.3.lcssa.i171.i = phi <2 x i64> [ %.sroa.047.0.lcssa.i157.i, %.preheader.i155.i ], [ %.sroa.047.4.i165.i, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %.3.lcssa.i172.i = phi ptr [ %.065.lcssa.i158.i, %.preheader.i155.i ], [ %.4.i166.i, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %.sroa.050.2.lcssa.i173.i = phi <4 x i32> [ zeroinitializer, %.preheader.i155.i ], [ %i.vm, %._crit_edge.loopexit.i168.i ] ; 2 uses
  %i.vn = lshr <4 x i32> %.sroa.050.2.lcssa.i173.i, splat (i32 16)
  %i.vo = and <4 x i32> %.sroa.050.2.lcssa.i173.i, splat (i32 65535)
  %i.vp = add nuw nsw <4 x i32> %i.vo, %i.vn
  %i.vq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.vp)
  %i.vr = add i32 %i.vq, %.0.lcssa.i159.i         ; 2 uses
  %i.vs = icmp ult ptr %.270.lcssa.i170.i, %i.tt
  br i1 %i.vs, label %.lr.ph44.i179.i, label %._crit_edge45.i174.i

.lr.ph44.i179.i:                                  ; preds = %._crit_edge.i169.i, %.lr.ph44.i179.i
  %.142.i180.i = phi i32 [ %.2.i187.i, %.lr.ph44.i179.i ], [ %i.vr, %._crit_edge.i169.i ]
  %.541.i181.i = phi ptr [ %.6.i186.i, %.lr.ph44.i179.i ], [ %.3.lcssa.i172.i, %._crit_edge.i169.i ]
  %.sroa.047.540.i182.i = phi <2 x i64> [ %.sroa.047.6.i185.i, %.lr.ph44.i179.i ], [ %.sroa.047.3.lcssa.i171.i, %._crit_edge.i169.i ]
  %.37139.i183.i = phi ptr [ %i.vv, %.lr.ph44.i179.i ], [ %.270.lcssa.i170.i, %._crit_edge.i169.i ] ; 3 uses
  %i.vt = load i16, ptr %.37139.i183.i, align 2
  %.not77.i184.i = icmp eq i16 %i.vt, %i.tn       ; 3 uses
  %.sroa.047.6.i185.i = select i1 %.not77.i184.i, <2 x i64> <i64 65535, i64 0>, <2 x i64> %.sroa.047.540.i182.i ; 2 uses
  %.6.i186.i = select i1 %.not77.i184.i, ptr %.37139.i183.i, ptr %.541.i181.i ; 2 uses
  %i.vu = zext i1 %.not77.i184.i to i32
  %.2.i187.i = add nsw i32 %.142.i180.i, %i.vu    ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.37139.i183.i, i64 2 ; 2 uses
  %i.vw = icmp ult ptr %i.vv, %i.tt
  br i1 %i.vw, label %.lr.ph44.i179.i, label %._crit_edge45.i174.i, !llvm.loop !222

._crit_edge45.i174.i:                             ; preds = %.lr.ph44.i179.i, %._crit_edge.i169.i
  %.sroa.047.5.lcssa.i175.i = phi <2 x i64> [ %.sroa.047.3.lcssa.i171.i, %._crit_edge.i169.i ], [ %.sroa.047.6.i185.i, %.lr.ph44.i179.i ]
  %.5.lcssa.i176.i = phi ptr [ %.3.lcssa.i172.i, %._crit_edge.i169.i ], [ %.6.i186.i, %.lr.ph44.i179.i ] ; 2 uses
  %.1.lcssa.i177.i = phi i32 [ %i.vr, %._crit_edge.i169.i ], [ %.2.i187.i, %.lr.ph44.i179.i ]
  %i.vx = load i32, ptr %i.a, align 4
  %i.vy = add nsw i32 %i.vx, %.1.lcssa.i177.i
  store i32 %i.vy, ptr %i.a, align 4
  %.not76.i178.i = icmp eq ptr %.5.lcssa.i176.i, null
  br i1 %.not76.i178.i, label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exitthread-pre-split, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge45.i174.i
  %i.vz = bitcast <2 x i64> %.sroa.047.5.lcssa.i175.i to <8 x i16>
  %i.wa = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vz, <8 x i16> zeroinitializer)
  %i.wb = icmp slt <16 x i8> %i.wa, zeroinitializer
  %i.wc = bitcast <16 x i1> %i.wb to i16
  %i.wd = zext i16 %i.wc to i32
  %i.we = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.wd, i1 true)
  %i.wf = xor i32 %i.we, 31
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %.5.lcssa.i176.i, i64 %i.wg
  %i.wi = ptrtoint ptr %i.wh to i64
  %i.wj = ptrtoint ptr %i.gp to i64
  %i.wk = sub i64 %i.wi, %i.wj
  %i.wl = lshr exact i64 %i.wk, 1
  %i.wm = trunc i64 %i.wl to i32                  ; 2 uses
  store i32 %i.wm, ptr %i.b, align 4
  br label %_ZN2v88internal12_GLOBAL__N_130RegExpMatchGlobalAtom_DispatchEPNS0_7IsolateERKNS0_6String11FlatContentES7_biPiS8_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

bb.cg:                                            ; preds = %bb.bz
  %i.wn = icmp sgt i32 %i.gk, -1
  br i1 %i.wn, label %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i188.i, label %bb.ch, !prof !31

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i188.i:  ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %2, ptr %3, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.gi, ptr %i.wo, align 8
  %.sroa.2.0..sroa_idx.i.i189.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.gl, ptr %.sroa.2.0..sroa_idx.i.i189.i, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.speculated.i.i190.i = call i32 @llvm.usub.sat.i32(i32 %i.gk, i32 250)
  store i32 %.sroa.speculated.i.i190.i, ptr %i.wp, align 8
  %i.wq = icmp samesign ult i32 %i.gk, 7
  %spec.select110.i = select i1 %i.wq, ptr @_ZN2v88internal12StringSearchIttE12LinearSearchEPS2_NS_4base6VectorIKtEEi, ptr @_ZN2v88internal12StringSearchIttE13InitialSearchEPS2_NS_4base6VectorIKtEEi ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %spec.select110.i, ptr %i.wr, align 8
  %i.ws = call noundef i32 %spec.select110.i(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr %i.gp, i64 %i.gs, i32 noundef %.0.i) #21, !inline_history !223 ; 5 uses
  %i.wt = icmp eq i32 %i.ws, -1
  br i1 %i.wt, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %.lr.ph.i191.i

.lr.ph.i191.i:                                    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i.i188.i
  %.not.i192.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i192.i, label %.lr.ph.split.us.i196.i, label %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.i194.i

.lr.ph.split.us.i196.i:                           ; preds = %.lr.ph.i191.i
  %i.wu = icmp sgt i32 %i.gr, -1
  br i1 %i.wu, label %.lr.ph.split.us.split.us.i198.i, label %.lr.ph.split.us.split.i197.i, !prof !31

.lr.ph.split.us.split.us.i198.i:                  ; preds = %.lr.ph.split.us.i196.i
  br i1 %.not396, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i: ; preds = %.lr.ph.split.us.split.us.i198.i, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i
  %i.wv = phi i32 [ %i.xa, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i ], [ %i.ws, %.lr.ph.split.us.split.us.i198.i ]
  %.02.us.us.us.i200.i = phi i32 [ %i.wy, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i ], [ %.0.i, %.lr.ph.split.us.split.us.i198.i ]
  %i.ww = load i32, ptr %i.a, align 4
  %i.wx = add nsw i32 %i.ww, 1
  store i32 %i.wx, ptr %i.a, align 4
  store i32 %i.wv, ptr %i.b, align 4
  %i.wy = add nsw i32 %.02.us.us.us.i200.i, 1     ; 2 uses
  %i.wz = load ptr, ptr %i.wr, align 8
  %i.xa = call noundef i32 %i.wz(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr %i.gp, i64 %i.gs, i32 noundef %i.wy) #21, !inline_history !223 ; 2 uses
  %i.xb = icmp eq i32 %i.xa, -1
  br i1 %i.xb, label %_ZN2v88internal12_GLOBAL__N_129RegExpMatchGlobalAtom_GenericIttEEvPNS0_7IsolateENS_4base6VectorIKT_EENS6_IKT0_EEbiPiSD_RKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSF_2EEEE.exit.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.us.i199.i, !llvm.loop !224

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i: ; preds = %.lr.ph.split.us.split.us.i198.i, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i
  %i.xc = phi i32 [ %i.xu, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i ], [ %i.ws, %.lr.ph.split.us.split.us.i198.i ]
  %.02.us.us.i202.i = phi i32 [ %i.xs, %_ZN2v88internal12_GLOBAL__N_118AdvanceStringIndexItEEiNS_4base6VectorIKT_EEib.exit.us.us.i204.i ], [ %.0.i, %.lr.ph.split.us.split.us.i198.i ] ; 5 uses
  %i.xd = load i32, ptr %i.a, align 4
  %i.xe = add nsw i32 %i.xd, 1
  store i32 %i.xe, ptr %i.a, align 4
  store i32 %i.xc, ptr %i.b, align 4
  %i.xf = icmp slt i32 %.02.us.us.i202.i, %i.gr
  br i1 %i.xf, label %bb.ci, label %.thread.i.us.us.i203.i

bb.ci:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us.us.i201.i
  %i.xg = sext i32 %.02.us.us.i202.i to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2
  %i.xj = and i16 %i.xi, -1024
  %or.cond.i.us.us.i205.i = icmp eq i16 %i.xj, -10240
  br i1 %or.cond.i.us.us.i205.i, label %bb.cj, label %.thread.i.us.us.i203.i

bb.cj:                                            ; preds = %bb.ci
  %i.xk = add nsw i32 %.02.us.us.i202.i, 1        ; 2 uses
  %i.xl = icmp slt i32 %i.xk, %i.gr
  br i1 %i.xl, label %bb.ck, label %.thread.i.us.us.i203.i

bb.ck:                                            ; preds = %bb.cj
  %i.xm = sext i32 %i.xk to i64
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.xm
  %i.xo = load i16, ptr %i.xn, align 2
  %i.xp = and i16 %i.xo, -1024
  %or.cond6.not.not.i.us.us.i206.i = icmp eq i16 %i.xp, -9216
  %i.xq = add nsw i32 %.02.us.us.i202.i, 2
end_hunk_1
