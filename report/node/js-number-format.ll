inline.NumInlined: 3488
inline.NumDeleted: 1452
begin_hunk_0_@_ZN2v88internal21IntlMathematicalValue4FromEPNS0_7IsolateENS0_6HandleINS0_6ObjectEEE:bb.a
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = add i64 %i.cr, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i64, ptr %i.ct acquire, align 8
  %i.cv = add i64 %i.cu, 11
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i16, ptr %i.cw monotonic, align 2
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cy = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef nonnull %1, ptr nonnull %.sroa.0144.1, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

bb.o:                                             ; preds = %.thread.i, %bb.l
  %.sroa.035.0.i = phi i16 [ %i.cx, %.thread.i ], [ %i.cf, %bb.l ]
  %.sroa.012.1.i.i = phi i64 [ %i.cr, %.thread.i ], [ %i.ao, %bb.l ] ; 2 uses
  %i.cz = and i16 %.sroa.035.0.i, -121
  %i.da = icmp eq i16 %i.cz, 5
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = add i64 %.sroa.012.1.i.i, -1
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.012.2.i.i = phi i64 [ %i.de, %bb.p ], [ %.sroa.012.1.i.i, %bb.o ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.r, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.r:                                             ; preds = %bb.q
  %i.dk = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #22
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i81 = phi ptr [ %i.dk, %bb.r ], [ %i.dg, %bb.q ] ; 3 uses
  %i.dl = ptrtoint ptr %.0.i.i.i81 to i64
  %i.dm = add i64 %i.dl, 8
  %i.dn = inttoptr i64 %i.dm to ptr
  store ptr %i.dn, ptr %i.df, align 8
  store i64 %.sroa.012.2.i.i, ptr %.0.i.i.i81, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i

_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.n, %bb.k
  %.sroa.040.1.i = phi ptr [ %i.cy, %bb.n ], [ %.0.i.i.i81, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %.sroa.0144.1, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.do = load i64, ptr %.sroa.040.1.i, align 8
  %i.dp = add i64 %i.do, -1
  %i.dq = inttoptr i64 %i.dp to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !187, !noalias !184
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !noalias !190
  %i.dt = load atomic volatile i64, ptr %i.dq acquire, align 8, !noalias !193
  %i.du = add i64 %i.dt, 11
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i16, ptr %i.dv monotonic, align 2, !noalias !193
  %i.dx = and i16 %i.dw, 15
  switch i16 %i.dx, label %bb.ac [
    i16 8, label %bb.s
    i16 0, label %bb.t
    i16 9, label %bb.ad
    i16 1, label %bb.ad
    i16 10, label %bb.u
    i16 2, label %bb.y
    i16 11, label %bb.ad
    i16 3, label %bb.ad
    i16 13, label %bb.ad
    i16 5, label %bb.ad
  ]

bb.s:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.t:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.u:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !196
  %i.ec = inttoptr i64 %i.eb to ptr               ; 6 uses
  %i.ed = load atomic volatile i64, ptr %i.dq monotonic, align 8, !noalias !196
  %i.ee = add i64 %i.ed, 11
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load atomic volatile i16, ptr %i.ef monotonic, align 2, !noalias !196
  %i.eh = and i16 %i.eg, 16
  %.not.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %i.ec, align 8, !noalias !196
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !196
  %i.el = tail call noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.ec) #22, !noalias !196, !inline_history !201
  br i1 %i.el, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #22, !noalias !196
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !196
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.eo = load ptr, ptr %i.ec, align 8, !noalias !196
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !196
  %i.er = tail call noundef ptr %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #22, !noalias !196, !inline_history !201
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.y:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noalias !202
  %i.eu = inttoptr i64 %i.et to ptr               ; 6 uses
  %i.ev = load atomic volatile i64, ptr %i.dq monotonic, align 8, !noalias !202
  %i.ew = add i64 %i.ev, 11
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load atomic volatile i16, ptr %i.ex monotonic, align 2, !noalias !202
  %i.ez = and i16 %i.ey, 16
  %.not.i8.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i8.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = load ptr, ptr %i.eu, align 8, !noalias !202
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !202
  %i.fd = tail call noundef zeroext i1 %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.eu) #22, !noalias !202, !inline_history !205
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #22, !noalias !202
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !202
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.fg = load ptr, ptr %i.eu, align 8, !noalias !202
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !202
  %i.fj = tail call noundef ptr %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #22, !noalias !202, !inline_history !205
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i

