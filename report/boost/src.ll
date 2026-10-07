Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbb:bb.a
_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i: ; preds = %bb.l
  %i.ch = load i16, ptr %.361.i, align 1
  %i.ci = icmp slt i16 %i.ch, -16384
  br i1 %i.ci, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

bb.m:                                             ; preds = %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i, %.split.i, %.split47.i, %.split48.i, %.split49.i, %.split50.i, %.split51.i, %bb.j
  %.sink.i = phi i64 [ 1, %bb.j ], [ %i.bo, %.split51.i ], [ %i.bo, %.split50.i ], [ %i.bo, %.split49.i ], [ %i.bo, %.split48.i ], [ %i.bo, %.split47.i ], [ %i.bo, %.split.i ], [ %i.bo, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.361.i, i64 %.sink.i ; 3 uses
  %.not45.i = icmp eq ptr %i.cj, %i.c
  br i1 %.not45.i, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, label %.lr.ph.i38

_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit: ; preds = %bb.m, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i, %.split.i, %.split47.i, %.split48.i, %.split49.i, %.split50.i, %.split51.i, %bb.l, %bb.k, %switch.early.test.i40, %switch.early.test.i40, %.lr.ph.i38, %.split.loop.exit54.i
  %i.ck = phi ptr [ %.242.i, %.split.loop.exit54.i ], [ %.361.i, %bb.k ], [ %.361.i, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i ], [ %.361.i, %.split.i ], [ %.361.i, %.split47.i ], [ %.361.i, %.split48.i ], [ %.361.i, %.split49.i ], [ %.361.i, %.split50.i ], [ %.361.i, %.split51.i ], [ %.361.i, %bb.l ], [ %i.cj, %bb.m ], [ %.361.i, %.lr.ph.i38 ], [ %.361.i, %switch.early.test.i40 ], [ %.361.i, %switch.early.test.i40 ] ; 12 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = ptrtoint ptr %.0 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 6 uses
  %i.co = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.cp = sub i64 2147483646, %i.co
  %i.cq = icmp ugt i64 %i.cn, %i.cp
  br i1 %i.cq, label %.split136.us, label %bb.n, !prof !252

.split136.us:                                     ; preds = %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit.us
  %.us-phi = phi ptr [ %i.ac, %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit.us ], [ %i.ck, %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit ]
  %i.cr = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.us-phi, i32 noundef 12, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc) #47
  br label %bb.ad

bb.n:                                             ; preds = %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit
  %i.cs = add i64 %i.cn, %i.co                    ; 3 uses
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !90
  %i.ct = icmp ult ptr %i.ck, %i.c
  br i1 %i.ct, label %bb.q, label %.split138.us, !prof !251

.split138.us:                                     ; preds = %bb.n, %bb.d
  %i.cu = phi i64 [ %i.aj, %bb.d ], [ %i.cs, %bb.n ]
  %.us-phi139 = phi ptr [ %i.ac, %bb.d ], [ %i.ck, %bb.n ] ; 2 uses
  %.us-phi140 = phi i64 [ %i.af, %bb.d ], [ %i.cn, %bb.n ]
  %.us-phi141 = phi ptr [ %.0.us, %bb.d ], [ %.0, %bb.n ] ; 2 uses
  %.not37 = icmp eq ptr %.us-phi139, %.us-phi141
  br i1 %.not37, label %bb.p, label %bb.o, !prof !252

bb.o:                                             ; preds = %.split138.us
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.us-phi141, i64 %.us-phi140)
  %.pre209 = load i64, ptr %i.a, align 8, !tbaa !90
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.split138.us
  %i.cv = phi i64 [ %.pre209, %bb.o ], [ %i.cu, %.split138.us ]
  %i.cw = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.us-phi139, i8 noundef signext 7, i64 noundef %i.cv)
  br label %bb.ad

bb.q:                                             ; preds = %bb.n
  %i.cx = load i8, ptr %i.ck, align 1, !tbaa !93  ; 4 uses
  %.not = icmp eq i8 %i.cx, 34
  br i1 %.not, label %.split143.us, label %bb.r, !prof !251

bb.r:                                             ; preds = %bb.q
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %bb.w, label %.split148