bb.ac:                                            ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.87) #23, !noalias !206
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i: ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.t, %bb.s
  %.sroa.057.sroa.0.0.ph.i = phi ptr [ %i.ff, %bb.aa ], [ %i.en, %bb.w ], [ %i.fj, %bb.ab ], [ %i.er, %bb.x ], [ %i.dz, %bb.t ], [ %i.dy, %bb.s ]
  %.sroa.057.sroa.8.0.ph.i = phi i32 [ 2, %bb.aa ], [ 1, %bb.w ], [ 2, %bb.ab ], [ 1, %bb.x ], [ 2, %bb.t ], [ 1, %bb.s ]
  store ptr %.sroa.057.sroa.0.0.ph.i, ptr %5, align 8
  %.sroa.057.sroa.7.0..sroa_idx101.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ds, ptr %.sroa.057.sroa.7.0..sroa_idx101.i, align 8
  %.sroa.057.sroa.8.0..sroa_idx107.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sroa.057.sroa.8.0.ph.i, ptr %.sroa.057.sroa.8.0..sroa_idx107.i, align 4
  %.sroa.057.sroa.9.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %.sroa.057.sroa.9.0..sroa_idx113.i, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

bb.ad:                                            ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i, %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit.i
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %5, ptr noundef nonnull align 4 dereferenceable(16) %i.dq, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i: ; preds = %bb.ad, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 8, !range !25, !noundef !26
  %i.fm = trunc nuw i8 %i.fl to i1
  store i8 0, ptr %i.fk, align 8
  br i1 %i.fm, label %bb.ae, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

bb.ae:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  %i.fn = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn) #22
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i: ; preds = %bb.af, %bb.ae, %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !184
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = icmp eq i32 %i.fp, 1
  %i.fr = load ptr, ptr %5, align 8               ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ft = load i32, ptr %i.fs, align 8            ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 11 uses
  %.not17.i.i = icmp eq i32 %i.ft, 0              ; 2 uses
  br i1 %i.fq, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  br i1 %.not17.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %bb.ah
  %storemerge14.i.i = phi i64 [ %i.gb, %bb.ah ], [ 0, %bb.ag ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %storemerge14.i.i
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = and i8 %i.fz, 8
  %.not.i10.i = icmp eq i8 %i.ga, 0
  br i1 %.not.i10.i, label %.critedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.gb = add nuw nsw i64 %storemerge14.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gb, %i.fu
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !207

.critedge.i.i:                                    ; preds = %bb.ah, %.lr.ph.i.i, %bb.ag
  %storemerge.lcssa.i.i = phi i64 [ 0, %bb.ag ], [ %i.fu, %bb.ah ], [ %storemerge14.i.i, %.lr.ph.i.i ] ; 6 uses
  %umin.i.i = call i64 @llvm.umin.i64(i64 %storemerge.lcssa.i.i, i64 %i.fu) ; 2 uses
  %i.gc = icmp samesign ult i64 %storemerge.lcssa.i.i, %i.fu
  br i1 %i.gc, label %.lr.ph, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i

bb.ai:                                            ; preds = %.lr.ph
  %i.gd = icmp ugt i64 %i.ge, %storemerge.lcssa.i.i
  br i1 %i.gd, label %.lr.ph, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i, !llvm.loop !208

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.ai
  %storemerge3.i.i370 = phi i64 [ %i.ge, %bb.ai ], [ %i.fu, %.critedge.i.i ] ; 2 uses
  %i.ge = add nsw i64 %storemerge3.i.i370, -1     ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = and i8 %i.gj, 8
  %.not13.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not13.i.i, label %._ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i.loopexit_crit_edge371, label %bb.ai, !llvm.loop !208

bb.aj:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  br i1 %.not17.i.i, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.thread.i, label %.lr.ph.i13.i

_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.thread.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ao

.lr.ph.i13.i:                                     ; preds = %bb.aj, %bb.al
  %storemerge18.i.i = phi i64 [ %i.gv, %bb.al ], [ 0, %bb.aj ] ; 9 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %storemerge18.i.i
  %i.gm = load i16, ptr %i.gl, align 2            ; 3 uses
  %i.gn = icmp ult i16 %i.gm, 256
  br i1 %i.gn, label %bb.ak, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i

bb.ak:                                            ; preds = %.lr.ph.i13.i
  %i.go = zext nneg i16 %i.gm to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = and i8 %i.gq, 8
  %.not.i19.i = icmp eq i8 %i.gr, 0
  br i1 %.not.i19.i, label %.critedge.i14.i, label %bb.al

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i: ; preds = %.lr.ph.i13.i
  %i.gs = zext i16 %i.gm to i32                   ; 2 uses
  %i.gt = call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.gs) #22
  %i.gu = and i32 %i.gs, 65534
  %switch.i.i.i = icmp eq i32 %i.gu, 8232
  %or.cond.i.i.i = or i1 %switch.i.i.i, %i.gt
  br i1 %or.cond.i.i.i, label %bb.al, label %.critedge.i14.i