.split148:                                        ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.da = sub i64 %i.e, %i.cl                     ; 2 uses
  %i.db = and i8 %i.cx, 127
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr @_ZZN5boost4json6detail13classify_utf8EcE5first, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !345 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  store i16 %i.de, ptr %i.df, align 4, !tbaa !347
  %.mask.i42 = and i16 %i.de, 255
  %i.dg = zext nneg i16 %.mask.i42 to i64
  %.not.i43 = icmp ult i64 %i.da, %i.dg
  %i.dh = trunc nuw i64 %i.da to i8
  %i.di = trunc i16 %i.de to i8
  %.sink.i44 = select i1 %.not.i43, i8 %i.dh, i8 %i.di ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 2 uses
  store i8 %.sink.i44, ptr %i.dj, align 2, !tbaa !348
  %i.dk = zext i8 %.sink.i44 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(7) %i.cz, ptr nonnull align 1 %i.ck, i64 %i.dk, i1 false)
  %i.dl = load i8, ptr %i.dj, align 2, !tbaa !348
  %i.dm = load i16, ptr %i.df, align 4, !tbaa !347
  %i.dn = trunc i16 %i.dm to i8
  %.not102 = icmp ult i8 %i.dl, %i.dn
  br i1 %.not102, label %bb.t, label %bb.s, !prof !251

bb.s:                                             ; preds = %.split148
  %i.do = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.ck, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_1) #47
  br label %bb.ad

bb.t:                                             ; preds = %.split148
  %.not35 = icmp eq ptr %i.ck, %.0
  br i1 %.not35, label %bb.v, label %bb.u, !prof !252

bb.u:                                             ; preds = %bb.t
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.0, i64 %i.cn)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !90
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dp = phi i64 [ %.pre, %bb.u ], [ %i.cs, %bb.t ]
  %i.dq = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.c, i8 noundef signext 14, i64 noundef %i.dp)
  br label %bb.ad

bb.w:                                             ; preds = %bb.r
  %i.dr = icmp eq i8 %i.cx, 92
  br i1 %i.dr, label %bb.x, label %.split155.us, !prof !251

bb.x:                                             ; preds = %bb.w
  %.not36 = icmp eq ptr %i.ck, %.0
  br i1 %.not36, label %bb.z, label %bb.y, !prof !252

bb.y:                                             ; preds = %bb.x
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.0, i64 %i.cn)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ds = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb1EEEPKcS7_RmSt17integral_constantIbXT_EEbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext true, i1 noundef zeroext %3) ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.f
  br i1 %i.dt, label %.split158.us, label %.split, !prof !252

.split158.us:                                     ; preds = %bb.z, %bb.h
  %i.du = load i64, ptr %i.a, align 8, !tbaa !90
  %i.dv = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 8, i64 noundef %i.du)
  br label %bb.ad

.split155.us:                                     ; preds = %bb.w, %bb.e
  %.us-phi156 = phi ptr [ %i.ac, %bb.e ], [ %i.ck, %bb.w ]
  %i.dw = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.us-phi156, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_2) #47
  br label %bb.ad

.split143.us:                                     ; preds = %bb.q, %bb.e
  %.us-phi144 = phi ptr [ %i.ac, %bb.e ], [ %i.ck, %bb.q ]
  %.us-phi145 = phi i64 [ %i.af, %bb.e ], [ %i.cn, %bb.q ]
  %.us-phi146 = phi ptr [ %.0.us, %bb.e ], [ %.0, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.us-phi146, ptr %4, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.us-phi145, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !232 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split143.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json11value_stack5stack4pushIJNS0_6detail5key_tERNS_4core17basic_string_viewIcEERNS0_11storage_ptrEEEERNS0_5valueEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ea) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %bb.ac