bb.al:                                            ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i, %bb.ak
  %i.gv = add nuw nsw i64 %storemerge18.i.i, 1    ; 2 uses
  %exitcond.not.i18.i = icmp eq i64 %i.gv, %i.fu
  br i1 %exitcond.not.i18.i, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i, label %.lr.ph.i13.i, !llvm.loop !209

.critedge.i14.i:                                  ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i.i, %bb.ak
  %8 = icmp samesign ult i64 %storemerge18.i.i, %i.fu
  br i1 %8, label %.lr.ph23.i.i, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i

.lr.ph23.i.i:                                     ; preds = %.critedge.i14.i, %bb.an
  %storemerge322.i.i = phi i64 [ %i.gw, %bb.an ], [ %i.fu, %.critedge.i14.i ] ; 3 uses
  %i.gw = add i64 %storemerge322.i.i, -1          ; 3 uses
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2            ; 3 uses
  %i.gz = icmp ult i16 %i.gy, 256
  br i1 %i.gz, label %bb.am, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit7.i.i

bb.am:                                            ; preds = %.lr.ph23.i.i
  %i.ha = zext nneg i16 %i.gy to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1
  %i.hd = and i8 %i.hc, 8
  %.not17.i17.i = icmp eq i8 %i.hd, 0
  br i1 %.not17.i17.i, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i, label %bb.an

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit7.i.i: ; preds = %.lr.ph23.i.i
  %i.he = zext i16 %i.gy to i32                   ; 2 uses
  %i.hf = call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.he) #22
  %i.hg = and i32 %i.he, 65534
  %switch.i4.i.i = icmp eq i32 %i.hg, 8232
  %or.cond.i5.i.i = or i1 %switch.i4.i.i, %i.hf
  br i1 %or.cond.i5.i.i, label %bb.an, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i

bb.an:                                            ; preds = %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit7.i.i, %bb.am
  %i.hh = icmp ugt i64 %i.gw, %storemerge18.i.i
  br i1 %i.hh, label %.lr.ph23.i.i, label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i, !llvm.loop !210

._ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i.loopexit_crit_edge371: ; preds = %.lr.ph
  br label %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i, !llvm.loop !208

_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i: ; preds = %bb.al, %bb.an, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit7.i.i, %bb.am, %bb.ai, %.critedge.i.i, %._ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i.loopexit_crit_edge371, %.critedge.i14.i
  %.sroa.7.0.in.i = phi i64 [ %umin.i.i, %bb.ai ], [ %storemerge322.i.i, %bb.am ], [ %i.fu, %.critedge.i14.i ], [ %umin.i.i, %.critedge.i.i ], [ %storemerge3.i.i370, %._ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i.loopexit_crit_edge371 ], [ %storemerge18.i.i, %bb.an ], [ %storemerge322.i.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit7.i.i ], [ %i.fu, %bb.al ]
  %.sroa.025.0.in.i = phi i64 [ %storemerge.lcssa.i.i, %bb.ai ], [ %storemerge18.i.i, %bb.an ], [ %storemerge18.i.i, %.critedge.i14.i ], [ %storemerge.lcssa.i.i, %.critedge.i.i ], [ %storemerge.lcssa.i.i, %._ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i.loopexit_crit_edge371 ], [ %storemerge18.i.i, %bb.am ], [ %storemerge18.i.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit7.i.i ], [ %i.fu, %bb.al ]
  %.sroa.025.0.i = trunc i64 %.sroa.025.0.in.i to i32 ; 2 uses
  %.sroa.7.0.i = trunc i64 %.sroa.7.0.in.i to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.hi = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %i.hi, label %bb.ao, label %.critedge.i20.i

bb.ao:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i, %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.thread.i
  %.sroa.7.0210.i = phi i32 [ 0, %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.thread.i ], [ %.sroa.7.0.i, %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i ] ; 2 uses
  %i.hj = load i64, ptr %.sroa.040.1.i, align 8
  %i.hk = add i64 %i.hj, -1
  %i.hl = inttoptr i64 %i.hk to ptr               ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = icmp eq i32 %i.hn, %.sroa.7.0210.i
  br i1 %i.ho, label %_ZN2v88internal12_GLOBAL__N_130TrimWhiteSpaceOrLineTerminatorEPNS0_7IsolateENS0_6HandleINS0_6StringEEE.exit, label %.critedge.i20.i

.critedge.i20.i:                                  ; preds = %bb.ao, %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i
  %.sroa.7.0209.i = phi i32 [ %.sroa.7.0.i, %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i ], [ %.sroa.7.0210.i, %bb.ao ]
  %.sroa.025.0207.i = phi i32 [ %.sroa.025.0.i, %_ZN2v88internal12_GLOBAL__N_148FindLeadingAndTrailingWhiteSpaceOrLineTerminatorIhEESt4pairIiiENS_4base6VectorIKT_EE.exit.i ], [ 0, %bb.ao ]
  %i.hp = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.040.1.i, i32 noundef %.sroa.025.0207.i, i32 noundef %.sroa.7.0209.i) #22 ; 2 uses
  %.pre335 = load i64, ptr %i.hp, align 8
  %.pre336 = add i64 %.pre335, -1
  %.pre337 = inttoptr i64 %.pre336 to ptr
  br label %_ZN2v88internal12_GLOBAL__N_130TrimWhiteSpaceOrLineTerminatorEPNS0_7IsolateENS0_6HandleINS0_6StringEEE.exit

_ZN2v88internal12_GLOBAL__N_130TrimWhiteSpaceOrLineTerminatorEPNS0_7IsolateENS0_6HandleINS0_6StringEEE.exit: ; preds = %bb.ao, %.critedge.i20.i
  %.pre-phi338 = phi ptr [ %i.hl, %bb.ao ], [ %.pre337, %.critedge.i20.i ] ; 9 uses
  %.sroa.07.0.i80 = phi ptr [ %.sroa.040.1.i, %bb.ao ], [ %i.hp, %.critedge.i20.i ] ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.pre-phi338, i64 12
  %i.hr = load i32, ptr %i.hq, align 4            ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_130TrimWhiteSpaceOrLineTerminatorEPNS0_7IsolateENS0_6HandleINS0_6StringEEE.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8            ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = icmp eq ptr %i.hu, %i.hw
  br i1 %i.hx, label %bb.aq, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.aq:                                            ; preds = %bb.ap
  %i.hy = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #22
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ap, %bb.aq
  %.0.i.i = phi ptr [ %i.hy, %bb.aq ], [ %i.hu, %bb.ap ] ; 3 uses
  %i.hz = ptrtoint ptr %.0.i.i to i64
  %i.ia = add i64 %i.hz, 8
  %i.ib = inttoptr i64 %i.ia to ptr
  store ptr %i.ib, ptr %i.ht, align 8
  store i64 0, ptr %.0.i.i, align 8
  store i8 1, ptr %0, align 8, !alias.scope !211
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %i.ic, align 8
  %.sroa.22.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i, ptr %.sroa.22.0..sroa_idx128, align 8
  br label %bb.bx