bb.ab:                                            ; preds = %.split143.us
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store i64 0, ptr %i.dy, align 8, !tbaa !232
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !224
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %i.ee, ptr %6, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dz, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json11value_stack5stack4pushIJNS0_6detail5key_tERNS_4core17basic_string_viewIcEES9_RNS0_11storage_ptrEEEERNS0_5valueEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.eg) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ei = getelementptr inbounds nuw i8, ptr %.us-phi144, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split155.us, %.split158.us, %bb.v, %bb.s, %bb.p, %.split136.us
  %.6 = phi ptr [ %i.cr, %.split136.us ], [ %i.cw, %bb.p ], [ %i.dq, %bb.v ], [ %i.dv, %.split158.us ], [ %i.ei, %bb.ac ], [ %i.dw, %.split155.us ], [ %i.do, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE11parse_arrayILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !252

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE11parse_arrayILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbbE3loc) #47
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1
  store i64 %i.f, ptr %i.c, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = ptrtoint ptr %i.b to i64                 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.0115 = phi ptr [ %i.g, %bb.c ], [ %i.an, %._crit_edge ] ; 9 uses
  %.0 = phi i64 [ 0, %bb.c ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.j = ptrtoaddr ptr %.0115 to i64
  %i.k = icmp eq ptr %.0115, %i.b
  br i1 %i.k, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %.0115, align 1, !tbaa !93
  %i.m = icmp ugt i8 %i.l, 32
  br i1 %i.m, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.preheader45.i.preheader

.preheader45.i.preheader:                         ; preds = %bb.e
  %i.n = ptrtoint ptr %.0115 to i64
  %i.o = sub i64 %i.h, %i.n
  %i.p = icmp sgt i64 %i.o, 15
  br i1 %i.p, label %.lr.ph343, label %.preheader.i

.preheader45.i:                                   ; preds = %.lr.ph343
  %i.q = getelementptr inbounds nuw i8, ptr %.032.i342, i64 16 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.h, %i.r
  %i.t = icmp sgt i64 %i.s, 15
  br i1 %i.t, label %.lr.ph343, label %.preheader.i, !llvm.loop !58

.preheader.i:                                     ; preds = %.preheader45.i, %.preheader45.i.preheader
  %.032.i.lcssa = phi ptr [ %.0115, %.preheader45.i.preheader ], [ %i.q, %.preheader45.i ] ; 3 uses
  %.not51.i = icmp eq ptr %.032.i.lcssa, %i.b
  br i1 %.not51.i, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.u = sub i64 %i.h, %i.j
  %scevgep.i = getelementptr i8, ptr %.0115, i64 %i.u
  br label %.lr.ph.i

.lr.ph343:                                        ; preds = %.preheader45.i.preheader, %.preheader45.i
  %.032.i342 = phi ptr [ %i.q, %.preheader45.i ], [ %.0115, %.preheader45.i.preheader ] ; 3 uses
  %i.v = load <16 x i8>, ptr %.032.i342, align 1, !tbaa !93 ; 3 uses
  %i.w = icmp eq <16 x i8> %i.v, splat (i8 32)
  %i.x = icmp eq <16 x i8> %i.v, splat (i8 10)
  %i.y = or <16 x i1> %i.w, %i.x
  %i.z = and <16 x i8> %i.v, splat (i8 -5)
  %i.aa = icmp eq <16 x i8> %i.z, splat (i8 9)
  %i.ab = or <16 x i1> %i.y, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not44.i = icmp eq i16 %i.ac, -1
  br i1 %.not44.i, label %.preheader45.i, label %.loopexit46.i, !llvm.loop !58

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.23452.i = phi ptr [ %i.ae, %bb.f ], [ %.032.i.lcssa, %.lr.ph.preheader.i ] ; 3 uses
  %i.ad = load i8, ptr %.23452.i, align 1, !tbaa !93
  switch i8 %i.ad, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit [
    i8 32, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.23452.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !59

.loopexit46.i:                                    ; preds = %.lr.ph343
  %i.af = xor i16 %i.ac, -1
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.af, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.032.i342, i64 %i.ah
  br label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit

_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.f, %bb.d, %bb.e, %.preheader.i, %.loopexit46.i
  %.3.i = phi ptr [ %.0115, %bb.e ], [ %.0115, %bb.d ], [ %i.ai, %.loopexit46.i ], [ %.032.i.lcssa, %.preheader.i ], [ %.23452.i, %.lr.ph.i ], [ %scevgep.i, %bb.f ] ; 7 uses
  %i.aj = icmp ult ptr %.3.i, %i.b
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !251

bb.g:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit
  %i.ak = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.3.i, i8 noundef signext 32, i64 noundef %.0)
  br label %bb.x

bb.h:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit
  %i.al = load i8, ptr %.3.i, align 1, !tbaa !93
  switch i8 %i.al, label %.lr.ph.preheader [
    i8 93, label %.loopexit
    i8 47, label %._crit_edge
  ], !prof !946

.lr.ph.preheader:                                 ; preds = %bb.h
  %5 = add i64 %.0, 1                             ; 2 uses
  %i.am = icmp ugt i64 %5, 2147483646
  br i1 %i.am, label %.lr.ph.preheader._crit_edge, label %.lr.ph351, !prof !357

._crit_edge:                                      ; preds = %bb.t, %bb.h
  %.1116.lcssa = phi ptr [ %.3.i, %bb.h ], [ %.3.i40, %bb.t ]
  %.1.lcssa = phi i64 [ %.0, %bb.h ], [ %i.ar, %bb.t ] ; 2 uses
  %i.an = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_commentILb1EEEPKcS7_St17integral_constantIbXT_EEb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.1116.lcssa, i1 noundef zeroext false) ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %bb.i, label %bb.d, !prof !252

bb.i:                                             ; preds = %._crit_edge
  %i.ap = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 33, i64 noundef %.1.lcssa)
  br label %bb.x

.lr.ph:                                           ; preds = %bb.t
  %6 = add nuw nsw i64 %i.ar, 1
  %7 = icmp ugt i64 %i.ar, 2147483645
  br i1 %7, label %.lr.ph.preheader._crit_edge, label %.lr.ph351, !prof !353

.lr.ph.preheader._crit_edge:                      ; preds = %.lr.ph.preheader, %.lr.ph
  %.1116175.lcssa = phi ptr [ %.3.i40, %.lr.ph ], [ %.3.i, %.lr.ph.preheader ]
  %i.aq = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.1116175.lcssa, i32 noundef 11, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE11parse_arrayILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbbE3loc_0) #47
  br label %bb.x

.lr.ph351:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ar = phi i64 [ %6, %.lr.ph ], [ %5, %.lr.ph.preheader ] ; 9 uses
  %.1116175350 = phi ptr [ %.3.i40, %.lr.ph ], [ %.3.i, %.lr.ph.preheader ]
  %i.as = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE11parse_valueILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.1116175350, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i
  br i1 %i.at, label %bb.j, label %.preheader, !prof !252

bb.j:                                             ; preds = %.lr.ph351
  %i.au = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 34, i64 noundef %i.ar)
  br label %bb.x

.preheader:                                       ; preds = %.lr.ph351, %bb.u
  %.2117 = phi ptr [ %i.dc, %bb.u ], [ %i.as, %.lr.ph351 ] ; 9 uses
  %i.av = ptrtoaddr ptr %.2117 to i64
  %i.aw = icmp eq ptr %.2117, %i.b
  br i1 %i.aw, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.ax = load i8, ptr %.2117, align 1, !tbaa !93
  %i.ay = icmp ugt i8 %i.ax, 32
  br i1 %i.ay, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30, label %.preheader45.i18.preheader

.preheader45.i18.preheader:                       ; preds = %bb.k
  %i.az = ptrtoint ptr %.2117 to i64
  %i.ba = sub i64 %i.h, %i.az
  %i.bb = icmp sgt i64 %i.ba, 15
  br i1 %i.bb, label %.lr.ph345, label %.preheader.i20

.preheader45.i18:                                 ; preds = %.lr.ph345
  %i.bc = getelementptr inbounds nuw i8, ptr %.032.i19344, i64 16 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.h, %i.bd
  %i.bf = icmp sgt i64 %i.be, 15
  br i1 %i.bf, label %.lr.ph345, label %.preheader.i20, !llvm.loop !58

.preheader.i20:                                   ; preds = %.preheader45.i18, %.preheader45.i18.preheader
  %.032.i19.lcssa = phi ptr [ %.2117, %.preheader45.i18.preheader ], [ %i.bc, %.preheader45.i18 ] ; 3 uses
  %.not51.i21 = icmp eq ptr %.032.i19.lcssa, %i.b
  br i1 %.not51.i21, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30, label %.lr.ph.preheader.i22

.lr.ph.preheader.i22:                             ; preds = %.preheader.i20
  %i.bg = sub i64 %i.h, %i.av
  %scevgep.i23 = getelementptr i8, ptr %.2117, i64 %i.bg
  br label %.lr.ph.i24

.lr.ph345:                                        ; preds = %.preheader45.i18.preheader, %.preheader45.i18
  %.032.i19344 = phi ptr [ %i.bc, %.preheader45.i18 ], [ %.2117, %.preheader45.i18.preheader ] ; 3 uses
  %i.bh = load <16 x i8>, ptr %.032.i19344, align 1, !tbaa !93 ; 3 uses
  %i.bi = icmp eq <16 x i8> %i.bh, splat (i8 32)
  %i.bj = icmp eq <16 x i8> %i.bh, splat (i8 10)
  %i.bk = or <16 x i1> %i.bi, %i.bj
  %i.bl = and <16 x i8> %i.bh, splat (i8 -5)
  %i.bm = icmp eq <16 x i8> %i.bl, splat (i8 9)
  %i.bn = or <16 x i1> %i.bk, %i.bm
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not44.i28 = icmp eq i16 %i.bo, -1
  br i1 %.not44.i28, label %.preheader45.i18, label %.loopexit46.i29, !llvm.loop !58