bb.ar:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_130TrimWhiteSpaceOrLineTerminatorEPNS0_7IsolateENS0_6HandleINS0_6StringEEE.exit
  %i.id = icmp ugt i32 %i.hr, 2
  br i1 %i.id, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !214
  %i.ie = load atomic volatile i64, ptr %.pre-phi338 acquire, align 8
  %i.if = add i64 %i.ie, 11
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = load atomic volatile i16, ptr %i.ig monotonic, align 2
  %i.ii = and i16 %i.ih, 15
  switch i16 %i.ii, label %bb.ba [
    i16 8, label %bb.at
    i16 0, label %bb.au
    i16 9, label %bb.av
    i16 1, label %bb.av
    i16 10, label %bb.aw
    i16 2, label %bb.ax
    i16 11, label %bb.ay
    i16 3, label %bb.ay
    i16 13, label %bb.az
    i16 5, label %bb.az
  ]

bb.at:                                            ; preds = %bb.as
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre-phi338, i64 16
  %i.ik = load i8, ptr %i.ij, align 8
  %i.il = zext i8 %i.ik to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.au:                                            ; preds = %bb.as
  %i.im = getelementptr inbounds nuw i8, ptr %.pre-phi338, i64 16
  %i.in = load i16, ptr %i.im, align 8
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.av:                                            ; preds = %bb.as, %bb.as
  %i.io = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %.pre-phi338, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.aw:                                            ; preds = %bb.as
  %i.ip = call noundef zeroext i8 @_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %.pre-phi338, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.iq = zext i8 %i.ip to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.ax:                                            ; preds = %bb.as
  %i.ir = call noundef zeroext i16 @_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %.pre-phi338, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.ay:                                            ; preds = %bb.as, %bb.as
  %i.is = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %.pre-phi338, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.az:                                            ; preds = %bb.as, %bb.as
  %i.it = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %.pre-phi338, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.ba:                                            ; preds = %bb.as
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.87) #23
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.0.i69 = phi i16 [ %i.il, %bb.at ], [ %i.in, %bb.au ], [ %i.io, %bb.av ], [ %i.iq, %bb.aw ], [ %i.ir, %bb.ax ], [ %i.is, %bb.ay ], [ %i.it, %bb.az ]
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 8, !range !25, !noundef !26
  %i.iw = trunc nuw i8 %i.iv to i1
  store i8 0, ptr %i.iu, align 8
  br i1 %i.iw, label %bb.bb, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.bb:                                            ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  %i.ix = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ix) #22
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.iy = icmp eq i16 %.0.i69, 48
  br i1 %i.iy, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.iz = load i64, ptr %.sroa.07.0.i80, align 8
  %i.ja = add i64 %i.iz, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !217
  %i.jb = inttoptr i64 %i.ja to ptr               ; 8 uses
  %i.jc = load atomic volatile i64, ptr %i.jb acquire, align 8
  %i.jd = add i64 %i.jc, 11
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = load atomic volatile i16, ptr %i.je monotonic, align 2
  %i.jg = and i16 %i.jf, 15
  switch i16 %i.jg, label %bb.bl [
    i16 8, label %bb.be
    i16 0, label %bb.bf
    i16 9, label %bb.bg
    i16 1, label %bb.bg
    i16 10, label %bb.bh
    i16 2, label %bb.bi
    i16 11, label %bb.bj
    i16 3, label %bb.bj
    i16 13, label %bb.bk
    i16 5, label %bb.bk
  ]

bb.be:                                            ; preds = %bb.bd
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 17
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bf:                                            ; preds = %bb.bd
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 18
  %i.jl = load i16, ptr %i.jk, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bg:                                            ; preds = %bb.bd, %bb.bd
  %i.jm = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.jb, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bh:                                            ; preds = %bb.bd
  %i.jn = call noundef zeroext i8 @_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.jb, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.jo = zext i8 %i.jn to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bi:                                            ; preds = %bb.bd
  %i.jp = call noundef zeroext i16 @_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.jb, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bj:                                            ; preds = %bb.bd, %bb.bd
  %i.jq = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.jb, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bk:                                            ; preds = %bb.bd, %bb.bd
  %i.jr = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.jb, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit71

bb.bl:                                            ; preds = %bb.bd
end_hunk_0