.lr.ph.i24:                                       ; preds = %bb.l, %.lr.ph.preheader.i22
  %.23452.i25 = phi ptr [ %i.bq, %bb.l ], [ %.032.i19.lcssa, %.lr.ph.preheader.i22 ] ; 3 uses
  %i.bp = load i8, ptr %.23452.i25, align 1, !tbaa !93
  switch i8 %i.bp, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30 [
    i8 32, label %bb.l
    i8 9, label %bb.l
    i8 13, label %bb.l
    i8 10, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.i24, %.lr.ph.i24, %.lr.ph.i24, %.lr.ph.i24
  %i.bq = getelementptr inbounds nuw i8, ptr %.23452.i25, i64 1 ; 2 uses
  %.not.i26 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i26, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30, label %.lr.ph.i24, !llvm.loop !59

.loopexit46.i29:                                  ; preds = %.lr.ph345
  %i.br = xor i16 %i.bo, -1
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.br, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.032.i19344, i64 %i.bt
  br label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30

_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30: ; preds = %.lr.ph.i24, %bb.l, %.preheader, %bb.k, %.preheader.i20, %.loopexit46.i29
  %.3.i27 = phi ptr [ %.2117, %bb.k ], [ %.2117, %.preheader ], [ %i.bu, %.loopexit46.i29 ], [ %.032.i19.lcssa, %.preheader.i20 ], [ %.23452.i25, %.lr.ph.i24 ], [ %scevgep.i23, %bb.l ] ; 7 uses
  %i.bv = icmp ult ptr %.3.i27, %i.b
  br i1 %i.bv, label %bb.n, label %bb.m, !prof !251

bb.m:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30
  %i.bw = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.3.i27, i8 noundef signext 35, i64 noundef %i.ar)
  br label %bb.x

bb.n:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit30
  %i.bx = load i8, ptr %.3.i27, align 1, !tbaa !93
  switch i8 %i.bx, label %bb.w [
    i8 44, label %bb.o
    i8 93, label %.loopexit
    i8 47, label %bb.u
  ], !prof !370

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.3.i27, i64 1 ; 9 uses
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = icmp eq ptr %i.by, %i.b
  br i1 %i.ca, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !93
  %i.cc = icmp ugt i8 %i.cb, 32
  br i1 %i.cc, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43, label %.preheader45.i31.preheader

.preheader45.i31.preheader:                       ; preds = %bb.p
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.h, %i.cd
  %i.cf = icmp sgt i64 %i.ce, 15
  br i1 %i.cf, label %.lr.ph348, label %.preheader.i33

.preheader45.i31:                                 ; preds = %.lr.ph348
  %i.cg = getelementptr inbounds nuw i8, ptr %.032.i32347, i64 16 ; 3 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.h, %i.ch
  %i.cj = icmp sgt i64 %i.ci, 15
  br i1 %i.cj, label %.lr.ph348, label %.preheader.i33, !llvm.loop !58

.preheader.i33:                                   ; preds = %.preheader45.i31, %.preheader45.i31.preheader
  %.032.i32.lcssa = phi ptr [ %i.by, %.preheader45.i31.preheader ], [ %i.cg, %.preheader45.i31 ] ; 3 uses
  %.not51.i34 = icmp eq ptr %.032.i32.lcssa, %i.b
  br i1 %.not51.i34, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43, label %.lr.ph.preheader.i35

.lr.ph.preheader.i35:                             ; preds = %.preheader.i33
  %i.ck = sub i64 %i.h, %i.bz
  %scevgep.i36 = getelementptr i8, ptr %i.by, i64 %i.ck
  br label %.lr.ph.i37

.lr.ph348:                                        ; preds = %.preheader45.i31.preheader, %.preheader45.i31
  %.032.i32347 = phi ptr [ %i.cg, %.preheader45.i31 ], [ %i.by, %.preheader45.i31.preheader ] ; 3 uses
  %i.cl = load <16 x i8>, ptr %.032.i32347, align 1, !tbaa !93 ; 3 uses
  %i.cm = icmp eq <16 x i8> %i.cl, splat (i8 32)
  %i.cn = icmp eq <16 x i8> %i.cl, splat (i8 10)
  %i.co = or <16 x i1> %i.cm, %i.cn
  %i.cp = and <16 x i8> %i.cl, splat (i8 -5)
  %i.cq = icmp eq <16 x i8> %i.cp, splat (i8 9)
  %i.cr = or <16 x i1> %i.co, %i.cq
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not44.i41 = icmp eq i16 %i.cs, -1
  br i1 %.not44.i41, label %.preheader45.i31, label %.loopexit46.i42, !llvm.loop !58

.lr.ph.i37:                                       ; preds = %bb.q, %.lr.ph.preheader.i35
  %.23452.i38 = phi ptr [ %i.cu, %bb.q ], [ %.032.i32.lcssa, %.lr.ph.preheader.i35 ] ; 3 uses
  %i.ct = load i8, ptr %.23452.i38, align 1, !tbaa !93
  switch i8 %i.ct, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43 [
    i8 32, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 10, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i37, %.lr.ph.i37, %.lr.ph.i37, %.lr.ph.i37
  %i.cu = getelementptr inbounds nuw i8, ptr %.23452.i38, i64 1 ; 2 uses
  %.not.i39 = icmp eq ptr %i.cu, %i.b
  br i1 %.not.i39, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43, label %.lr.ph.i37, !llvm.loop !59

.loopexit46.i42:                                  ; preds = %.lr.ph348
  %i.cv = xor i16 %i.cs, -1
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.032.i32347, i64 %i.cx
  br label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43

_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43: ; preds = %.lr.ph.i37, %bb.q, %bb.o, %bb.p, %.preheader.i33, %.loopexit46.i42
  %.3.i40 = phi ptr [ %i.by, %bb.p ], [ %i.by, %bb.o ], [ %i.cy, %.loopexit46.i42 ], [ %.032.i32.lcssa, %.preheader.i33 ], [ %.23452.i38, %.lr.ph.i37 ], [ %scevgep.i36, %bb.q ] ; 7 uses
  %i.cz = icmp ult ptr %.3.i40, %i.b
  br i1 %i.cz, label %bb.s, label %bb.r, !prof !251

bb.r:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43
  %i.da = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.3.i40, i8 noundef signext 36, i64 noundef %i.ar)
  br label %bb.x

bb.s:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit43
  %.pr.pre = load i8, ptr %.3.i40, align 1, !tbaa !93 ; 2 uses
  %.not17 = icmp eq i8 %.pr.pre, 93
  %or.cond = select i1 %2, i1 %.not17, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp eq i8 %.pr.pre, 47
  br i1 %i.db, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.dc = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_commentILb1EEEPKcS7_St17integral_constantIbXT_EEb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.3.i27, i1 noundef zeroext false) ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.i
  br i1 %i.dd, label %bb.v, label %.preheader, !prof !252

bb.v:                                             ; preds = %bb.u
  %i.de = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 37, i64 noundef %i.ar)
  br label %bb.x

bb.w:                                             ; preds = %bb.n
  %i.df = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.3.i27, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE11parse_arrayILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbbE3loc_1) #47
  br label %bb.x

.loopexit:                                        ; preds = %bb.h, %bb.s, %bb.n
  %.3 = phi ptr [ %.3.i27, %bb.n ], [ %.3.i40, %bb.s ], [ %.3.i, %bb.h ]
  %.2 = phi i64 [ %i.ar, %bb.n ], [ %i.ar, %bb.s ], [ %.0, %bb.h ]
  tail call void @_ZN5boost4json11value_stack10push_arrayEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %.2)
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !221
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.c, align 8, !tbaa !221
  %i.di = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %bb.v, %bb.r, %bb.m, %bb.j, %.lr.ph.preheader._crit_edge, %bb.i, %bb.g, %bb.b
  %.013 = phi ptr [ %i.e, %bb.b ], [ %i.df, %bb.w ], [ %i.ak, %bb.g ], [ %i.ap, %bb.i ], [ %i.aq, %.lr.ph.preheader._crit_edge ], [ %i.au, %bb.j ], [ %i.bw, %bb.m ], [ %i.da, %bb.r ], [ %i.de, %bb.v ], [ %i.di, %.loopexit ]
  ret ptr %.013
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_objectILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %union.U.348, align 8               ; 4 uses
  %6 = alloca %"class.boost::json::detail::unchecked_object", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !252

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_objectILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbbE3loc) #47
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1
  store i64 %i.f, ptr %i.c, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = ptrtoint ptr %i.b to i64                 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.0203 = phi ptr [ %i.g, %bb.c ], [ %i.am, %bb.i ] ; 9 uses
  %i.j = ptrtoaddr ptr %.0203 to i64
  %i.k = icmp eq ptr %.0203, %i.b
  br i1 %i.k, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %.0203, align 1, !tbaa !93
  %i.m = icmp ugt i8 %i.l, 32
  br i1 %i.m, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.preheader45.i.preheader

.preheader45.i.preheader:                         ; preds = %bb.e
  %i.n = ptrtoint ptr %.0203 to i64
  %i.o = sub i64 %i.h, %i.n
  %i.p = icmp sgt i64 %i.o, 15
  br i1 %i.p, label %.lr.ph, label %.preheader.i

.preheader45.i:                                   ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.032.i507, i64 16 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.h, %i.r
  %i.t = icmp sgt i64 %i.s, 15
  br i1 %i.t, label %.lr.ph, label %.preheader.i, !llvm.loop !58

.preheader.i:                                     ; preds = %.preheader45.i, %.preheader45.i.preheader
  %.032.i.lcssa = phi ptr [ %.0203, %.preheader45.i.preheader ], [ %i.q, %.preheader45.i ] ; 3 uses
  %.not51.i = icmp eq ptr %.032.i.lcssa, %i.b
  br i1 %.not51.i, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.u = sub i64 %i.h, %i.j
  %scevgep.i = getelementptr i8, ptr %.0203, i64 %i.u
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %.preheader45.i.preheader, %.preheader45.i
  %.032.i507 = phi ptr [ %i.q, %.preheader45.i ], [ %.0203, %.preheader45.i.preheader ] ; 3 uses
  %i.v = load <16 x i8>, ptr %.032.i507, align 1, !tbaa !93 ; 3 uses
  %i.w = icmp eq <16 x i8> %i.v, splat (i8 32)
  %i.x = icmp eq <16 x i8> %i.v, splat (i8 10)
  %i.y = or <16 x i1> %i.w, %i.x
  %i.z = and <16 x i8> %i.v, splat (i8 -5)
  %i.aa = icmp eq <16 x i8> %i.z, splat (i8 9)
  %i.ab = or <16 x i1> %i.y, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not44.i = icmp eq i16 %i.ac, -1
  br i1 %.not44.i, label %.preheader45.i, label %.loopexit46.i, !llvm.loop !58

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.23452.i = phi ptr [ %i.ae, %bb.f ], [ %.032.i.lcssa, %.lr.ph.preheader.i ] ; 3 uses
  %i.ad = load i8, ptr %.23452.i, align 1, !tbaa !93
  switch i8 %i.ad, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit [
    i8 32, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.23452.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !59

.loopexit46.i:                                    ; preds = %.lr.ph
  %i.af = xor i16 %i.ac, -1
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.af, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.032.i507, i64 %i.ah
  br label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit

_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.f, %bb.d, %bb.e, %.preheader.i, %.loopexit46.i
  %.3.i = phi ptr [ %.0203, %bb.e ], [ %.0203, %bb.d ], [ %i.ai, %.loopexit46.i ], [ %.032.i.lcssa, %.preheader.i ], [ %.23452.i, %.lr.ph.i ], [ %scevgep.i, %bb.f ] ; 7 uses
  %i.aj = icmp ult ptr %.3.i, %i.b
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !251

bb.g:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit
  %i.ak = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.3.i, i8 noundef signext 21, i64 noundef 0)
  br label %bb.au

bb.h:                                             ; preds = %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit
  %i.al = load i8, ptr %.3.i, align 1, !tbaa !93
  switch i8 %i.al, label %bb.k [
    i8 125, label %.split6.i.i
    i8 34, label %.preheader214
    i8 47, label %bb.i
  ], !prof !371

bb.i:                                             ; preds = %bb.h
  %i.am = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_commentILb1EEEPKcS7_St17integral_constantIbXT_EEb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.3.i, i1 noundef zeroext false) ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.i
  br i1 %i.an, label %bb.j, label %bb.d, !prof !252

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 22, i64 noundef 0)
  br label %bb.au

bb.k:                                             ; preds = %bb.h
  %i.ap = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.3.i, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_objectILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbbE3loc_0) #47
  br label %bb.au

.loopexit211:                                     ; preds = %bb.ah, %bb.al
  %.us-phi280 = phi ptr [ %.3.i75, %bb.al ], [ %.3.i75.us, %bb.ah ] ; 2 uses
  %i.aq = add nuw nsw i64 %i.as, 1                ; 2 uses
  %exitcond = icmp eq i64 %i.aq, 2147483647
  br i1 %exitcond, label %bb.l, label %.preheader214, !prof !349

bb.l:                                             ; preds = %.loopexit211
  %i.ar = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.us-phi280, i32 noundef 10, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_objectILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbbE3loc_1) #47
  br label %bb.au

.preheader214:                                    ; preds = %bb.h, %.loopexit211
  %i.as = phi i64 [ %i.aq, %.loopexit211 ], [ 1, %bb.h ] ; 12 uses
  %.1204287 = phi ptr [ %.us-phi280, %.loopexit211 ], [ %.3.i, %bb.h ]
  %i.at = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb1ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %.1204287, i1 noundef zeroext %3, i1 noundef zeroext %4) ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.i
  br i1 %i.au, label %bb.m, label %.preheader213, !prof !252

bb.m:                                             ; preds = %.preheader214
  %i.av = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 23, i64 noundef %i.as)
  br label %bb.au

.preheader213:                                    ; preds = %.preheader214, %bb.r
  %.2 = phi ptr [ %i.bz, %bb.r ], [ %i.at, %.preheader214 ] ; 9 uses
  %i.aw = ptrtoaddr ptr %.2 to i64
  %i.ax = icmp eq ptr %.2, %i.b
  br i1 %i.ax, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit39, label %bb.n

bb.n:                                             ; preds = %.preheader213
  %i.ay = load i8, ptr %.2, align 1, !tbaa !93
  %i.az = icmp ugt i8 %i.ay, 32
  br i1 %i.az, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit39, label %.preheader45.i27.preheader

.preheader45.i27.preheader:                       ; preds = %bb.n
  %i.ba = ptrtoint ptr %.2 to i64
  %i.bb = sub i64 %i.h, %i.ba
  %i.bc = icmp sgt i64 %i.bb, 15
  br i1 %i.bc, label %.lr.ph509, label %.preheader.i29

.preheader45.i27:                                 ; preds = %.lr.ph509
  %i.bd = getelementptr inbounds nuw i8, ptr %.032.i28508, i64 16 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.h, %i.be
  %i.bg = icmp sgt i64 %i.bf, 15
  br i1 %i.bg, label %.lr.ph509, label %.preheader.i29, !llvm.loop !58

.preheader.i29:                                   ; preds = %.preheader45.i27, %.preheader45.i27.preheader
  %.032.i28.lcssa = phi ptr [ %.2, %.preheader45.i27.preheader ], [ %i.bd, %.preheader45.i27 ] ; 3 uses
  %.not51.i30 = icmp eq ptr %.032.i28.lcssa, %i.b
  br i1 %.not51.i30, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit39, label %.lr.ph.preheader.i31

.lr.ph.preheader.i31:                             ; preds = %.preheader.i29
  %i.bh = sub i64 %i.h, %i.aw
  %scevgep.i32 = getelementptr i8, ptr %.2, i64 %i.bh
  br label %.lr.ph.i33

.lr.ph509:                                        ; preds = %.preheader45.i27.preheader, %.preheader45.i27
  %.032.i28508 = phi ptr [ %i.bd, %.preheader45.i27 ], [ %.2, %.preheader45.i27.preheader ] ; 3 uses
  %i.bi = load <16 x i8>, ptr %.032.i28508, align 1, !tbaa !93 ; 3 uses
  %i.bj = icmp eq <16 x i8> %i.bi, splat (i8 32)
  %i.bk = icmp eq <16 x i8> %i.bi, splat (i8 10)
  %i.bl = or <16 x i1> %i.bj, %i.bk
  %i.bm = and <16 x i8> %i.bi, splat (i8 -5)
  %i.bn = icmp eq <16 x i8> %i.bm, splat (i8 9)
  %i.bo = or <16 x i1> %i.bl, %i.bn
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
end_hunk_0
